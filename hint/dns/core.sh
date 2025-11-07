#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "DNS	A record	dig +short example.com	Resolve A"
printf '%s\n' "DNS	Trace	dig +trace example.com	Resolution path"
