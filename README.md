# hugo-website
Source for the Freifunk Südholstein Hugo website.

This repository contains the Hugo site source for the public website and keeps the original WordPress export as a reference source in the project root.

## Local development

This repository includes a devcontainer setup in `.devcontainer`.

The container includes the Hugo toolchain and common utilities for running and maintaining the site.

```bash
hugo version
hugo server -D
```

## Create new content

Use the full content path when creating a file. Hugo will scaffold the front matter for you and set `draft: true` by default.

```bash
# New blog post
hugo new content posts/2026/my-new-post.md

# New content page
hugo new content pages/my-section/index.md -k page
```

Common patterns in this repository:

- Blog posts live in `content/posts/<year>/...`
- Static pages live in `content/pages/<section>/index.md`
- The page archetype is defined in `archetypes/page.md`
- `url` is optional for a page and only needed when you want to override Hugo's default generated path; most pages in this repo keep the default folder-based URL unless a custom URL is required
- Remove `draft: true` or run `hugo server -D` to preview draft content locally

If you want a page under an existing section, keep the folder name and file name aligned, for example:

```bash
hugo new content pages/download/new-firmware-guide/index.md -k page
```

## Images

Hugo copies files from `static/` without converting them. Convert new images to WebP before adding them to the site. Install the WebP tools to use `cwebp`, then convert an image with:

```bash
cwebp -q 82 input.jpg -o output.webp
```

Use a quality setting appropriate to the image; for screenshots or diagrams with sharp text, lossless output may be preferable:

```bash
cwebp -lossless input.png -o output.webp
```

Store inline post images under `static/media/` and reference them with the `figure` shortcode:

```md
{{< figure src="/media/posts/2026/example.webp" alt="Description of the image" caption="" >}}
```

Store post cover images under `static/covers/` and use the public path in front matter:

```yaml
cover:
  image: /covers/example.webp
```

## Beta deployment

```bash
hugo --gc --minify --baseURL "https://beta.freifunk-suedholstein.de/" && rsync -az --delete --checksum public/ web-ffsh:/var/www/web-beta/  
```

The GitHub Actions workflow deploys the generated output via SSH afterwards.

## Project layout

- `content/` – Markdown content migrated from WordPress
- `layouts/` – custom templates and overrides
- `static/` – static assets, including uploaded media
- `data/` – structured YAML data used by the site
- `themes/` – Hugo theme files
- `hugo.yaml` – site configuration
- `freifunksdholstein.WordPress.2026-09-27.xml` – original WordPress export

## Content shortcodes

The site includes a small set of editorial shortcodes for community updates and how-to content. These keep common formatting patterns consistent without adding JavaScript or a large content framework.

### Callout blocks

```md
{{< callout type="info" title="Hinweis" >}}
Bitte prüft die Firmware vor dem Release erneut.
{{< /callout >}}
```

### Checklists

```md
{{< checklist >}}
- [x] Testlauf abgeschlossen
- [ ] Release notieren
- [ ] Beitrag veröffentlichen
{{< /checklist >}}
```

### Status cards

```md
{{< status label="Status" value="Aktiv" type="success" />}}
```

### Code embeds

```md
{{< code lang="bash" title="Firmware-Update" file="terminal" >}}
echo "Update bereit"
./flash.sh
{{< /code >}}
```

### Citations

Use inline citations in content with the `[cite: 1]` pattern. Then list the matching references in the page front matter:

```yaml
---
references:
  - "Freifunk Südholstein – Meshviewer: Interaktive Knotenkarte"
  - "Freifunk Südholstein – Loslegen: Anleitung zur Einrichtung"
---

Der Meshviewer zeigt die Knoten in Echtzeit[cite: 1].
Mehr Infos findest du in der Einrichtungshilfe[cite: 1, 2].
```

The citation links are rendered as superscript references and the source list is shown at the end of the page.

## Build output

Generated files such as `public/` and `.hugo_build.lock` are ignored by Git and should not be edited manually.

## Quality checks

The current validation workflow focuses on the generated site and the theme itself:

- `npm run build`
- `npm run check:html`
- `npm run check:css`
- `npm run check:a11y`

Strict Markdown linting for the imported legacy article set is intentionally not enforced at this stage. Many historical posts contain long lines, legacy formatting, and imported content patterns that predate a formal Markdown style guide. This can be revisited later for new content only.
