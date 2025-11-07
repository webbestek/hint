#!/usr/bin/env bash
set -euo pipefail
printf "WEB	HTTP headers	curl -I https://example.com	Fetch headers only\n"
printf "WEB	Follow logs (nginx)	sudo journalctl -u nginx -f -n 100	Tail nginx logs (systemd)\n"
printf "WEB	Listen on port 8000	python3 -m http.server 8000	Quick static server for this directory\n"
printf "WEB	Which process on 80?	sudo lsof -i :80	Find process using port 80\n"
