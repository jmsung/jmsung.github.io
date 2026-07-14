# resume

Version-controlled resume. Plain-text source → PDF via pandoc + tectonic.

## Source of truth

- `resume.md` — the resume content (the only file you edit for content).
- `template.tex` — LaTeX layout (fonts, spacing, section styling).
- `dates.lua` — right-aligns the `| MM/YYYY – Present` date in each entry heading.
- `variants/` — tailored copies of `resume.md` for specific applications.

## Build

```bash
./build.sh                 # resume.md      -> out/resume.pdf
./build.sh variants/x.md   # a tailored one -> out/x.pdf
```

## Tailor for a specific job

```bash
./new.sh acme-bio          # copy master -> variants/acme-bio.md + build out/acme-bio.pdf
# edit variants/acme-bio.md (reorder/rewrite bullets, swap summary), then:
./build.sh variants/acme-bio.md
# share out/acme-bio.pdf — variants stay local, only the master is published.
```

## Publish to the website

```bash
./publish.sh               # build + copy PDF into jmsung.github.io/assets/resume.pdf
# then commit & push jmsung.github.io
```

## Privacy

This folder is the **private** source (drafts, variants, history). Keep it out of
the public site repo. Only the built `resume.pdf` is published. If you `git init`
here, use a **private** remote.

## Heading convention

Entry headings encode the date after a pipe; everything after the last ` | ` is
pushed to the right margin:

```
### Company — Role, Location | 06/2026 – Present
```
