= Was können wir von vorhandenen Lösungen abschauen // war "Analyse"

== Verwandte Lösungen und Technologien
// > konkrete gut dokumentierte Lösungen finden

// - event organisations softwares > meiste haben nicht fokus Getränkbestellung sondern tickets, zeitmanagement..
// - Getränkelieferanten/Webshop Lösungen (Ziel: wenig Performance, es läuft das ganze Jahr durch)
// - Lösungen ohne Website?
// - der Vorteil gegenüber einem Chat wo man Bestellungen schreibt ist offensichtlich, aber freie Textnachrichten haben auch Vorteile > Bemerkungen-Möglichkeit bei Bestellung einbauen?


// habe hier einfach mal was geschrieben, muss noch angepasst werden.
Zuerst betrachten wir Technologien von ähnlichen Bereichen, danach schauen wir was das UI von einem Webshop abschauen kann und was anders sein soll. Wir betrachten was es für Lösungen für den Bereich direkt zu Kunden gibt und was uns unterscheidet.

=== Können wir Technologien übernehmen von ähnlichen Bereichen?

Neben Bestellsystemen haben wir stichprobenweise Technologien aus verwandten Bereichen betrachtet. Leitfrage war jeweils, ob sie einen Arbeitsschritt am Rattenfest (Bestellen, Bereitstellen, Abholen, Rückgabe) vereinfachen würden.

*Automatische Bestandserfassung.* Die «real-time event inventory application» von rapidstock ermittelt den Inhalt offener Flaschen über eine Bluetooth-Waage und plant das Inventar anhand der erwarteten Gästezahl @rapidstock. Ein verwandter Ansatz ist das Zählen per Bilderkennung. Dies wurde für die Schlussinventur des Rattenfests bereits getestet, lieferte aber zu ungenaue Ergebnisse. Auch Starbucks stellte ein vergleichbares System nach wenigen Monaten wieder ein @Rogelberg2026May.
Für das Rattenfest bringen beide Ansätze wenig: Das Lager gibt ganze Gebinde aus, deren Zählung heute kein Problem ist. Die Gästezahl ist kaum planbar, da rund 60-70 % der Tickets erst am Festtag verkauft werden.

*Bezahlung bei der Bestellung.* Zahlungslösungen wie SumUp mit kontaktloser Zahlung per NFC @SumUpNFC oder TWINT mit QR-Code @twintQR würden es erlauben, Getränke direkt bei der Bestellung zu bezahlen. Für das Rattenfest ist das nicht sinnvoll, da die Bars ihren Getränkebezug nicht vorfinanzieren sollen. Die Einnahmen der Bars fliessen zuerst an das Rattenfest, das nach dem Fest den Getränkebezug abzieht und die Differenz auszahlt. Die Bezahlung ist damit Teil der Abrechnung (FR-26) und nicht des Bestellprozesses, eine Zahlungsintegration wird nicht umgesetzt. // TODO: zu problem domain "Abrechnungsmodell" verschieben

*Rückmeldung an die Nutzenden.* SumUp bestätigt eine Zahlung mit einem Signalton und vier LEDs @SumUpNFC. Die Bestätigung wird wahrgenommen, ohne dass eine Nachricht gelesen werden muss. Unter Festbedingungen (dunkel, laut, Zeitdruck) ist das besonders wertvoll/* @notification-beep*/. Da ein Ton im Lärm untergehen kann, sollte er mit gut sichtbaren Farben kombiniert werden.

*Fazit.* Die automatische Bestandserfassung löst ein Problem, das am Rattenfest nicht besteht, und rechtfertigt den Aufwand nicht. Auf eine Zahlungsintegration wird bewusst verzichtet, da die Bezahlung über die Abrechnung nach dem Fest erfolgt. Übernommen wird das Prinzip der Rückmeldung über mehrere Kanäle (Ton und Farbe), das in NFR-03 einfliesst. Eine automatische Erfassung könnte sich lohnen, falls Bars ihre Getränke künftig selbst aus dem Kühlwagen holen (siehe @ausblick).

=== Webshop für Getränke

Ein Webshop der Getränke verkauft ermöglicht eine gute Benutzerfreundlichkeit durch farbige und auffallende Bilder. Ausserdem gibt es einen Filter für die Getränke, ebenfalls mit einem Bild. Einzelne Getränke und 6er Packs werden in dieser Anzahl auf dem Bild abgebildet.  @webshop


#figure(
  image("resources/research/rewe.png", width: 40%),
  kind: image,
  caption: [Screenshot von REWE Webshop],
)

// TODO; Text UI, was übernehmen, was nicht?

=== Bestellapp für Zuschauer im Fussballstadion

Das Fussballstadion hat einige ähnliche Probleme: es ist laut, es hat sehr viele Menschen, die Zuschauer haben wenig Zeit und Getränke werden bestellt, welche möglichst schnell bereit sein sollen. Ausserdem kann die Internetverbindung bei vielen Menschen negativ beeinflusst werden. Wir möchten herausfinden, wie schnell und wie die vorhandenen Lösungen die Besteller informieren und wie die Bestellung ausgeführt wird. Die Bezahlung und Verkaufssteigerung interessiert uns nicht.

Es gibt sehr viele Apps, die bereits das Problem lösen wollten und in Nachrichten erschienen. // und dann nie mehr erwähnt wurden.
Hier eine Sammlung mit ungefähren Jahreszahlen:
Ein "Call-a-Beer"-Szenario" und ungenügende mit der Mobilfunktechnik im Stadion wurden in 2011 berichtet @Schmidt2011Aug.
Bereits 2013 gab es die Idee, einer App um Getränke per Smartphone zu bestellen @Hillebrand2025Dec.

Im englischsprachigen Raum hat 2015 VenueNext ihre App die einen Bestellservice enthält, veröffentlicht @venueNext.
Heute gehört es zu "Shift4" und es wird besonders das einheitliche Bezahlsystem hervorgehoben @venueNextWebsite.

Eine App die sogenannte "Runner" informiert um die Bestellung auszuliefern in 2018 @BibEntry2026Sep. Eine App "OrdiFy" die den Sitzplan einberechnet in 2021 @ordify @ordifyAndroid.
Im Februar 2025 wurde dies geschrieben: "Die neue Funktion in der BVB-App soll es den Nutzern ermöglichen, „an Heimspieltagen über die App Getränke und Snacks zu bestellen und auch zu bezahlen“, wie der Fußball-Bundesligist aus Dortmund auf wa.de-Anfrage mitteilt" @fussballstadion
// Leider zu den Apps nicht herausgefunden, woran es scheiterte. Ich vermute der Nutzen war zu klein für den Aufwand. Nur grosse Firmen mit sehr viel Geld und Investitionen wie shift4 oder Just Eat lohnen sich wohl finanziell, wenn es um Bezahlsysteme geht.

Heute arbeiten einige Stadions mit Takeaway Apps zusammen, beispielsweise der Kybunpark und "UEFA Women's EURO 2025" mit Just Eat @justEat2023 @justEatUefa. Die Bestellung wird dann an dafür vorgesehenen Orten abgeholt.

#figure(
  image("resources/research/just-eat-beverages-screenshot.png", width: 80%),
  kind: image,
  caption: [Screenshot von `just-eat.ch`],
)

Die digitale Bestellplattform "Jamezz" verspricht, dass mithilfe eines QR-Codes die Bestellung geöffnet werden kann und der Sitzblock direkt mit dem QR-Code mitgeliefert wird. @Jamezz2026Sep
// Viele der Vorteile wie eine erhöhte Bestellhäufigkeit und Blockzuordnung ist für uns jedoch nicht relevant.
Die Benachrichtigung an den Besteller löst dieser Service mit E-Mail und SMS, es sei auch eine Echtzeit-Bestellverfolgung mit 'in Vorbereitung', 'abholbereit', 'unterwegs' möglich. @Jamezz2026Apr
Das UI differenziert sich nicht von einem Takeaway Website oder Restaurant Menüplan und ist sehr generisch.

#figure(
  image("resources/research/jamezz-web-desktop.png", width: 80%),
  kind: image,
  caption: [Screenshot von `jamezz.com/de`],
)


Diese Lösungen sind sehr an den Verkauf und die Bezahlung ausgerichtet. // Sie lösen das Problem vom Anstehen in der Schlange und werben mit mehr Verkäufen.
Heutzutage ist mehr mit Webseiten und Web Apps möglich, so ist auch Just Eat ohne App nutzbar.
// @andrin fazit erweitern?
Die Benachrichtigungen auf SMS zu erweitern, könnte die schlechte Internetverbindung ausgleichen. Neben der zusätzlichen Komplexität und Kosten müsste dafür jeder Bar-MA sein eigenes Profil mit Telefonnummer speichern. Mit AWS End User Messaging wäre der Preis pro SMS ohne weitere Einrichtungskosten \$0.05124 @awssms.


// === Display mit Bestellinfos
// Restaurant digitales Bestellsystem
// z.B. das von McDonalds
// > zu langweilig und dort benötigen wir keine Verbesserung
// https://nento.com/mcdonalds-digital-menu-board/?keyword=mcdonalds_digital_menu_board
