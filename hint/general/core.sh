#!/usr/bin/env bash
set -euo pipefail
printf "GEN	Reload shell	source ~/.bashrc	Apply changes without new terminal\n"
printf "GEN	Edit bashrc	nano ~/.bashrc	Quick edit\n"
printf "GEN	Find file by name	fd <name>	Fast find (install fd)\n"\nprintf "GEN	Find in files	rg <text>	Fast grep (ripgrep)\n"\nprintf "GEN	Disk usage (dir)	du -sh .	Size of current directory\n"\n