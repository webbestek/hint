#!/usr/bin/env bash
set -euo pipefail
BASHRC="$HOME/.bashrc"
sed -i '/# >>> hint-insert >>>/,/# <<< hint-insert <</d' "$BASHRC" 2>/dev/null || true
cat >> "$BASHRC" <<'EOF'
# >>> hint-insert >>>
if [[ -n "${BASH_VERSION:-}" && $- == *i* ]]; then
  __hint_insert() {
    local cmd; cmd="$(hint i)"
    [[ -z "$cmd" ]] && return 0
    READLINE_LINE="$cmd"; READLINE_POINT=${#READLINE_LINE}
  }
  bind -x '"\eh":"__hint_insert"'
fi
# <<< hint-insert <<<
EOF
echo "Alt-h enabled for prompt insertion. Reload: source ~/.bashrc"
