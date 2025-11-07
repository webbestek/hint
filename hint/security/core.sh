#!/usr/bin/env bash
set -euo pipefail
printf "SEC	Firewall (ufw)	sudo ufw status verbose	Show UFW rules\n"
printf "SEC	Fail2ban	sudo fail2ban-client status	Jails & bans\n"
