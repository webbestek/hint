#!/usr/bin/env bash
set -euo pipefail
printf "WEB	HTTP headers	curl -I https://example.com	Fetch headers\n"
printf "WEB	Serve here	python3 -m http.server 8000	Static server in this dir\n"
