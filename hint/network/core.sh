#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "NET	Listening ports	ss -tulpn	Which services are listening"
printf '%s\n' "NET	Quick ping	ping -c 4 1.1.1.1	Connectivity test"
