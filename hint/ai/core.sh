#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "AI	Word count	wc -w <FILE>	Quick word count of a file"
printf '%s\n' "AI	Token-ish count	python3 -c "import sys;print(sum(len(w) for w in sys.stdin.read().split()))"	Approximate token-like count"
printf '%s\n' "AI	Extract fenced code	awk '/```/{on=!on;next} on' < FILE.md	Grab fenced code blocks from markdown"
printf '%s\n' "AI	Strip ANSI	sed -r 's/\\x1B\[[0-9;]*[a-zA-Z]//g' < input.txt	Clean color codes before sending to models"
