#!/usr/bin/env bash
set -euo pipefail
printf "OPS	Errors this boot	journalctl -p 3 -xb	Systemd errors\n"
printf "OPS	Service status	systemctl status <svc>.service	Inspect service\n"
