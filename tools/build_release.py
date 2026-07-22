#!/usr/bin/env python3
"""Build the distributable Minecraft world without mutating source files.

Public releases are intentionally blocked while level.dat does not identify the
target game version. The override flag is for private review only and never
makes an untested release safe.
"""
from __future__ import annotations

import argparse
import gzip
import shutil
import sys
import zipfile
from pathlib import Path

from validate_world import level_version_name

VERSION = "v0.5.2"
WORLD_NAME = "Backrooms_Cinematic_1.21.5_v0.5.2"
ARCHIVE_NAME = "Backrooms_Java_1.21.5_v0.5.2_Integrated.zip"
ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
DIST = ROOT / "dist"
STAGING = DIST / ".staging"

EXCLUDED_PARTS = {"session.lock", ".DS_Store", "Thumbs.db", "desktop.ini", ".cache", ".idea", ".vscode"}
EXCLUDED_SUFFIXES = {".tmp", ".log", ".bak", ".old"}


def copy_clean_tree(source: Path, destination: Path) -> None:
    """Copy a source tree while refusing known development-state files."""
    for item in source.rglob("*"):
        relative = item.relative_to(source)
        if any(part in EXCLUDED_PARTS for part in relative.parts):
            continue
        if item.is_file() and item.suffix.lower() in EXCLUDED_SUFFIXES:
            continue
        target = destination / relative
        if item.is_dir():
            target.mkdir(parents=True, exist_ok=True)
        else:
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(item, target)


def zip_tree(source: Path, destination: Path) -> None:
    with zipfile.ZipFile(destination, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9) as archive:
        for path in sorted(source.rglob("*")):
            if path.is_file():
                archive.write(path, path.relative_to(source).as_posix())


def release_blockers() -> list[str]:
    blockers: list[str] = []
    level = gzip.decompress((SRC / "world" / "level.dat").read_bytes())
    if level_version_name(level) != "1.21.5":
        blockers.append(f"level.dat identifies version {level_version_name(level)!r}, not Minecraft Java 1.21.5")
    return blockers


def build(args: argparse.Namespace) -> Path:
    blockers = release_blockers()
    if blockers and not args.allow_version_mismatch:
        print("Release build blocked:", *[f"\n- {item}" for item in blockers], file=sys.stderr)
        print("Use the private-review version override only after reading docs/COMPATIBILITY.md.", file=sys.stderr)
        raise SystemExit(2)

    if STAGING.exists():
        shutil.rmtree(STAGING)
    world = STAGING / WORLD_NAME
    world.mkdir(parents=True)
    copy_clean_tree(SRC / "world", world)
    copy_clean_tree(SRC / "datapack", world / "datapacks")
    zip_tree(SRC / "resourcepack", world / "resources.zip")
    for installer in (SRC / "installer").iterdir():
        if installer.is_file():
            shutil.copy2(installer, world / installer.name)

    DIST.mkdir(exist_ok=True)
    archive = DIST / ARCHIVE_NAME
    if archive.exists():
        archive.unlink()
    zip_tree(STAGING, archive)
    shutil.rmtree(STAGING)
    print(archive)
    return archive


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--allow-version-mismatch", action="store_true", help="private review only")
    build(parser.parse_args())
