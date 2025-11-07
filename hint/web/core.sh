#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' \"WEB	HTTP headers	curl -I https://example.com	Fetch headers\"
printf '%s\n' \"WEB	Serve here	python3 -m http.server 8000	Static server in this dir\"
printf "WEB	TLS expiry	openssl s_client -connect example.com:443 -servername example.com </dev/null 2>/dev/null | openssl x509 -noout -enddate	Check certificate expiry\n"\n