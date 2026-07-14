# jmsung.github.io

Personal website, blog, and resume — published to jmsung.github.io (GitHub Pages).

## Tech Stack

Jekyll (Ruby) static site. Markdown content. Resume built from `_resume/resume.md`
via pandoc + tectonic (`_resume/build.sh`, `_resume/publish.sh`).

## Commands

- `bundle exec jekyll serve` — local preview

### Resume (`_resume/`)

Source of truth is `_resume/resume.md` (Markdown + YAML frontmatter). Pipeline:
`resume.md` → pandoc (`template.tex` + `dates.lua`) → tectonic → PDF. Only ever
edit `resume.md` (or a variant); the template/filter/scripts are fixed machinery.

- `_resume/build.sh [src.md]` — build a PDF → `_resume/out/<name>.pdf` (default: `resume.md`)
- `_resume/publish.sh` — build master + copy → `assets/resume.pdf` (the public default)
- `_resume/new.sh <job-slug>` — start a job-tailored variant: copies master →
  `_resume/variants/<slug>.md` and builds it. Edit that file to tailor, then
  `build.sh variants/<slug>.md`. Variants stay local; only the master is published.

`out/` is gitignored (disposable build artifacts). Arial is read from macOS system
fonts — a Linux/CI build would need a substitute (e.g. Liberation Sans).

<!-- Keep this lean — only what the agent needs while coding.
     No partnership context, goals, or tracking: those live in mb/ or knowledge/. -->
