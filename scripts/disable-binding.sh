#!/usr/bin/env bash
# disable-binding.sh — remove hint keybinding from ~/.bashrc and common overrides
set -euo pipefail

BASHRC="$HOME/.bashrc"
sed -i '/# >>> hint-bind >>>/,/# <<< hint-bind <</d' "$BASHRC" 2>/dev/null || true

# Also remove any stray bind -x lines that reference hint
sed -i '/bind -x.*hint i/d' "$BASHRC" 2>/dev/null || true

# Clean possible ~/.inputrc mappings that might swallow h/Ctrl-H
INPUTRC="$HOME/.inputrc"
if [[ -f "$INPUTRC" ]]; then
  # Comment out lines mapping \C-h or h directly if suspicious
  sed -i 's/^\s*"\\C-h".*/# & (disabled by disable-binding.sh)/' "$INPUTRC" || true
  sed -i 's/^\s*"h".*:.*$/# & (disabled by disable-binding.sh)/' "$INPUTRC" || true
fi

echo "Disabled binding. Reload shell (source ~/.bashrc). If keys still act odd, restart the terminal."
