#let meta(metadata, key, default: none) = metadata.at(key, default: default)

#let lines(value) = {
  if value == none {
    []
  } else if type(value) == array {
    value.map(item => [#item]).join(linebreak())
  } else {
    value
  }
}

#let data-row(label, value) = [
  #table(
    columns: (1fr, 3fr),
    stroke: none,
    align: horizon,
    label,
    stack(
      lines(value),
      spacing: 8pt,
      line(length: 100%),
    ),
  )
  #v(1em)
]

#let tickbox(label, active: false) = table(
  columns: (auto, auto),
  stroke: none,
  column-gutter: 0.5em,
  align: horizon,
  label,
  rect(width: 5mm, height: 5mm, stroke: black, if active [✓]),
)

#let project-number-row(number) = [
  #table(
    columns: (1fr, 3fr),
    stroke: none,
    align: horizon,
    [Projektarbeit Nr.:],
    stack(
      stack(
        dir: ltr,
        tickbox("I", active: number == 1),
        tickbox("II", active: number == 2),
        tickbox("III", active: number == 3),
        tickbox("IV", active: number == 4),
      ),
      spacing: 16pt,
    ),
  )
  #v(1em)
]

#let toc() = [
  #show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  #hide(heading("Inhaltsverzeichnis", numbering: none))
  #outline(
    title: "Inhaltsverzeichnis",
    depth: 3,
    indent: 2em,
  )
]

#let outline-page(title, target, suppress-notes: false) = {
  if suppress-notes {
    [
      #show outline.entry: it => {
        show footnote: none
        show cite: none
        it
      }
      #hide(heading(title, numbering: none))
      #outline(title: title, target: target)
    ]
  } else {
    [
      #hide(heading(title, numbering: none))
      #outline(title: title, target: target)
    ]
  }
}
