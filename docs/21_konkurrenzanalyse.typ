
== Vorhandene Lösungswege "Case Study"
// (Konkurrenzanalyse/Wettbewerbsanalyse)

// > konkrete gut dokumentierte Lösungen finden

// - event organisations softwares > meiste haben nicht fokus Getränkbestellung sondern tickets, zeitmanagement..
// - Getränkelieferanten/Webshop Lösungen (Ziel: wenig Performance, es läuft das ganze Jahr durch)
// - Lösungen ohne Website?
// - der Vorteil gegenüber einem Chat wo man Bestellungen schreibt ist offensichtlich, aber freie Textnachrichten haben auch Vorteile > Bemerkungen-Möglichkeit bei Bestellung einbauen?


== Weiteren Technologien
// TODO: inhalt so ok? Struktur ändern, so dass das RF Fazit zusammen am Schluss steht? Reihenfolge so okay? Einleitung und Schluss ausführlicher?
Wir haben Lösungen von verschiedenen Softwares stichprobenweise angeschaut, um herauszufinden, ob diese in unserem Fall einen Vorteil bringen würden.

Die "real-time event inventory application" von "rapidstock" bietet eine Waage die das Gewicht einer offenen Flasche per Bluetooth sendet an @rapidstock. In unserem Fall müsste mit dieser Idee nur der Getränketyp angegeben werden und mit dem Gewicht kann die Anzahl berechnet werden.
// Um den Getränketyp zu ermitteln könnte zusätzlich mit Barcodes gearbeitet werden.
Diese Event-Software hat ausserdem die Anzahl Gäste eingeplant, um so das Inventar besser zu planen.

// Fazit, kann auch an Schluss verschoben werden?
Beim Rattenfest ist das zählen der Artikel aktuell kein Problem und viele Gäste kaufen ihr Ticket erst vor Ort. // @andrin haben wir konkrete Zahlen oder % zu Ticketkauf vor Ort und Ticketkauf vorher?

Sum-Up akzeptiert Bezahlungen mit NFC, damit können Bezahlungen in der Nähe von bis zu 10 cm kontaktlos getätig werden. Ausserdem wird die Zahlung mit einem "Beep" und vier LEDs bestätigt. @SumUpNFC
Das spart "Klicks" auf dem Smartphone und das lesen der Bestätigungsnachricht durch einfache Kommunikation.

Twint hingegen ist bekannt durch die Bezahlung per QR-Code, dadurch können viele Daten die mühsam einzutippen wären, schnell an ein fremdes Gerät übermittelt werden. @twintQR

Da wir bereits eine Verbindung aufgebaut haben und so einfach Daten senden können, benötigen wir NFC oder einen QR-Code nicht. Es würde die Website unnötig komplex und mehr fehleranfällig machen. Ob eine Bestellung oder ein Getränk mühsam zu finden ist, können wir mit User Tests herausfinden. Das Problem könnte dann auch mithilfe von einer Suche oder einem Filter minimiert werden. // isch mir gad als Idee cho @andrin?
// User Test Kriterium bei fertiger Umsetzung: wo muss zuviel gescrollt werden, um etwas zu finden? > Suche oder Filter nutzen
Benachrichtigungen mit "Beep" und gut sichtbaren Farben zu zeigen kann das erfassen der Informationen für die Nutzer verbessern <notification-beep>. // NFR verlinken?

Um das Getränkelager am Ende vom Rattenfest einfacher zu erfassen, wurde bereits getestet die Getränke mit Bilderkennung zu zählen. Jedoch ist das Ergebnis nicht genügend ausgereift und auch Starbucks hatte diese Technologie nach 9 Monaten wieder abgeschafft. @Rogelberg2026May // @andrin vielleicht ergänzen/korrigieren?
//Synonym abgeschafft?

// Fazit:
// - lohnt sich nicht, da es den Bars nichts erleichtert und Touchscreen system nicht so aufwändig ist. zu wenig nutzen für den aufwand
// Würde sich lohnen, wenn die Bars selber Getränke aus dem Kühlwagen holen könnten und beim rausgehen würde es schnell erfasst werden. Dann könnte die Arbeit der RF-Mitarbeiter gespart werden. // TODO: bei Ausblick einbauen??

== Ähnliche Lösungen

=== Webshop für Getränke

Ein Webshop der Getränke verkauft ermöglicht eine gute Benutzerfreundlichkeit durch farbige und auffallende Bilder. Ausserdem gibt es einen Filter für die Getränke, ebenfalls mit einem Bild. Einzelne Getränke und 6er Packs werden in dieser Anzahl auf dem Bild abgebildet.  @webshop


#figure(
  image("resources/research/Screen Shot 2026-09-25 at 13.46.06.png", width: 40%),
  kind: image,
  caption: [Beschreibung],
)


=== Display mit Bestellinfos
Restaurant digitales Bestellsystem
z.B. das von McDonalds



== Fazit

Es wurden Möglichkeiten gefunden, die Getränke schneller zu erfassen



