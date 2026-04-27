# DHGE Projektarbeit Template für Typst

Saubere, veröffentlichbare Typst-Vorlage für Projektarbeiten an der Dualen Hochschule Gera-Eisenach (DHGE). Die Vorlage ist aus mehreren echten Projektständen konsolidiert, aber bewusst von personen-, unternehmens- und projektspezifischen Inhalten befreit.

Der Fokus liegt auf einer robusten Arbeitsgrundlage für Projektarbeiten. Eine eigene Bachelorarbeit-Variante kann später auf derselben Struktur aufbauen.

## Was die Vorlage mitbringt

- Deckblatt mit Projektarbeitsnummer I bis IV
- Römisch nummeriertes Frontmatter mit Inhaltsverzeichnis
- Abbildungs- und optionales Tabellenverzeichnis
- Abkürzungsverzeichnis über `acrostiche`
- Arabisch nummerierter Hauptteil
- Literaturverzeichnis mit den beigefügten DHGE-CSL-Dateien
- DHGE-nahe Eigenständigkeitserklärung von 2026 oder klassische Ehrenwörtliche Erklärung
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
3. Ergänze deine Quellen in [sources.bib](./sources.bib).
4. Aktiviere bei Bedarf in `main.typ` den Sperrvermerk oder den Anhang.

## Wichtige Schalter

- `confidentiality-note` in `metadata`: blendet einen Sperrvermerk ein
- `cover-extra` in `metadata`: fügt zusätzliche Zeilen auf dem Deckblatt hinzu
- `show-table-list` im `#show`-Aufruf: blendet ein Tabellenverzeichnis ein oder aus
- `declaration-variant`: `dhge-2026` oder `classic`

## Hinweise zur Veröffentlichung

- Das Repository ist absichtlich generisch gehalten und enthält keine echten Projektdaten, Firmennamen oder persönlichen Inhalte aus den Quellprojekten.
- Die originalen Template-Dateien stehen unter der [MIT-Lizenz](./LICENSE).
- Für die beigefügten CSL-Dateien in `csl/` siehe [NOTICE.md](./NOTICE.md); sie bleiben separat als Drittmaterial lizenziert.
