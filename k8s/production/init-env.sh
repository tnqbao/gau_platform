#!/bin/bash

echo " Initializing .env from .env.example..."

SOURCE="./.env.example"
TARGET="./.env"

if [ ! -f "$SOURCE" ]; then
  echo " .env.example not found at: $SOURCE"
  exit 1
fi

if [ -f "$TARGET" ]; then
  echo "⏭  Skipped: $TARGET already exists"
  exit 0
fi

awk '
  /^#/ { print; next }
  /^[Ee][Xx][Pp][Oo][Rr][Tt] / {
    sub(/=.*/, "=")
    print
    next
  }
' "$SOURCE" > "$TARGET"

if [ -s "$TARGET" ]; then
  echo "Created $TARGET (with masked values and comments preserved)"
else
  echo "Empty .env file created — check if .env.example has valid export lines"
  rm -f "$TARGET"
fi
