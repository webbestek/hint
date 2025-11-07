# Development

## Quick dev setup

```bash
git clone https://github.com/webbestek/hint.git ~/Projects/hint
~/Projects/hint/scripts/dev-install.sh
source ~/.bashrc
```

The dev installer symlinks your repo to `~/.local/share/hint` and links the binaries.
Edits in your clone affect `hint` immediately.

## Project layout

See **STRUCTURE.md** for a full map. In short:
- `bin/` → executables (`hint`, `sysline`)
- `hint/` → categories that print TAB‑separated lines
- `scripts/` → installers, diagnostics, optional keybinding
- `docs/` → detailed docs
- `.github/` → CI and templates

## Commit and PR guidelines

- Keep changes small and descriptive.
- Run `scripts/fix-perms.sh` (ensures `+x`) and ShellCheck.
- Update docs for visible behavior changes.
- Add testing notes to the PR body.

## Release checklist (maintainers)

- Update `VERSION` and `CHANGELOG.md`
- Tag: `git tag -a vX.Y.Z -m "hint X.Y.Z"` and push with `--tags`
- Verify Actions built and published artifacts
