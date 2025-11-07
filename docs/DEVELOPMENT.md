# Development

## Live symlink (recommended)
```bash
git clone git@github.com:kevin4hrens/hint.git ~/Projects/hint
~/Projects/hint/scripts/dev-install.sh
source ~/.bashrc
```

## Common tasks
```bash
~/.local/share/hint/scripts/doctor.sh
~/.local/share/hint/scripts/fix-perms.sh
```

## Adding hints
Add `.sh` files under a category in `hint/`. Each script should print TAB-separated lines:
```bash
printf "DNS\tTrace\tdig +trace example.com\tFull resolution path\n"
```
Keep scripts fast; avoid long loops and external network calls on startup.
