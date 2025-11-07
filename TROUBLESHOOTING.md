# Troubleshooting

## `hint` shows nothing
- Run `hint --doctor` and check the resolved root and script count.
- Ensure `~/.local/bin` is in `PATH` and reload your shell: `source ~/.bashrc`.
- If you used a symlink dev install, confirm `~/.local/share/hint -> your/clone` exists.

## Colors look weird or lines wrap badly
- Try a different font or increase terminal width.
- Colors are disabled automatically when not on a TTY.

## The letter `h` stops working or Alt+h acts weird
- Remove the optional binding and reload:
  ```bash
  ~/.local/share/hint/scripts/disable-insert-binding.sh
  source ~/.bashrc
  ```

## Interactive picker not found
- Install `fzf`, or just use `hint` without the `i` option.
- The tool works without `fzf`; you just won’t have search.

## I want more context‑aware hints
Open an issue and describe your stack (WordPress, Laravel, Next.js, etc.).
We’ll add detectors and safe commands tailored to it.
