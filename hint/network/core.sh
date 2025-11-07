#!/usr/bin/env bash
set -euo pipefail
printf "NET	Listening ports	ss -tulpn	Which services are listening\n"
printf "NET	Quick ping	ping -c 4 1.1.1.1	Connectivity test\n"
printf "NET	DNS cache test	dig @1.1.1.1 example.com +time=2 +retry=0	Bypass local resolver\n"\nprintf "NET	HTTP check	curl -fsS https://example.com -o /dev/null && echo OK || echo FAIL	Quick site check\n"\n