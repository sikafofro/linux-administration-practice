#!/usr/bin/env bash

set -eu

SERVICE="${1:-cron}"

echo "=== Linux Service Monitor ==="
echo "Service: $SERVICE"

if ! systemctl cat "$SERVICE.service" >/dev/null 2>&1; then
    echo "Status: Service not found"
    exit 1
fi

if systemctl is-active --quiet "$SERVICE.service"; then
    echo "Status: ACTIVE"
else
    STATE="$(systemctl is-active "$SERVICE.service" 2>/dev/null || true)"
    echo "Status: $STATE"
    exit 2
fi

if systemctl is-enabled --quiet "$SERVICE.service"; then
    echo "Enabled at startup: yes"
else
    echo "Enabled at startup: no or unknown"
fi

echo "Monitoring check complete."
