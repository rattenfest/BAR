= Problemstellung
// Analyse was es schon gibt. Analyse was nötig ist, was für Einschränkungen im UX. Bereits überlegt: responsive, hoch und querformat
// Was wollen wir machen, wieso? Sozusagen die Requirements FR/NFR. Mit Zielgruppe und was speziell ist
// (Problemstellung, Forschungsfrage, Aufbau)

== Hintergrund
Das Rattenfest ist ein jährlich stattfindendes Festival, das von Studierenden der OST organisiert wird und rund 3'000 Personen besucht. Die Getränke werden an mehreren Bars ausgeschenkt, die unabhängig vom Rattenfest betrieben werden. Damit nicht jede Bar ihre Versorgung selbst organisieren muss, betreibt das Rattenfest ein zentrales Getränkelager, aus dem die Bars während des Fests laufend beziehen.

Dieser Prozess wurde in den letzten Jahren versucht zunehmend zu digitalisieren, die bisherigen Lösungen blieben jedoch unzureichend.

== Ziel
Ziel dieser Arbeit ist eine Webapplikation, die den gesamten Lebenszyklus der Getränke abbildet, von der ersten Bedarfsschätzung bis zur Abrechnung nach dem Fest:

- *Vor dem Fest* erfassen die Bars ihre Bedarfsschätzung in der Applikation. Das OK prüft und korrigiert diese und leitet daraus die Bestellung beim Getränkehändler ab. Die gelieferte Ware bildet den Anfangsbestand des Lagers.
- *Während des Fests* bestellen die Bars laufend aus diesem Bestand. Das Lagerteam stellt die Bestellungen bereit und informiert die Bars über den Status.
- *Nach dem Fest* lässt sich für jede Bar eine detaillierte Abrechnung erstellen.

Neben der Funktionalität soll die Lösung auf das Rattenfest zugeschnitten und für den langfristigen Einsatz geeignet sein. Dabei sind drei Eigenschaften besonders wichtig:

- *Bedienbarkeit* unter den Bedingungen am Fest: dunkel, laut, unter Zeitdruck und mit Personal, dessen Aufmerksamkeit im Verlauf des Abends nachlässt.
- *Zuverlässigkeit* während des Fests. Sobald die Bars auf den manuellen Weg ausweichen müssen, verliert die Applikation ihren Zweck.
- *Verwendbarkeit und Wartbarkeit* durch ein jährlich wechselndes OK mit unterschiedlichen technischen Kenntnissen.

// == These
// > wie soll die These aussehen? Wir betrachten sehr viele Dinge in der Arbeit, theoretisch gäbe es mehrere Thesen?

// ===== 1. Erfolgszenario vom gesamten Projekt // das gleiche wie Ziel?
// // Die Arbeit war erfolgreich, wenn ...
// Die Getränkeverwaltung ist ein Erfolg, wenn es alle Anforderungen sinnvoll erfüllt und die Bedienung für RF Arbeiter und Bar Arbeiter angenehm ist. Es soll möglich sein, die Getränkeverwaltung mit mehr Features zu ergänzen, aber es soll nicht nötig sein, programmierte Teile abzuändern.
// Das wird erreicht durch gutes Planen und Fokus auf das Wichtigste, wobei eventuell nicht jedes nützliche Feature eingebaut wird.

// ===== 2. These wie an einer Arbeit?
// Es ist möglich ein Getränkeverwaltungssystem für das Rattenfest zu konzeptieren und umzusetzen, welches benutzerfreundlich, erweiterbar und einfach wartbar ist.
// (sind wahrscheinlich die wichtigsten 3 Anforderungen)

=== Akteure

- *Bar-Team*: bestellt Getränke für seine Bar und holt sie ab.
- *Lagerteam*: nimmt Bestellungen entgegen, stellt sie bereit und übergibt sie.
- *Getränkechef (RF-OK)*: verwaltet Festausgabe, Sortiment, Bars, Rücknahmen und
  Abrechnung.

=== User Stories und Functional Requirements

==== Vorbereitung

*US-01:* Als RF-OK möchte ich eine neue Festausgabe anlegen, damit die Daten
jedes Jahrgangs getrennt bleiben und vergleichbar werden.
- *FR-01*: Das System muss erlauben, eine Festausgabe anzulegen und als aktiv zu
  setzen. Sortiment, Bestände, Schätzungen, Bestellungen und Rückgaben sind
  jeweils einer Festausgabe zugeordnet.
- *FR-02*: Das System muss erlauben, Sortiment und Bars einer früheren
  Festausgabe als Ausgangslage zu übernehmen.

*US-02:* Als RF-OK möchte ich die Bars erfassen und ihnen Zugänge geben, damit
Bestellungen eindeutig zugeordnet sind.
- *FR-03*: Das System muss erlauben, Bars mit Bezeichnung und Kontaktangabe zu
  erfassen, zu ändern und zu deaktivieren.
- *FR-04*: Das System muss pro Bar einen Zugang als teilbaren Link erzeugen und
  erlauben, diesen neu zu erzeugen, womit der bisherige ungültig wird.

*US-03:* Als RF-OK möchte ich das Getränkesortiment pflegen, damit die Bars nur
bestellbare Artikel sehen.
- *FR-05*: Das System muss erlauben, Getränke mit Bezeichnung, Gebindegrösse und
  Preis zu erfassen, zu ändern und zu deaktivieren.
- *FR-06*: Das System muss erlauben, ein Sortiment aus einer Datei zu
  importieren.

*US-04:* Als Bar-Team möchte ich meinen Bedarf vor dem Fest schätzen, damit die
benötigte Ware rechtzeitig eingekauft wird.
- *FR-07*: Das System muss erlauben, pro Bar eine Bedarfsschätzung über das
  Sortiment zu erfassen und bis zu einem Stichtag zu ändern.

*US-05:* Als RF-OK möchte ich die Schätzungen prüfen und zusammenfassen, damit
ich daraus die Bestellung beim Getränkehändler ableiten kann.
- *FR-08*: Das System muss die Schätzungen aller Bars pro Artikel aufsummiert
  darstellen und einzeln korrigierbar machen.

*US-06:* Als RF-OK möchte ich die gelieferte Ware einlagern, damit der
Lagerbestand von Beginn an stimmt.
- *FR-09*: Das System muss erlauben, den Anfangsbestand pro Artikel zu erfassen
  und während des Fests zu korrigieren.

==== Bestellung während des Fests

*US-07:* Als Bar-Team möchte ich Getränke bestellen, ohne dafür zum Lager gehen
zu müssen.
- *FR-10*: Das System muss erlauben, eine Bestellung über mehrere Artikel mit
  Mengenangabe abzusenden.
- *FR-11*: Das System muss zur Mengeneingabe Schrittwerte anbieten, die den
  üblichen Gebindegrössen entsprechen.
- *FR-12*: Das System muss verhindern, dass mehr bestellt wird, als im Lager
  verfügbar ist.
- *FR-13*: Das System muss vor dem Absenden einen Hinweis anzeigen, wenn eine
  Bestellung auffällig ist, insbesondere bei ungewöhnlicher Menge eines Artikels
  oder bei einem Artikel ausserhalb der Bedarfsschätzung der Bar.

*US-08:* Als Bar-Team möchte ich eine abgesendete Bestellung stornieren können,
damit eine Fehleingabe keinen Aufwand im Lager verursacht.
- *FR-14*: Das System muss erlauben, eine Bestellung zu stornieren, solange das
  Lagerteam sie nicht als abholbereit markiert hat.

*US-09:* Als Bar-Team möchte ich eine frühere Bestellung wiederholen, damit ich
bei gleichbleibendem Bedarf nicht alles neu erfasse.
- *FR-15*: Das System muss die Bestellhistorie der eigenen Bar anzeigen und
  erlauben, einen früheren Eintrag als Vorlage zu übernehmen und vor dem
  Absenden anzupassen.

==== Bearbeitung und Abholung

*US-10:* Als Lagerteam möchte ich eingehende Bestellungen sofort sehen, damit ich
ohne Verzögerung mit dem Bereitstellen beginnen kann.
- *FR-16*: Das System muss Bestellungen und deren Statusänderungen bei Bar-Team
  und Lagerteam ohne manuelles Neuladen aktualisieren.
- *FR-17*: Das System muss offene Bestellungen in der Reihenfolge ihres Eingangs
  darstellen.

*US-11:* Als Bar-Team möchte ich wissen, wann meine Bestellung bereitsteht, damit
ich den Weg zum Lager nur einmal gehe.
- *FR-18*: Das System muss erlauben, eine Bestellung als abholbereit zu markieren.
- *FR-19*: Das System muss erlauben, die Abholung zu bestätigen, womit die
  Bestellung abgeschlossen und der Lagerbestand reduziert wird.
- *FR-20*: Das System muss Bar-Team und Lagerteam über für sie relevante
  Statusänderungen benachrichtigen, auch wenn die Applikation nicht im
  Vordergrund ist.

*US-12:* Als Lagerteam möchte ich Abweichungen festhalten, damit sie bei der
Abrechnung nachvollziehbar sind.
- *FR-21*: Das System muss erlauben, eine Bestellung mit Begründung zu stornieren
  oder als nicht abgeholt zu kennzeichnen.

*US-13:* Als Bar-Team möchte ich bei technischen Problemen oder Zwischenfällen
jemanden erreichen, damit das Fest nicht an der Applikation scheitert.
- *FR-22*: Das System muss eine Kontaktmöglichkeit zum Lagerteam anzeigen, die
  auch bei gestörter Verbindung sichtbar bleibt und während des Fests geändert
  werden kann.

*US-14:* Als Lagerteam möchte ich eine Pause einlegen, damit die Bars wissen,
dass Bestellungen vorübergehend nicht bearbeitet werden.
- *FR-23*: Das System muss erlauben, das Lager als vorübergehend nicht besetzt zu
  markieren, was den Bars angezeigt wird.

==== Rücknahme und Abrechnung

*US-15:* Als Bar-Team möchte ich nicht verkaufte Ware zurückgeben, damit sie mir
nicht verrechnet wird.
- *FR-24*: Das System muss erlauben, eine Rückgabe analog zu einer Bestellung zu
  erfassen, begrenzt auf die von der Bar bezogenen Artikel und Mengen.
- *FR-25*: Das System muss verlangen, dass der RF-OK eine Rückgabe bestätigt,
  bevor sie dem Lagerbestand gutgeschrieben wird, und dabei erlauben, die
  erfassten Mengen zu korrigieren.

*US-16:* Als RF-OK möchte ich nach dem Fest pro Bar abrechnen, ohne Belege von
Hand zusammenzusuchen.
- *FR-26*: Das System muss pro Bar eine Aufstellung aller bezogenen und
  zurückgegebenen Artikel mit Betrag erzeugen.
- *FR-27*: Das System muss Bedarfsschätzung, Abrechnung und Rohdaten der Bezüge
  als Datei exportieren.

*US-17:* Als RF-OK möchte ich den Verbrauch mehrerer Festausgaben vergleichen,
damit die Schätzung im Folgejahr besser wird.
- *FR-28*: Das System muss die Daten vergangener Festausgaben erhalten und pro
  Artikel vergleichbar darstellen.

=== Klassifikation der Functional Requirements

Die Functional Requirements sind nach der MoSCoW-Methode in drei Kategorien
eingeteilt.

#figure(
  table(
    columns: (auto, 1fr),
    align: (left, left),
    table.header([*Kategorie*], [*Bedeutung*]),
    [Muss],
    [Nicht verhandelbar. Ohne diese Anforderungen erfüllt das System seinen Zweck
      nicht.],

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
    [FR-27], [Datenexport], [FR-28],
    [Vergleich über Festausgaben], [Kann],
  ),
  caption: [Klassifikation der Functional Requirements],
)
=== Anforderungen (To be removed)


Es wird eine Lösung gesucht, die einfach nutzbar ist (keine versteckten Buttons, suchen von Funktionen..) und während dem Rattenfest muss es fehlerfrei laufen.

Kompromisse
- Wir setzen den Fokus beim Hosting auf Einfachheit und möglichst wenig Setupaufwand für den Server. Dabei nehmen wir in Kauf, uns von einem Hosting Provider mit fertigem Setup abhängig zu machen. // PaaS ?
- Bedienbarkeit VS Performance
  - optimieren von Visualisierungen > Getränke Bilder im Cache halten, CDN, Webstandards nutzen (WebP, SVG), Testen wie gross der Einfluss auf die Performance ist oder eine Option zum deaktivieren der Bilder?




// Quality Attributes
weitere Anforderungen (noch priorisieren) :

- Bedienbarkeit:
  - Schritte (sinnvoll) rückgängig machen können
  - Visualisierungen nutzen
  - weniger Klicks und scrolls oder User nicht überfordern? -> Bar User definieren, z.B. wenn es pro Bar eine verantwortliche Person gibt darf die Bedienung schwieriger sein, damit Zeit gespart werden kann
  - auf verschiedenen Geräten und Bildschirmgrössen!!

  - Umstellung auf Digital verbessern
    - Pausenfunktion einbinden für RF Arbeiter, da jetzt Meldungen sofort reinkommen
    - den Bars das einschätzen der Bestellmenge vereinfachen
      - neben der individuellen Auswahl (+1, +6, +24 ...) auch vordefinierte Mengen als Option anbieten. Dazu auch die Überlegung: eine Bestellung von vorher wiederholen zu können.
      - (Bilder nutzen: bei grosser Bestellung ein Bild mit vielen Getränken und bei wenigen Getränken Bild mit wenig Getränken (z.B. mit ein paar vordefinierten Bildern und die einordnen, müsste recherchieren wie das andere lösen))
    - (Bestellung per Touchscreen, andere Bedienfunktionen machen am Rattenfest keinen Sinn. Die Altersgruppe kennt sich mit dem Smartphone aus.)
  - Weitere mögliche Bedienbarkeit Features für Bars
    - Getränke als Favoriten vermerken (automatisch die vorbestellten Getränke markieren) ohne das dieses Feature im Weg ist
    - nach Alkohol und Alkoholfrei filtern (wäre das nützlich?) und sortieren nach Kriterien
    - OK Notfallmeldung per Chat/Telefon/Treffen ermöglichen für Ausnahmefälle und Probleme > einfach halten
      - wenn Website nicht läuft, eine Telefonnummer einblenden die auch offline angezeigt wird.


- wartbarkeit:
  - OK Mitglieder sollten das System einfach updaten können (aber evt. Anleitung erstellen anstatt alles automatisieren) > einfacher geworden mit KI
  - Software best practices anwenden (z.B. Tests)
  - das Meiste soll in einem GUI gelöst werden können, DB Anpassungen nicht per SQL/Table Editor nötig.
// - Könnte auch Server an genau dem Rattenfest für diese App hosten, um Kosten zu sparen, aber das wäre weiterer Zusatzaufwand und unnötig kompliziert.

- erweiterbarkeit: weitere ineffiziente Prozessabläufe vom Rattenfest digitalisieren/automatisieren ist nicht wichtig, soll möglich sein aber kann auch separat umgesetzt werden. Kommunikation im OK, Website für das Rattenfest, Ticketsystem und weiteres bleibt getrennt.
  - Code Komplexität oder Erweiterbarkeit wichtiger? Zukunftspläne?

- langfristige Lösung: natürlich sollen neue Getränke erfasst werden können, aber auch jährliche Zahlen speichern für Analysen in Zukunft und erweiterbarkeit durch weitere Tools?

- Performance:
  - sollte nicht zu teuer sein, wenn es nur am Rattenfest intensiv genutzt wird, bei ein paar Sekunden längerer Verarbeitungszeit nicht schlimm?
  - das initiale UI und Klicks sollten sofort erkannt werden und sinnvolles Feedback gezeigt werden (lade-animation, Erfolgnachricht, Überlegung PWA)
    - Internetverbindung während Rattenfest wichtig
  - nicht so langsam, wie ein Webshop sich leisten kann
  - Kurze Teilnehmerumfrage zeigt, dass das Internet während dem Rattenfest an der OST langsamer ist als sonst

- Verbindung
  - Die Nutzer sollten die Verbindung zur Application beibehalten können während dem Rattenfest (Websockets, SSE genügt nicht(?)), so dass sie Status-Nachrichten sofort erhalten ohne regelmässiges abfragen im Hintergrund. Nachrichten sollen nicht verloren gehen aber eine zu aufwändige Überprüfung (mehrfaches hin-und-zurück zum ob Nachricht ankam) soll nicht die Performance durch erhöhten Traffic verschlechtern (Mittelmass finden).
    - Trotz frequenten Bestellungen, soll der Lagerbestand immer aktuell sein. Verzögerung bei Bars sind weniger schlimm, als Verzögerungen beim Lagersystem.
    - Datenverkehr:
      App zu Lager und Bar = Anzahl Getränke vorhanden
      App zu Bar = Bestellung Ok/Nicht Ok, Bestellung bereit zum abholen
      App zu Lager = Bestellung erhalten
      + allfällige Undo/Stornieren Commands
  - Push Nachrichten auf dem Smartphone anzeigen mit PWA wäre ein nützliches Feature.

- Fehler einfach beheben:
  - Hinweise anzeigen, bei ungewöhnlichen Bestellungen (eine 0 zuviel bei Anzahl Getränke, Feld leer gelassen welches bei diesem Getränk sonst eingetragen wird, besonders kleine Bestellung..)
  - Rückgängig/Wiederholen Button genügend gross und schnell (gutes System für History finden)

- Zuverlässigkeit : sehr wichtig, keine halb verarbeiteten Bestellungen, keine falschen Informationen anzeigen

- Redundanz und Skalierbarkeit ist weniger wichtig, da die Anzahl User sich im < 100 Personen Bereich befinden.


=== Functional Requirements

==== RF Admin

- Admin Dashboard

  Immer:
  - Analyse/Statistics: was wäre wichtig? Export als Excel/CSV der Daten (wie? wo speichern?) Vergleiche zwischen verschiedenen Jahren. Bessere Schätzungen
  // SQL Queries als Admin durchführen ermöglichen, da das heutzutage nicht mehr so schwer ist mit KI? > nur bei Zeitmangel und als Notlösung
  // Anzahl anzeigen, Sortieren nach Preis oder Anzahl, Filtern nach Getränke und Bar, Filtern nach Jahr und auch alle Jahre zusammen (oder nicht?). Dashboard mit vordefinierten Statistiken wie "Top 4 Produkte"? Einfache Kurvendiagramme.
  // Statistik für Desktop optimieren
  // Statistik ist auch nach Rattenfest verfügbar

  // alle Funktionalitäten von Bestellungen müssen nur während Rattenfest verfügbar sein und sonst nur für tests und development
  - Getränke im Lager erfassen/anpassen
    - sinnvolle Optionen/Felder

  - Bar User erstellen und teilen

  während Fest:
  - Bestellung erhalten, als bereit markieren, stornieren (mit Bemerkung? mit Flags (nichtabholung/Falschbestellung)?),


==== Bar

- Login mit erhaltenen Daten

- Getränke bestellen (Bar)
- Undo/Redo (siehe oben)
- History > alte Bestellungen betrachten, prüfen, wiederholen
- Abholung > Identität verifizieren nötig? Abholung bestätigen
- Kontaktfunktion (allgemeine Probleme/Fragen melden, Notfallmeldungen während Fest, wer von RF behandelt Meldungen?)

=== Non-Functional Requirements


=== Risiken und Unsicherheiten
// @jasmin Dieses Kapitel evtlt zu Projektonformation verschieben, da es nicht direkt zu den Anforderungen gehört.

//
// Risiko eine Funktion zu vergessen: das könnte zu Tricks und Umwegen führen, deshalb User Tests machen, Zielgruppe befragen

Risiko, dass es auf einer Plattform/Betriebssystem/Bildschirmgrösse nicht funktioniert wie gedacht
Risiko, dass es nicht alle Personen einrichten können

Spezielle Umgebung: während Rattenfest
- ausserhalb von der Website: Tipps für Bars, wie sie das Gerät mit der Website einrichten können, damit es möglichst integriert und nicht lästig ist (Gerät, Halterung, Rolle zuweisen ?)
- Bedienung von Website (User Experience)  eng, dunkel, laut, Bedienung eingeschränkt
// ähnliche Recherchen (finde auf die schnelle Ideen für Apps, die prüfen, ob jemand betrunken ist. Auch Recherchen, dass Prototypen von Betrunkenen getestet werden können, wenn es dann bedienbar ist, ist es gutes UX. Analyse von ähnlichen Arbeiten


== Anwendungsszenarien (detailierter)
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
  > Analyse, ob ein Getränk viel zu wenig gekauft wurde und durch ein trendigeres Getränk ersetzen vor Schritt 1?


Weitere Features, z.B. "3.1 Bestellung" "die Bestellung für später vorbereiten und noch nicht senden, RF kann diese bereits sehen und sich besser vorbereiten"
- Konkurrenzanalyse durchführen, schauen was die gut machen und wir übernehmen können, ergänzen.
- User Befragung, wäre es sinnvoll oder unnötig
- Abwägen wie gross der Aufwand für den Nutzen ist




== Vorhandene Lösungswege
// (Konkurrenzanalyse/Wettbewerbsanalyse)

> konkrete gut dokumentierte Lösungen finden

- event organisations softwares > meiste haben nicht fokus Getränkbestellung sondern tickets, zeitmanagement..
- Getränkelieferanten/Webshop Lösungen (Ziel: wenig Performance, es läuft das ganze Jahr durch)
- Lösungen ohne Website?
- der Vorteil gegenüber einem Chat wo man Bestellungen schreibt ist offensichtlich, aber freie Textnachrichten haben auch Vorteile > Bemerkungen-Möglichkeit bei Bestellung einbauen?

=== Webshops

https://www.rewe.de/shop/c/getraenke-genussmittel/
- Angenehme Navigation durch farbige Bilder und Icons
  - einzelne Getränke und 6er Packs werden jeweils so auf dem Bild abgebildet
