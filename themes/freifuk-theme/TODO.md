# Theme TODO / Roadmap

This is a lightweight starter theme for the Freifunk community blog.

## Principles

- Clean custom css no frameworks
- icons use https://lucide.dev/icons
- A Comment feature for articles is not added it was not used much on wordpress and can be dropped
- Statistics are also dropped, traffic can be measured with an prometheus exporter

## At a glance

- [x] Basic theme skeleton and page layouts
- [x] Freifunk color palette integration
- [x] Theme-owned header with branded logo and aligned navigation
- [x] Header navigation with search UI
- [x] Minimal blog listing and article template
- [x] Static page support for explanatory content
- [x] Simplify homepage to a single news-focused layout without duplicate side menus
- [x] Show cover images in the homepage article list and on single article pages
- [x] Add a real search implementation based on Hugo's generated JSON index
- [x] Improve responsive mobile navigation
- [x] Add pagination to the blog homepage feed to avoid unbounded article lists
- [x] Add category/tag taxonomy styling and archive browsing improvements
- [x] Add a simple homepage hero section for community updates
- [x] Add reading time, share links, and related posts
- [x] Add dark/light mode switch and contrast checks
- [x] Add custom shortcodes for callouts, checklists, and status cards
- [x] Add anchor links and section navigation for long docs
- [x] Add a more complete archive page and RSS-friendly metadata, The RSS should be compliant to the spec. Use https://validator.w3.org/feed/#validate_by_input to check
- [x] Make the pagination component more usuable I want to be able to click on numbers to change to a different page next to clicking "next" and "previous"
- [ ] Implement i18n support for menus buttons and other UI elements not content
- [x] Make the footer menu configured in hugo.yaml same like main menu
- [x] Overhaul styling, for example links in text should be highlighted probably the freifunk blue
- [x] Share menu should be below the article content
- [x] Research how to track statistics for articles and user interactions

## Current priority order

1. Add custom shortcodes for callouts, checklists, and status cards to make community updates easier to write and read
2. Add a more complete archive page and RSS-friendly metadata for deeper browsing and discoverability
3. Accessibility and theme contrast refinements
4. Implement i18n support for menus, buttons, and UI strings where needed
5. Research how to track article statistics and user interactions

## Improvement ideas

1. Add a dedicated documentation-style section for beginners using static pages.
2. Add a bigger emphasis on Freifunk updates and community news in the home page.
3. Tune typography for long-form reading and accessibility.
4. Add local asset optimization and image handling.
5. Add a small “what is Freifunk?” page as the entry point for new readers.

## Notes

This file is intentionally placed inside the theme directory to make future improvements visible to maintainers without scattering TODOs across the project.
