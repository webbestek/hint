#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "NODE	Versions	node -v && npm -v	Node and npm versions"
printf '%s\n' "NODE	Outdated	npm outdated	Check outdated deps"
