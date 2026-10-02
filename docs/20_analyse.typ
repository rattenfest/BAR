= Analyse

== Verwandte Lösungen und Technologien <konkurrenzanalyse>
// > konkrete gut dokumentierte Lösungen finden

// - event organisations softwares > meiste haben nicht fokus Getränkbestellung sondern tickets, zeitmanagement..
// - Getränkelieferanten/Webshop Lösungen (Ziel: wenig Performance, es läuft das ganze Jahr durch)
// - Lösungen ohne Website?
// - der Vorteil gegenüber einem Chat wo man Bestellungen schreibt ist offensichtlich, aber freie Textnachrichten haben auch Vorteile > Bemerkungen-Möglichkeit bei Bestellung einbauen?

=== Technologien aus verwandten Bereichen
Neben Bestellsystemen haben wir stichprobenweise Technologien aus verwandten Bereichen betrachtet. Leitfrage war jeweils, ob sie einen Arbeitsschritt am Rattenfest (Bestellen, Bereitstellen, Abholen, Rückgabe) vereinfachen würden.

*Automatische Bestandserfassung.* Die «real-time event inventory application» von rapidstock ermittelt den Inhalt offener Flaschen über eine Bluetooth-Waage und plant das Inventar anhand der erwarteten Gästezahl @rapidstock. Ein verwandter Ansatz ist das Zählen per Bilderkennung. Dies wurde für die Schlussinventur des Rattenfests bereits getestet, lieferte aber zu ungenaue Ergebnisse. Auch Starbucks stellte ein vergleichbares System nach wenigen Monaten wieder ein @Rogelberg2026May.
Für das Rattenfest bringen beide Ansätze wenig: Das Lager gibt ganze Gebinde aus, deren Zählung heute kein Problem ist. Die Gästezahl ist kaum planbar, da rund 60-70 % der Tickets erst am Festtag verkauft werden.

*Bezahlung bei der Bestellung.* Zahlungslösungen wie SumUp mit kontaktloser Zahlung per NFC @SumUpNFC oder TWINT mit QR-Code @twintQR würden es erlauben, Getränke direkt bei der Bestellung zu bezahlen. Für das Rattenfest ist das nicht sinnvoll, da die Bars ihren Getränkebezug nicht vorfinanzieren sollen. Die Einnahmen der Bars fliessen zuerst an das Rattenfest, das nach dem Fest den Getränkebezug abzieht und die Differenz auszahlt. Die Bezahlung ist damit Teil der Abrechnung (FR-26) und nicht des Bestellprozesses, eine Zahlungsintegration wird nicht umgesetzt.

*Rückmeldung an die Nutzenden.* SumUp bestätigt eine Zahlung mit einem Signalton und vier LEDs @SumUpNFC. Die Bestätigung wird wahrgenommen, ohne dass eine Nachricht gelesen werden muss. Unter Festbedingungen (dunkel, laut, Zeitdruck) ist das besonders wertvoll/* @notification-beep*/. Da ein Ton im Lärm untergehen kann, sollte er mit gut sichtbaren Farben kombiniert werden.

*Fazit:* Die automatische Bestandserfassung löst ein Problem, das am Rattenfest nicht besteht, und rechtfertigt den Aufwand nicht. Auf eine Zahlungsintegration wird bewusst verzichtet, da die Bezahlung über die Abrechnung nach dem Fest erfolgt. Übernommen wird das Prinzip der Rückmeldung über mehrere Kanäle (Ton und Farbe), das in NFR-03 einfliesst. Eine automatische Erfassung könnte sich lohnen, falls Bars ihre Getränke künftig selbst aus dem Kühlwagen holen (siehe @ausblick).

=== Webshop für Getränke

Ein Webshop der Getränke verkauft ermöglicht eine gute Benutzerfreundlichkeit durch farbige und auffallende Bilder. Ausserdem gibt es einen Filter für die Getränke, ebenfalls mit einem Bild. Einzelne Getränke und 6er Packs werden in dieser Anzahl auf dem Bild abgebildet.  @webshop


#figure(
  image("resources/research/rewe.png", width: 40%),
  kind: image,
  caption: [Screenshot von REWE Webshop],
)



// === Display mit Bestellinfos
// Restaurant digitales Bestellsystem
// z.B. das von McDonalds
// > zu langweilig und dort benötigen wir keine Verbesserung
// https://nento.com/mcdonalds-digital-menu-board/?keyword=mcdonalds_digital_menu_board
