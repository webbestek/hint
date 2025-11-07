#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' \"DNS	A record	dig +short example.com	Resolve A\"
printf '%s\n' \"DNS	Trace	dig +trace example.com	Resolution path\"
printf "DNS	MX records	dig +short MX example.com	Mail exchangers\n"\nprintf "DNS	TXT records	dig +short TXT example.com	TXT values (SPF/DMARC)\n"\n