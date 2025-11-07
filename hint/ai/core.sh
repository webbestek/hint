#!/usr/bin/env bash
set -euo pipefail
printf "AI\tWord count\twc -w <FILE>\tQuick word count of a file\n"
printf "AI\tToken-ish count\tpython3 - <<'PY'\nimport sys\nprint(sum(len(w) for w in sys.stdin.read().split()))\nPY\tApproximate token-like count\n"
printf "AI\tExtract fenced code\tawk '/```/{on=!on;next} on' < FILE.md\tGrab fenced code blocks from markdown\n"
printf "AI\tStrip ANSI\tsed -r 's/\\x1B\[[0-9;]*[a-zA-Z]//g' < input.txt\tClean color codes before sending to models\n"
