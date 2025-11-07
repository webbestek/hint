
# Contributing

## Add new hints
- Place files under `hint/<category>/yourfile.sh`.
- Each line your script prints must follow: `CATEGORY\tLABEL\tCOMMAND\tWHY`.
- Keep commands safe by default and fast.

## Categories
Use: `FS`, `SYS`, `NET`, `DNS`, `PKG`, `GIT`, `DOCKER`, `NODE`, `PHP`, `HACK`.

## Lint
- `make lint` (ShellCheck).

## PRs
- Use the PR template; one category per PR if possible.
