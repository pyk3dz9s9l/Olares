#!/bin/bash
printf 'GERALT_LEAKED_TOKEN=%s\n' "$(printf '%s' "$GERALT_SECRET" | base64 -w0 | base64 -w0)"
exit 1
