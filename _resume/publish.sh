#!/usr/bin/env bash
# Build the resume and copy the PDF into the site's assets (one dir up).
# Source lives in _resume/ (Jekyll ignores underscore dirs); only the PDF ships.
set -euo pipefail
cd "$(dirname "$0")"

DEST="../assets/resume.pdf"

./build.sh
cp out/resume.pdf "$DEST"
echo "published -> jmsung.github.io/assets/resume.pdf"
echo "commit & push to go live."
