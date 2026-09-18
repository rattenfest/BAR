#import "@preview/gantty:0.5.1": gantt
#import "@preview/kantan:0.1.0": *

= Projektinformationen

== Projektplan

// == Scope -- Estimated Features

Der Aufwand beträgt 2 Arbeitstage pro Woche für ca. 17h/W , insgesamt 240 Stunden Aufwand.

// ich (jasmin) notiere die verwendete Zeit in einer einfachen Notiztabelle, um sicherzugehen, dass ich die Zeit einhalte.



=== Meilensteine
// 3 sehr wichtiger Meilensteine
==== M1: Recherche + Konzept fertig
==== M2: Programmierung abgeschlossen
==== M3: Dokumentation bereit zum Korrekturlesen



#set page(flipped: true)
== Langfristiger Zeitplan


// meilensteinebene + burndownchart mit 3 punkten genügt

#figure(
    scale(80%, reflow: true, gantt(yaml("resources/project-time-plan.yaml"))),
    kind: image,
    caption: [Langfristiger Zeitplan],
)

#pagebreak()
#set page(flipped: false)


== Kurzfristiger Plan

Punkte die erledigt werden pro Woche, Struktur und ausführlichkeit kann sich ändern.


Woche 1:
- Kickoff
- Dokumentationstruktur aufbauen + Link zu PDF
- Aufgabe konkretisieren/Arbeit grob planen
- Erfolgszenario definieren

offene Fragen: TODOs im typst

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
    ),
    kanban-column(
        "In Arbeit",
        color: yellow,

        kanban-item(
            stroke: normal,
        )[doc][J][Anpassungen von Andrin übernehmen, Erfolgszenario/Anwendungsszenarien Entwurf], // Start: 18.9.2026, Ende: 18.9.2026,
    ),
    kanban-column(
        "In Review / Done",
        color: green,

        kanban-item(
            stroke: normal,
        )[doc][J][Typst aufsetzen, Dokumentationsstruktur erstellen und erstes Brainstorming], // Start: 16.9.2026, Ende: 16.9.2026,
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



== Meeting Notizen
Meetingnotizen werden separat erstellt, hier werden nur wichtige Entscheidungen notiert.

- Wöchentliches Meeting am Dienstag mit Betreuer
// wöchentlich im Team + wöchtentlich mit Betreuer, kann sich ändern, wenn nicht mehr nötig
// keine so strikten Guidelines wie bei SEP: Stil von wissenschaftlicher Arbeit
// Code+Git Guidelines machen wir ähnlich wie bei SeProject





// == Erklärung zum Einsatz von KI-Hilfsmitteln <ai-usage>

// Gemäss der *Leitlinie zum Umgang mit KI-basierten Hilfsmitteln in Lehre und Weiterbildung der OST* vom September XXXX legen wir hiermit die Nutzung von Künstlicher Intelligenz (KI) in diesem Projekt offen. Wir haben KI-Tools verantwortungsvoll und zielgerichtet als unterstützende Werkzeuge eingesetzt. Die inhaltliche Verantwortung für alle Arbeitsergebnisse verbleibt vollumfänglich beim Projektteam. Sämtliche generierten Codefragmente, Texte und Erkenntnisse wurden kritisch geprüft, verifiziert und in den wissenschaftlichen sowie technischen Kontext des Projekts eingeordnet.

// #pagebreak()
// = Personal Reports

