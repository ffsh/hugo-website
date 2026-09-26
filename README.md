# hugo-website
Potentially the future source of freifunk-suedholstein.de

## Development container

This repository includes a devcontainer setup in `.devcontainer`.

The container image includes:

- `hugo` (static site generator)
- `wp2hugo` (installed during post-create from https://github.com/ashishb/wp2hugo)
- useful CLI tools: `git-lfs`, `make`, `curl`, `jq`

After opening in a devcontainer, verify the tools are available:

```bash
hugo version
wp2hugo --help
```
