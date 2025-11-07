#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "AI	Word count	wc -w <FILE>	Quick word count of a file"
printf '%s\n' "AI	Token-ish count	python3 -c 'import sys;print(len(sys.stdin.read().split()))'	Approx word-like count"
printf '%s\n' "AI	Extract fenced code	awk '/```/{on=!on;next} on' < FILE.md	Grab fenced code blocks from markdown"
