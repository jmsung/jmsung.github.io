# docs/specs/ — feature roadmaps

Dated records of feature plans: long-term milestones spanning dev → test →
production. A spec is to a *feature* what an ADR is to a *decision* —
status-tracked (`draft → approved → in-progress → done → superseded`),
frozen after the fact.

Planning hierarchy (cite, don't copy; `mb/` is the umbrella tracking dir in the
harness layout):

    docs/specs/<spec>.md      the roadmap — milestones, official, reviewable
    mb/active/<slug>.md       one milestone = one branch = one workstream
    knowledge/wiki/           validated lessons after execution (/wiki-learn)

Optional by design — solo single-branch work stays in `mb/active/`. Create a
spec when someone other than you must review or rediscover the plan.
**No spec when an ADR already carries the plan** — specs are for roadmaps with
no other durable home; duplicating an ADR's milestones just rots. Cite, don't copy.
`/worktree-done` flips milestone checkboxes on merge.

Structure: `Status:` header (`draft → approved → in-progress → done →
superseded`) → milestone checklist → one section per milestone (scope,
acceptance, linked branch).
