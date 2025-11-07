#!/usr/bin/env bash
set -euo pipefail
has(){ command -v "$1" >/dev/null 2>&1; }
case ":$PATH:" in *":$HOME/.local/bin:"*) echo "✅ PATH has ~/.local/bin" ;; *)
  echo "⚠️  PATH missing ~/.local/bin — add: export PATH=\"$HOME/.local/bin:$PATH\" to ~/.bashrc" ;; esac
if has starship; then echo "✅ starship present"; else echo "⚠️  starship not found (optional)"; fi
if has hint; then echo "✅ hint in PATH: $(command -v hint)"; else echo "❌ hint not on PATH"; fi
ROOT="$(cd -P "$(dirname "$(readlink -f "$(command -v hint)")")/.." && pwd 2>/dev/null || echo "<unknown>")"
echo "Resolved root: $ROOT"
if [[ -d "$ROOT/hint" ]]; then
  cnt=$(find "$ROOT/hint" -type f -name '*.sh' | wc -l); echo "Found $cnt scripts under $ROOT/hint"
else
  echo "No hint/ directory found under $ROOT — check your install or symlink"
fi
