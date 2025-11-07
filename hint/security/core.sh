#!/usr/bin/env bash
set -euo pipefail
printf "SEC	Firewall (ufw)	sudo ufw status verbose	Show UFW rules\n"
printf "SEC	Fail2ban status	sudo fail2ban-client status	Jails & bans\n"
printf "SEC	Open sockets	ss -tulpn	Inspect exposed services\n"
printf "SEC	TLS handshake	openssl s_client -connect example.com:443 -servername example.com -tls1_2 </dev/null	Inspect cert/ALPN\n"
