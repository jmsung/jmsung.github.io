# jmsung.github.io

Personal website, blog, and resume — published to jmsung.github.io (GitHub Pages).

## Tech Stack

Jekyll (Ruby) static site. Markdown content.

## Commands

- `bundle exec jekyll serve` — local preview

### Resume

The resume **source and all build tooling now live privately in hub**, not here:
`~/projects/hub/mb/career/resume/` (`resume.md`, `build.sh`, `publish.sh`, `apply.sh`).
This public repo holds **only the published artifact**: `assets/resume.pdf` (the baseline
resume). It's a real committed file copied in by `hub/.../resume/publish.sh` (GitHub Pages
can't follow a symlink out to hub). To update it: edit/build in hub, run that `publish.sh`,
then commit & push here. Tailored/job-specific resumes stay private in hub and are never
published. Per-job applications run via the `/apply` skill (also hub).

<!-- Keep this lean — only what the agent needs while coding.
     No partnership context, goals, or tracking: those live in mb/ or knowledge/. -->
