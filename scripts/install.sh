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

if ! command -v starship >/dev/null 2>&1; then
  echo "Error: starship is required. Install https://starship.rs" >&2
  exit 1
fi

mkdir -p "$HINT_DST"
cp -a "${HINT_SRC}/." "$HINT_DST/"

mkdir -p "$HOME/.local/bin"
ln -sf "$HINT_DST/bin/hint" "$HOME/.local/bin/hint"
ln -sf "$HINT_DST/bin/sysline" "$HOME/.local/bin/sysline"

if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' "$HOME/.bashrc" 2>/dev/null; then
  if ! grep -q '^export PATH="$HOME/.local/bin:$PATH"$' "$HOME/.bashrc" 2>/dev/null; then
  
if ! grep -qx 'export PATH="$HOME/.local/bin:$PATH"' "$HOME/.bashrc" 2>/dev/null; then
  if ! grep -qx 'export PATH="$HOME/.local/bin:$PATH"' "$HOME/.bashrc" 2>/dev/null; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
fi
fi
fi
fi

# Do NOT auto-create ~/.config/hint/custom.sh; it's optional by design.

fi

mkdir -p "$(dirname "$STAR_TOML")"
touch "$STAR_TOML"
if ! grep -q "$SNIPPET_MARK" "$STAR_TOML"; then
  echo "$SNIPPET_MARK" >> "$STAR_TOML"
  cat "$SNIPPET_SRC" >> "$STAR_TOML"
  echo "# <<< hint-starship <<<" >> "$STAR_TOML"
fi

echo "✅ hint installed to $HINT_DST"
echo "→ Reload shell: source ~/.bashrc"

# Add optional keybinding for bash (Alt-h by default). Set HINT_BIND_KEY to override (e.g., "\C-h").
BASH_BIND_MARK_BEGIN=""
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





# Optional: enable local man page (user scope)
# symlink man page to ~/.local/share/man/man1
mkdir -p "$HOME/.local/share/man/man1"
ln -sf "$HINT_DST/man/man1/hint.1" "$HOME/.local/share/man/man1/hint.1" 2>/dev/null || true
