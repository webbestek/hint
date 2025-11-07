## 0.3.0 — 2025-11-07
- Do not auto-create ~/.config/hint/custom.sh; load it only if it exists
- README updated to reflect optional custom.sh
- Installer no longer ensures custom.sh
## 0.3.1 — 2025-11-07
- Add `scripts/dev-install.sh` for symlink-based local development.
- README: new Local Development (Option A) section.
## 0.4.0 — 2025-11-07
- Extended README with Getting Started, Usage, FAQ, and Troubleshooting.
- Version bump for public release.
## 0.5.0 — 2025-11-07
- Safer keybinding: default to **Alt‑h** via Bash-only guarded block; configurable with `HINT_BIND_KEY`.
- Fix: no more `ash: bind` errors; bindings only apply in interactive Bash.
- Fix: avoid breaking Backspace / `h` by not forcing Ctrl‑H.
- sysline: show `username@host` prefix.
- README: clearer onboarding, keybinding notes, and troubleshooting.
## 0.6.0 — 2025-11-07
- UI: sysline shows **username only** (removed @hostname), consistent separators, refined hint suffix (“✧ type hint”).
- New: `scripts/fix-perms.sh` and `make fix-perms` to repair executable bits.
- CI: permissions check step surfaces missing +x in PRs.
## 0.7.0 — 2025-11-07
- Docs: Added AI assistant guides — **COPILOT.md**, **CHATGPT.md**, **CONTRIBUTING_AI.md** and a project-wide **.cursorrules**.
- README: New section “Using AI Assistants (Copilot, ChatGPT, Cursor)” with ready-to-use prompts and guardrails.
- Version bump for public release.
