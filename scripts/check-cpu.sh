#!/usr/bin/env bash
# Alert when the 1-minute load average per CPU passes THRESHOLD percent.
THRESHOLD=85

CPUS=$(getconf _NPROCESSORS_ONLN)
LOAD=$(awk '{print $1}' /proc/loadavg)
PCT=$(awk -v l="$LOAD" -v c="$CPUS" 'BEGIN { printf "%d", (l / c) * 100 }')
if [ "$PCT" -gt "$THRESHOLD" ]; then
  echo "ALERT: CPU load ${PCT}% is above ${THRESHOLD}%"
  exit 1
fi
echo "OK: CPU load ${PCT}%"
