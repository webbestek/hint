# ----------------------------------------------------------------------------
# Copyright (c) 2025 Kevin Ahrens
# Made with ❤️ by Kevin — and the community.
# Licensed under the MIT License (see LICENSE).
# ----------------------------------------------------------------------------
#!/usr/bin/env bash
set -euo pipefail
printf "FS	List with details	ls -lah	Show hidden files, sizes, owners\n"
printf "FS	Size by folder (1)	du -h --max-depth=1 | sort -h	Find big folders in current dir\n"
printf "FS	Jump back	cd -	Return to previous dir\n"
printf "FS	Find by name	fdfind <pattern>	Install: apt install fd-find; alias fd=fdfind\n"
printf "FS	Fuzzy pick file	fzf	Pick a file interactively (then open with your editor)\n"
printf "SYS	Disk usage here	df -h .	Disk usage for current filesystem\n"
printf "SYS	Memory usage	free -h	Human-readable RAM stats\n"
printf "SYS	Top processes	top	Interactive CPU/mem viewer (q to quit)\n"
printf "SYS	Errors this boot	journalctl -p 3 -xb	Systemd errors\n"
printf "PKG	Update all	sudo apt update && sudo apt upgrade -y	Refresh + upgrade packages\n"
printf "PKG	Install package	sudo apt install <name>	Install software\n"
printf "PKG	Remove package	sudo apt remove <name>	Uninstall software\n"
