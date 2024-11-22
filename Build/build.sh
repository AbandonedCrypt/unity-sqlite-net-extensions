#!/bin/bash

#^ Execute from project root

SOURCE_DIR="Source/sqlite-net-extensions~/SQLiteNetExtensions"
DEST_DIR="Runtime/sqlite-net-extensions"

echo "Updating submodule..."
git submodule update --init --recursive

mkdir -p "$DEST_DIR"

echo "Clearing destination directory: $DEST_DIR"
rm -rf "$DEST_DIR"/*

if command -v rsync &> /dev/null; then
  echo "Using rsync to copy source"
  rsync -av --include '*/' --include '*.cs' --exclude '*' "$SOURCE_DIR/" "$DEST_DIR/"
else
  echo "Using find and cp to copy source"
  find "$SOURCE_DIR" -type f -name '*.cs' | while read file; do
    dest="$DEST_DIR/${file#$SOURCE_DIR/}"
    mkdir -p "$(dirname "$dest")"
    cp "$file" "$dest"
  done
fi

echo "Done."
echo -e "\e[33mDo not forget to regenerate .meta files\e[0m"