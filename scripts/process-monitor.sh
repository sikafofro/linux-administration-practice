#!/usr/bin/env bash

set -eu

PROCESS_NAME="${1:-cron}"

echo "=== Linux Process Monitor ==="
echo "Process name: $PROCESS_NAME"

RESULTS="$(ps -eo pid,comm,%cpu,%mem --no-headers | awk -v name="$PROCESS_NAME" '$2 == name')"

if [[ -z "$RESULTS" ]]; then
    echo "Status: No matching process found"
    exit 1
fi

echo "Status: RUNNING"
printf '%-8s %-24s %-8s %-8s\n' "PID" "COMMAND" "CPU%" "MEM%"

while read -r PID COMMAND CPU MEM; do
    printf '%-8s %-24s %-8s %-8s\n' "$PID" "$COMMAND" "$CPU" "$MEM"
done <<< "$RESULTS"

echo "Process check complete."
