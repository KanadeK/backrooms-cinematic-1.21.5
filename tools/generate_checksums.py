#!/usr/bin/env python3
"""Write deterministic SHA-256 checksums for release assets in dist/."""
from __future__ import annotations

import hashlib
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DIST = ROOT / "dist"
OUTPUT = DIST / "SHA256SUMS.txt"


def main() -> None:
    files = sorted(path for path in DIST.iterdir() if path.is_file() and path.name != OUTPUT.name and not path.name.startswith("."))
    lines = [f"{hashlib.sha256(path.read_bytes()).hexdigest()}  {path.name}" for path in files]
    OUTPUT.write_text("\n".join(lines) + ("\n" if lines else ""), encoding="utf-8")
    print(OUTPUT)


if __name__ == "__main__":
    main()
