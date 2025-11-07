#!/usr/bin/env bash
# fix-perms.sh — ensure all hint scripts are executable
# Made with ❤️ by Kevin

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
echo "🔧 Fixing permissions under $ROOT"

# .sh files + everything in bin/ and scripts/
find "$ROOT" -type f \( -name "*.sh" -o -path "$ROOT/bin/*" -o -path "$ROOT/scripts/*" \) -print -exec chmod +x {} \;

echo "✅ All shell, bin, and script files are now executable."
