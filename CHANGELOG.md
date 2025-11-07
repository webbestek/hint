## 1.0.0 — 2025-11-07
- Dynamic runtime: `hint` resolves its project root from the executable path, so it works anywhere (copies or symlinks).
- New: `hint --doctor` and `hint --debug` for quick diagnostics.
- Simple installers: copy or live-symlink; no keybindings.
- Seeded categories with practical examples.
- Man page included: `man hint` (copy it under `~/.local/share/man/man1/` if you want local manpages).

## 1.0.1 — 2025-11-07
- Added `.github/` with **lint**, **build**, and **release** GitHub Actions.
- Added issue and PR templates.
- Added AI contributor docs: `.cursorrules`, `docs/COPILOT.md`, `docs/CHATGPT.md`, `docs/CURSOR.md`, `docs/CONTRIBUTING_AI.md`.
- README: added CI, release, and install-from-release instructions.

## 1.1.0 — 2025-11-07
- Fix: corrected quoting in `hint/ai/core.sh` to avoid EOF errors with backticks.
- More hints across categories (general, system, network, dns, web, security, devops, git, docker, node, php, hacker, ai).
- Context engine: auto-suggests commands based on the current directory (Git, package.json, composer.json, docker-compose, Makefile, .env).
- New: optional `enable-insert-binding.sh` that binds Alt-h to open the interactive palette and insert the chosen command into the current prompt.

## 1.2.0 — 2025-11-07
- UI: colorful, clearer output for normal mode and a new `--beginner` mode that explains "What it does" and "How to use".
- FZF preview (unchanged) complements the friendlier display; insert-binding still optional.
- Docs: README updated to include Beginner mode.

## 1.2.2 — 2025-11-07
- Fix: removed risky ANSI escapes from awk; colors now emitted by Bash wrappers (no more "runaway string" errors).
- Fix: all hint scripts now use `printf '%s\n' "..."` so percent signs in commands (e.g., `%CPU`) no longer break printing.
- Fix: `ai/core.sh` rewritten with safe one-liners (no here-docs/backticks).
- UI: kept colorful headers and beginner-friendly layout without awk dependencies.
