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

# Copy export lines, ẩn giá trị sau dấu =
grep -v '^#' "$SOURCE" | grep -E '^[Ee][Xx][Pp][Oo][Rr][Tt] ' \
  | sed -E 's/=.*/=/' > "$TARGET"

if [ -s "$TARGET" ]; then
  echo "✅ Created $TARGET (with masked values)"
else
  echo "Empty .env file created — check if .env.example has valid export lines"
  rm -f "$TARGET"
fi
