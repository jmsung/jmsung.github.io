#!/usr/bin/env bash
# Build resume.md (or a variant) -> out/<name>.pdf via pandoc + tectonic.
# Usage: ./build.sh [source.md]   (default: resume.md)
set -euo pipefail
cd "$(dirname "$0")"

SRC="${1:-resume.md}"
OUT="out/$(basename "${SRC%.md}").pdf"

pandoc "$SRC" \
  --template=template.tex \
  --shift-heading-level-by=-1 \
  --lua-filter=dates.lua \
  --pdf-engine=tectonic \
  -o "$OUT"

echo "built $OUT"
