# hint — Starship-powered interactive command palette

**hint** is a fast, clean, *Starship-only* command palette for your terminal. It helps new Linux users learn commands without being annoying, and gives power users a context-aware launcher for Git, Docker, networking, DNS, logs, and more.

> Made with ❤️ by Kevin — and the community. MIT Licensed.

## Features

- **Starship-first**: installs a Starship custom module + `hint` CLI.
- **Interactive palette** with search (uses `fzf` if available) and copy-to-clipboard (Alt+Enter).
- **Context-aware**: Git repo? Compose file? package.json/composer.json? It adapts.
- **Hacker/Debugging mode**: rich hints for logs, DNS, networking, tcpdump/tshark, ufw, fail2ban, nmap, mtr.
- **Extensible**: drop new hint files in `hint/<category>/` and optionally add your own file at `~/.config/hint/custom.sh`.
- **Fast**: pure Bash core, zero network calls, optional `jq` for nicer JSON.

## Install

Choose one method.

### 1) Easy GitHub clone (recommended)
```bash
git clone https://github.com/kevin4hrens/hint ~/.local/share/hint
~/.local/share/hint/scripts/install.sh
source ~/.bashrc
```

### 2) .deb package (Ubuntu/Pop!_OS)
```bash
wget https://github.com/kevin4hrens/hint/releases/download/v0.3.0/hint_0.4.0_amd64.deb
sudo apt install ./hint_0.4.0_amd64.deb
```

### 3) Tarball
```bash
wget https://github.com/kevin4hrens/hint/releases/download/v0.3.0/hint-0.4.0.tar.gz
tar -xzf hint-0.4.0.tar.gz -C ~/.local/share/
~/.local/share/hint/scripts/install.sh
```

After install, you’ll see a Starship banner like:
```
🖥 load 0.42 | 🧠 RAM 3.1G/15.4G | 💽 42% | 🔋 78% | 💡 type hint
```
- Press **Ctrl-H** for the interactive palette.
- Type `hint` for compact hints, `hint i` for the full picker.

## ✨ Add your own custom hints (optional)

If you want personal hints, create this file:
```
~/.config/hint/custom.sh
```
The file is **optional**. If it exists, `hint` loads it; if not, it’s skipped silently.

Each line prints a hint as **TAB-separated** fields:
```
CATEGORY<TAB>LABEL<TAB>COMMAND<TAB>WHY
```
Examples:
```bash
printf "SYS\tReload shell\tsource ~/.bashrc\tApply changes without opening a new terminal\n"
printf "NET\tPing test\tping -c 4 8.8.8.8\tCheck connectivity\n"
printf "GIT\tFix author\tgit commit --amend --reset-author\tUpdate commit author\n"
```

## Requirements

- **Starship** prompt (required). Installer aborts if missing.
- Optional: `fzf`, `jq`, `dnsutils` (`dig`), `fd-find`, `ripgrep`, `xclip`, `nmap`, `mtr-tiny`, `tshark`, `shellcheck`.

## Contributing

We ❤️ PRs. See [CONTRIBUTING.md](CONTRIBUTING.md) for the format, categories, performance/safety rules, and the PR checklist. Also check [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) and [SECURITY.md](SECURITY.md).

## License

MIT © Kevin Ahrens

## 🧑‍💻 Local Development (Option A – Recommended)

Hack on **hint** and see changes instantly without reinstalling — use symlinks.

### 1) Clone the repo
```bash
mkdir -p ~/Projects
cd ~/Projects
git clone git@github.com:kevin4hrens/hint.git
cd hint
```

### 2) Dev install (symlink mode)
From the repo root, run:
```bash
./scripts/dev-install.sh
source ~/.bashrc
```
This links `hint` and `sysline` into `~/.local/bin` and appends a **dev Starship module**
pointing directly to your working tree.

Now any edits to files under `~/Projects/hint` are live in your terminal.

### 3) Lint & build (optional)
```bash
make lint
make build
```

To exit dev mode, remove the symlinks or reinstall normally:
```bash
rm -f ~/.local/bin/hint ~/.local/bin/sysline
~/.local/share/hint/scripts/install.sh
```

## 🚀 Getting Started (2 minutes)

1. **Install** (choose one):
   - Git clone (recommended):  
     ```bash
     git clone https://github.com/kevin4hrens/hint ~/.local/share/hint
     ~/.local/share/hint/scripts/install.sh
     source ~/.bashrc
     ```
   - `.deb` (Ubuntu/Pop!_OS):  
     ```bash
     wget https://github.com/kevin4hrens/hint/releases/download/v0.4.0/hint_0.4.0_amd64.deb
     sudo apt install ./hint_0.4.0_amd64.deb
     ```
   - Tarball:  
     ```bash
     wget https://github.com/kevin4hrens/hint/releases/download/v0.4.0/hint-0.4.0.tar.gz
     tar -xzf hint-0.4.0.tar.gz -C ~/.local/share/
     ~/.local/share/hint/scripts/install.sh
     source ~/.bashrc
     ```

2. **Try it**  
   - Type `hint` for compact tips.  
   - Press **Ctrl-H** or run `hint i` for the interactive palette (uses `fzf` if installed).

3. **Optional**: add your own hints  
   - Create `~/.config/hint/custom.sh` and add lines like:  
     ```bash
     printf "SYS\tReload shell\tsource ~/.bashrc\tApply changes without opening a new terminal\n"
     ```

## 🧭 Usage guide

- `hint` — shows compact category-based tips on screen.
- `hint i` — interactive launcher: search by name, hit Enter to paste/run, Alt+Enter to copy command to clipboard (requires `xclip`).
- Categories include: `FS, SYS, NET, DNS, PKG, GIT, DOCKER, NODE, PHP, HACK`.
- Context awareness: some hint scripts check for files like `docker-compose.yml`, `package.json`, `composer.json`, or a Git repo to surface the most relevant commands.

### Custom hints (optional)
- File: `~/.config/hint/custom.sh` (not auto-created).  
- Format per line (TAB-separated):  
  `CATEGORY<TAB>LABEL<TAB>COMMAND<TAB>WHY`  
- Examples:  
  ```bash
  printf "GIT\tFix author\tgit commit --amend --reset-author\tUpdate commit author\n"
  printf "NET\tQuick ping\tping -c 4 1.1.1.1\tTest connectivity to Cloudflare\n"
  ```

## 🧑‍💻 Local Development (Option A – Recommended)

If you want to hack on `hint` and see changes instantly, use the dev installer from your repo:

```bash
git clone git@github.com:kevin4hrens/hint.git ~/Projects/hint
cd ~/Projects/hint
./scripts/dev-install.sh
source ~/.bashrc
```

This creates symlinks in `~/.local/bin` and appends a **dev Starship module** that points to your live working tree. Edit → test → commit with zero reinstall steps.

To exit dev mode:  
```bash
rm -f ~/.local/bin/hint ~/.local/bin/sysline
~/.local/share/hint/scripts/install.sh
```

## ❓ FAQ

**Does this depend on Starship?**  
Yes. `hint` integrates as a Starship custom module and uses Starship detection on startup. Install https://starship.rs first.

**Do I need fzf?**  
No, but `hint i` uses it if available for a better UI. The compact `hint` output works without it.

**Where are the built-in hints?**  
Under `~/.local/share/hint/hint/<category>/*.sh`. They’re plain shell scripts that print TAB-separated lines.

**Can I use it on macOS?**  
Yes. Use Git clone or a Homebrew Tap (packaging scaffolds included). Some Linux-only hints may not apply.

## 🛠 Troubleshooting

- `hint: command not found` → Ensure `~/.local/bin` is on PATH. The installer appends it to `~/.bashrc`.
- Starship line not visible → check that the `custom.sysline` block is present in `~/.config/starship.toml` and restart your terminal.
- Clipboard not copying in interactive mode → install `xclip` or copy manually.
- ShellCheck warnings in CI → they’re surfaced but don’t fail the build by default. Run `make lint` locally to fix them.
