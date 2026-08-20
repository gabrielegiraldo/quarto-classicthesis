# quarto-classicthesis

Reusable Quarto PDF extension using an embedded `classicthesis` v4.8 class.
No local `.sty` files required.

Original ClassicThesis LaTeX template developed by André Miede and Ivo
Pletikosić. See [ClassicThesis on CTAN](https://ctan.org/pkg/classicthesis).

## Use in an existing project

Install extension:

```bash
quarto add gabrielegiraldo/quarto-classicthesis
```

Use extension format:

```yaml
format:
  classicthesis-pdf:
    classoption: [draft=false]
```

Render programmatically:

```bash
quarto render thesis.qmd --to classicthesis-pdf
```

`classicthesis-pdf` sets `documentclass: classicthesis`, PDF engine, chapter
division, bibliography handling, and custom ClassicThesis LaTeX bridge.

## Create starter project

```bash
quarto use template gabrielegiraldo/quarto-classicthesis
```

This repository is also its starter project. Edit `template.qmd`, `Chapters/`,
and `references.bib`; `_extensions/` supplies rendering implementation.

## Render starter project

```bash
quarto render template.qmd
```

## Structure

```text
template.qmd             # metadata, render settings, chapter includes
Chapters/                # Chapter01.qmd through Chapter12.qmd
references.bib
_extensions/
  classicthesis/
    _extension.yml       # classicthesis-pdf format defaults
    classicthesis.cls    # embedded ClassicThesis class and style variants
    quarto-template.tex  # Quarto-to-ClassicThesis bridge
    FontBackMatter/      # title, abstract, contents, bibliography, etc.
    gfx/TFZsuperellipse_bw.pdf
```

`_extensions/classicthesis/FontBackMatter/` mirrors original template's
front/back matter. Change its `.tex` files only when changing page layout or
typography. Edit document content and metadata in `template.qmd` or
`Chapters/`.

## Edit content

Edit abstract in `template.qmd`:

```yaml
abstract: |
  First abstract paragraph.

  Second paragraph.
```

Edit chapter text in `Chapters/Chapter01.qmd` through `Chapter12.qmd`. Add a
chapter by creating another `.qmd` file and adding its include to
`template.qmd`:

```markdown
{{< include Chapters/Chapter13.qmd >}}
```

## YAML controls

```yaml
dirty-titlepage: true    # small author-and-title page before title page

format:
  classicthesis-pdf:
    classoption: [draft=false]
```

- `dirty-titlepage: false`: omit small author-and-title page.
- `classoption: [draft=false]`: final PDF; omit draft timestamp footer.
- `classoption: [draft=true]`: show draft timestamp footer.
- `classoption: [style=arsclassica]`: use embedded `arsclassica` variant with
  bundled Iwona Type 1 fonts under pdfLaTeX; no separate Iwona install needed.
  Other embedded variants: `style=linedheaders`, `style=plain`.

Default title graphic: `gfx/TFZsuperellipse_bw.pdf`, supplied by extension.
Override it with:

```yaml
title-graphic: gfx/your-title-graphic
```

Main metadata maps directly to ClassicThesis pages: `title`, `subtitle`,
`author`, `date`, `location`, `dedication`, `abstract`, `abstract-de`,
`publications`, `own-publications`, `acknowledgments`, `acronyms`,
`declaration`, and `colophon`.

`own-publications` accepts one or more `.bib` files. `acronyms` accepts LaTeX
`\acro` entries.
