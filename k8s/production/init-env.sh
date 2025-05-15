#!/bin/bash

echo "Initializing .env files from .env.example or example.env..."

for example in ./*.env.example ./*example.env; do
    [ -e "$example" ] || continue  # skip if file doesn't exist
    target="${example/.env.example/.env}"
    target="${target/example.env/.env}"

    if [ -f "$target" ]; then
        echo "Skipped $target (already exists)"
        continue
    fi

    echo "Creating $target from $example..."

    # Copy tất cả các dòng bắt đầu bằng export (bỏ comment)
    grep -v '^#' "$example" | grep -E '^[Ee][Xx][Pp][Oo][Rr][Tt] ' \
        >> "$target"

    echo "Created $target"
done
