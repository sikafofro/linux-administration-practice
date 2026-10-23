#!/usr/bin/env bash

set -eu

TARGET="${1:-labs/permissions-lab/access-test/secret.txt}"

echo "=== Linux File Audit ==="
echo "Target: $TARGET"

if [[ ! -e "$TARGET" ]]; then
    echo "ERROR: File does not exist."
    exit 1
fi

if [[ ! -f "$TARGET" ]]; then
    echo "ERROR: Target is not a regular file."
    exit 1
fi

stat -c 'Owner: %U
Group: %G
Permissions: %a (%A)
Size: %s bytes' "$TARGET"

echo "Audit complete."
