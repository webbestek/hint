# hint — friendly terminal hints for beginners and busy pros

**hint** is a tiny command‑line tool that shows short, useful commands right when you need them.
It’s fast, safe, and beginner‑friendly by default. Use it to learn Linux basics, discover handy tools,
and share project‑specific tips with your team.

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=webbestek_hint&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=webbestek_hint)
[![Build](https://img.shields.io/github/actions/workflow/status/webbestek/hint/build.yml?label=build)](https://github.com/webbestek/hint/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](#license)

---

## Why hint?

- **Beginner‑friendly:** clear explanations of *what it does* and *how to use it*.
- **Fast & safe:** prints commands; never runs them for you.
- **Context‑aware:** if you’re in a Git repo or a Node/PHP project, it suggests relevant commands.
- **Interactive:** search and select with `fzf` (optional).
- **Extensible:** add your own tips in simple `.sh` files or `~/.config/hint/custom.sh`.
- **No lock‑in:** pure Bash, works anywhere (symlink or copy).

---

## Quick start

### 1) Install from a release

```bash
# download a release archive, then:
unzip hint-vX.Y.Z.zip -d ~/.local/share/
~/.local/share/hint-X.Y.Z/scripts/install.sh
source ~/.bashrc
```

### 2) Developer install (live link to your clone)

```bash
git clone https://github.com/webbestek/hint.git ~/Projects/hint
~/Projects/hint/scripts/dev-install.sh
source ~/.bashrc
```

> After installation, run `hint --doctor` to confirm your setup.

---

## Use it

```bash
hint        # beginner view: categories with "what it does" + exact command
hint i      # interactive picker (uses fzf if installed)
```

### Optional: paste the chosen command into your prompt

```bash
~/.local/share/hint/scripts/enable-insert-binding.sh
source ~/.bashrc
# Press Alt+h → choose a hint → the command is inserted (you can edit it before Enter)
```

Disable later:
```bash
~/.local/share/hint/scripts/disable-insert-binding.sh
source ~/.bashrc
```

---

## How hints are formatted

Each line is printed as **TAB‑separated** columns:

```
CATEGORY<TAB>LABEL<TAB>COMMAND<TAB>WHY
```

Example (from the `dns` category):

```
DNS<TAB>Trace<TAB>dig +trace example.com<TAB>Resolution path
```

> Hint scripts **must only print** lines like this. Don’t execute commands in hint files.

---

## Context‑aware suggestions

`hint` notices common project files and suggests useful commands automatically:

- Git repo → status, branch, amend, stash+pull
- Node project (`package.json`) → `npm ci`, `npm audit`, scripts
- PHP project (`composer.json`) → `composer install`, scripts
- Docker Compose (`docker-compose.yml` or `compose.yml`) → up/logs/down
- Makefile → `make help`, `make build`
- `.env` → list variable names

---

## Files you might care about

- `bin/hint` — the main CLI (dynamic path, beginner UI, interactive, doctor)
- `bin/sysline` — small helper that shows system info at the top of your prompt
- `hint/` — categories; each subfolder contains shell files that **print** hints
- `scripts/` — install tools, diagnostics, optional keybinding
- `docs/` — extra documentation
- `man/man1/hint.1` — manual page (copy to your manpath to use `man hint`)

See **[STRUCTURE.md](STRUCTURE.md)** for a bigger map.

---

## Contributing

Contributions are welcome! Read **[CONTRIBUTING.md](CONTRIBUTING.md)** for style and testing,
then open a Pull Request. If you use AI tools (Copilot, ChatGPT, Cursor), please also read
**[docs/CONTRIBUTING_AI.md](docs/CONTRIBUTING_AI.md)**.

---

## Security

See **[SECURITY.md](SECURITY.md)** for how to report vulnerabilities.

---

## License

MIT © 2025 webbestek
