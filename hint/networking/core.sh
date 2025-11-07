# ----------------------------------------------------------------------------
# Copyright (c) 2025 Kevin Ahrens
# Made with ❤️ by Kevin — and the community.
# Licensed under the MIT License (see LICENSE).
# ----------------------------------------------------------------------------
#!/usr/bin/env bash
set -euo pipefail
printf "NET	Public IP	curl -s https://ifconfig.me	Get your public IP\n"
printf "NET	Listening ports	ss -tulpn	Which services are listening\n"
printf "NET	Traceroute	mtr -rwzbc 100 8.8.8.8	Fast traceroute with loss stats (needs mtr-tiny)\n"
printf "NET	Scan open ports	nmap -T4 -p- <host>	Quick full-port scan (needs nmap)\n"
printf "NET	HTTP headers	curl -I https://example.com	Fetch response headers only\n"
printf "DNS	A record	dig A example.com +short	Resolve A record (dnsutils)\n"
printf "DNS	Full trace	dig +trace example.com	See DNS resolution path\n"
printf "DNS	Query resolver	resolvectl query example.com	Use systemd-resolved\n"
printf "DNS	Inspect DNS conf	resolvectl status	Active DNS servers & domains\n"
