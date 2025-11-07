# ----------------------------------------------------------------------------
# Copyright (c) 2025 Kevin Ahrens
# Made with ❤️ by Kevin — and the community.
# Licensed under the MIT License (see LICENSE).
# ----------------------------------------------------------------------------
#!/usr/bin/env bash
set -euo pipefail
printf "GIT	Status (short)	git status -sb	Compact status with branch\n"
printf "GIT	Switch branch	git switch <name>	Move to another branch\n"
printf "GIT	Log graph	git log --oneline --graph --decorate -20	Visual recent history\n"
printf "GIT	Undo last commit (keep)	git reset --soft HEAD~1	Fix message or re-stage\n"
printf "GIT	Amend last message	git commit --amend	Update commit message\n"
printf "GIT	Show staged diff	git diff --cached	Review staged changes\n"
