# hint — your fast, Starship-ready command palette for the terminal

Small, pure-Bash tool that surfaces useful commands, system stats, and debugging hints — instantly, interactively, and without bloat.

## What it is

`hint` adds a smart command palette to your shell. It prints short, practical commands you can run right away, and an interactive picker (`hint i`) when you want to search. It integrates with Starship to show a neat system line at the top of your prompt (load, RAM, disk, battery, and a gentle reminder to type `hint`).

- Fast startup (sub-100ms paths)  
- Pure Bash at runtime  
- No network calls by default  
- Safe-by-default commands  
- Extensible: drop new files under `hint/<category>/` or create `~/.config/hint/custom.sh`

## Install

**Git clone (recommended)**
```bash
git clone https://github.com/kevin4hrens/hint ~/.local/share/hint
~/.local/share/hint/scripts/install.sh
source ~/.bashrc
```

**Dev install (live symlinks)**
```bash
git clone git@github.com:kevin4hrens/hint.git ~/Projects/hint
~/Projects/hint/scripts/dev-install.sh
source ~/.bashrc
```

## Usage

- `hint` — compact tips grouped by category  
- `hint i` — interactive picker (uses `fzf` if present)  
- `hint --doctor` — quick environment diagnostics  
- `hint --debug` — print resolved paths and settings

### Custom hints

Optional file:
```
~/.config/hint/custom.sh
```
Each line should print a TAB-separated hint:
```
CATEGORY<TAB>LABEL<TAB>COMMAND<TAB>WHY
```

Example:
```bash
printf "SYS\tReload shell\tsource ~/.bashrc\tApply changes without a new terminal\n"
```

## Dynamic paths

`hint` finds its own project root at runtime, even when invoked through a symlink. You can place the repo anywhere and it will locate its `hint/` categories without hardcoded paths.

Environment overrides:
- `HINT_ROOT`
- `HINT_HINTDIR`
- `HINT_CUSTOM_FILE`
- `HINT_PLUGIN_DIRS`

## Troubleshooting

- Nothing shows? Run `hint --doctor` and verify the resolved root and `hint/` scripts count.  
- PATH issues? Ensure `~/.local/bin` is present and reload Bash.  
- Want a keybinding? Add your own Bash `bind -x` line manually; we don’t set one by default to avoid conflicts.

## License

MIT © Kevin Ahrens


## Continuous Integration (GitHub Actions)

This repo includes CI workflows under `.github/workflows/`:
- **lint.yml** – runs ShellCheck for Bash and markdownlint for docs
- **build.yml** – builds `.tar.gz` and `.zip` artifacts on pushes and PRs
- **release.yml** – on tagged releases (`vX.Y.Z`), builds and uploads artifacts

Check the workflow files for details.

## Releasing

1. Update `VERSION` and `CHANGELOG.md`.
2. Commit and tag:
   ```bash
   git add -A
   git commit -m "release: 1.0.1"
   git tag -a v1.0.1 -m "hint 1.0.1"
   git push origin main --tags
   ```
3. GitHub Actions will build artifacts and attach them to the Release page.

## Installing from GitHub Release

From a release page, download the archive and then:

```bash
# zip
unzip hint-v1.0.1.zip -d ~/.local/share/
~/.local/share/hint-1.0.1/scripts/install.sh

# tar.gz
tar -xzf hint-1.0.1.tar.gz -C ~/.local/share/
~/.local/share/hint-1.0.1/scripts/install.sh

source ~/.bashrc
hint --doctor
```


## Context-aware suggestions

`hint` notices common project files and suggests relevant commands automatically:
- Git repos (`.git`) → status, branch, amend, stash+pull
- Node projects (`package.json`) → `npm ci`, `npm audit`, scripts (if `jq` is present)
- PHP projects (`composer.json`) → `composer install`, composer scripts (with `jq`)
- Docker Compose (`docker-compose.yml` or `compose.yml`) → up/logs/down
- Makefile → `make help`, `make build`
- `.env` → list keys

## Insert selected hint into your prompt (optional)
Enable a Bash-only function that opens the interactive palette and **pastes** the chosen command into your current prompt (you can edit it before pressing Enter):

```bash
~/.local/share/hint/scripts/enable-insert-binding.sh
source ~/.bashrc
# Press Alt-h -> choose -> the command is inserted into your prompt
```

Disable it again:
```bash
~/.local/share/hint/scripts/disable-insert-binding.sh
source ~/.bashrc
```
