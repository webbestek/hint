# Contributing with AI Assistants

Use Copilot, ChatGPT, or Cursor to propose **small, testable** changes.

## Do
- Keep runtime changes in Bash, fast and shellcheck-clean.
- Add hints in the correct category under `hint/`.
- Update docs for behavior changes.

## Don’t
- Add external network calls or heavy dependencies.
- Introduce long-running scans in `bin/hint`.
- Bypass the PR checklist.
