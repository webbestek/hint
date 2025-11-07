# Repository structure

```
bin/                 # Runtime executables
  hint               # The command palette (dynamic path)
  sysline            # Small system status line for the prompt

hint/                # Categories (each script prints TAB-separated lines)
  general/
  system/
  network/
  dns/
  web/
  security/
  devops/
  git/
  docker/
  node/
  php/
  hacker/
  ai/

scripts/
  install.sh         # Copy install (user scope)
  dev-install.sh     # Symlink install (dev scope)
  enable-insert-binding.sh
  disable-insert-binding.sh
  doctor.sh
  fix-perms.sh

docs/
  USAGE.md
  DEVELOPMENT.md

man/
  man1/hint.1        # Man page

CONTRIBUTING.md
CODE_OF_CONDUCT.md
SECURITY.md
SUPPORT.md
README.md
STRUCTURE.md
LICENSE
CHANGELOG.md
```
