#import "lib.typ": project-report

#let metadata = (
  title: [Titel der Projektarbeit],
  author: "Max Mustermann",
  student-id: "G230000PI",
  submission-date: "27.04.2026",
  campus: "Gera",
  department: "Technik",
  degree-program: "Praktische Informatik",
  course: "PIA00",
  practice-partner: "Praxispartner GmbH",
  supervisor: "Prof. Dr. Beispiel",
  project-number: 1,
  // confidentiality-note: [
  //   Diese Projektarbeit enthaelt vertrauliche Informationen und darf nur
  //   mit Zustimmung des Praxispartners weitergegeben werden.
  // ],
  // cover-extra: (
  //   (label: "Zweitpruefer", value: "Prof. Dr. Zweitbeispiel"),
  // ),
)

#let acronyms = (
  "API": (
    "Application Programming Interface",
    "Application Programming Interfaces",
  ),
  "CI": ("Continuous Integration"),
  "CI/CD": ("Continuous Integration und Continuous Delivery"),
)

#let references = bibliography(
  "sources.bib",
  title: "Literaturverzeichnis",
  style: "csl/duale-hochschule-gera-eisenach-fussnote.csl",
)

#show: doc => project-report(
  doc,
  metadata: metadata,
  acronyms: acronyms,
  references: references,
  show-table-list: true,
  declaration-variant: "dhge-2026",
)

#include "chapters/einleitung.typ"
#pagebreak()

#include "chapters/grundlagen.typ"
#pagebreak()

#include "chapters/analyse.typ"
#pagebreak()

#include "chapters/umsetzung.typ"
#pagebreak()

#include "chapters/fazit.typ"

// #pagebreak()
// #include "chapters/anhang.typ"
