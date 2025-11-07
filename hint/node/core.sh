#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' \"NODE	Versions	node -v && npm -v	Node and NPM versions\"
printf '%s\n' \"NODE	Outdated	npm outdated	Check outdated deps\"
printf "NODE	Run script	npm run <script>	Execute named npm script\n"\nprintf "NODE	Install deps	npm ci	Clean install from lockfile\n"\n