#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' \"OPS	Errors this boot	journalctl -p 3 -xb	Systemd errors\"
printf '%s\n' \"OPS	Service status	systemctl status <svc>.service	Inspect service\"
printf "OPS	Journal (unit)	journalctl -u <svc>.service -f -n 200	Follow one service\n"\nprintf "OPS	Open file count	lsof | wc -l	Rough open files count\n"\n