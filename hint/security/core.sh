#!/usr/bin/env bash
set -euo pipefail
printf "SEC	Firewall (ufw)	sudo ufw status verbose	Show UFW rules\n"
printf "SEC	Fail2ban	sudo fail2ban-client status	Jails & bans\n"
printf "SEC	World-writable files	find . -type f -perm -0002 -print	Audit perms (cwd)\n"\nprintf "SEC	SUID binaries	find / -perm -4000 -type f 2>/dev/null | sort	List SUID (needs care)\n"\n