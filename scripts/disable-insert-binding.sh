#!/usr/bin/env bash
set -euo pipefail
sed -i '/# >>> hint-insert >>>/,/# <<< hint-insert <</d' "$HOME/.bashrc" 2>/dev/null || true
echo "Alt-h disabled. Reload: source ~/.bashrc"
