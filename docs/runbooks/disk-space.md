# Runbook: disk space alert

1. Confirm the alert with `df -h /`.
2. Find large files: `du -xh / --max-depth=2 | sort -h | tail`.
3. Old log archives can be removed from `/mnt/backup/logs` after 14 days.
4. If usage is still above the threshold, escalate to the on-call engineer.
