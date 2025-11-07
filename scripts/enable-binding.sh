#!/usr/bin/env bash
# enable-binding.sh — opt-in Bash keybinding for hint
set -euo pipefail

KEY="${HINT_BIND_KEY:-\eh}"   # default Alt-h (safe)
BASHRC="$HOME/.bashrc"

# Remove old blocks first
sed -i '/# >>> hint-bind >>>/,/# <<< hint-bind <</d' "$BASHRC" 2>/dev/null || true

cat >> "$BASHRC" <<'EOF'
# >>> hint-bind >>>
# Optional keybinding for interactive Bash shells.
# Default: Alt-h (\eh) opens "hint i".
if [[ -n "${BASH_VERSION:-}" && $- == *i* ]]; then
  bind -x '"\eh":"hint i"'
fi
# <<< hint-bind <<<
EOF

echo "Enabled binding in $BASHRC (Alt-h => hint i). Reload with: source ~/.bashrc"
