# jmsung.github.io — Knowledge Conventions

This file governs the project knowledge base: `knowledge/wiki/` (resolves to
`cb/knowledge/wiki/`, or `mb/knowledge/wiki/` via symlink when `knowledge: mb`).
For code conventions, see the repo CLAUDE.md.

> **This file is the authoritative, self-contained instantiation of the knowledge
> conventions** — it ships into the repo and governs an agent working here even
> with no access to harness. Rationale and canonical schema live in
> `harness/docs/knowledge-harness.md`; the conflict cascade, frontmatter schema,
> nav-link rule, and agent instructions are mirrored there — edit both together.
> Trim freely: delete the rows, rules, and sections this project doesn't use.

## Knowledge structure

Hierarchical levels + source quality. Use only what the project needs — a small
wiki stays flat (home/index/log plus a few pages); adopt levels as content
accretes. Delete the rows you don't use.

| Level | Name | Example |
|---|---|---|
| L0 | Axiom | axioms.md — foundational rules; changes require human approval |
| L1 | Finding | findings/ — validated cross-cutting patterns (one file per theme) |
| L2 | Strategy | per-topic strategy.md — operational heuristics, recipes |
| L3 | Observation | experiment logs, session notes |
| L4 | Source | ingested papers and external docs (see `../source/`) |

Source-quality axis: at the same level, `published_paper` > `agent_analysis` > `experiment_note`.

## Conflict resolution

This cascade is an **editable default — reorder or delete rules to fit this wiki;
the trimmed list below IS this project's conflict policy.** (Source-quality wikis
lead with provenance; hierarchical with level; temporal/product with recency.)

0. **`supersedes:`** — if page B lists A in `supersedes:`, A is historical-only.
   An explicit author decision; it wins outright. Don't edit superseded pages.
1. **Lex superior** — higher `level` wins (L0 > L1 > … > L4).
2. **Source-quality** — *at the same level*, `published_paper` > `agent_analysis` > `experiment_note`.
3. **Lex specialis** — all else equal, the more specific page wins.
4. **Lex posterior** — last resort, newer wins, by **`git log`** (commit recency);
   never by `created:`/`updated:` frontmatter (banned).

Multiple L3 observations contradicting an L1 finding → surface in log.md and
escalate to human. The cascade decides which page is authoritative; the human
decides the actual edit. Do NOT auto-override or silently resolve.

## Common directories

Create as needed — not all directories are required from the start:

```
knowledge/
├── raw/                  ← captured artifacts (gitignored except READMEs; skill-managed)
├── source/               ← distilled per-source pages, in git (skill-managed)
└── wiki/
    ├── home.md           ← entry point (project overview, where to start)
    ├── index.md          ← catalog of all pages (always present)
    ├── log.md            ← append-only event trail (always present)
    ├── sources.md        ← optional: external sources (NotebookLM, Drive)
    ├── axioms.md         ← optional: L0 rules (hierarchical wikis)
    ├── reference/        ← curated per-source entity pages
    ├── findings/         ← L1 validated patterns (one file per theme)
    ├── concepts/         ← optional: conceptual pages
    └── {{topic-slug}}/   ← optional: per-topic pages or subdirectories
                            (flat wikis use plain pages; research-style uses
                             subdirs with strategy.md + experiment logs)
```

Every harness dir ships a placeholder README describing its role; the wiki
seeds (home/index/log) ship filled-in with `{{...}}` placeholders.

## Frontmatter

```yaml
---
level: {{0-4}}        # hierarchical wikis — validation status; omit on flat wikis
cites:                # ONLY when the body links another directory; root-relative from wiki/
  - findings/foo.md
source_type: {{type}} # optional — published_paper | agent_analysis | experiment_note
supersedes:           # temporal wikis — root-relative pages this replaces (historical-only)
  - reference/old-page.md
# Provenance (added by /wiki-ingest on source/ pages):
# type, source_url, source_local, source_drive, author
---
```

`level` (validation status) and `source_type` (provenance) are independent axes.

Conventions:
- `cites:` is **conditional, cross-directory only** — add it only when the body
  links a page in a different directory. Siblings don't need cites.
- Paths in `cites:`/`supersedes:` are **wiki-root-relative** from `wiki/` (e.g.,
  `findings/foo.md`, not `../findings/foo.md`) — file-relative paths trip lint.
- Every `[[cross-directory]]` link in the page **body** needs a matching `cites:`
  entry — the `[[home]] | [[index]]` nav line is exempt.
- No `created:` or `updated:` fields — use `git log`.
- YAML files use `# cites: ...` comments instead of frontmatter.

## Nav links

Every page gets a nav line right after the frontmatter closing `---`:
- Root pages: `[[home]] | [[index]]`
- Subdirectory pages: `[[../home]] | [[../index]]`

## Agent instructions

1. **Search first for lookups; orient via home/index for curation.** Use
   `/wiki-query` to *find* things; read home.md then index.md to *orient*.
2. **Follow `cites:` links** to navigate related pages.
3. **When creating or modifying a page**, update index.md and append to log.md in
   the same action. For a manually created page, add the nav line and re-embed qmd
   (`qmd embed -c ${PROJECT}-knowledge`) so search sees it.
4. **When ingesting a source**, use `/wiki-ingest` — raw artifact to `../raw/`,
   distilled page to `../source/`. Don't inline summaries into wiki pages.
5. **Never write `../raw/` or `../source/` without explicit per-artifact human
   approval.** Ingest is human-gated; `source/` is regen-able — don't hand-edit.
6. **When you find a contradiction**, append to log.md and apply the conflict
   cascade above. The cascade decides which page is authoritative; you don't
   silently resolve, and the human decides the actual edit.
7. **Respect level and source weighting where used.** An L0 axiom outweighs any
   number of L3 observations; cite the source type when making claims. (Skip on
   flat wikis.)
8. **Promote good answers to pages.** Reusable synthesis → findings/ or the
   appropriate location.
9. **Keep axioms.md small** (hierarchical wikis only). If unsure whether something
   is L0, it's L1 at most.
