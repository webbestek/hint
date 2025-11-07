# Install

Choose one of the three official methods.

## 1) Easy GitHub clone (recommended)

```bash
git clone https://github.com/kevin4hrens/hint ~/.local/share/hint
~/.local/share/hint/scripts/install.sh
# Restart terminal or:
source ~/.bashrc
```

## 2) .deb package (Ubuntu/Pop!_OS)

```bash
wget https://github.com/kevin4hrens/hint/releases/download/v0.1.0/hint_0.1.0_amd64.deb
sudo apt install ./hint_0.1.0_amd64.deb
```

## 3) Tarball

```bash
wget https://github.com/kevin4hrens/hint/releases/download/v0.1.0/hint-0.1.0.tar.gz
tar -xzf hint-0.1.0.tar.gz -C ~/.local/share/
~/.local/share/hint/scripts/install.sh
```

---

## Optional packages

```bash
sudo apt update && sudo apt install -y fzf jq dnsutils fd-find ripgrep xclip nmap mtr-tiny tshark shellcheck
echo 'alias fd=fdfind' >> ~/.bashrc
```

## Uninstall

```bash
~/.local/share/hint/scripts/uninstall.sh
```
