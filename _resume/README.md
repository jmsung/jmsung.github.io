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
