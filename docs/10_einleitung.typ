= Problemstellung
// Analyse was es schon gibt. Analyse was nötig ist, was für Einschränkungen im UX. Bereits überlegt: responsive, hoch und querformat
// Was wollen wir machen, wieso? Sozusagen die Requirements FR/NFR. Mit Zielgruppe und was speziell ist
// (Problemstellung, Forschungsfrage, Aufbau)

== Ausgangslage
// = These

Das Rattenfest ist ein jährlich stattfindendes Festival, das von Studierenden der OST organisiert wird und rund 3'000 Personen besucht. Die Getränke werden an mehreren Bars ausgeschenkt, die unabhängig vom Rattenfest betrieben werden. Damit nicht jede Bar ihre Versorgung selbst organisieren muss, betreibt das Rattenfest ein zentrales Getränkelager, aus dem die Bars während des Fests laufend beziehen.

Dieser Prozess wurde in den letzten Jahren versucht zunehmend zu digitalisieren, die bisherigen Lösungen blieben jedoch unzureichend.

=== Systemkontext und Domäne
// Dieser Teil des Berichts beschreibt und analysiert die externen Schnittstellen des zu erstellenden oder zu
// erweiternden Softwaresystems (Entwicklungszeit und/oder Laufzeit) sowie die bestehende oder zu
// verwendende Infrastruktur wie z.B. Cloud-Provider. Er skizziert die fachliche Domäne, insbesondere ihre
// softwaretechnischen Besonderheiten (Bsp. Design Hot Spots, Pattern-Nutzung).

// nicht verwechseln mit "Problem Domain", welches fachlich nicht technisch ist

Es gibt eine Website des Rattenfest `rattenfest.ch`, diese wird über Hostpoint gehostet.
Das Ticketsystem und die Bezahlung läuft extern über einen Anbieter.
Die Kommunikation intern läuft über Microsoft Teams, E-Mails und Chatdienste wie WhatsApp.
Dateien sind unter Microsoft Teams abgelegt, es gibt keinen Dateiserver.
Es gibt bereits einen Prototyp für das Barsystem und als Hilfe für den OK im Vorverkauf wurde bereits eine kleine Website getestet.
So sind die Schnittstellen vom Rattenfest sehr flexibel und die verschiedenen Services können unabhängig voneinander gewechselt werden.

== Problem Domain

// brauchen wir hier noch problem domain fuer die vorbestellungen?

// Die "Problem Domain" hilft das Problem ohne Missverständnisse durch die Sprache zu verstehen.

// TODO: Bild zuschneiden, sobald es keine Inhaltsänderungen mehr gibt
// TODO: Begrifflichkeiten einheitlich festhalten und so über gesamte Doku verwenden
// wir können jetzt mit der Problem Domain bestimmen, wo die Engpässe und wichtigsten Stellen sind, die wir verbessern wollen und worauf wir besonderen Fokus setzen

#figure(
  image("resources/problem-domain/Bestellungen.egn.svg", width: 300pt),
  kind: image,
  caption: [Problem Domain der Getränkebestellung],
)

// TODO: nochmals nachrechnen und die Einheit genauer definieren, Schätzungen
Umfang:
- Eine Getränke-Bestellung umfasst wenige bis zu mehreren hundert Artikel.
- Das Bereitstellen der Getränke (4) dauert je nach Grösse der Bestellung und Anzahl der eingehenden Bestellungen zwischen 2 und 10 Minuten.
- Gemäss den Erfahrungen aus dem letzten Jahr gehen zu Spitzenzeiten bis zu 10-15 Bestellungen pro 15 Minuten ein.
- Die Wege bei der Abholung (7) sind unterschiedlich lang. Bis man sich mit der Ware durch die Menschenmenge gekämpft hat, können mehrere Minuten vergehen.

Höchste Priorität bei der Bestellung: Solange ein Produkt an Lager ist, darf es an keiner Bar ausgehen.
Das wird durch schnelle Kommunikation und Live-Updates sichergestellt.
// und wenn im Zeitrahmen der SA: Prognose pro Bar, Empfehlung auf Website: "es sind .. minuten vorbei seit der letzten Bestellung, möchtet du diese Artikel wieder bestellen ..."

#figure(
  image("resources/problem-domain/Rückgabe.egn.svg", width: 300pt),
  kind: image,
  caption: [Problem Domain der Getränkerückgabe am Ende des Festes],
)

Bei der Rückgabe ist das Fest vorbei und es darf deshalb auch länger dauern.


== Ziel
Ziel dieser Arbeit ist eine Webapplikation, die den gesamten Lebenszyklus der Getränke abbildet, von der ersten Bedarfsschätzung bis zur Abrechnung nach dem Fest:

- *Vor dem Fest* erfassen die Bars ihre Bedarfsschätzung in der Applikation. Das OK prüft und korrigiert diese und leitet daraus die Bestellung beim Getränkehändler ab. Die gelieferte Ware bildet den Anfangsbestand des Lagers.
- *Während des Fests* bestellen die Bars laufend aus diesem Bestand. Das Lagerteam stellt die Bestellungen bereit und informiert die Bars über den Status.
- *Nach dem Fest* lässt sich für jede Bar eine detaillierte Abrechnung erstellen.

Neben der Funktionalität soll die Lösung auf das Rattenfest zugeschnitten und für den langfristigen Einsatz geeignet sein. Dabei sind drei Eigenschaften besonders wichtig:

- *Bedienbarkeit* unter den Bedingungen am Fest: dunkel, laut, unter Zeitdruck und mit Personal, dessen Aufmerksamkeit im Verlauf des Abends nachlässt.
- *Zuverlässigkeit* während des Fests. Sobald die Bars auf den manuellen Weg ausweichen müssen, verliert die Applikation ihren Zweck.
- *Verwendbarkeit und Wartbarkeit* durch ein jährlich wechselndes OK mit unterschiedlichen technischen Kenntnissen.


// weitere Dokumente zum Thema "einleitung" siehe Nummerierung 1x_....typ und in "Dokumentation-SA-BAR.typ" importiert
