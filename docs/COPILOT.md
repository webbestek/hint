# GitHub Copilot Guide

**Project**: hint — Starship-only interactive command palette for the terminal.

## Principles
- Runtime scripts must be **pure Bash** and fast (sub-100ms). No network calls.
- Hints are emitted as TAB-separated lines: `CATEGORY<TAB>LABEL<TAB>COMMAND<TAB>WHY`.
- Keep commands safe-by-default; prompt if destructive.
- Prefer single-pass pipelines over loops; avoid subshell storms.
- Respect optional user overrides at `~/.config/hint/custom.sh`.

## Tasks Copilot is good at
- Drafting new hint scripts in `hint/<category>/...`
- Refactoring internal helper functions in `bin/hint` without behavior changes
- Writing utility scripts in `scripts/` (not on the hot path)

## PR checklist
- [ ] `make lint` passes (ShellCheck).
- [ ] `scripts/fix-perms.sh` run.
- [ ] Docs updated if behavior changed.
- [ ] Small, reviewable diff with context in the description.
