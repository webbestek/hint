#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' \"GIT	Status	git status	What changed\"
printf '%s\n' \"GIT	Log	git log --oneline --graph --decorate --all	Visual log\"
printf "GIT	Amend last commit	git commit --amend --no-edit	Fix last commit message\n"\nprintf "GIT	Discard unstaged	git checkout -- .	Restore working tree\n"\n