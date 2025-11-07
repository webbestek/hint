#!/usr/bin/env bash
set -euo pipefail
printf "HACK	Whois	whois example.com | head -n 20	Domain info\n"
printf "HACK	OpenSSL TLS	openssl s_client -connect example.com:443 -servername example.com </dev/null	TLS details\n"
