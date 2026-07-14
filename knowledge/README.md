# knowledge/

Domain knowledge that accretes independently of the code. Hybrid-authored via
human-gated skills (`/wiki-ingest`, `/wiki-learn`); indexed by qmd.

- `raw/` — captured artifacts as-is (PDFs, transcripts, exports). Often gitignored.
- `source/` — distilled per-source pages. In git.
- `wiki/` — synthesized pages. In git, qmd-indexed.

Boundary test: "reusable knowledge I'd retrieve regardless of this code" → here.
Decision rule for placement (`knowledge: cb | mb` in the manifest): "if a
teammate cloned cb, should they get this knowledge?" Yes → this is a real dir.
No → real dir lives at `mb/knowledge/` and this path is a symlink, excluded
via the clone's `info/exclude` (skill-written).
