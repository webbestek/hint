#!/usr/bin/env bash
# disable-insert-binding.sh — removes the prompt insertion binding and function.
set -euo pipefail
BASHRC="$HOME/.bashrc"
sed -i '/# >>> hint-insert >>>/,/# <<< hint-insert <</d' "$BASHRC" 2>/dev/null || true
echo "Removed insert binding. Reload with: source ~/.bashrc"
