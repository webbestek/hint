# Contributing with AI tools (Copilot, ChatGPT, Cursor)

We welcome AI‑assisted contributions with a few simple rules:

- Output must be **readable** and **explainable** by a human reviewer.
- Keep the runtime fast; avoid heavy loops and network calls on startup.
- Shell scripts must pass ShellCheck.
- Hint files **must only print** TAB‑separated lines. No execution.

## Good prompts

- “Add three safe DNS hints in `hint/dns/core.sh` using the TAB‑separated format.”
- “Refactor `bin/hint` to keep colors out of awk and explain the change.”

## PR checklist

- [ ] `scripts/fix-perms.sh` ran
- [ ] `hint --doctor` succeeds locally
- [ ] ShellCheck clean for changed files
- [ ] Docs updated if behavior changed
