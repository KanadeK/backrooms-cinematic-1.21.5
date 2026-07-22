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
    args = parser.parse_args()
    errors = validate_release(args.archive)
    if errors:
        print("RELEASE VERIFICATION FAILED", *[f"\n- {error}" for error in errors], file=sys.stderr)
        return 1
    digest = hashlib.sha256(args.archive.read_bytes()).hexdigest()
    print(f"SHA256  {digest}  {args.archive.name}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
