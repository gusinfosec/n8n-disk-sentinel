#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="${SCRIPT_DIR}/.."

if ! command -v n8n >/dev/null 2>&1; then
  echo "n8n CLI not found in PATH. Install n8n or run inside your n8n container."
  exit 1
fi

n8n import:workflow --input="${ROOT_DIR}/workflows/disk_check_FULL.json"
echo "Imported workflow successfully."
