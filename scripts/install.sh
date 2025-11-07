# ----------------------------------------------------------------------------
# Copyright (c) 2025 Kevin Ahrens
# Made with ❤️ by Kevin — and the community.
# Licensed under the MIT License (see LICENSE).
# ----------------------------------------------------------------------------
#!/usr/bin/env bash
set -euo pipefail

HINT_SRC="${HINT_SRC:-$PWD}"
HINT_DST="${HINT_DST:-$HOME/.local/share/hint}"
STAR_TOML="${STAR_TOML:-$HOME/.config/starship.toml}"
SNIPPET_SRC="$HINT_DST/starship/hint.starship.toml"
SNIPPET_MARK="# >>> hint-starship (do not edit) >>>"

# 1) Check starship
if ! command -v starship >/dev/null 2>&1; then
  echo "Error: starship is required. Install https://starship.rs" >&2
  exit 1
fi

# 2) Copy files
mkdir -p "$HINT_DST"
cp -a "${HINT_SRC}/." "$HINT_DST/"

# 3) Binaries
mkdir -p "$HOME/.local/bin"
ln -sf "$HINT_DST/bin/hint" "$HOME/.local/bin/hint"
ln -sf "$HINT_DST/bin/sysline" "$HOME/.local/bin/sysline"

# 4) Ensure ~/.local/bin is on PATH for Bash sessions
if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' "$HOME/.bashrc" 2>/dev/null; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
fi

# 5) Custom hints file
mkdir -p "$HOME/.config/hint"
[[ -f "$HOME/.config/hint/custom.sh" ]] || cp "$HINT_DST/config/custom.sh" "$HOME/.config/hint/custom.sh"

# 6) Keybinding (Ctrl-H -> hint i)
if ! grep -q 'bind -x.*hint i' "$HOME/.bashrc" 2>/dev/null; then
  echo 'bind -x "\\C-h": "hint i"' >> "$HOME/.bashrc"
fi

# 7) Merge starship snippet if not present
mkdir -p "$(dirname "$STAR_TOML")"
touch "$STAR_TOML"
if ! grep -q "$SNIPPET_MARK" "$STAR_TOML"; then
  echo "$SNIPPET_MARK" >> "$STAR_TOML"
  cat "$SNIPPET_SRC" >> "$STAR_TOML"
  echo "# <<< hint-starship <<<" >> "$STAR_TOML"
fi

echo "✅ hint installed to $HINT_DST"
echo "→ Reload shell: source ~/.bashrc"
