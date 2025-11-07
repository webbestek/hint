#!/usr/bin/env bash
set -euo pipefail
printf "AI	Tokenize text	python3 - <<PY
import sys;print(sum(len(w) for w in sys.stdin.read().split()))
PY	Rough token-like count\n"
printf "AI	Word count	wc -w <FILE>	Quick word count of a file\n"
printf "AI	Extract code blocks	awk '/```/{on=!on;next} on' < FILE.md	Grab fenced code from markdown\n"
