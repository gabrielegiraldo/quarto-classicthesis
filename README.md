# quarto-classicthesis

Quarto PDF template using an embedded `classicthesis` v4.8 class. No Quarto
extension or local `.sty` files required.

## Render

```bash
quarto render template.qmd
```

## Structure

```text
classicthesis.cls        # embedded ClassicThesis class and style variants
quarto-template.tex      # Quarto-to-ClassicThesis bridge
template.qmd             # metadata, render settings, chapter includes
FontBackMatter/          # title, abstract, contents, bibliography, etc.
Chapters/                # Chapter01.qmd through Chapter12.qmd
gfx/TFZsuperellipse_bw.pdf
references.bib
```

`FontBackMatter/` mirrors original template's front/back matter. Change its
`.tex` files only when changing page layout or typography. Edit document
content and metadata in `template.qmd` or `Chapters/`.

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
  pdf:
    documentclass: classicthesis
    template: quarto-template.tex
    classoption: [draft=false]
```

- `dirty-titlepage: false`: omit small author-and-title page.
- `classoption: [draft=false]`: final PDF; omit draft timestamp footer.
- `classoption: [draft=true]`: show draft timestamp footer.
- `classoption: [style=arsclassica]`: use embedded `arsclassica` variant.
  Other embedded variants: `style=linedheaders`, `style=plain`.

Default title graphic: `gfx/TFZsuperellipse_bw.pdf`. Override it with:

```yaml
title-graphic: gfx/your-title-graphic
```

Main metadata maps directly to ClassicThesis pages: `title`, `subtitle`,
`author`, `date`, `location`, `dedication`, `abstract`, `abstract-de`,
`publications`, `own-publications`, `acknowledgments`, `acronyms`,
`declaration`, and `colophon`.

`own-publications` accepts one or more `.bib` files. `acronyms` accepts LaTeX
`\acro` entries.
