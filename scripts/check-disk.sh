#!/usr/bin/env bash
# Alert when disk usage on / passes THRESHOLD percent.
set -euo pipefail

THRESHOLD=90

USAGE=$(df -P / | awk 'NR==2 {gsub("%",""); print $5}')
if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "ALERT: disk usage ${USAGE}% is above ${THRESHOLD}%"
  exit 1
fi
echo "OK: disk usage ${USAGE}%"
