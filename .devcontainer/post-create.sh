#!/usr/bin/env bash
set -euo pipefail

WP2HUGO_VERSION="1.36.0"

arch="$(uname -m)"
case "$arch" in
  x86_64)
    wp2hugo_arch="x86_64"
    wp2hugo_sha256="ac68a655cec66feeb9d24086f1fdf7dca82b4563690f5b6281a227f9b58c08a7"
    ;;
  aarch64)
    wp2hugo_arch="arm64"
    wp2hugo_sha256="1745a79e529b9d4a3ebcf5327e108f0f4d8f6242f859be52f420a17b865b2b32"
    ;;
  *)
    echo "Unsupported architecture for wp2hugo: $arch" >&2
    exit 1
    ;;
esac

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

archive_name="wp2hugo_Linux_${wp2hugo_arch}.tar.gz"

curl -fsSL \
  -o "$tmp_dir/${archive_name}" \
  "https://github.com/ashishb/wp2hugo/releases/download/${WP2HUGO_VERSION}/${archive_name}"
printf '%s  %s\n' "$wp2hugo_sha256" "$archive_name" > "$tmp_dir/wp2hugo.sha256"
(cd "$tmp_dir" && sha256sum -c "$tmp_dir/wp2hugo.sha256")
tar -xzf "$tmp_dir/${archive_name}" -C "$tmp_dir"

if [ -w /usr/local/bin ]; then
  install -m 0755 "$tmp_dir/wp2hugo" /usr/local/bin/wp2hugo
elif command -v sudo >/dev/null 2>&1; then
  sudo install -m 0755 "$tmp_dir/wp2hugo" /usr/local/bin/wp2hugo
else
  mkdir -p "$HOME/.local/bin"
  install -m 0755 "$tmp_dir/wp2hugo" "$HOME/.local/bin/wp2hugo"
fi
