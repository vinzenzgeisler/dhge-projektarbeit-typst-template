#import "lib.typ": project-report

// Anpassungspunkt 1:
// Ersetze die Metadaten unten durch die Angaben deiner Arbeit.
#let metadata = (
  title: [Titel der Projektarbeit],
  author: "Max Mustermann",
  student-id: "G230000PI",
  submission-date: "TT.MM.JJJJ",
  campus: "Gera",
  department: "Technik",
  degree-program: "Praktische Informatik",
  course: "PIA00",
  practice-partner: "Praxispartner GmbH",
  supervisors: (
    "Prof. Dr. Beispiel",
    "Prof. Dr. Zweitbeispiel",
  ),
  project-number: 1,
  // confidentiality-note: [
  //   Diese Projektarbeit enthaelt vertrauliche Informationen und darf nur
  //   mit Zustimmung des Praxispartners weitergegeben werden.
  // ],
  // cover-extra: (
  //   (label: "Zweitpruefer", value: "Prof. Dr. Zweitbeispiel"),
  // ),
)

// Anpassungspunkt 2:
// Ersetze die Beispielabkuerzungen durch die Begriffe deiner Arbeit
// oder loesche den Block komplett, wenn du kein Abkuerzungsverzeichnis brauchst.
#let acronyms = (
  "API": (
    "Application Programming Interface",
    "Application Programming Interfaces",
  ),
  "CI": ("Continuous Integration"),
  "CI/CD": ("Continuous Integration und Continuous Delivery"),
  "JSON": ("JavaScript Object Notation"),
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
  show-figure-list: true,
  show-table-list: true,
  declaration-variant: "dhge-2026",
)

// Anpassungspunkt 3:
// Die Kapiteldateien sind nur Platzhalter. Du kannst sie bearbeiten,
// austauschen oder die Struktur an deine Arbeit anpassen.
#include "chapters/einleitung.typ"
#pagebreak()

#include "chapters/grundlagen.typ"
#pagebreak()

#include "chapters/analyse.typ"
#pagebreak()

#include "chapters/umsetzung.typ"
#pagebreak()

#include "chapters/fazit.typ"

// Optional:
// Anhang nur aktivieren, wenn er fuer deine Arbeit wirklich benoetigt wird.
// #pagebreak()
// #include "chapters/anhang.typ"
