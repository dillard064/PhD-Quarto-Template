# UoM × CSIRO RevealJS Template

Quarto RevealJS theme for joint University of Melbourne / CSIRO presentations.

## Start a new deck

Recommended — from an empty project folder:
```bash
quarto use template dillard064/PhD-Quarto-Template
```
This installs the extension and drops a starter `.qmd` (named after the
folder) in place. Answer "yes" if it asks to trust the extension source.

Manual alternative — copy `_extensions/unimelb/` into your project yourself
(it must end up at `_extensions/unimelb/` relative to your `.qmd` — the
directory name is load-bearing, see below), copy `template.qmd` as a starting
point or add `format: unimelb-revealjs` to any `.qmd`'s YAML, then
`quarto render your-deck.qmd`.

## What's in the theme

- **Fonts**: EB Garamond (headings), Lato (body), Source Code Pro (code) — loaded
  from Google Fonts, so rendering needs an internet connection the first time a
  browser opens the deck.
- **Title slide**: white background, navy strap across the top carrying both
  logos as a single lockup, a cyan accent rule under the title.
- **Section dividers**: a top-level heading (`# Section`) is dark navy by
  default — no attributes needed. Add `{.no-dark}` to a `#` heading to keep
  it light instead. `##`/`###` headings stay light by default, but you can
  get the same dark treatment manually on any heading level with
  `background-color="#000F46"` (e.g. `## Section {background-color="#000F46"
  .center}`) — the logo tile blends into this exact navy, so **stick to
  `#000F46`** for dark backgrounds rather than picking a different dark
  colour.
- **Logos**: one asset, top-right corner, on every slide. No manual placement needed.
- **PDF export**: open `deck.html?print-pdf` and print to PDF — logos and the
  title strap are handled automatically.
- **3D embedding plot**: the "Embedding Space (3D)" slide in `template.qmd`
  is an interactive `plotly` scatter (PCA/UMAP/t-SNE-style point cloud,
  drag to rotate, scroll to zoom), styled with the theme's brand colours.
  It's an executed R chunk, so it needs R with the `plotly` package
  installed to render (`install.packages("plotly")` — pulls in `htmlwidgets`
  as a dependency). Every other "code" slide in the template just displays
  code as text and has no such requirement — delete this slide if you don't
  need a 3D plot.

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
