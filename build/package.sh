#!/usr/bin/env bash
set -euo pipefail
BASE=".dist/wizard/config"
mkdir -p "${BASE}/apps/app1/templates" "${BASE}/gpu/templates" "${BASE}/templates"
write_chart () {
  local name="$1" dir="$2"
  cat > "${dir}/Chart.yaml" <<EOF
apiVersion: v2
name: ${name}
description: minimal chart for ct lint gate
type: application
version: 0.1.0
appVersion: "0.1.0"
EOF
  echo '{}' > "${dir}/values.yaml"
  cat > "${dir}/templates/configmap.yaml" <<'EOF2'
apiVersion: v1
kind: ConfigMap
metadata:
  name: minimal-config
  namespace: default
data:
  key: value
EOF2
}
write_chart wizard "${BASE}"
write_chart app1 "${BASE}/apps/app1"
write_chart gpu "${BASE}/gpu"
exit 0
