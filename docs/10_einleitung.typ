= Einleitung
// Analyse was es schon gibt. Analyse was nötig ist, was für Einschränkungen im UX. Bereits überlegt: responsive, hoch und querformat
// Was wollen wir machen, wieso? Sozusagen die Requirements FR/NFR. Mit Zielgruppe und was speziell ist
// (Problemstellung, Forschungsfrage, Aufbau)

== Ausgangslage
// = These

Das Rattenfest ist ein jährlich stattfindendes Festival, das von Studierenden der OST organisiert wird und rund 3'000 Personen besucht. Die Getränke werden an mehreren Bars ausgeschenkt, die unabhängig vom Rattenfest betrieben werden. Damit nicht jede Bar ihre Versorgung selbst organisieren muss, betreibt das Rattenfest ein zentrales Getränkelager, aus dem die Bars während des Fests laufend beziehen.

// TODO: Abrechnungsmodell der Bars beschreiben (Einnahmen fliessen ans Rattenfest, Getränkebezug wird abgezogen, Differenz ausbezahlt)

Dieser Prozess wurde in den letzten Jahren versucht zunehmend zu digitalisieren, die bisherigen Lösungen blieben jedoch unzureichend.

== Systemkontext und Domäne
// nicht verwechseln mit "Problem Domain", welches fachlich nicht technisch ist

Es gibt eine Website des Rattenfest `rattenfest.ch`, diese wird über Hostpoint gehostet.
Das Ticketsystem und die Bezahlung läuft extern über einen Anbieter.
Die Kommunikation intern läuft über Microsoft Teams, E-Mails und Chatdienste wie WhatsApp.
Dateien sind unter Microsoft Teams abgelegt, es gibt keinen Dateiserver.
Es gibt bereits einen Prototyp für das Barsystem und als Hilfe für den OK im Vorverkauf wurde bereits eine kleine Website getestet.
So sind die Schnittstellen vom Rattenfest sehr flexibel und die verschiedenen Services können unabhängig voneinander gewechselt werden.


== Ziel der Arbeit
Ziel dieser Arbeit ist eine Webapplikation, die den gesamten Lebenszyklus der Getränke abbildet, von der ersten Bedarfsschätzung bis zur Abrechnung nach dem Fest: // TODO: lebenszyklus erklären, von Bestellung bis geöffnet

- *Vor dem Fest* erfassen die Bars ihre Bedarfsschätzung in der Applikation. Das OK prüft und korrigiert diese und leitet daraus die Bestellung beim Getränkehändler ab. Die gelieferte Ware bildet den Anfangsbestand des Lagers.
- *Während des Fests* bestellen die Bars laufend aus diesem Bestand. Das Lagerteam stellt die Bestellungen bereit und informiert die Bars über den Status.
- *Nach dem Fest* lässt sich für jede Bar eine detaillierte Abrechnung erstellen.

Neben der Funktionalität soll die Lösung auf das Rattenfest zugeschnitten und für den langfristigen Einsatz geeignet sein. Dabei sind drei Eigenschaften besonders wichtig:

- *Bedienbarkeit* unter den Bedingungen am Fest: dunkel, laut, unter Zeitdruck und mit Personal, dessen Aufmerksamkeit im Verlauf des Abends nachlässt.
- *Zuverlässigkeit* während des Fests. Sobald die Bars auf den manuellen Weg ausweichen müssen, verliert die Applikation ihren Zweck.
- *Verwendbarkeit und Wartbarkeit* durch ein jährlich wechselndes OK mit unterschiedlichen technischen Kenntnissen.

== Rahmenbedingungen
Die Arbeit wird als Studienarbeit (SA) im Umfang von 8 ECTS durchgeführt, was einem Aufwand von rund 240 Stunden entspricht.
// TODO: pro Person? Team, Betreuung, Zeitraum ergänzen


== Vorgehen
// muss der Zeitplan und die Organisation auch hier notiert werden
Um diese Ziele zu erreichen, machen wir diese Schritte:

+ Problem genauer definieren // problem domain
+ Wie wurde es bisher gelöst
+ Rechereche
  + Vorarbeit mit Prototyp wird analysiert und Erfahrungen für Anforderungen gessammelt
  + Konkurrenzanalyse: was gibt es bereits, was können wir abschauen
    + Technologien
    + Webshops
    + ähnliche Umgebung Fussballstadion
    + Risikoanalyse
  + Benutzung in spezieller Umgebung verbessern > betrachte ähnliche Beeinträchtigungen, erstelle eigene Guideline wie WCAG mit Elementen auch von WCAG
+ alles gelernte aus der Recherche in Anforderungen übernehmen, deklarieren woher
+ Umsetzung der Website
  + Technologie auswählen
  + DB Domain Modell und Architektur planen wo nötig
  // + arbeit mit kanban?
  + Programmierung
  + kleiner User Test an simulierter Umgebung // hab ich jetzt einfach hier erfunden, fände ich noch cool
  + Deployment
  + Bedienungsanleitung für RF OK und BAR MA


// Einleitung nicht mit Details zu bestehenden Lösungen und der Definition vom Problem ergänzen, soll separat sein
