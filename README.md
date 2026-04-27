# DHGE Projektarbeit Template für Typst

Typst-Vorlage für Projektarbeiten an der Dualen Hochschule Gera-Eisenach (DHGE).

Die Vorlage liefert ein sauberes Grundgerüst mit Deckblatt, Frontmatter, Kapitelstruktur, Literaturverzeichnis und Erklärung am Ende der Arbeit. Alle Inhalte in `chapters/` sind bewusst als Platzhalter angelegt und können vollständig ersetzt werden.

## Was die Vorlage mitbringt

- Deckblatt mit Projektarbeitsnummer I bis IV
- Einfach erweiterbares Deckblatt mit zusaetzlichen Zeilen
- Römisch nummeriertes Frontmatter mit Inhaltsverzeichnis
- Abbildungs- und optionales Tabellenverzeichnis
- Abkürzungsverzeichnis über `acrostiche`
- Arabisch nummerierter Hauptteil
- Literaturverzeichnis mit den beigefügten DHGE-CSL-Dateien
- DHGE-nahe Eigenständigkeitserklärung von 2026 oder klassische Ehrenwörtliche Erklärung
- Beispielhafte Code- und Konfigurationsblöcke im Umsetzungskapitel
- Klare Trennung zwischen Layout (`src/`) und Inhalt (`main.typ`, `chapters/`, `sources.bib`)

## Für wen die Vorlage gedacht ist

- Studierende, die eine DHGE-Projektarbeit mit Typst schreiben wollen
- Nutzer, die eine vorhandene Grundstruktur lieber anpassen als bei null zu starten
- Nutzer, die Deckblatt, Verzeichnisse und Erklärung nicht selbst neu aufbauen wollen

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
2. Ersetze die Platzhaltertexte in `chapters/` durch deinen Inhalt.
3. Ergänze oder ersetze die Beispielabkürzungen in `main.typ`.
4. Ergänze deine Quellen in [sources.bib](./sources.bib).
5. Aktiviere bei Bedarf in `main.typ` den Sperrvermerk oder den Anhang.

Für einen zweiten Betreuer kannst du in `cover-extra` einfach eine zusätzliche Zeile ergänzen, zum Beispiel mit leerem Label.
Den Sperrvermerk definierst du separat als eigenen Block und übergibst ihn im `#show`-Aufruf.

## Wichtige Schalter

- `confidentiality-note` im `#show`-Aufruf: blendet einen Sperrvermerk ein
- `cover-extra` in `metadata`: fügt zusätzliche Zeilen auf dem Deckblatt hinzu
- `show-table-list` im `#show`-Aufruf: blendet ein Tabellenverzeichnis ein oder aus
- `declaration-variant`: `dhge-2026` oder `classic`

## Hinweise

- Die Kapiteltexte und Beispieltabellen dienen nur als Startpunkt.
- Nicht benötigte Verzeichnisse, Kapitel oder Platzhalter kannst du direkt entfernen.
- Wenn du keine Tabellen oder Abbildungen verwendest, kannst du die zugehörigen Verzeichnisse im `#show`-Aufruf deaktivieren.

## Lizenz

- Die originalen Template-Dateien stehen unter der [MIT-Lizenz](./LICENSE).
- Für die beigefügten CSL-Dateien in `csl/` siehe [NOTICE.md](./NOTICE.md); sie bleiben separat als Drittmaterial lizenziert.
