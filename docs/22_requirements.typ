

=== Akteure

// @andrin siehe Kommentare:
- *Bar-Team*: bestellt Getränke für seine Bar und holt sie ab. // und eine Vorbestellung?
- *Lagerteam*: nimmt Bestellungen entgegen, stellt sie bereit und übergibt sie. // "Nur während der Rattenfest-Durchführung" ergänzen?
- *Getränkechef (RF-OK)*: verwaltet Festausgabe, Sortiment, Bars, Rücknahmen und
  Abrechnung. // erwähnen, was während dem Fest und was auch nach/vor dem Fest?

==== Glossar // Problem Domain
Die Festausgabe bezeichnet die Speicherung der Daten von je einer Rattenfest-Durchführung.
// vielleicht zu technisch: Getränke Daten und Anzahl separat? Da Preis und Getränkeauswahl sich ändern kann pro Festausgabe
\
- Das Sortiment bezeichnet das ursprüngliche Lagersortiment, gemäss der Vorbestellung vom Rattenfest. Es beinhaltet die Getränke mit Anzahl. \
- Die Getränke beinhalten Informationen: Name, Stückzahl (manche Getränke können nur in 6er Päcken bestellt werden) und Preis. // ob Alkohol? Kategorie?
- RF-OK = Rattenfest Organisationskomitee Mitglied
- Schrumpfpackungen = ..
- Getränk / Artikel (vereinheitlichen?)

=== User Stories und Functional Requirements

==== Vorbereitung
// @andrin, Ist deine Formulierung besser geeignet für wissenschaftliche Arbeiten? ich fand es bisschen schwer zu lesen, aber ich kann auch so schreiben, wenn das besser ist.
*US-01:* Als RF-OK möchte ich eine neue Festausgabe anlegen, damit die Daten
jedes Jahrgangs getrennt bleiben und vergleicht werden können. // vergleichbar werden / vergleicht werden können / vergleichbar sind ?
- *FR-01*: Das System muss erlauben, eine Festausgabe anzulegen und als aktiv zu
  setzen. Sortiment, Bestände, Bestellungen und Rückgaben sind
  jeweils einer Festausgabe zugeordnet.
- *FR-02*: Das System muss erlauben, Sortiment und Bars einer früheren
  Festausgabe als Ausgangslage zu übernehmen.

*US-02:* Als RF-OK möchte ich die Bars erfassen und ihnen Zugänge geben, damit
Bestellungen eindeutig zugeordnet sind.
- *FR-03*: Das System muss erlauben, Bars mit Bezeichnung und Kontaktangabe zu
  erfassen, zu ändern und zu deaktivieren.
- *FR-04*: Das System muss pro Bar einen Zugang als teilbaren Link erzeugen und
  erlauben, diesen neu zu erzeugen, womit der bisherige ungültig wird.

*US-03:* Als RF-OK möchte ich das Getränkesortiment unseres Lieferanten den Bars zur Verfügung stellen.
- *FR-05*: Das System muss erlauben, Getränke mit Bezeichnung, Gebindegrösse und Preis zu erfassen.
// @glossar/problem domain: Gebindegrösse erklären da Zielgruppe das möglicherweise nicht kennt
// hier keine Anzahl?
- *FR-06*: Das System muss erlauben, ein Sortiment aus einer Datei zu
  importieren.
// @glossar: Sortiment definieren, ist das Sortiment eine Sammlung von Getränken? Mit oder ohne Anzahl? Siehe Definition "Getränk"

*US-04:* Als Bar-Team möchte ich meinen Bedarf vor dem Fest schätzen, damit die
benötigte Ware eingekauft wird.
- *FR-07*: Das System muss erlauben, pro Bar eine Bedarfsschätzung über das
  Sortiment zu erfassen und bis zu einem Stichtag zu ändern.

*US-05:* Als RF-OK möchte ich die Schätzungen prüfen und zusammenfassen, damit
ich daraus die Bestellung beim Getränkehändler ableiten kann.
- *FR-08*: Das System muss die Schätzungen aller Bars darstellen und einzeln korrigierbar machen.

*US-06:* Als RF-OK möchte ich die gelieferte Ware einlagern, damit der
Lagerbestand von Beginn an stimmt.
- *FR-09*: Das System muss den Anfangsbestand aus der Bestellung beim Händler übernehmen.
==== Bestellung während des Fests

*US-07:* Als Bar-Team möchte ich online Getränke bestellen.
- *FR-10*: Das System muss erlauben, eine Bestellung über mehrere Artikel mit
  Mengenangabe abzusenden.
- *FR-11*: Das System darf nur Mengeneingaben erlauben die den Gebindegrössen entsprechen.
- *FR-12*: Das System muss verhindern, dass mehr bestellt wird, als im Lager
  verfügbar ist.
- *FR-13*: Das System muss einen Hinweis anzeigen, wenn eine
  Bestellung einen Artikel enthält, der sich von der Reservation der Bar unterscheidet.

*US-08:* Als Bar-Team möchte ich eine abgesendete Bestellung stornieren können.
- *FR-14*: Das System muss erlauben, eine Bestellung zu stornieren, solange das
  Lagerteam noch nicht bearbeitet hat.

*US-09:* Als Bar-Team möchte ich eine frühere Bestellung wiederholen.
- *FR-15*: Das System muss die Bestellhistorie der eigenen Bar anzeigen und
  erlauben, einen früheren Eintrag als Vorlage zu übernehmen und vor dem
  Absenden anzupassen.

==== Bearbeitung und Abholung

*US-10:* Als Lagerteam möchte ich eingehende Bestellungen sofort sehen, damit ich
ohne Verzögerung mit dem Bereitstellen beginnen kann. // definieren wie schnell "sofort" ist?
- *FR-16*: Das System muss Bestellungen und deren Statusänderungen bei Bar
  und Lagerteam ohne manuelles Neuladen aktualisieren.
- *FR-17*: Das System muss offene Bestellungen in der Reihenfolge ihres Eingangs
  darstellen.

*US-11:* Als Bar-Team möchte ich zeitnah Bescheid erhalten, sobald meine Bestellung bereitsteht.
- *FR-18*: Das System muss erlauben, eine Bestellung als abholbereit zu markieren.
- *FR-19*: Das System muss erlauben, die Abholung zu bestätigen, womit die
  Bestellung abgeschlossen wird.
- *FR-20*: Das System muss eine Benachrichtigung an das Bar-Team senden, wenn die Bestellung abholbereit ist.

*US-12:* Als Lagerteam möchte ich Abweichungen festhalten, damit sie bei der
Abrechnung nachvollziehbar sind.
- *FR-21*: Das System muss erlauben, eine Bestellung mit Begründung zu stornieren
  oder als nicht abgeholt zu kennzeichnen.

*US-13:* Als Bar-Team möchte ich bei technischen Problemen oder Zwischenfällen
jemanden erreichen.
- *FR-22*: Das System muss eine Kontaktmöglichkeit zum Lagerteam und Sicherheitsverantwortlichen anzeigen.

*US-14:* Als Lagerteam möchte ich eine Pause einlegen, damit die Bars wissen,
dass Bestellungen vorübergehend nicht bearbeitet werden.
- *FR-23*: Das System muss erlauben, das Lager als vorübergehend nicht besetzt zu
  markieren, was den Bars angezeigt wird.
// siehe Status bei Problem Domain der Getränkerückgabe.
// Erweiterung: Status zeigen wie besetzt das Lager ist: z.B. einfach die Anzahl offener und bereiten Bestellungen und Rückgaben anzeigen an alle.

==== Rücknahme und Abrechnung

*US-15:* Als Bar-Team möchte ich nicht verkaufte Ware zurückgeben, damit sie mir
nicht verrechnet wird.
- *FR-24*: Das System muss erlauben, eine Rückgabe analog zu einer Bestellung zu
  erfassen, begrenzt auf die von der Bar bezogenen Artikel und Mengen.
- *FR-25*: Das System muss verlangen, dass das RF-OK eine Rückgabe bestätigt,
  bevor sie dem Lagerbestand gutgeschrieben wird.

*US-16:* Als RF-OK möchte ich nach dem Fest einfach und schnell pro Bar abrechnen.
- *FR-26*: Das System muss pro Bar eine Aufstellung aller bezogenen und
  zurückgegebenen Artikel mit Betrag erzeugen.
- *FR-27*: Das System muss Abrechnung und Rohdaten der Bezüge als Datei exportieren.

*US-17:* Als RF-OK möchte ich den Verbrauch mehrerer Feste vergleichen,
damit die Schätzung im Folgejahr besser wird.
- *FR-28*: Das System muss die Daten vergangener Feste erhalten und pro
  Artikel vergleichbar darstellen.

==== Klassifikation der Functional Requirements

Die Functional Requirements sind nach der MoSCoW-Methode in drei Kategorien
eingeteilt.

#figure(
  table(
    columns: (auto, 1fr),
    align: (left, left),
    table.header([*Kategorie*], [*Bedeutung*]),
    [Muss], [Ohne diese Anforderungen erfüllt das System seinen Zweck nicht.],

    [Soll],
    [Wichtig für Bedienbarkeit, Effizienz oder Zuverlässigkeit. Das System
      funktioniert ohne sie, aber mit geringerer Qualität.],

    [Kann], [Wünschenswerte Ergänzung, die entfällt, wenn die Zeit nicht reicht.],
  ),
  caption: [Kategorien der MoSCoW-Klassifikation],
)

#figure(
  table(
    columns: (auto, 1fr, auto),
    align: (left, left, center),
    table.header([*ID*], [*Kurzbezeichnung*], [*Priorität*]),
    [FR-01], [Festausgabe anlegen und aktiv setzen], [Muss],
    [FR-02], [Stammdaten aus Vorjahr übernehmen], [Soll],
    [FR-03], [Bars verwalten], [Muss],
    [FR-04], [Bar-Zugang erzeugen und erneuern], [Muss],
    [FR-05], [Sortiment verwalten], [Muss],
    [FR-06], [Sortiment importieren], [Kann],
    [FR-07], [Bedarfsschätzung erfassen], [Muss],
    [FR-08], [Schätzungen aggregieren und korrigieren], [Muss],
    [FR-09], [Anfangsbestand erfassen], [Muss],
    [FR-10], [Bestellung absenden], [Muss],
    [FR-11], [Schrittwerte für Mengeneingabe], [Soll],
    [FR-12], [Bestand als Obergrenze], [Muss],
    [FR-13], [Hinweis bei auffälliger Bestellung], [Kann],
    [FR-14], [Bestellung stornieren (Bar)], [Muss],
    [FR-15], [Historie anzeigen und wiederverwenden], [Soll],
    [FR-16], [Aktualisierung ohne Neuladen], [Muss],
    [FR-17], [Offene Bestellungen nach Eingang], [Muss],
    [FR-18], [Als abholbereit markieren], [Muss],
    [FR-19], [Abholung bestätigen], [Muss],
    [FR-20], [Benachrichtigung ausserhalb der App], [Kann],
    [FR-21], [Bestellung kennzeichnen (Lager)], [Soll],
    [FR-22], [Kontaktmöglichkeit], [Soll],
    [FR-23], [Lager als nicht besetzt markieren], [Kann],
    [FR-24], [Rückgabe erfassen], [Soll],
    [FR-25], [Rückgabe bestätigen], [Soll],
    [FR-26], [Abrechnung pro Bar], [Muss],
    [FR-27], [Datenexport], [Soll],
    [FR-28], [Vergleich über Festausgaben], [Kann],
  ),
  caption: [Klassifikation der Functional Requirements],
)

#let nfr(id, titel, bezug: none, anforderung: [], messung: []) = [
  #block(above: 1.2em, below: 0.5em)[
    *#id (#titel)*
    #if bezug != none [
      #h(0.4em)
      #text(size: 0.85em, fill: gray.darken(40%))[betrifft #bezug]
    ]
  ]
  #anforderung
  #block(above: 1em)[_Messung:_ #messung]
]
#pagebreak()


=== Non-Functional Requirements

Die folgenden Anforderungen gelten für das System als Ganzes. Zu jeder ist
angegeben, auf welche Functional Requirements sie sich bezieht und woran ihre
Erfüllung gemessen wird. Da das Rattenfest nach Abgabe dieser Arbeit
stattfindet, sind alle Anforderungen ohne das Fest überprüfbar. Im Vordergrund
stehen die Zuverlässigkeit während des Fests und die Betreibbarkeit über mehrere
Jahre. Skalierbarkeit, Redundanz und Barrierefreiheit sind bewusst niedrig
angesetzt, da das System nicht öffentlich zugänglich ist und von weniger als 20
gleichzeitig verbundenen Personen genutzt wird.

#nfr(
  "NFR-01",
  "Konsistenz der Bestandsführung",
  bezug: "FR-10, FR-12, FR-24",
  anforderung: [
    Eine Bestellung wird vollständig oder gar nicht verbucht, und auch bei
    wiederholtem Absenden genau einmal. Bei gleichzeitigen Bestellungen mehrerer
    Bars auf denselben Artikel darf die Summe der bestätigten Bezüge den
    verfügbaren Bestand nicht überschreiten und der Bestand nicht negativ
    werden.
  ],
  messung: [
    Manueller Test, der zwei Bestellungen auf einen Artikel mit Bestand 1
    gleichzeitig absetzt: genau eine wird bestätigt, die andere abgelehnt, keine
    verbleibt in einem Zwischenzustand. Zusätzlich wird dieselbe Bestellung
    mehrfach abgesendet und darf nur einmal im Bestand erscheinen.
  ],
)


#nfr(
  "NFR-02",
  "Latenz der Statusaktualisierung",
  bezug: "FR-16, FR-18",
  anforderung: [
    Eine Statusänderung ist beim jeweils anderen Akteur innerhalb von zwei
    Sekunden sichtbar (95. Perzentil), bei 20 gleichzeitig verbundenen
    Bar-Geräten.
  ],
  messung: [
    Lasttest mit simulierten Clients, gemessen wird die Zeit zwischen dem
    Auslösen der Statusänderung und ihrem Eintreffen beim Empfänger.
  ],
)

#nfr(
  "NFR-03",
  "Bedienbarkeit unter Festbedingungen",
  bezug: "FR-10, FR-15",
  anforderung: [
    [Ausstehende Recherche]
  ],
  messung: [

  ],
)

#nfr(
  "NFR-04",
  "Geräte- und Bildschirmunterstützung",
  anforderung: [
    Alle Funktionen sind auf aktuellem Chrome (Android), Safari (iOS) und einem
    Desktop-Browser bei Bildschirmbreiten von 320 bis 1920 Pixeln vollständig
    nutzbar.
  ],
  messung: [
    Manuelle Testmatrix über die definierten Kombinationen aus Browser,
    Betriebssystem und Bildschirmbreite.
  ],
)

#nfr(
  "NFR-05",
  "Nachvollziehbarkeit der Abrechnung",
  bezug: "FR-21, FR-26, FR-27",
  anforderung: [
    Jede Bestandsänderung, also Bezug, Rückgabe und Korrektur, ist dauerhaft mit
    Zeitpunkt, Bar und auslösendem Benutzer gespeichert, sodass jeder Betrag der
    Abrechnung auf einzelne Vorgänge zurückführbar ist.
  ],
  messung: [
    Die Abrechnung einer Testbar wird stichprobenweise auf die zugrunde
    liegenden Einzelvorgänge zurückgerechnet.
  ],
)

#nfr(
  "NFR-06",
  "Betreibbarkeit durch das OK",
  bezug: "FR-01 bis FR-05, FR-09",
  anforderung: [
    Alle wiederkehrenden Betriebsaufgaben, also das Anlegen einer Festausgabe,
    die Verwaltung von Bars und Sortiment, Bestandskorrekturen und die
    Abrechnung, sind über die Oberfläche ausführbar und erfordern keinen
    direkten Datenbankzugriff. Eine nicht am Projekt beteiligte Person richtet
    anhand der Anleitung eine neue Festausgabe in unter 30 Minuten ein.
  ],
  messung: [
    Nachweis der Oberflächenabdeckung anhand der Liste der Betriebsaufgaben,
    Durchführung der Einrichtung durch eine projektfremde Person.
  ],
)

#nfr(
  "NFR-07",
  "Zugriffsschutz der Bar-Zugänge",
  bezug: "FR-04",
  anforderung: [
    Ein Bar-Zugang ist nicht erratbar (mindestens 122 Bit Entropie) und gewährt
    ausschliesslich Zugriff auf die Daten der eigenen Bar. Administrative
    Funktionen sind über diesen Zugang nicht erreichbar.
  ],
  messung: [
    Negativtests gegen fremde Bar- und Administrationsendpunkte mit einem
    gültigen Bar-Zugang.
  ],
)

#pagebreak()



=== Functional Requirements

==== RF Admin

- Admin Dashboard

  Immer:
  - Analyse/Statistics: was wäre wichtig? Export als Excel/CSV der Daten (wie? wo speichern?) Vergleiche zwischen verschiedenen Jahren. Bessere Schätzungen
// SQL Queries als Admin durchführen ermöglichen, da das heutzutage nicht mehr so schwer ist mit KI? > nur bei Zeitmangel und als Notlösung
// Anzahl anzeigen, Sortieren nach Preis oder Anzahl, Filtern nach Getränke und Bar, Filtern nach Jahr und auch alle Jahre zusammen (oder nicht?). Dashboard mit vordefinierten Statistiken wie "Top 4 Produkte"? Einfache Kurvendiagramme.
// Statistik für Desktop optimieren
// Statistik ist auch nach Rattenfest verfügbar



==== Bar

- Login mit erhaltenen Daten

- Getränke bestellen (Bar)
- Undo/Redo (siehe oben)
- History > alte Bestellungen betrachten, prüfen, wiederholen
- Abholung > Identität verifizieren nötig? Abholung bestätigen
- Kontaktfunktion (allgemeine Probleme/Fragen melden, Notfallmeldungen während Fest, wer von RF behandelt Meldungen?)

=== Non-Functional Requirements


== Anwendungsszenarien (detaillierter)
// Finde da das Beispiel von der  RATTE Arbeit sehr gut, Heisst grob in Userstories unterteilen und weiter in FR aufbrechen

1. Vorbereitung & Inventar
  - Ersteinlagerung: Die gesamte eingekaufte Ware wird digital erfasst und bildet das zentrale Live-Inventar.
2. Bestellprozess für Bars
  - Zugang: Jede Bar erhält einen eigenen Zugangslink (z.B. app.com/UUID).
  - Bestelllogik:
    - Bars bestellen flexibel nach Bedarf.
    - Nachbestellungen über die ursprüngliche Schätzung hinaus sind möglich, solange der Artikel im zentralen Inventar verfügbar ist.
    - Optional: Ein automatisches Warnsystem meldet den Organisatoren kritisch tiefe Lagerbestände, erlaubt nur noch eine bestimmte Anzahl pro Bestellung (Falls eigenes Limit bereits erreicht ist).
3. Abwicklung & Abholung
  1. Bestellung: Die Bar sendet eine Bestellung über die App ab.
    - Bestellung für wenige verschiedene Getränke
    - Bestellung für ein Getränk in grossen Mengen
    - eine Bestellung von vorher anpassen und nochmals bestellen
    a. Bar kann die Bestellung stornieren, anpassen und neu senden.
  2. Benachrichtigung: Das RF-Team wird sofort digital informiert.
  3. Bereitstellung: Das Team stellt die Ware zusammen und markiert die Bestellung in der App als "Abholbereit".
    a. RF-Team sieht Problem und kann Bestellung stornieren/markieren.
  4. Abholung: Die Bar sieht das Status-Update in Echtzeit und holt die Ware ab, was unnötige Wege vermeidet.
    a. RF-Team kann Bestellung stornieren/markieren wenn zu lange nicht abgeholt.
  0. Bar/RF kann bei technischen Problemen eine Person vom RF mit einer Notfallmeldung erreichen.
4. Prozess für Getränkerücknahmen
  1. Bars können wie bei einer Bestellung eine Rückgabe erfassen und bringen die Ware zum Lager.
  2. Admin-Funktion: Nur ein Admin kann Rücknahmen bearbeiten… (Wichtig bei Rückgabe von Schrumpfpackungen, da diese nur als Einheit angenommen werden)
5. Erweitert
  Analytics, Umsatz pro Bar, pro Getränk etc.
  Export von Bezugslisten, Bestellhistorie, Rechnung etc.
  Initiale Bestellung, Getränkewünsche ebenfalls über die App
// > Analyse, ob ein Getränk viel zu wenig gekauft wurde und durch ein trendigeres Getränk ersetzen vor Schritt 1?


Weitere Features, z.B. "3.1 Bestellung" "die Bestellung für später vorbereiten und noch nicht senden, RF kann diese bereits sehen und sich besser vorbereiten"
- Konkurrenzanalyse durchführen, schauen was die gut machen und wir übernehmen können, ergänzen.
- User Befragung, wäre es sinnvoll oder unnötig
- Abwägen wie gross der Aufwand für den Nutzen ist



