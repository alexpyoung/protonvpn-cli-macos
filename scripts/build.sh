#!/usr/bin/env bash

main() {
    local -r ARCHIVE_NAME="protonvpn-darwin-arm64.tar.gz"
    local -r ARCHIVE_DATA="dist/$ARCHIVE_NAME"
    local -r HASH="dist/protonvpn-checksums.txt"

    pyinstaller --clean --noconfirm --name protonvpn protonvpn_cli/__main__.py
    tar -czf "$ARCHIVE_DATA" dist/protonvpn/protonvpn

    shasum -a 256 "$ARCHIVE_DATA" | awk '{printf $1}' > "$HASH"
    echo "" >> "$HASH"
    echo "$ARCHIVE_NAME" >> "$HASH"
    cat "$HASH"
}

main
