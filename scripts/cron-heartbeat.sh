#!/usr/bin/env bash

set -eu

PROJECT_DIR="$HOME/linux-practice"
LOG_FILE="$PROJECT_DIR/labs/cron-lab/heartbeat.log"

mkdir -p "$(dirname "$LOG_FILE")"
printf 'Cron job ran at: %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" >> "$LOG_FILE"
