#!/usr/bin/env bash

set -eu

THRESHOLD="${1:-80}"

if ! [[ "$THRESHOLD" =~ ^[0-9]+$ ]] ||
   (( THRESHOLD < 1 || THRESHOLD > 100 )); then
    echo "ERROR: Threshold must be a number from 1 to 100."
    exit 1
fi

echo "=== Linux Disk Usage Monitor ==="
echo "Warning threshold: ${THRESHOLD}%"
echo

df -P -h -x tmpfs -x devtmpfs | awk -v threshold="$THRESHOLD" '
NR == 1 {
    print
    next
}
{
    usage = $5
    gsub(/%/, "", usage)

    if (usage + 0 >= threshold) {
        print "WARNING: " $0
    } else {
        print $0
    }
}'
