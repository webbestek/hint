# GitHub Copilot Guide

**Project**: hint — Starship-only command palette (Bash).
**Principles**: Fast startup, ShellCheck-clean, no network calls, safe-by-default hints.

## Good tasks for Copilot
- Add small hint scripts to `hint/<category>/`.
- Refactor helper functions in `bin/hint` (no behavior change).
- Write utility scripts under `scripts/` (not on hot path).

## PR checklist
- `scripts/fix-perms.sh` ran
- ShellCheck passes
- Docs updated as needed
