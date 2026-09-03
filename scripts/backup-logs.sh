#!/usr/bin/env bash
# Archive application logs to the backup share and prune old archives.
set -euo pipefail

LOG_DIR="/var/log/novatech"
BACKUP_DIR="/mnt/backup/logs"
RETENTION_DAYS=30

STAMP=$(date +%Y%m%d)
tar -czf "${BACKUP_DIR}/logs-${STAMP}.tar.gz" -C "$LOG_DIR" .
find "$BACKUP_DIR" -name 'logs-*.tar.gz' -mtime +"$RETENTION_DAYS" -delete
echo "Backup complete: logs-${STAMP}.tar.gz"
