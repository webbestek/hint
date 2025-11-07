#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "SEC	Firewall (ufw)	sudo ufw status verbose	Show UFW rules"
printf '%s\n' "SEC	Fail2ban	sudo fail2ban-client status	Jails & bans"
