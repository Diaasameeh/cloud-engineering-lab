# NovaTech Cloud Engineering Lab

Platform team repository for NovaTech Financial Group's Azure landing zone tooling.

## Scripts

| Script | Purpose |
| --- | --- |
| `scripts/check-disk.sh` | Alerts when disk usage passes the threshold |
| `scripts/backup-logs.sh` | Archives application logs to the backup share |
| `scripts/health-check.sh` | Calls the platform health endpoint |
| `scripts/check-cpu.sh` | Alerts when CPU load passes the threshold |

## Terraform

`terraform/` holds the core resource group and storage. Region: UK South.
Environment values live in `terraform/environments/`.

## Contributing

Read `CONTRIBUTING.md` before you change anything.

Last reviewed: 2026-09-01
