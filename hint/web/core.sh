#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "WEB	HTTP headers	curl -I https://example.com	Fetch headers"
printf '%s\n' "WEB	Serve here	python3 -m http.server 8000	Static server in this dir"
