#!/usr/bin/env bash
set -euo pipefail
printf "GIT	Status	git status	What changed\n"
printf "GIT	Log	git log --oneline --graph --decorate --all	Visual log\n"
printf "GIT	Amend last commit	git commit --amend --no-edit	Fix last commit message\n"\nprintf "GIT	Discard unstaged	git checkout -- .	Restore working tree\n"\n