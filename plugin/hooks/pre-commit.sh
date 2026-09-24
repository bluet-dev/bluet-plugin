#!/bin/sh
# Before Claude runs a Bash command: if it is a git commit, ask Bluet to check
# the staged change against what was decided. Every other command returns at
# once - no npx, no network - so this hook costs nothing outside a commit.
input=$(cat)
case "$input" in
  *"git commit"*|*"git -C "*" commit"*) ;;
  *) exit 0 ;;
esac
printf '%s' "$input" | npx -y bluet-mcp@latest hook pre-commit
