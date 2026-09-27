#!/usr/bin/env bash
set -euo pipefail

workspace_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$workspace_dir"

HUGO_VERSION="0.166.0"
WP2HUGO_RELEASE_TAG="1.36.0"

arch="$(uname -m)"
case "$arch" in
  x86_64)
    hugo_arch="amd64"
    hugo_sha256="0e39b901e3f919f1daae05c8ff64f0c14c8a348ef46886d63f8e6d1bb2653885"
    wp2hugo_arch="x86_64"
    wp2hugo_sha256="ac68a655cec66feeb9d24086f1fdf7dca82b4563690f5b6281a227f9b58c08a7"
    ;;
  aarch64)
    hugo_arch="arm64"
    hugo_sha256="4b282afd8181e5ed182f50f293fc24dd6c42bfa569e555d53bfbc5ee6a1b2982"
    wp2hugo_arch="arm64"
    wp2hugo_sha256="1745a79e529b9d4a3ebcf5327e108f0f4d8f6242f859be52f420a17b865b2b32"
    ;;
  *)
    echo "Unsupported architecture for Hugo/wp2hugo installation: $arch" >&2
    exit 1
    ;;
esac

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

hugo_archive="hugo_extended_${HUGO_VERSION}_linux-${hugo_arch}.tar.gz"
curl -fsSL \
  -o "$tmp_dir/${hugo_archive}" \
  "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${hugo_archive}"
printf '%s  %s\n' "$hugo_sha256" "$hugo_archive" > "$tmp_dir/hugo.sha256"
(cd "$tmp_dir" && sha256sum -c "$tmp_dir/hugo.sha256")
tar -xzf "$tmp_dir/${hugo_archive}" -C "$tmp_dir"

wp2hugo_archive="wp2hugo_Linux_${wp2hugo_arch}.tar.gz"
wp2hugo_release_base_url="https://github.com/ashishb/wp2hugo/releases/download/${WP2HUGO_RELEASE_TAG}"
curl -fsSL -o "$tmp_dir/${wp2hugo_archive}" "${wp2hugo_release_base_url}/${wp2hugo_archive}"

printf '%s  %s\n' "$wp2hugo_sha256" "$wp2hugo_archive" > "$tmp_dir/wp2hugo.sha256"
(cd "$tmp_dir" && sha256sum -c "$tmp_dir/wp2hugo.sha256")
tar -xzf "$tmp_dir/${wp2hugo_archive}" -C "$tmp_dir"

if [ -w /usr/local/bin ]; then
  install -m 0755 "$tmp_dir/hugo" /usr/local/bin/hugo
  install -m 0755 "$tmp_dir/wp2hugo" /usr/local/bin/wp2hugo
elif command -v sudo >/dev/null 2>&1; then
  sudo install -m 0755 "$tmp_dir/hugo" /usr/local/bin/hugo
  sudo install -m 0755 "$tmp_dir/wp2hugo" /usr/local/bin/wp2hugo
else
  mkdir -p "$HOME/.local/bin"
  install -m 0755 "$tmp_dir/hugo" "$HOME/.local/bin/hugo"
  install -m 0755 "$tmp_dir/wp2hugo" "$HOME/.local/bin/wp2hugo"
fi

if [ -f "$workspace_dir/package.json" ]; then
  npm install --prefix "$workspace_dir"
fi
