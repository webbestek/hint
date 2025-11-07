#!/usr/bin/env bash
set -euo pipefail
printf "NET	Listening ports	ss -tulpn	Which services are listening\n"
printf "NET	Quick ping	ping -c 4 1.1.1.1	Connectivity test\n"
