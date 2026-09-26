#!/usr/bin/env bash
set -euo pipefail

arch="$(uname -m)"
case "$arch" in
  x86_64)
    wp2hugo_arch="x86_64"
    ;;
  aarch64)
    wp2hugo_arch="arm64"
    ;;
  *)
    echo "Unsupported architecture for wp2hugo: $arch" >&2
    exit 1
    ;;
esac

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

curl -fsSL \
  -o "$tmp_dir/wp2hugo.tar.gz" \
  "https://github.com/ashishb/wp2hugo/releases/latest/download/wp2hugo_Linux_${wp2hugo_arch}.tar.gz"
tar -xzf "$tmp_dir/wp2hugo.tar.gz" -C "$tmp_dir"

if [ -w /usr/local/bin ]; then
  install -m 0755 "$tmp_dir/wp2hugo" /usr/local/bin/wp2hugo
elif command -v sudo >/dev/null 2>&1; then
  sudo install -m 0755 "$tmp_dir/wp2hugo" /usr/local/bin/wp2hugo
else
  mkdir -p "$HOME/.local/bin"
  install -m 0755 "$tmp_dir/wp2hugo" "$HOME/.local/bin/wp2hugo"
fi
