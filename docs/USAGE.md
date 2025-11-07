# Usage

## Commands

- `hint` — beginner‑friendly view with colors and explanations
- `hint i` — interactive picker (uses `fzf` if installed)
- `hint --doctor` — show environment diagnostics
- `hint --debug` — print resolved paths

## Beginner view

Each hint shows:
- **What it does** — plain explanation
- **How to use** — simple instructions
- **Command** — the exact command to run

If you see `<like-this>`, replace it with your value.

## Interactive picker

Type to search; press Enter to copy the command to output.
If you enabled the optional insert binding, the command is pasted into your prompt
so you can edit it and press Enter.

Enable (optional):
```bash
~/.local/share/hint/scripts/enable-insert-binding.sh
source ~/.bashrc
```

Disable:
```bash
~/.local/share/hint/scripts/disable-insert-binding.sh
source ~/.bashrc
```
