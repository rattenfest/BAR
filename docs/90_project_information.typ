#import "@preview/gantty:0.5.1": gantt
#import "@preview/kantan:0.1.0": *
#import "@preview/cheq:0.4.0": checklist

= Projektinformationen

== Projektplan

// == Scope -- Estimated Features

Der Aufwand beträgt 2 Arbeitstage pro Woche für ca. 17h/W , insgesamt 240 Stunden Aufwand.

// ich (jasmin) notiere die verwendete Zeit in einer einfachen Notiztabelle, um sicherzugehen, dass ich die Zeit einhalte.


== Langfristiger Zeitplan

// #set page(flipped: true)

// 3 sehr wichtige Meilensteine
// meilensteinebene + burndownchart mit 3 punkten genügt
==== M1: Recherche fertig
geschätzte Zeit: xxh
benötigte Zeit: xxh

Beschreibung: {Link zu Kapitel in Typst?}

- Recherche erstellt, damit die Anforderungen bestmöglichst priorisiert
- User Tests durchgeführt mit einem Prototyp??
  - neues UI/UX Design oder vorhandenen Prototyp nutzen?
- User Befragung mit Bar-Arbeitern und RF Lager Verwaltern
- Konzept inklusive Application Architektur und Software Architektur anhand der Anforderungen erstellt

==== M2: Umsetzung, Programmierung abgeschlossen

Beschreibung:
- FR umgesetzt
- NFR umgesetzt/erreicht
- Tests durchgeführt und Rückmeldungen eingebaut
- Website erreichbar und benutzbar
- allfällige Dokumentation/Anleitungen für User (RF/Bars) fertig

==== M3: Dokumentation bereit zum Korrekturlesen

- Erkenntnisse dokumentiert
- Dokumentation gut formatiert
- Abgabe bereit
- Dokumentation kann korrekturgelesen werden
- + Puffer


#figure(
  scale(80%, reflow: true, gantt(yaml("resources/project-time-plan.yaml"))),
  kind: image,
  caption: [Langfristiger Zeitplan],
)

#pagebreak()
#set page(flipped: false)

== Kurzfristiger Plan
#show: checklist

Punkte die erledigt werden pro Woche, Struktur und ausführlichkeit kann sich ändern. Als Hilfe für uns.


Woche 1:
- [x] Kickoff
- [x] Dokumentationstruktur aufbauen
- [x] Aufgabe konkretisieren/Arbeit grob planen
- [x] Erfolgszenario Entwurf
- [x] Zeitplan
- [x] offene Fragen notieren für nächste Besprechung: sind mit `> ` am Anfang geschrieben.

Woche 2:
- [ ] Link zu PDF
- [ ] Dokumentation ergänzen, gemäss Richtlinien und Austausch untereinander
- [ ] interne Kommunikation
- [ ] Ausgangslage und Informationen ausführlich notieren
- [ ] Prototyp vorbereiten für Tests
- [ ] Fragen notieren, was wir mit dem Prototyp herausfinden wollen
- [ ] Fragen notieren, was wir mit der Recherche herausfinden wollen
- [x] Zeitplan erweitert

Woche 3:
// Andrin = Prototyp und Befragung dazu, Jasmin = Recherche?
- [ ] User Befragung mit Prototyp
- [ ] Messungen/Tests anhand von Prototyp
- [ ] Ergebnis validieren, sinnvoll notieren
- [ ] Recherche: ausführliche Konkurrenzanalyse

Woche 4:
- [ ] Literaturrecherche aufgrund User Tests
  - Fragen klären
- [ ] Recherche abschliessen (M1)
- [ ] Umsetzung planen

Woche 5:
Umsetzung: Details werden in Woche 4 geplant

Woche 6:
Umsetzung: Details werden in Woche 4 geplant
- [ ] Zwischenpräsentation vorbereiten

Woche 7:
Umsetzung: Details werden in Woche 4 geplant
- [ ] Zwischenpräsentation vorbereiten + halten

Woche 8:
Umsetzung: Details werden in Woche 4 geplant

Woche 9:
Umsetzung: Details werden in Woche 4 geplant

Woche 10:
Umsetzung: Details werden in Woche 4 geplant
- [ ] (M2) Umsetzung fertig

Woche 11:
- [ ] Dokumentation überarbeiten, schönschreiben
- [ ] Dokumentation anpassen gemäss Bewertungskriterien

Woche 12:
- [ ] Dokumentation anpassen gemäss Bewertungskriterien
- [ ] Dokumentation fertig und zum Korrekturlesen geben
- [ ] Dokumentation Formatierung anpassen wenn Zeit
- [ ] (M3) Dokumentation fertig

Woche 13:
- [ ] letzte Korrekturen
- [ ] Abgabe vorbereiten (formatieren, exportieren)
  - [ ] Bericht (in einer vollständigen Version zur Korrektur und einer gekürzten Version zur Publikation)
  - [ ] Eigenständigkeitserklärung
  - [ ] A0-Poster (bei Studienarbeiten ist die Erstellung des Posters empfohlen, aber nicht zwingend)
  - [ ] Wissenschaftliches (Plain-Text) Abstract
  - [ ] Broschüren-Abstract

Woche 14 (bis 18. Dezember):
- [ ] Abgabe



=== Kanban Board

// Wichtigkeit + Dringlichkeit:
#let high = rgb("#FF5733");
#let normal = rgb("#ebff33");
#let low = rgb("#33ff44");

// Info zur Verwendung vom Kantan Board:
// - Farbe für Priorität, ein Task ist nur in Ausnahmefällen sehr wichtig (high).
// - `[]` Feld für Typ vom Task (Dok/Code) und wer (A=Andrin, J=Jasmin)
// - Tasks erstellen, so detailiert wie es hilfreich ist
// - Zeitschätzung und Aufwand direkt beim Task notieren, dann am Besten ein Task pro Woche/Tag
// - Meetings werden hier nicht erfasst


#kanban(
  font-size: 0.80em,
  font: "Liberation Sans",
  kanban-column(
    "Backlog",
    color: red,
    kanban-item(
      stroke: normal,
    )[doc][A][Dokumentationsstruktur anpassen/ergänzen + Requirements genauer definieren], // Start: 16.9.2026, Ende: ..

    kanban-item(
      stroke: normal,
    )[doc][J][
      - Anforderungen priorisieren: wie? und was weglassen?
      - These verbessern > benötige Feedback ?
      - Struktur verbessern > benötige Feedback, ob richtig verstanden,
      - Anwendungsszenarien für User anpassen? und weitere definieren mit Prioritätsstatus
    ], // Start: 18.9.2026, Ende: xx.9.2026, benötige weitere Informationen
  ),
  kanban-column(
    "In Arbeit",
    color: yellow,
  ),
  kanban-column(
    "In Review / Done",
    color: green,

    kanban-item(
      stroke: normal,
    )[doc][J][Dokumentation weiter angepasst und Zeitplan Aufgaben detailierter notiert], // Start: 18.9.2026, Ende: xx.9.2026, benötige weitere Informationen
  ),
  // /*
  kanban-column(
    "Done last week",
    color: green,
    // fertige Tasks nach einer Woche hierhin verschieben (auskommentieren) und ungefähre Zeitschätzung ergänzen
    // ---
    // Woche 1
    kanban-item(
      stroke: normal,
    )[doc][J][Typst aufsetzen, Dokumentationsstruktur erstellen und erstes Brainstorming], // Start: 16.9.2026, Ende: 16.9.2026,

    kanban-item(
      stroke: normal,
    )[doc][J][Anpassungen von Andrin übernehmen, erste Erfolgszenario/Anwendungsszenarien], // Start: 18.9.2026, Ende: 18.9.2026,

    // Woche 2

    // ---
  ),
  // */
)




