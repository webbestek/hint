# Contributing

Thanks for helping make `hint` better!

## Add new hints

- Place files under `hint/<category>/yourfile.sh`.
- Each line your script prints must follow:
  `CATEGORY\tLABEL\tCOMMAND\tWHY`
- Keep it short, focused, and safe. Prefer read-only diagnostics or commands that prompt before destructive actions.
- Use standard categories if possible: `FS`, `SYS`, `NET`, `DNS`, `PKG`, `GIT`, `DOCKER`, `NODE`, `PHP`, `HACK`.
- For context-sensitive hints, guard with checks, e.g., `[[ -f docker-compose.yml ]] && printf ...`.

## Code style

- Bash only, POSIX-friendly where reasonable.
- No external network calls.
- Keep scripts fast: avoid loops over large trees; prefer single `awk`/`grep` pipelines.
- Test without color (non-TTY).
- Lint with `make lint` (ShellCheck).

## Pull Requests

- One category per PR if possible.
- Add a brief description and why it helps new users.
- Run `shellcheck` if you can.

Open issues here: https://github.com/kevin4hrens/hint/issues
