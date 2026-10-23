#!/usr/bin/env bash

set -eu

SOURCE="${1:-labs/users-groups-lab/team-files}"
BACKUP_ROOT="backups"

if [[ ! -d "$SOURCE" ]]; then
    echo "ERROR: Source directory does not exist: $SOURCE"
    exit 1
fi

TIMESTAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP_DIR="$BACKUP_ROOT/$(basename "$SOURCE")-$TIMESTAMP"

mkdir -p "$BACKUP_DIR"
cp -a "$SOURCE/." "$BACKUP_DIR/"

if diff -qr "$SOURCE" "$BACKUP_DIR" >/dev/null; then
    echo "Backup completed and verified."
    echo "Source: $SOURCE"
    echo "Backup: $BACKUP_DIR"
else
    echo "ERROR: Backup verification failed."
    exit 1
fi
