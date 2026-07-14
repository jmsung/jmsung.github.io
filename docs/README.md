# docs/

About THIS artifact: architecture, ADRs, API reference, design notes.
Human-authored, changes with the code, read linearly.

Two genres:
- **Living reference** (architecture, API docs) — always current, evolves with code.
- **Dated records** — frozen point-in-time artifacts: `adr/` (decisions),
  `specs/` (feature roadmaps with milestones — see `specs/README.md` for the
  structure). Optional — create when a plan needs review or rediscovery by
  someone other than you.

Boundary test: "explains how this artifact works" → here.
Not here: reusable domain knowledge (→ `../knowledge/`), machine-written
ledgers (→ `../agent/`), private scratch (→ the umbrella `mb/`, in the harness
layout).
