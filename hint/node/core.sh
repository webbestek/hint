#!/usr/bin/env bash
set -euo pipefail
printf "NODE	Versions	node -v && npm -v	Node and NPM versions\n"
printf "NODE	Outdated	npm outdated	Check outdated deps\n"
printf "NODE	Run script	npm run <script>	Execute named npm script\n"\nprintf "NODE	Install deps	npm ci	Clean install from lockfile\n"\n