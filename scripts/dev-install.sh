#!/usr/bin/env bash
set -euo pipefail
SRC="${1:-$PWD}"
DST="$HOME/.local/share/hint"
BIN="$HOME/.local/bin"
[[ -x "$SRC/bin/hint" ]] || { echo "Not a hint repo: $SRC" >&2; exit 1; }
rm -rf "$DST"; ln -s "$SRC" "$DST"
mkdir -p "$BIN"
ln -sfn "$DST/bin/hint" "$BIN/hint"
ln -sfn "$DST/bin/sysline" "$BIN/sysline"
grep -qx 'export PATH="$HOME/.local/bin:$PATH"' "$HOME/.bashrc" 2>/dev/null || echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
echo "✅ Linked $SRC -> $DST"
echo "→ source ~/.bashrc && hint --doctor"
