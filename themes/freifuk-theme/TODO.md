# Theme TODO / Roadmap

This is a lightweight starter theme for the Freifunk community blog.

## Principles

- Clean custom CSS with no framework dependency
- Icons use Lucide-style minimal SVGs where possible
- Comments are intentionally not implemented; contact channels are preferred
- Statistics stay external; traffic can be measured with Prometheus or a hosted analytics tool

## At a glance

- [x] Basic theme skeleton and page layouts
- [x] Freifunk color palette integration
- [x] Theme-owned header with branded logo and aligned navigation
- [x] Header navigation with search UI and mobile icon toggle
- [x] Minimal blog listing and article template
- [x] Static page support for explanatory content
- [x] Simplify homepage to a single news-focused layout without duplicate side menus
- [x] Show cover images in the homepage article list and on single article pages
- [x] Add a real search implementation based on Hugo's generated JSON index
- [x] Improve responsive mobile navigation
- [x] Add pagination to the blog homepage feed to avoid unbounded article lists
- [x] Add category/tag taxonomy styling and archive browsing improvements
- [x] Add a simple homepage hero section for community updates
- [x] Add a small homepage entry CTA for new visitors (“Was ist Freifunk?”, download, contact)
- [x] Add reading time, share links, and related posts
- [x] Add dark/light mode switch and contrast checks
- [x] Add custom shortcodes for callouts, checklists, and status cards
- [x] Add anchor links and section navigation for long docs
- [x] Add a more complete archive page and RSS-friendly metadata; RSS is compliant enough for the current workflow
- [x] Make the pagination component usable with numbered pages alongside next/previous links
- [x] Keep the site German-only and remove the stale multilingual experiment
- [x] Make the footer menu configured in hugo.yaml like the main menu
- [x] Overhaul styling, including text link emphasis in the Freifunk blue
- [x] Keep the share actions below article content
- [x] Cleanup stale export-era config and unused theme leftovers
- [x] Remove the abandoned comment feature and its related data/code
- [x] Add the favicon through Hugo config and apply it from the theme
- [x] Prevent empty table-of-contents blocks from rendering on pages without headings
- [x] Keep site deployment-ready by building the static output from the current theme setup
- [x] Migrate the remaining active image links to WebP assets for better mobile performance

## Current priority order

1. Finish the mobile UX pass: spacing, tap targets, and header behavior on small phones
2. Keep deployment and production checks aligned with the beta and eventual main-domain setup
3. Continue asset optimization and cache-related server tuning for the live site
4. Improve long-form readability and content polish on major landing pages
5. Add more editorial templates only when real content needs them
6. Optional analytics integration if traffic tracking becomes a real requirement

## Improvement ideas

1. Tune the mobile header further: tighter spacing between logo, RSS, search, and menu toggle.
2. Review the homepage cards on narrow phones and refine the spacing/reading density one more time.
3. Check key article pages on real devices for readability, especially long-form posts and embedded media.
4. Add a dedicated “Was ist Freifunk?” explainer section with a stronger beginners-first flow.
5. Revisit page-level image handling for large editorial pieces, especially if more photographic content is added.
6. Keep production headers and caching rules aligned with the live web server setup.

## Notes

The current project direction is a stable, German-only, custom Hugo theme that prioritizes simple static hosting, lightweight assets, and a good mobile experience. The focus is on production stability and content clarity rather than broad framework abstraction or multilingual expansion.

This file is intentionally placed inside the theme directory to make future improvements visible to maintainers without scattering TODOs across the project.
