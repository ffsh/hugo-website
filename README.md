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

## Beta deployment

```bash
hugo --gc --minify --baseURL "https://beta.freifunk-suedholstein.de/" && rsync -az --delete --checksum public/ web-ffsh:/var/www/web-beta/  
```

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

## Build output

Generated files such as `public/` and `.hugo_build.lock` are ignored by Git and should not be edited manually.

## Quality checks

The current validation workflow focuses on the generated site and the theme itself:

- `npm run build`
- `npm run check:html`
- `npm run check:css`
- `npm run check:a11y`

Strict Markdown linting for the imported legacy article set is intentionally not enforced at this stage. Many historical posts contain long lines, legacy formatting, and imported content patterns that predate a formal Markdown style guide. This can be revisited later for new content only.
