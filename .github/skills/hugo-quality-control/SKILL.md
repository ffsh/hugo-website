---
name: hugo-quality-control
description: "Use when validating a Hugo website before publishing, after theme changes, or when checking accessibility, markup, CSS, and performance on a static community site."
---

# Hugo Quality Control

Use this skill to validate a Hugo project consistently with the local CLI toolchain already installed in the devcontainer.

## Goal

Catch quality issues before a release or theme change by checking the site in the same order a maintainer would review a production-facing static website.

## Required workflow

### 1. Start with a real production-style build

Run a clean build before any other checks:

```bash
npm run build
```

This should be the first gate. If it fails, stop and fix the underlying Hugo configuration, template, content, or asset problem before running any validation tools.

### 2. Validate generated markup

Check that generated HTML is structurally valid:

```bash
npm run check:html
```

Use this to catch malformed HTML, broken nesting, and HTML structure regressions introduced in the custom theme.

### 3. Validate CSS quality

Run CSS linting for theme files:

```bash
npm run check:css
```

This is especially important for custom navigation, buttons, cards, and homepage layouts. Focus on:
- low contrast
- invalid selector patterns
- inconsistent spacing or declaration ordering
- CSS that breaks responsive layout

### 4. Validate Markdown content quality

Run markdown linting on the content and theme docs:

```bash
npm run check:markdown
```

This helps catch broken headings, inconsistent front matter, and content formatting issues after WordPress migration.

### 5. Run accessibility checks against the rendered site

Use the local preview built from the generated static output:

```bash
npm run check:a11y
```

This is the most important theme accessibility test for navigation, buttons, article cards, and readable links. Prioritize these issues first:
- color contrast
- keyboard focus visibility
- labels and link text clarity
- landmark/semantic structure
- heading and content structure

If Pa11y reports contrast problems, fix the actual theme CSS before changing content or structure.

### 6. Run a performance smoke test

Use Lighthouse against the local preview:

```bash
npm run check:perf
```

This is not a substitute for a full benchmarking suite, but it is useful for detecting:
- oversized images
- render-blocking assets
- poor core web vitals for the homepage
- large JS/CSS payloads

### 7. Review the results before final approval

Approved only when all of the following are true:
- `npm run build` exits successfully
- HTML/CSS/Markdown validation passes
- accessibility checks pass or all remaining issues are documented and approved
- performance report is reviewed for obvious regressions
- no broken local links or obvious template issues remain

## Decision points

### If the build fails
Stop immediately and fix the broken template, content front matter, or Hugo config before running anything else.

### If HTML validation fails
Likely root cause is a theme or template issue. Fix the partial/layout rather than patching the generated output.

### If CSS lint fails
Prioritize real layout and a11y issues in the custom theme. Avoid broad CSS resets unless necessary.

### If a11y fails
Focus on the actual rendered element identified by Pa11y. Typical causes include:
- low contrast text on buttons and cards
- missing focus styling
- weak link labels
- poor heading or navigation structure

### If performance is weak
Check the homepage first and optimize:
- image sizes
- CSS and JS bundles
- unnecessary embedded media
- large static assets

## Best practices for this repo

- Prefer checking the built static site instead of raw source files.
- Treat accessibility as part of theme maintenance, not an afterthought.
- Keep the release flow lightweight: build + lint + a11y + perf.
- For custom community pages, validate the homepage and a representative article page together.
- Fix the root cause in the theme or template, not the generated output.

## Typical command sequence

```bash
npm run build
npm run check:html
npm run check:css
npm run check:markdown
npm run check:a11y
npm run check:perf
```

## Quality gate summary

Use the project as follows:
- local development: `npm run serve`
- pre-merge or pre-release: run the full `npm run check` flow
- theme changes: run at least build + a11y + CSS validation
- content migration: run build + markdown + HTML + link integrity checks

## Use this skill when

- changing the theme or homepage layout
- migrating WordPress content into Hugo
- preparing a release or merge request
- debugging accessibility issues in navigation, cards, or buttons
- verifying a static-site performance regression
