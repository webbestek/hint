#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "GIT	Status	git status	What changed"
printf '%s\n' "GIT	Visual log	git log --oneline --graph --decorate --all	Compact graph"
