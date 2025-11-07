# Contributing to hint

Thanks for helping improve hint! This project aims to be friendly to beginners *and* useful for power users.
Please keep changes small, readable, and well explained.

## How to contribute

1. **Fork** the repo and create a branch.
2. Make your changes (see style below).
3. Run quick checks:
   - `scripts/fix-perms.sh` (ensures `+x` bits on scripts)
   - `hint --doctor` (paths and counts look good)
   - `find . -name "*.sh" -print -exec shellcheck -x {} +` (clean shell)
4. Update docs if the behavior changes.
5. Open a Pull Request with a clear description and testing notes.

## Style and guardrails

- Keep the runtime fast. Avoid loops that shell out repeatedly.
- **Do not execute commands in hint files.** Only print TAB‑separated lines.
- Prefer portable Bash (`/usr/bin/env bash`).
- Be explicit with quoting. Use `printf '%s\n' "text"` when printing literal `%` or `<…>`.
- Comments are great. Explain intent, not just the “how”.

## Adding hints

Create or edit a file inside a category (e.g., `hint/dns/myfile.sh`) and print lines like:

```bash
printf '%s\n' "DNS	Trace	dig +trace example.com	Resolution path"
```

Good hints are short, safe, and easy to remember. Use `<angle brackets>` for placeholders.

## Local dev loop

```bash
git clone https://github.com/webbestek/hint.git ~/Projects/hint
~/Projects/hint/scripts/dev-install.sh
source ~/.bashrc
hint
```

## Tests we like

- ShellCheck passes
- `hint` starts fast and lists hints in your environment
- `hint i` works (fzf installed or not)
- Beginner copy reads cleanly

## Communication

- Bug reports → Issues tab
- Questions and ideas → Issues or Discussions
- Security reports → follow SECURITY.md (email, no public issues please)
