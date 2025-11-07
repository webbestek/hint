#!/usr/bin/env bash
# ----------------------------------------------------------------------------
# hint — Development Installer (symlink mode)
# Uses the current directory as the project root and wires your environment
# to run binaries directly from your working tree.
# Made with ❤️ by Kevin — MIT License
# ----------------------------------------------------------------------------

set -euo pipefail

# Determine project root
ROOT="${PWD}"
if command -v git >/dev/null 2>&1 && git -C "$ROOT" rev-parse --show-toplevel >/dev/null 2>&1; then
  ROOT="$(git -C "$ROOT" rev-parse --show-toplevel)"
fi

BIN="$ROOT/bin"
HINT="$BIN/hint"
SYSLINE="$BIN/sysline"

# Validate files
[[ -x "$HINT" ]] || { echo "error: $HINT not found or not executable"; exit 1; }
[[ -x "$SYSLINE" ]] || { echo "error: $SYSLINE not found or not executable"; exit 1; }

# Ensure PATH dir
mkdir -p "$HOME/.local/bin"

# Symlink executables
ln -sf "$HINT" "$HOME/.local/bin/hint"
ln -sf "$SYSLINE" "$HOME/.local/bin/sysline"

# Ensure ~/.local/bin on PATH for Bash
if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' "$HOME/.bashrc" 2>/dev/null; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
fi

# Optional keybinding (Ctrl-H -> hint i)
fi

# Starship dev override
STAR="$HOME/.config/starship.toml"
mkdir -p "$(dirname "$STAR")"
touch "$STAR"

DEV_MARK_BEGIN="# >>> hint-dev >>>"
DEV_MARK_END="# <<< hint-dev <<<"

# Remove any existing dev block
if grep -q "$DEV_MARK_BEGIN" "$STAR"; then
  # delete from begin to end markers
  awk -v b="$DEV_MARK_BEGIN" -v e="$DEV_MARK_END" '
    $0 ~ b {inblock=1; next}
    $0 ~ e {inblock=0; next}
    !inblock {print}
  ' "$STAR" > "$STAR.tmp" && mv "$STAR.tmp" "$STAR"
fi

# Append fresh dev block
cat >> "$STAR" <<EOF
$DEV_MARK_BEGIN
# Starship uses this dev module to render the live sysline from your working tree
[custom.sysline]
command = "${SYSLINE}"
when = "true"
shell = "bash"
format = "\$output\n"
$DEV_MARK_END
EOF

echo "✅ hint dev installed"
echo "    repo:   $ROOT"
echo "    hint:   $HINT -> $HOME/.local/bin/hint"
echo "    sysline:$SYSLINE -> $HOME/.local/bin/sysline"
echo "    starship: dev module appended to \$HOME/.config/starship.toml"
echo
echo "→ Reload your shell:  source ~/.bashrc"
echo "→ Test now:           hint    (or press Ctrl-H)"

# Add optional keybinding for bash (Alt-h by default). Set HINT_BIND_KEY to override (e.g., "\C-h").
BASH_BIND_MARK_BEGIN="# >>> hint-bind >>>"
BASH_BIND_MARK_END="# <<< hint-bind <<<"
if [[ -n "${BASH_VERSION:-}" && "$-" == *i* ]]; then
  key="${HINT_BIND_KEY:-\\eh}"   # \\eh = Alt-h; safer than Ctrl-H (backspace)
  if ! grep -q "$BASH_BIND_MARK_BEGIN" "$HOME/.bashrc" 2>/dev/null; then
    {
      echo "$BASH_BIND_MARK_BEGIN"
      echo "bind -x '\"${key}\":\"hint i\"'"
      echo "$BASH_BIND_MARK_END"
    } >> "$HOME/.bashrc"
  fi
fi
