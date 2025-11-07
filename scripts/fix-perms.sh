#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
find "$ROOT" -type f \( -name "*.sh" -o -path "$ROOT/bin/*" -o -path "$ROOT/scripts/*" \) -print -exec chmod +x {} \;
echo "✅ Executable bits refreshed."
