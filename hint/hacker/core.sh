#!/usr/bin/env bash
set -euo pipefail
printf "HACK	Whois	whois example.com | head -n 20	Domain info\n"
printf "HACK	OpenSSL TLS	openssl s_client -connect example.com:443 -servername example.com </dev/null	TLS details\n"
printf "HACK	Port scan	nmap -p 1-1024 -T4 example.com	Quick scan common ports\n"\nprintf "HACK	HTTP/2 check	openssl s_client -alpn h2 -connect example.com:443 -servername example.com </dev/null | grep -i "ALPN" -A1	Check ALPN\n"\n