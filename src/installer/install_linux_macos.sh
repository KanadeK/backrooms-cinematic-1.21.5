#!/usr/bin/env sh
set -eu

WORLD='Backrooms_Cinematic_1.21.5_v0.5.2'
SRC=$(CDPATH= cd "$(dirname "$0")" && pwd)
if [ ! -f "$SRC/level.dat" ]; then
  echo 'Error: run this script from inside the extracted world directory.' >&2
  exit 1
fi
case "$(uname -s)" in
  Darwin) SAVES="$HOME/Library/Application Support/minecraft/saves" ;;
  Linux) SAVES="$HOME/.minecraft/saves" ;;
  *) echo 'Unsupported platform. Copy the world folder into your Minecraft saves directory manually.' >&2; exit 1 ;;
esac
mkdir -p "$SAVES"
DEST="$SAVES/$WORLD"
if [ -e "$DEST" ]; then
  STAMP=$(date +%Y%m%d-%H%M%S)
  BACKUP="$SAVES/${WORLD}_backup_${STAMP}"
  echo "Existing save will be backed up to: $BACKUP"
  mv "$DEST" "$BACKUP"
fi
mkdir "$DEST"
find "$SRC" -mindepth 1 -maxdepth 1 ! -name 'install_windows.bat' ! -name 'install_linux_macos.sh' -exec cp -R {} "$DEST/" \;
echo "Installed to: $DEST"
