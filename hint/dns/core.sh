#!/usr/bin/env bash
set -euo pipefail
printf "DNS	A record	dig +short example.com	Resolve A\n"
printf "DNS	Trace	dig +trace example.com	Resolution path\n"
