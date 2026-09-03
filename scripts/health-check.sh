#!/usr/bin/env bash
# Call the platform health endpoint and fail if it does not answer 200.
set -euo pipefail

HEALTH_URL="https://status.novatech.example/healthz"
TIMEOUT=20

CODE=$(curl -s -o /dev/null -w '%{http_code}' --max-time "$TIMEOUT" "$HEALTH_URL")
if [ "$CODE" != "200" ]; then
  echo "UNHEALTHY: $HEALTH_URL returned $CODE"
  exit 1
fi
echo "HEALTHY: $HEALTH_URL"
