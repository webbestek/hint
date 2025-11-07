#!/usr/bin/env bash
set -euo pipefail
printf "WEB	HTTP headers	curl -I https://example.com	Fetch headers\n"
printf "WEB	Serve here	python3 -m http.server 8000	Static server in this dir\n"
printf "WEB	TLS expiry	openssl s_client -connect example.com:443 -servername example.com </dev/null 2>/dev/null | openssl x509 -noout -enddate	Check certificate expiry\n"\n