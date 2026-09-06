#!/usr/bin/env bash
# Rotate application logs daily, keeping seven compressed copies.
set -euo pipefail
LOG_DIR="/var/log/novatech"
for f in "$LOG_DIR"/*.log; do
  [ -e "$f" ] || continue
  for i in 6 5 4 3 2 1; do
    [ -f "$f.$i.gz" ] && mv "$f.$i.gz" "$f.$((i + 1)).gz"
  done
  gzip -c "$f" > "$f.1.gz" && : > "$f"
done
echo "Logs rotated in $LOG_DIR"
