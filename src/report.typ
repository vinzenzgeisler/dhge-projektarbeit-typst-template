#import "@preview/acrostiche:0.7.0": *

#import "helpers.typ": data-row, meta, outline-page, project-number-row, toc
#import "declaration.typ": declaration

#let cover-page(metadata) = {
  let title = meta(metadata, "title", default: [Titel der Projektarbeit])
  let extra = meta(metadata, "cover-extra", default: ())
  let supervisors = meta(
    metadata,
    "supervisors",
    default: meta(metadata, "supervisor", default: "Prof. Dr. Beispiel"),
  )

  [
    #align(center, heading(title, outlined: false, numbering: none))
    #v(2em)
    #project-number-row(meta(metadata, "project-number", default: none))
    #data-row("vorgelegt am", meta(metadata, "submission-date", default: "TT.MM.JJJJ"))
    #data-row("von", meta(metadata, "author", default: "Max Mustermann"))
    #data-row("Matrikelnr.", meta(metadata, "student-id", default: "G230000PI"))
    #data-row("DHGE Campus", meta(metadata, "campus", default: "Gera"))
    #data-row("Studienbereich", meta(metadata, "department", default: "Technik"))
    #data-row("Studiengang", meta(metadata, "degree-program", default: "Praktische Informatik"))
    #data-row("Kurs", meta(metadata, "course", default: "PIA00"))
    #data-row("Praxispartner", meta(metadata, "practice-partner", default: "Praxispartner GmbH"))
    #data-row("Betreuer", supervisors)
    #for row in extra [
      #data-row(row.at("label", default: ""), row.at("value", default: none))
    ]
  ]
}

#let confidentiality-page(note) = [
  #pad(
    bottom: 1em,
    align(center, heading("Sperrvermerk", numbering: none, outlined: false)),
  )
  #note
]

#let acronym-page(acronyms) = [
  #heading(numbering: none, "Abkuerzungsverzeichnis")
  #init-acronyms(acronyms)
  #print-index(
    title: "",
    sorted: "up",
    outlined: false,
    delimiter: "",
  )
]

#let project-report(
  doc,
  metadata: (:),
  acronyms: (:),
  references: none,
  show-figure-list: true,
  show-table-list: false,
  declaration-variant: "dhge-2026",
) = {
  let title = meta(metadata, "title", default: [Titel der Projektarbeit])
  let author = meta(metadata, "author", default: "Max Mustermann")
  let language = meta(metadata, "language", default: "de")
  let body-fonts = meta(
    metadata,
    "body-fonts",
    default: ("Arial", "Segoe UI", "Calibri"),
  )
  let mono-fonts = meta(
    metadata,
    "mono-fonts",
    default: ("Cascadia Mono", "Consolas", "Courier New"),
  )
  let confidentiality-note = meta(metadata, "confidentiality-note", default: none)

  set page(
    paper: "a4",
    margin: (left: 3cm, right: 2cm, top: 2.5cm, bottom: 2.5cm),
  )
  set document(title: title, author: author)
  set heading(numbering: "1.1")
  set text(font: body-fonts, size: 11pt, lang: language)
  set par(justify: true, leading: 14pt, spacing: 18pt, linebreaks: "optimized")
  set list(indent: 1cm)
  show heading: head => {
    set block(above: 24pt, below: 16pt)
    head
  }
  show raw.where(block: true): code-block => block(
    fill: rgb("#f2f2f2"),
    stroke: 0.6pt + rgb("#d6d6d6"),
    radius: 4pt,
    inset: 10pt,
    width: 100%,
    {
      set text(font: mono-fonts, size: 9.5pt, lang: "en")
      code-block
    },
  )

  cover-page(metadata)
  pagebreak()

  if confidentiality-note != none {
    confidentiality-page(confidentiality-note)
    pagebreak()
  }

  set page(numbering: "I", number-align: end)
  counter(page).update(1)
  toc()
  pagebreak()

  if show-figure-list {
    outline-page(
      "Abbildungsverzeichnis",
      figure.where(kind: image).or(figure.where(kind: raw)),
      suppress-notes: true,
    )
    pagebreak()
  }

  if show-table-list {
    outline-page(
      "Tabellenverzeichnis",
      figure.where(kind: table),
    )
    pagebreak()
  }

  if acronyms.len() > 0 {
    acronym-page(acronyms)
    pagebreak()
  }

  set page(numbering: "1", number-align: end)
  counter(page).update(1)
  doc

  if references != none {
    pagebreak(weak: true)
    set page(numbering: "A", number-align: end)
    counter(page).update(1)
    set text(font: body-fonts, size: 9pt, lang: language)
    references
  }

  pagebreak(weak: true)
  set page(numbering: none)
  set text(font: body-fonts, size: 11pt, lang: language)
  declaration(title, variant: declaration-variant)
}
