#!/usr/bin/env bash
# cleanup-bindings.sh — aggressive cleanup for broken keybindings
set -euo pipefail

BASHRC="$HOME/.bashrc"
INPUTRC="$HOME/.inputrc"

# Remove our blocks and any bind -x lines that mention hint
sed -i '/# >>> hint-bind >>>/,/# <<< hint-bind <</d' "$BASHRC" 2>/dev/null || true
sed -i '/bind -x.*hint i/d' "$BASHRC" 2>/dev/null || true

# Remove common accidental binds (h, \C-h, \eh)
sed -i '/bind -x.*"h":/d' "$BASHRC" 2>/dev/null || true
sed -i '/bind -x.*"\\C-h":/d' "$BASHRC" 2>/dev/null || true
sed -i '/bind -x.*"\\eh":/d' "$BASHRC" 2>/dev/null || true

# Inputrc: comment dangerous mappings
if [[ -f "$INPUTRC" ]]; then
  sed -i 's/^\s*"\\C-h".*/# & (disabled)/' "$INPUTRC" || true
  sed -i 's/^\s*"h".*:.*$/# & (disabled)/' "$INPUTRC" || true
fi

# Reset erase char to a safe default
stty erase '^?' 2>/dev/null || true

echo "Cleaned bindings. Run: source ~/.bashrc  (and restart terminal if needed)."
