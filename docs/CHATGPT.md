# ChatGPT Guide

When asking ChatGPT to modify or add files, paste:
1. The **goal** and **constraints**:
   - Pure Bash for runtime; no network calls; sub-100ms startup; shellcheck-clean.
   - Hints format: `CATEGORY<TAB>LABEL<TAB>COMMAND<TAB>WHY`.
2. The **current file contents** to be edited.
3. The **expected output**: full file content with the change applied (no commentary).

## Sample prompt
```
Context: Repo “hint” — Starship-only interactive command palette (Bash).
Rules: No network calls; keep it fast; shellcheck-clean; safe-by-default commands.
Task: Add two Docker hints to hint/docker/core.sh (list volumes; prune volumes).
Return: the full, updated file content only.
```
