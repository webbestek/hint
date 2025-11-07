#!/usr/bin/env bash
set -euo pipefail
printf "OPS	Errors this boot	journalctl -p 3 -xb	Systemd errors\n"
printf "OPS	Tail syslog	sudo journalctl -f -n 200	Follow system logs\n"
printf "OPS	Service status	systemctl status <svc>.service	Inspect a service\n"
printf "OPS	Reload daemon	sudo systemctl daemon-reload	Reload unit files\n"
