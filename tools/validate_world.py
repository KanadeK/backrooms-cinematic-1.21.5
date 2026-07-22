#!/usr/bin/env python3
"""Validate a built Backrooms world or release ZIP using Python's standard library."""
from __future__ import annotations

import argparse
import gzip
import json
import re
import shutil
import struct
import sys
import tempfile
import zipfile
from pathlib import Path, PurePosixPath

VERSION = "v0.5.2"
WORLD_NAME = "Backrooms_Cinematic_1.21.5_v0.5.2"
ARCHIVE_NAME = "Backrooms_Java_1.21.5_v0.5.2_Integrated.zip"
ROOT = Path(__file__).resolve().parents[1]
FORBIDDEN_NAMES = {"session.lock", ".DS_Store", "Thumbs.db", "desktop.ini"}
FORBIDDEN_DIRS = {"__MACOSX", ".cache", ".idea", ".vscode", "playerdata", "stats", "advancements"}
FORBIDDEN_SUFFIXES = {".tmp", ".log", ".bak", ".old", ".exe", ".dll", ".com", ".msi", ".jar", ".ps1"}
ALLOWED_SCRIPTS = {"install_windows.bat", "install_linux_macos.sh"}
FUNCTION = re.compile(r"(?:^|\s)function\s+([a-z0-9_.-]+):([a-z0-9_./-]+)")
ABSOLUTE_PATH = re.compile(r"(?:[A-Za-z]:\\|/(?:Users|home)/)")


def bad_archive_paths(archive: zipfile.ZipFile) -> list[str]:
    return [
        info.filename for info in archive.infolist()
        if PurePosixPath(info.filename).is_absolute() or ".." in PurePosixPath(info.filename).parts or "\\" in info.filename
    ]


def level_data_version(level: Path) -> int | None:
    try:
        payload = gzip.decompress(level.read_bytes())
        marker = b"\x03\x00\x0bDataVersion"
        position = payload.index(marker) + len(marker)
        return struct.unpack(">i", payload[position:position + 4])[0]
    except (OSError, ValueError, struct.error):
        return None


def level_version_name(payload: bytes) -> str | None:
    """Read the Version.Name string inside level.dat's Version compound."""
    try:
        version = payload.index(b"\x0a\x00\x07Version")
        name = payload.index(b"\x08\x00\x04Name", version) + len(b"\x08\x00\x04Name")
        length = struct.unpack(">H", payload[name:name + 2])[0]
        return payload[name + 2:name + 2 + length].decode("utf-8")
    except (ValueError, UnicodeDecodeError, struct.error):
        return None


def validate_world_directory(world: Path) -> list[str]:
    errors: list[str] = []
    if not (world / "level.dat").is_file():
        errors.append("missing level.dat")
    regions = list((world / "region").glob("*.mca")) if (world / "region").is_dir() else []
    if not regions:
        errors.append("missing region/ or .mca region file")
    if not (world / "datapacks").is_dir():
        errors.append("missing datapacks/")
    resource_zip = world / "resources.zip"
    if not resource_zip.is_file():
        errors.append("missing resources.zip")
    else:
        try:
            with zipfile.ZipFile(resource_zip) as resources:
                if resources.testzip() is not None:
                    errors.append("resources.zip CRC test failed")
                if bad_archive_paths(resources):
                    errors.append("resources.zip contains unsafe path")
                try:
                    json.loads(resources.read("pack.mcmeta"))
                except (KeyError, UnicodeDecodeError, json.JSONDecodeError):
                    errors.append("resources.zip/pack.mcmeta is missing or invalid JSON")
                for name in resources.namelist():
                    if name.endswith(".json"):
                        try:
                            json.loads(resources.read(name))
                        except (UnicodeDecodeError, json.JSONDecodeError):
                            errors.append(f"invalid resource JSON: {name}")
        except zipfile.BadZipFile:
            errors.append("resources.zip is not a valid ZIP")

    functions: set[str] = set()
    references: list[tuple[Path, str]] = []
    for path in world.rglob("*"):
        relative = path.relative_to(world)
        if any(part in FORBIDDEN_DIRS for part in relative.parts):
            errors.append(f"forbidden directory: {relative}")
        if path.name in FORBIDDEN_NAMES or path.suffix.lower() in FORBIDDEN_SUFFIXES:
            errors.append(f"forbidden file: {relative}")
        if path.is_file() and path.suffix.lower() == ".bat" and path.name not in ALLOWED_SCRIPTS:
            errors.append(f"unexpected batch script: {relative}")
        if not path.is_file():
            continue
        if path.suffix.lower() in {".json", ".mcmeta"}:
            try:
                json.loads(path.read_text(encoding="utf-8"))
            except (UnicodeDecodeError, json.JSONDecodeError):
                errors.append(f"invalid JSON: {relative}")
        if path.suffix.lower() == ".mcfunction":
            try:
                text = path.read_text(encoding="utf-8")
            except UnicodeDecodeError:
                errors.append(f"mcfunction is not UTF-8: {relative}")
                continue
            parts = relative.parts
            try:
                datapack_index = parts.index("datapacks")
                after_datapacks = parts[datapack_index + 1:]
                if after_datapacks[1] == "data" and after_datapacks[3] == "function":
                    namespace = after_datapacks[2]
                    function_path = Path(*after_datapacks[4:]).with_suffix("").as_posix()
                    functions.add(f"{namespace}:{function_path}")
            except (ValueError, IndexError):
                errors.append(f"unexpected datapack function path: {relative}")
            references.extend((path, f"{match.group(1)}:{match.group(2)}") for match in FUNCTION.finditer(text))
        if path.suffix.lower() not in {".mca", ".dat", ".png", ".ogg", ".zip"}:
            try:
                if ABSOLUTE_PATH.search(path.read_text(encoding="utf-8")):
                    errors.append(f"absolute path in text file: {relative}")
            except UnicodeDecodeError:
                errors.append(f"unexpected binary file: {relative}")
    for path, reference in references:
        if reference.startswith("backrooms:") and reference not in functions:
            errors.append(f"missing function reference {reference} in {path.relative_to(world)}")

    if (world / "level.dat").is_file():
        version = level_data_version(world / "level.dat")
        if version != 1976:
            errors.append(f"unexpected or unreadable level.dat DataVersion: {version}")
        try:
            payload = gzip.decompress((world / "level.dat").read_bytes())
            version_name = level_version_name(payload)
            if version_name != "1.21.5":
                errors.append(f"level.dat identifies version {version_name!r}, not target Java 1.21.5; client migration is unverified")
        except OSError:
            errors.append("level.dat is not readable gzip-compressed NBT")
    return errors


def validate_release(archive_path: Path) -> list[str]:
    errors: list[str] = []
    try:
        with zipfile.ZipFile(archive_path) as archive:
            if archive.testzip() is not None:
                errors.append("release ZIP CRC test failed")
            if bad_archive_paths(archive):
                errors.append("release ZIP contains unsafe path")
            names = [name for name in archive.namelist() if name and not name.endswith("/")]
            if any(not name.startswith(WORLD_NAME + "/") for name in names):
                errors.append("release ZIP has content outside the required world root")
            with tempfile.TemporaryDirectory(prefix="backrooms-validate-") as temp:
                archive.extractall(temp)
                errors.extend(validate_world_directory(Path(temp) / WORLD_NAME))
    except zipfile.BadZipFile:
        errors.append("release ZIP is not a valid ZIP")
    return errors


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("path", nargs="?", type=Path, default=ROOT / "dist" / ARCHIVE_NAME)
    args = parser.parse_args()
    errors = validate_release(args.path) if args.path.suffix.lower() == ".zip" else validate_world_directory(args.path)
    if errors:
        print("VALIDATION FAILED", *[f"\n- {error}" for error in errors], file=sys.stderr)
        return 1
    print("VALIDATION PASSED")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
