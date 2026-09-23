---
name: bluet
description: Use before changing code in a repository that has Bluet product memory (the session brief mentions it), before committing, and when finishing work that settled something. Also when the user asks what was decided, what the rules are, or what is waiting for their judgment.
---

Bluet holds this product's decisions, rules and intent — what the code does not say.

1. **Before editing**, call `bluet_preflight` with the product slug, the task in a sentence, and the files you expect to touch. Treat its rules as binding; they record what went wrong before. If it names an open question your task depends on, ask the user before choosing.
2. **Before committing**, call `bluet_check` with the plan or a summary of the diff. On a `blocking` conflict, stop and tell the user which record it collides with. Do not work around it.
3. **When you finish** work that settled something — a choice between options, a constraint you adopted, a trap you hit — call `bluet_debrief` with a short summary and those items. They are proposed, not recorded; the owner decides.
4. When the user asks what needs them, call `bluet_proposals_list` and walk them through it. Only call `bluet_proposal_judge` on their explicit say-so.

No product for this repository yet? Run `npx bluet-mcp init` in its root: it reads the README, the files written for agents, and (with `gh`) merged pull requests and issues. No account needed.
