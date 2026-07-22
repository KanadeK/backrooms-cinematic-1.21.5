#!/usr/bin/env python3
"""Independently validate a finished release ZIP and print its SHA-256."""
from __future__ import annotations

import argparse
import hashlib
import sys
from pathlib import Path

from validate_world import validate_release


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("archive", type=Path)
    parser.add_argument("--allow-version-mismatch", action="store_true", help="RC review only; reports no target-version claim")
    args = parser.parse_args()
    errors = validate_release(args.archive, args.allow_version_mismatch)
    if errors:
        print("RELEASE VERIFICATION FAILED", *[f"\n- {error}" for error in errors], file=sys.stderr)
        return 1
    digest = hashlib.sha256(args.archive.read_bytes()).hexdigest()
    if args.allow_version_mismatch:
        print("WARNING  known level.dat version mismatch accepted for RC review only")
    print(f"SHA256  {digest}  {args.archive.name}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
