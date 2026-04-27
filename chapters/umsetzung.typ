#import "@preview/sourcerer:0.2.1": code

= Konzeption und Umsetzung

Dieses Kapitel ist bewusst allgemein gehalten. Je nach Thema kannst du es fuer Konzeption, Methodik, Umsetzung, Prototyping, Evaluation oder eine Kombination daraus verwenden.

== Vorgehensmodell

[Platzhalter: Beschreibe hier das Vorgehen, mit dem du von den Anforderungen zu deiner Loesung gelangt bist. Dieser Satz enthaelt ein zweites Beispielzitat @git-docs.]

== Beispielhafte technische Darstellung

Die folgenden Ausschnitte sind bewusst neutralisierte Formatbeispiele, die auf typischen technischen Darstellungen aus realen Projektarbeiten basieren. Sie zeigen, wie Build-Pipelines, Skriptlogik und Konfigurationsdateien in einer Projektarbeit eingebunden werden koennen.

=== Pipeline-Konfiguration

#figure(
  code(
    lang: "yaml",
    ```yaml
  stages:
    - build
    - test
    - package

  build:
    stage: build
    image: mcr.microsoft.com/dotnet/sdk:8.0
    script:
      - dotnet restore
      - dotnet build --configuration Release

  test:
    stage: test
    image: mcr.microsoft.com/dotnet/sdk:8.0
    script:
      - dotnet test --configuration Release
  ```,
  ),
  kind: image,
  caption: [Beispiel einer kompakten Build- und Test-Pipeline in YAML],
)

Solche Ausschnitte eignen sich, wenn in der Arbeit die technische Orchestrierung eines Prozesses beschrieben werden soll, zum Beispiel fuer Build-, Test- oder Deployment-Schritte.

=== Skriptlogik zur Validierung

#figure(
  code(
    lang: "powershell",
    ```powershell
  function Validate-References {
      param(
          [string[]]$Identifiers,
          [string]$Context,
          [ValidateSet('Users', 'Groups', 'Apps')]
          [string]$Type
      )

      $valid = @()

      foreach ($id in $Identifiers) {
          if (Test-TargetObject -Context $Context -Type $Type -Identifier $id) {
              $valid += $id
          }
      }

      if ($valid.Count -eq 0) {
          return @('placeholder')
      }

      return $valid
  }
  ```,
  ),
  kind: image,
  caption: [Beispiel einer Validierungs- und Bereinigungsfunktion in PowerShell],
)

Das Beispiel zeigt ein typisches Muster aus Automatisierungsprojekten: eingehende Referenzen werden geprueft, bereinigt und bei Bedarf mit Fallback-Werten abgesichert.

=== Konfigurationsdatei

#figure(
  code(
    lang: "json",
    ```json
  {
    "name": "Projektanwendung",
    "short_name": "Projekt",
    "start_url": "/",
    "display": "standalone",
    "background_color": "#f2f2f2"
  }
  ```,
  ),
  kind: image,
  caption: [Beispiel einer kompakten JSON-Konfiguration],
)

Auch kurze Konfigurationsdateien lassen sich so dokumentieren, ohne dass der Haupttext mit Formatdetails ueberladen wird.

== Ergebnisdarstellung

Eine moegliche Grundstruktur ist:

- fachliche Loesungsidee
- technische Ausgestaltung
- Test oder Validierung
- Risiken, Grenzen und offene Punkte

== Bewertung

[Platzhalter: Bewerte, wie gut die erarbeitete Loesung die zuvor formulierten Anforderungen abdeckt.]
