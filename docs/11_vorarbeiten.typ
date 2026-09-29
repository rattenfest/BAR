= Vorarbeiten <vorarbeiten>
In den vergangenen Jahren wurde versucht, das Getränkemanagement am Rattenfest zunehmend zu digitalisieren. Für das Rattenfest 2026 wurde, unabhängig von dieser Arbeit und vor deren Beginn, erstmals ein Prototyp für die Getränkebestellungen während des Fests entwickelt und eingesetzt. Dieser Prototyp wird im Folgenden beschrieben und von den Ergebnissen dieser Arbeit abgegrenzt.

== Prototyp 2026

=== Funktionsumfang
Der Prototyp deckt ausschliesslich den Bestellprozess während des Fests ab:

- Die Bars bestellen über eine Webseite Getränke aus dem Lager.
- Das Lagerteam erhält die Bestellungen, bearbeitet diese und stellt sie bereit.
- Die Bars holen die bereitgestellten Getränke im Lager ab.
- Am Ende des Fests können Retouren erfasst werden.
- Nach dem Fest stehen die Daten zur Verfügung, um pro Bar eine Abrechnung zu erstellen.

Für die Benutzeroberfläche wurde die Komponentenbibliothek #link("https://ui.shadcn.com")[shadcn/ui] @shadcn-ui verwendet, die unter anderem einen Dark Mode mitbringt. Die Applikation übernahm dabei die Einstellung des Geräts und wurde dunkel dargestellt, sofern dieses auf den Nachtmodus geschaltet war.


#figure(
  table(
    columns: (1fr, 1fr, 1fr),
    align: center,
    stroke: none,
    [#figure(image("resources/prototype/order.png", width: 100%), caption: [Bestellung durch eine Bar])],
    [#figure(image("resources/prototype/dashboard.png", width: 100%), caption: [Übersicht im Lager])],
    [#figure(image("resources/prototype/bar-view.png", width: 100%), caption: [Ansicht der Bar])],
  ),
)
=== Erfahrungen aus dem Einsatz
Der Prototyp war während des gesamten Fests ohne nennenswerte Ausfälle im Einsatz. Die Rückmeldungen von Bar- und Lagerteam fielen überwiegend positiv aus. Der Einsatz unter realen Bedingungen lieferte zudem konkrete Hinweise auf fehlende Funktionen, die ohne Prototyp kaum erkannt worden wären, beispielsweise:

- die Berücksichtigung von Pausen und Schichtwechseln,
- Angabe von Preisen und Übersicht der Ausgaben,
- Einfache Kontaktmöglichkeit zur Security.

Diese Erkenntnisse fliessen als Anforderungen in diese Arbeit ein.

=== Grenzen
Trotz des erfolgreichen Einsatzes genügt der Prototyp den Zielen dieser Arbeit nicht:

- *Architektur und Qualität*: Der Prototyp wurde aufgrund mangelnder Planung als Einweglösung entwickelt. Es besteht keine Testabdeckung und keine saubere Architektur, was eine Weiterentwicklung und Wartung durch ein wechselndes OK erschwert.
- *Datenmodell*: Das Datenschema ist auf ein einzelnes Fest ausgelegt. Um die App für ein weiteres Fest zu verwenden, muss die DB gewiped werden und sämtliche Daten gehen verloren, womit ein Vergleich zwischen Jahrgängen nicht möglich ist.
- *Funktionsumfang*: Abgedeckt ist nur der Bestell- und Rücknahmeprozess. Bedarfsschätzung und Vorbestellung, automatischer Lagerbestand, Preisaufstellungen und fertige Abrechnungen fehlen vollständig.
- *Administration*: Viele Aufgaben wie der Import von Getränken, Bars, Benutzern und Telefonnummern erfolgen über das Dashboard der Datenbank oder mit Skripten. Ohne technische Kenntnisse ist die Applikation nicht betreibbar.

== Abgrenzung zu dieser Arbeit
Der Prototyp dient dieser Arbeit als validierte Ausgangslage, nicht als Codebasis, die unverändert übernommen wird. Da der Umfang dieser Arbeit deutlich grösser ist, erlauben wir uns bewiesene Konzepte zu uebernehmen.

- der Technologie-Stack, da er sich im Einsatz bewährt hat und für ein wechselndes OK einfach zu warten ist. (Vercel & Supabase)
- der grundlegende Ablauf des Bestellprozesses & Retouren
- das Zugangskonzept: Bars greifen über einen persönlichen Link ohne Passwort zu, Lagerteam und Administratoren melden sich mit Benutzername und Passwort an.

Neu im Rahmen dieser Arbeit entstehen insbesondere ein mehrjahresfähiges Datenmodell, eine testbare Architektur, die Administration über die Applikation selbst sowie die Prozesse vor und nach dem Fest. Zudem wird die Bedienbarkeit unter Festbedingungen, auf Basis der Recherche in und der Rückmeldungen aus dem Einsatz, untersucht und weiterentwickelt.


