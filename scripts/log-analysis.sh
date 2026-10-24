#!/usr/bin/env bash

set -eu

LOG_FILE="${1:-labs/log-analysis-lab/application.log}"

echo "=== Linux Log Analysis ==="
echo "Log file: $LOG_FILE"

if [[ ! -f "$LOG_FILE" ]]; then
    echo "ERROR: Log file does not exist."
    exit 1
fi

ERROR_COUNT=$(grep -c 'ERROR' "$LOG_FILE" || true)
WARNING_COUNT=$(grep -c 'WARNING' "$LOG_FILE" || true)
INFO_COUNT=$(grep -c 'INFO' "$LOG_FILE" || true)

echo "Error entries: $ERROR_COUNT"
echo "Warning entries: $WARNING_COUNT"
echo "Info entries: $INFO_COUNT"
echo "Total entries: $(wc -l < "$LOG_FILE")"
echo "Analysis complete."
