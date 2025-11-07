#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' \"NET	Listening ports	ss -tulpn	Which services are listening\"
printf '%s\n' \"NET	Quick ping	ping -c 4 1.1.1.1	Connectivity test\"
printf "NET	DNS cache test	dig @1.1.1.1 example.com +time=2 +retry=0	Bypass local resolver\n"\nprintf "NET	HTTP check	curl -fsS https://example.com -o /dev/null && echo OK || echo FAIL	Quick site check\n"\n