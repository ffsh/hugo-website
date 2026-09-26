# hugo-website
Potentially the future source of freifunk-suedholstein.de

## Development container

This repository includes a devcontainer setup in `.devcontainer`.

The container image includes:

- `hugo` (installed during post-create from https://github.com/gohugoio/hugo)
- `wp2hugo` (installed during post-create from https://github.com/ashishb/wp2hugo)
- useful CLI tools: `git-lfs`, `make`, `curl`, `jq`

After opening in a devcontainer, verify the tools are available:

```bash
hugo version
wp2hugo --help
```

`hugo` and `wp2hugo` are installed into `/usr/local/bin` when writable (or via `sudo`), and fall back to `$HOME/.local/bin` otherwise. If either command is not found on `PATH`, add `$HOME/.local/bin` to your shell `PATH`.
