# AGENTS.md

This repository is a Hugo-based website for Freifunk Südholstein. The goal of future agents is to keep the current visual identity, site structure, and content conventions stable while iterating on the theme or content.

## 1) Brand and identity

There is no highly formalized brand book in the repo, so the safest default is to preserve the current site identity rather than invent a new one.

### Current visual language already in use

- Default color palette is defined in `themes/freifuk-theme/assets/css/main.css`:
  - `--ff-yellow: #ffb400`
  - `--ff-pink: #dc0067`
  - `--ff-blue: #009ee0`
  - neutral paper/background colors in gray/white tones
- The UI uses a clean sans-serif system stack:
  - `ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif`
- Existing branding assets live in `static/logo/` and are referenced in the header partial.
- The main brand logo is currently used as:
  - `/logo/Freifunk-Suedholstein-Logo_mid.webp`

### Guidance for changes

- Keep the current Freifunk color vocabulary unless a clear new design brief is provided.
- Prefer subtle accent usage (yellow/blue/pink) instead of introducing a totally different palette.
- Do not radically change the typography system without a clear decision; the current look is intentionally simple and neutral.
- If a visual update is needed, keep it incremental and aligned with the existing theme rather than a full redesign.

## 2) Theme structure and how it is continued

The site uses a custom Hugo theme located in `themes/freifuk-theme/`.

### Main structure

- `themes/freifuk-theme/layouts/_default/`
  - `baseof.html` — global page shell
  - `single.html` — article/post detail page
  - `list.html` — generic list page templates
  - `taxonomy.html` — taxonomy term page (for one category/tag/author)
  - `terms.html` — overview page for all terms in a taxonomy
  - `archives.html` — archive overview page
- `themes/freifuk-theme/layouts/partials/`
  - `header.html` — site navigation, logo, search and theme toggle
  - `footer.html` — footer logo/description + menu links
- `themes/freifuk-theme/assets/css/main.css`
  - The main site stylesheet, including color tokens, layout, cards, taxonomy styling, etc.
- `themes/freifuk-theme/assets/js/search.js`
  - Search behavior for the site

### Site-level layout rules

- The site root config is in `hugo.yaml`.
- The active theme is set with:
  - `theme: freifuk-theme`
- Page structure and menu items are managed in `hugo.yaml` under `menu.main` and `menu.footer`.
- The homepage is defined in `themes/freifuk-theme/layouts/index.html`.
- Reusable UI should go into `layouts/partials/` rather than duplicating markup across templates.

### How the theme should be continued

- Treat the current theme as the canonical design base.
- Preserve the existing relationships between content, templates, and CSS variables.
- When adding new features, prefer Hugo-native templates and CSS over introducing custom JS frameworks.
- Keep the site lightweight, accessible, and static-site friendly.
- Do not edit generated files under `public/`; those are build artifacts.

## 3) How the current taxonomy works

Hugo taxonomies are defined in `hugo.yaml`:

```yaml
taxonomies:
  category: categories
  tag: tags
  author: authors
```

This means the site uses three built-in taxonomies:

- `categories`
- `tags`
- `authors`

### Front matter pattern used in content

Content items are typically organized like this:

```yaml
---
categories:
  - treffen
date: "2024-12-13T15:24:12+00:00"
title: Freifunk Südholstein auf dem 38C3
authors:
  - Grotax
---
```

and sometimes with tags as well:

```yaml
---
categories:
  - allgemein
tags:
  - südholstein
authors:
  - Grotax
---
```

### Generated routes

Hugo automatically creates pages for each taxonomy and each term, for example:

- `/categories/`
- `/categories/treffen/`
- `/tags/`
- `/tags/suedholstein/`
- `/authors/`
- `/authors/grotax/`

These are rendered by the theme templates in:

- `themes/freifuk-theme/layouts/_default/terms.html`
- `themes/freifuk-theme/layouts/_default/taxonomy.html`

### Behavior in templates

The theme uses taxonomy data in several places, especially for:

- overview cards on the homepage
- category chips on post cards
- author links on article pages
- archive and filter-type browsing

Examples already in use:

- `site.Taxonomies.categories.ByCount` for popular category display
- `.GetTerms "authors"` for author links in article templates
- `.GetTerms "categories"` for category listing on taxonomy pages

### Important agent note

When editing taxonomy-related templates, keep the front matter structure consistent with the current content. The site expects arrays of strings, not nested objects, for `categories`, `tags`, and `authors`.

## Practical guidance for future agents

- Preserve the active design language already present in the CSS and logo assets.
- Continue from the custom theme structure rather than replacing it with a new framework.
- Keep taxonomy names and generated URLs aligned with the current Hugo configuration.
- When adding new content, follow the existing pattern of folder-based Markdown content (`content/posts/<year>/...`, `content/pages/...`).
- Avoid generating content that assumes a different taxonomy structure than the one defined in `hugo.yaml`.
