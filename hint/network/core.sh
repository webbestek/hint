#!/usr/bin/env bash
set -euo pipefail
printf "NET	My public IP	curl -s https://ifconfig.me	Resolve your public IP\n"
printf "NET	Listening ports	ss -tulpn	Which services are listening\n"
printf "NET	Traceroute	mtr -rwzbc 100 8.8.8.8	Route with loss stats\n"
printf "NET	Quick ping	ping -c 4 1.1.1.1	Connectivity test\n"
