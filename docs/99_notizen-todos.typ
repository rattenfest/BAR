
= These


// > wie soll die These aussehen? Wir betrachten sehr viele Dinge in der Arbeit, theoretisch gäbe es mehrere Thesen?

// ===== 1. Erfolgszenario vom gesamten Projekt // das gleiche wie Ziel?
// // Die Arbeit war erfolgreich, wenn ...
// Die Getränkeverwaltung ist ein Erfolg, wenn es alle Anforderungen sinnvoll erfüllt und die Bedienung für RF Arbeiter und Bar Arbeiter angenehm ist. Es soll möglich sein, die Getränkeverwaltung mit mehr Features zu ergänzen, aber es soll nicht nötig sein, programmierte Teile abzuändern.
// Das wird erreicht durch gutes Planen und Fokus auf das Wichtigste, wobei eventuell nicht jedes nützliche Feature eingebaut wird.

// ===== 2. These wie an einer Arbeit?
// Es ist möglich ein Getränkeverwaltungssystem für das Rattenfest zu konzeptieren und umzusetzen, welches benutzerfreundlich, erweiterbar und einfach wartbar ist.
// (sind wahrscheinlich die wichtigsten 3 Anforderungen)



== Anforderungen, Problemanalyse, ..?

// Es wird eine Lösung gesucht, die einfach nutzbar ist (keine versteckten Buttons, suchen von Funktionen..) und während dem Rattenfest muss es fehlerfrei laufen.



prüfe in FR/NFR:
- sinnvolle Architektur und DB
- Vorbestellungen
- Statistiken
- Preisaufstellungen
- importfunktionen (Getränke, Bars, ..)

==== Architecture
Kompromisse
- Wir setzen den Fokus beim Hosting auf Einfachheit und möglichst wenig Setupaufwand für den Server. Dabei nehmen wir in Kauf, uns von einem Hosting Provider mit fertigem Setup abhängig zu machen. // PaaS ?

- Bedienbarkeit VS Performance
  - optimieren von Visualisierungen > Getränke Bilder im Cache halten, CDN, Webstandards nutzen (WebP, SVG), Testen wie gross der Einfluss auf die Performance ist oder eine Option zum deaktivieren der Bilder?

// prüfen ob in NFR vorhanden oder ob keine Priorität :
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

