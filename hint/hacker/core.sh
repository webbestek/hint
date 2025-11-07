# ----------------------------------------------------------------------------
# Copyright (c) 2025 Kevin Ahrens
# Made with ❤️ by Kevin — and the community.
# Licensed under the MIT License (see LICENSE).
# ----------------------------------------------------------------------------
#!/usr/bin/env bash
set -euo pipefail
printf "HACK	Kernel messages	sudo dmesg -T | tail -200	Recent kernel logs\n"
printf "HACK	Boot errors	journalctl -p 3 -xb	Errors from this boot\n"
printf "HACK	Follow syslog	sudo journalctl -f -n 100	Live system logs\n"
printf "HACK	Follow service	journalctl -u <service>.service -f	Tail a specific service\n"
printf "HACK	Find disk hogs	sudo du -hx / | sort -h | tail -40	Large folders (human sort)\n"
printf "HACK	Deleted-open files	sudo lsof +L1	Files deleted but still open (space leak)\n"
printf "HACK	Network capture (tcpdump)	sudo tcpdump -i any -n -vv port 443	See TLS traffic metadata\n"
printf "HACK	HTTP filter (tshark)	sudo tshark -Y http -i any	Live HTTP layer view\n"
printf "HACK	Firewall (ufw)	sudo ufw status verbose	Check UFW rules\n"
printf "HACK	Fail2ban status	sudo fail2ban-client status	Show jails & bans\n"
printf "HACK	SSL/TLS scan	openssl s_client -connect example.com:443 -servername example.com -tls1_2 < /dev/null	Inspect certs\n"
