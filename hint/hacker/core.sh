#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "HACK	Whois	echo 'whois example.com | head -n 20'	Domain info (example)"
printf '%s\n' "HACK	OpenSSL TLS	echo 'openssl s_client -connect example.com:443 -servername example.com </dev/null'	TLS details"
