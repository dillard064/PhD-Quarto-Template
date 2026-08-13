# UoM × CSIRO RevealJS Template

Quarto RevealJS theme for joint University of Melbourne / CSIRO presentations.

## Start a new deck

1. Copy the `_extensions/unimelb/` folder into your new project (it must sit at
   `_extensions/unimelb/` relative to your `.qmd` — the directory name is load-bearing,
   see below).
2. Copy `template.qmd` as a starting point, or add this to any `.qmd`'s YAML:
   ```yaml
   format: unimelb-revealjs
   ```
3. `quarto render your-deck.qmd`

## What's in the theme

- **Fonts**: EB Garamond (headings), Lato (body), Source Code Pro (code) — loaded
  from Google Fonts, so rendering needs an internet connection the first time a
  browser opens the deck.
- **Title slide**: white background, navy strap across the top carrying both
  logos as a single lockup, a cyan accent rule under the title.
- **Section dividers**: set `background-color="#000F46"` on any `##` heading
  (`## Section {background-color="#000F46" .center}`) — the logo tile blends
  into this exact navy, so **stick to `#000F46`** for dark backgrounds rather
  than picking a different dark colour.
- **Logos**: one asset, top-right corner, on every slide. No manual placement needed.
- **PDF export**: open `deck.html?print-pdf` and print to PDF — logos and the
  title strap are handled automatically.

## Brand colours

Colours are pulled from the official UoM Design System (Gen 3) — see the
comment block at the top of `_extensions/unimelb/unimelb-revealjs.scss` for
the full palette and where to re-fetch it if UoM updates their tokens.

## Customising

Edit `_extensions/unimelb/unimelb-revealjs.scss`:
- `/*-- scss:defaults --*/` — colours, fonts, sizes
- `/*-- scss:rules --*/` — everything else (title slide, strap, tables, callouts, etc.)

Edit `_extensions/unimelb/_extension.yml` to change Reveal options (transitions,
slide numbers, etc.) or the logo/strap markup and JS.

## Known constraints

- Extension directory must be named `unimelb` (not `unimelb-revealjs`) — Quarto
  resolves `format: unimelb-revealjs` by stripping the `-revealjs` suffix to find it.
- Quarto's title-slide HTML uses `.quarto-title-author-name` and
  `.quarto-title-affiliation` — not `.author` / `.institute`.
