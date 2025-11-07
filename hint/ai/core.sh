#!/usr/bin/env bash
set -euo pipefail
printf "AI	Word count	wc -w <FILE>	Quick word count of a file\n"
printf "AI	Extract code	awk '/```/{on=!on;next} on' < FILE.md	Grab fenced code from markdown\n"
