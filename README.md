# hint — Starship-powered interactive command palette

**hint** is a fast, clean, *Starship-only* command palette for your terminal. It helps new Linux users learn commands without being annoying, and gives power users a context-aware launcher for Git, Docker, networking, DNS, logs, and more.

> Made with ❤️ by Kevin — and the community. MIT Licensed.

## Features

- **Starship-first**: installs a Starship custom module + `hint` CLI.
- **Interactive palette** with search (uses `fzf` if available) and copy-to-clipboard (Alt+Enter).
- **Context-aware**: Git repo? Compose file? package.json/composer.json? It adapts.
- **Hacker/Debugging mode**: rich hints for logs, DNS, networking, tcpdump/tshark, ufw, fail2ban, nmap, mtr.
- **Extensible**: drop new hint files in `hint/<category>/` or `~/.config/hint/custom.sh`.
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
wget https://github.com/kevin4hrens/hint/releases/download/v0.2.0/hint_0.2.0_amd64.deb
sudo apt install ./hint_0.2.0_amd64.deb
```

### 3) Tarball
```bash
wget https://github.com/kevin4hrens/hint/releases/download/v0.2.0/hint-0.2.0.tar.gz
tar -xzf hint-0.2.0.tar.gz -C ~/.local/share/
~/.local/share/hint/scripts/install.sh
```

After install, you’ll see a Starship banner like:
```
🖥 load 0.42 | 🧠 RAM 3.1G/15.4G | 💽 42% | 🔋 78% | 💡 type hint
```
- Press **Ctrl-H** for the interactive palette.
- Type `hint` for compact hints, `hint i` for the full picker.

## ✨ Add your own custom hints

Your personal file is:
```
~/.config/hint/custom.sh
```
If it doesn’t exist, `hint` auto-creates it on the first run.

Each line should print a hint as **TAB-separated** fields:
```
CATEGORY<TAB>LABEL<TAB>COMMAND<TAB>WHY
```
Example:
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
