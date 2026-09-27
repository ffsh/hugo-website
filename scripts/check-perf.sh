#!/usr/bin/env bash
set -euo pipefail

dest="${TMPDIR:-/tmp}/freifunk-hugo-perf"
rm -rf "$dest"
hugo --gc --minify --destination "$dest" >/tmp/freifunk-hugo-perf.log 2>&1

python3 -m http.server 1313 --directory "$dest" >/tmp/freifunk-hugo-perf-http.log 2>&1 &
pid=$!
cleanup() {
  kill "$pid" 2>/dev/null || true
  wait "$pid" 2>/dev/null || true
}
trap cleanup EXIT

for i in $(seq 1 30); do
  if curl -fsS http://localhost:1313 >/dev/null 2>&1; then
    break
  fi
  sleep 1
done

mkdir -p .reports
lighthouse http://localhost:1313 --output=json --output-path=./.reports/lighthouse.json --chrome-flags='--headless --no-sandbox' --quiet
