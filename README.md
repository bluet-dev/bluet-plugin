# Bluet for Claude Code

Your agents never start a task blind, and never finish one silently.

```bash
claude plugin marketplace add bluet-dev/bluet-plugin
claude plugin install bluet@bluet
```

Then, in the repository you work on, either:

- **Local, no account** — `npx bluet-mcp init` reads the README, the files written for agents and (with `gh`) merged pull requests and issues into `~/.bluet`.
- **Hosted** — connect GitHub at [bluet.dev](https://bluet.dev), and at the end of setup run the `npx bluet-mcp login <token>` it gives you. Sessions then read the memory bluet.dev keeps.

Each session starts with the product's rules and what is waiting on you; `bluet_preflight` briefs the agent on its task, `bluet_check` tests a plan against what was decided, and a debrief proposes what the session settled.
