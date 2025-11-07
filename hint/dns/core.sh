#!/usr/bin/env bash
set -euo pipefail
printf "DNS	A record	dig +short example.com	Resolve A\n"
printf "DNS	Trace	dig +trace example.com	Resolution path\n"
printf "DNS	MX records	dig +short MX example.com	Mail exchangers\n"\nprintf "DNS	TXT records	dig +short TXT example.com	TXT values (SPF/DMARC)\n"\n