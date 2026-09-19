#import "@preview/gantty:0.5.1": gantt
#import "@preview/kantan:0.1.0": *

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

Punkte die erledigt werden pro Woche, Struktur und ausführlichkeit kann sich ändern. Als Hilfe für uns.


Woche 1:
- Kickoff
- Dokumentationstruktur aufbauen + Link zu PDF
- Aufgabe konkretisieren/Arbeit grob planen
- Erfolgszenario definieren
- Zeitplan
- offene Fragen notieren für nächste Besprechung: sind mit `> ` am Anfang geschrieben.


Woche 2:
-

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
    )[doc][J][Anforderungen priorisieren: wie? und was weglassen?, These verbessern > benötige Feedback ?, Struktur verbessern > benötige Feedback, ob richtig verstanden, Anwendungsszenarien für User anpassen? und weitere definieren mit Prioritätsstatus], // Start: 18.9.2026, Ende: xx.9.2026,
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
    )[doc][J][Typst aufsetzen, Dokumentationsstruktur erstellen und erstes Brainstorming], // Start: 16.9.2026, Ende: 16.9.2026,

    kanban-item(
      stroke: normal,
    )[doc][J][Anpassungen von Andrin übernehmen, erste Erfolgszenario/Anwendungsszenarien], // Start: 18.9.2026, Ende: 18.9.2026,
  ),
  /*
  kanban-column(
      "Done last week",
      color: green,
      // fertige Tasks nach einer Woche hierhin verschieben (auskommentieren) und ungefähre Zeitschätzung ergänzen
      // ---

      // ---
  ),
  */
)




