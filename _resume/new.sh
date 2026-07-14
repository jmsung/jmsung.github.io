#!/usr/bin/env bash
# Start a job-tailored resume variant from the master and build it.
# Usage: ./new.sh <job-slug>      e.g. ./new.sh acme-bio
# Creates variants/<slug>.md (copy of resume.md) and builds out/<slug>.pdf.
set -euo pipefail
cd "$(dirname "$0")"

SLUG="${1:-}"
if [[ -z "$SLUG" ]]; then
  echo "usage: ./new.sh <job-slug>   (e.g. acme-bio)" >&2
  exit 1
fi

SRC="variants/${SLUG}.md"
if [[ -e "$SRC" ]]; then
  echo "variant already exists: $SRC — edit it, then run ./build.sh $SRC" >&2
  exit 1
fi

cp resume.md "$SRC"
./build.sh "$SRC"
echo
echo "next: edit $SRC to tailor for the job, then rebuild:"
echo "  ./build.sh $SRC"
