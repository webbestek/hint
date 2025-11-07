#!/usr/bin/env bash
set -euo pipefail
SRC="${HINT_SRC:-$PWD}"
DST="${HINT_DST:-$HOME/.local/share/hint}"
BIN="$HOME/.local/bin"
rm -rf "$DST"; mkdir -p "$(dirname "$DST")"; cp -a "$SRC/." "$DST/"
mkdir -p "$BIN"
ln -sfn "$DST/bin/hint" "$BIN/hint"
ln -sfn "$DST/bin/sysline" "$BIN/sysline"
grep -qx 'export PATH="$HOME/.local/bin:$PATH"' "$HOME/.bashrc" 2>/dev/null || echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
echo "✅ Installed to $DST"
echo "→ source ~/.bashrc && hint --doctor"
