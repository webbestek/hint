# ----------------------------------------------------------------------------
# Copyright (c) 2025 Kevin Ahrens
# Made with ❤️ by Kevin — and the community.
# Licensed under the MIT License (see LICENSE).
# ----------------------------------------------------------------------------
#!/usr/bin/env bash
set -euo pipefail

HINT_DST="${HINT_DST:-$HOME/.local/share/hint}"

rm -f "$HOME/.local/bin/hint" "$HOME/.local/bin/sysline"
rm -rf "$HINT_DST"

echo "Removed hint. You may also remove related lines from your ~/.bashrc and starship.toml."
