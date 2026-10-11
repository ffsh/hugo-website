# AGENTS.md

This repository uses the custom Hugo theme for Freifunk Südholstein. Future agents should treat the current site structure and visual language as the baseline unless a clear redesign brief is provided.

## Canonical instructions

- The main repository guidance for GitHub Copilot lives in `.github/copilot-instructions.md`.
- If more project-specific guidance is needed later, add it there first and keep this file as a short pointer.
- Use this file as a lightweight repo-level summary for agents that do not automatically read the Copilot instruction file.

## Ground Rules

- Agents should follow the canonical instructions unless explicitly overridden.
- Any changes to the site structure or visual language should be documented and justified.
- Maintain consistency with the existing Hugo theme and Freifunk Südholstein branding.
- When in doubt, consult the main repository guidance in `.github/copilot-instructions.md`.
- No security-sensitive information should be hardcoded or exposed in the repository.
- Clean custom CSS with no framework dependency
- Icons use Lucide-style minimal SVGs where possible
- Comments are intentionally not implemented; contact channels are preferred
- Statistics stay external; traffic can be measured with Prometheus or a hosted analytics tool
