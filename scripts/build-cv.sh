#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
# Render the LaTeX CV (cv/main.tex) to PDF and publish it — along with the
# .tex source — into static/uploads/ so Hugo serves them at:
#     /uploads/Max-Fleming-CV.pdf
#     /uploads/Max-Fleming-CV.tex
#
# Run automatically by the server deploy on every update, before `hugo`.
# Safe to run locally too (needs a TeX distribution with pdflatex).
# ─────────────────────────────────────────────────────────────────────────────
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CV_DIR="$ROOT/cv"
OUT_DIR="$ROOT/static/uploads"
NAME="Max-Fleming-CV"
LOG="${TMPDIR:-/tmp}/cv-build.log"

if ! command -v pdflatex >/dev/null 2>&1; then
  echo "build-cv: pdflatex not found — skipping CV render (PDF will be stale)" >&2
  exit 0
fi

mkdir -p "$OUT_DIR"
cd "$CV_DIR"

# Two passes so any cross-references settle; nonstopmode never blocks on input.
for pass in 1 2; do
  if ! pdflatex -interaction=nonstopmode -halt-on-error -jobname=main main.tex >"$LOG" 2>&1; then
    echo "build-cv: pdflatex failed on pass $pass — see below" >&2
    tail -n 30 "$LOG" >&2
    exit 1
  fi
done

cp -f main.pdf "$OUT_DIR/$NAME.pdf"
cp -f main.tex "$OUT_DIR/$NAME.tex"
echo "build-cv: published $NAME.pdf ($(du -h "$OUT_DIR/$NAME.pdf" | cut -f1)) + $NAME.tex"
