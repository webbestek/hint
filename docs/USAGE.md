# Usage

## Commands
- `hint` — prints compact tips grouped by category.
- `hint i` — interactive picker (uses `fzf` if installed).
- `hint --doctor` — run diagnostics.
- `hint --debug` — print resolved paths and settings.

## Custom hints
Place them in `~/.config/hint/custom.sh`. Each line must be TAB-separated:
```
CATEGORY<TAB>LABEL<TAB>COMMAND<TAB>WHY
```

## Tips
- Keep commands short and useful.
- Prefer safe defaults; prompt when destructive.
- Use `hint --doctor` if something feels off.
