#!/usr/bin/env bash
# doctor.sh — diagnose common setup issues for hint
set -euo pipefail

ok(){ printf "✅ %s\n" "$*"; }
warn(){ printf "⚠️  %s\n" "$*"; }
err(){ printf "❌ %s\n" "$*"; }

# 1) PATH
case ":$PATH:" in
  *":$HOME/.local/bin:"*) ok "~/.local/bin on PATH";;
  *) warn "~/.local/bin missing from PATH. Add: export PATH=\"\$HOME/.local/bin:\$PATH\" to ~/.bashrc";;
esac

# 2) Starship
if command -v starship >/dev/null 2>&1; then ok "starship present"; else err "starship not found (required). Install https://starship.rs"; fi

# 3) hint in PATH
if command -v hint >/dev/null 2>&1; then ok "hint in PATH"; else warn "hint not in PATH (symlink missing?). Try re-running installer."; fi

# 4) Shell / bind
if [[ -n "${BASH_VERSION:-}" ]]; then
  if bind -S | grep -q 'hint i'; then ok "Bash keybinding detected"; else warn "No Bash keybinding; optional (Alt-h)."; fi
else
  warn "Current shell is not Bash; keybinding will not apply here."
fi

# 5) Optional deps
for c in fzf xclip jq dig ss; do
  if command -v "$c" >/dev/null 2>&1; then ok "$c present"; else warn "$c missing (optional)"; fi
done
