# Repository structure

```
bin/                 # Runtime executables
  hint               # The command palette (dynamic path)
  sysline            # Starship line (username, load, RAM, disk, battery)

hint/                # Categories (each script prints TAB-separated lines)
  general/           # Everyday commands
  system/            # OS info, resources, services
  network/           # Connectivity & diagnostics
  dns/               # DNS lookups and tracing
  web/               # HTTP, servers, ports
  security/          # ufw, fail2ban, openssl checks
  devops/            # journalctl, systemctl, logs
  git/               # Git workflow
  docker/            # Docker and Compose
  node/              # Node/NPM
  php/               # Composer/PHP
  hacker/            # Advanced debugging
  ai/                # Text helpers

scripts/             # Installer and tooling
  install.sh         # Copy install (user scope)
  dev-install.sh     # Symlink install (dev scope)
  doctor.sh          # Environment diagnostics
  fix-perms.sh       # Ensure +x bits

man/
  man1/hint.1        # Man page

docs/
  USAGE.md           # Usage details
  DEVELOPMENT.md     # Contributor workflow

README.md
STRUCTURE.md
CHANGELOG.md
VERSION
```
