# DHGE Projektarbeit Template fuer Typst

Saubere, veroeffentlichbare Typst-Vorlage fuer Projektarbeiten an der Dualen Hochschule Gera-Eisenach (DHGE). Die Vorlage ist aus mehreren echten Projektstaenden konsolidiert, aber bewusst von personen-, unternehmens- und projektspezifischen Inhalten befreit.

Der Fokus liegt auf einer robusten Arbeitsgrundlage fuer Projektarbeiten. Eine eigene Bachelorarbeit-Variante kann spaeter auf derselben Struktur aufbauen.

## Was die Vorlage mitbringt

- Deckblatt mit Projektarbeitsnummer I bis IV
- Römisch nummeriertes Frontmatter mit Inhaltsverzeichnis
- Abbildungs- und optionales Tabellenverzeichnis
- Abkuerzungsverzeichnis ueber `acrostiche`
- Arabisch nummerierter Hauptteil
- Literaturverzeichnis mit den beigefuegten DHGE-CSL-Dateien
- DHGE-nahe Eigenstaendigkeitserklaerung von 2026 oder klassische Ehrenwoertliche Erklaerung
- Klare Trennung zwischen Layout (`src/`) und Inhalt (`main.typ`, `chapters/`, `sources.bib`)

## Schnellstart

Voraussetzung: installierte Typst-CLI.

```powershell
typst compile main.typ
typst watch main.typ
```

Der Einstiegspunkt ist [main.typ](./main.typ). Dort pflegst du die Metadaten und bindest die Kapitel ein.

## Struktur

```text
.
|- main.typ
|- sources.bib
|- chapters/
|  |- einleitung.typ
|  |- grundlagen.typ
|  |- analyse.typ
|  |- umsetzung.typ
|  |- fazit.typ
|  `- anhang.typ
|- csl/
`- src/
```

## Anpassung

1. Passe in [main.typ](./main.typ) den Block `metadata` an.
2. Ersetze die Beispieltexte in `chapters/` durch deinen Inhalt.
3. Ergaenze deine Quellen in [sources.bib](./sources.bib).
4. Aktiviere bei Bedarf in `main.typ` den Sperrvermerk oder den Anhang.

## Wichtige Schalter

- `confidentiality-note` in `metadata`: blendet einen Sperrvermerk ein
- `cover-extra` in `metadata`: fuegt zusaetzliche Zeilen auf dem Deckblatt hinzu
- `show-table-list` im `#show`-Aufruf: blendet ein Tabellenverzeichnis ein oder aus
- `declaration-variant`: `dhge-2026` oder `classic`

## Hinweise zur Veroeffentlichung

- Das Repository ist absichtlich generisch gehalten und enthaelt keine echten Projektdaten, Firmennamen oder persoenlichen Inhalte aus den Quellprojekten.
- Fuer die beigefuegten CSL-Dateien siehe [NOTICE.md](./NOTICE.md).
- Wenn du das Repository public schaltest, entscheide bewusst ueber eine Lizenz fuer deine eigenen Template-Dateien.
