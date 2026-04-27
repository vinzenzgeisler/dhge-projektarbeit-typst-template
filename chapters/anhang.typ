#import "@preview/sourcerer:0.2.1": code
#import "@preview/codly:1.2.0": *
#import "@preview/codly-languages:0.1.10": *
#show: codly-init.with()
#codly(number-format: none, stroke: 1pt + black)

#set raw(syntaxes: "../images/PowerShell.sublime-syntax")

= Anhang

Dieser Anhang zeigt beispielhaft, wie laengere technische Ausschnitte aus dem Hauptteil ausgelagert werden koennen. Das entspricht oft einem besseren Lesefluss in Projektarbeiten, wenn Implementierungsdetails dokumentiert, aber nicht mitten im Argumentationsgang ausgebreitet werden sollen.

Typische Inhalte sind:

- ergaenzende Tabellen
- zusaetzliche Abbildungen
- Konfigurationsauszuege
- laengere Codeausschnitte
- Frageboegen oder Bewertungsraster

== Beispiel: Pipeline-Konfiguration

Der folgende Ausschnitt zeigt eine kompakte Build- und Test-Pipeline in YAML.

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
```

== Beispiel: Validierungs- und Bereinigungslogik

Das Beispiel zeigt ein typisches Muster aus Automatisierungsprojekten: eingehende Referenzen werden geprueft, bereinigt und bei Bedarf mit Fallback-Werten abgesichert.

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
```

== Beispiel: JSON-Konfiguration

Auch kuerzere Konfigurationsdateien lassen sich im Anhang dokumentieren, wenn sie fuer die Arbeit relevant sind.

```json
{
  "name": "Projektanwendung",
  "short_name": "Projekt",
  "start_url": "/",
  "display": "standalone",
  "background_color": "#f2f2f2"
}
```
