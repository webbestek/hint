#!/usr/bin/env bash
# enable-insert-binding.sh — adds a Bash function that inserts selected hint into the current prompt.
# Opt-in and safe. Press Alt-h to open interactive hints and paste the command into the prompt.

set -euo pipefail
BASHRC="$HOME/.bashrc"

# Remove any previous block
sed -i '/# >>> hint-insert >>>/,/# <<< hint-insert <</d' "$BASHRC" 2>/dev/null || true

cat >> "$BASHRC" <<'EOF'
# >>> hint-insert >>>
if [[ -n "${BASH_VERSION:-}" && $- == *i* ]]; then
  __hint_insert() {
    local cmd
    cmd="$(hint i)"
    # If user canceled, do nothing
    [[ -z "$cmd" ]] && return 0
    READLINE_LINE="$cmd"
    READLINE_POINT=${#READLINE_LINE}
  }
  bind -x '"\eh":"__hint_insert"'
fi
# <<< hint-insert <<<
EOF

echo "Enabled Alt-h to insert selected hint into your prompt. Reload with: source ~/.bashrc"
