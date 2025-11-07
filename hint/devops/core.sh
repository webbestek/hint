#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "OPS	Errors this boot	journalctl -p 3 -xb	Systemd errors"
printf '%s\n' "OPS	Service status	systemctl status <service>.service	Inspect a service"
