#let signature-fields() = grid(
  columns: (1fr, 1fr),
  gutter: 3pt,
  stack(
    spacing: 0.5em,
    line(length: 80%),
    "Ort, Datum",
  ),
  stack(
    spacing: 0.5em,
    line(length: 80%),
    "Unterschrift",
  ),
)

#let classic-declaration(title) = [
  #pad(
    bottom: 1em,
    align(center, heading("Ehrenwoertliche Erklaerung", numbering: none, outlined: false)),
  )

  Ich erklaere hiermit ehrenwoertlich,

  #enum(
    tight: false,
    spacing: 1em,
    [dass ich meine Projektarbeit mit dem Thema: \
    *#title* \
    ohne fremde Hilfe angefertigt habe,],
    [dass ich die Uebernahme woertlicher Zitate aus der Literatur sowie die Verwendung der Gedanken anderer Autoren an den entsprechenden Stellen innerhalb der Arbeit gekennzeichnet habe und],
    [dass ich meine Projektarbeit bei keiner anderen Pruefung vorgelegt habe.],
  )

  Ich bin mir bewusst, dass eine falsche Erklaerung rechtliche Folgen haben wird.

  #pad(top: 1.5cm, signature-fields())
]

#let dhge-2026-declaration(title) = [
  #pad(
    bottom: 1em,
    align(
      center,
      heading(
        numbering: none,
        outlined: false,
        [Eigenstaendigkeitserklaerung \
        fuer nicht unter Aufsicht erbrachte schriftliche Pruefungsleistungen \
        an der Dualen Hochschule Gera-Eisenach],
      ),
    ),
  )

  #enum(
    tight: false,
    spacing: 1em,
    [Hiermit versichere ich, dass ich die vorliegende Projektarbeit mit dem Thema: \
    *#title* \
    in allen Teilen selbststaendig angefertigt und keine anderen als die in der Arbeit angegebenen Quellen und Hilfsmittel benutzt habe. Die aus fremden Quellen oder aus eigenen aelteren Quellen woertlich oder sinngemaess uebernommenen Textstellen, Gedankengaenge, Konzepte, Grafiken und sonstigen Inhalte habe ich eindeutig gekennzeichnet und mit vollstaendigen Verweisen versehen.],
    [Meine Erklaerung bezieht sich auch auf generative KI-Anwendungen. Die geltenden Vorgaben der Hochschule fuer nicht unter Aufsicht erbrachte schriftliche Pruefungsleistungen habe ich bei der Erstellung der Arbeit eingehalten.],
    [Ich versichere des Weiteren, dass ich die vorliegende Arbeit bei keiner anderen Pruefung vorgelegt habe.],
    [Mir ist bekannt, dass Verstoesse gegen diese Erklaerung pruefungsrechtliche Konsequenzen haben koennen.],
  )

  #pad(top: 1.5cm, signature-fields())
]

#let declaration(title, variant: "dhge-2026") = {
  if variant == "classic" {
    classic-declaration(title)
  } else {
    dhge-2026-declaration(title)
  }
}
