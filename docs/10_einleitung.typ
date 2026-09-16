= Einleitung
// Analyse was es schon gibt. Analyse was nötig ist, was für Einschränkungen im UX. Bereits überlegt: responsive, hoch und querformat
// Was wollen wir machen, wieso? Sozusagen die Requirements FR/NFR. Mit Zielgruppe und was speziell ist
// (Problemstellung, Forschungsfrage, Aufbau)

== Problemstellung

Digitalisierung der Getränkeverwaltung während dem Rattenfest zur Effizienzsteigerung. Getränke werden zwischen dem Zentrallager (Kühlwagen) und den
Verkaufsstellen (Bars, Backstage) transportiert. Bars (Bar Mitarbeiter) bestellen die Getränke, die Rattenfest Arbeiter stellen die Getränke bereit und die Bar Mitarbeiter holen die Getränke ab.

Vorher mussten Bar Mitarbeiter zum Kühlwagen, ihre Bestellung aufgeben, warten und diese zurücktransportieren. Während dem Rattenfest gibt eine Bar ca. ... Bestellungen auf. Es wurde bereits ein einfacher Prototyp erstellt und getestet.
Vor dem Rattenfest erstellen die Bars eine Schätzung an benötigten Getränken, damit das Rattenfest OK offensichtliche Fehler korrigiert und Getränke vorbestellt. Dies wurde bisher mit einem Excel Sheet gelöst.

Ziel: gute Website mit guter Architektur die lange verwendet werden kann und ihren Zweck erfüllt. Lösung massgeschneidert für das Rattenfest.

=== These
// TODO

=== Anforderungen
// TODO
Es wird eine Lösung gesucht, die einfach nutzbar ist (keine versteckten Buttons, suchen von Funktionen..) und während dem Rattenfest muss es fehlerfrei laufen (Redundanz, Alternative Serverlösungen, ..)
// Quality Attributes
weitere Anforderungen (noch priorisieren) :
- Bedienbarkeit:
    - Schritte (sinnvoll) rückgängig machen können, Bilder nutzen // TODO recherche
    - weniger Klicks und scrolls oder User nicht überfordern? -> Bar User definieren, z.B. wenn es pro Bar eine verantwortliche Person gibt darf die Bedienung schwieriger sein, damit Zeit gespart werden kann
- wartbarkeit:
    - OK Mitglieder die nicht Informatiker sind, sollten das System einfach updaten können (aber evt. Anleitung erstellen anstatt alles automatisieren) > einfacher geworden mit KI
    - Software best practices anwenden (z.B. Tests)
    - das Meiste soll in einem GUI gelöst werden können, DB Anpassungen nicht per SQL/Table Editor nötig.
- erweiterbarkeit: weitere ineffiziente Prozessabläufe vom Rattenfest digitalisieren/automatisieren ist nicht wichtig, soll möglich sein aber kann auch separat umgesetzt werden. Kommunikation im OK, Website für das Rattenfest, Ticketsystem und weiteres bleibt getrennt.
    - Code Komplexität oder Erweiterbarkeit wichtiger? Zukunftspläne?
- langfristige Lösung: natürlich sollen neue Getränke erfasst werden können, aber auch jährliche Zahlen speichern für Analysen in Zukunft und erweiterbarkeit durch weitere Tools?
- Performance:
    - sollte nicht zu teuer sein, wenn es nur am Rattenfest intensiv genutzt wird, bei ein paar Sekunden längerer Verarbeitungszeit nicht schlimm?
    - das initiale UI und Klicks sollten sofort erkannt werden und sinnvolles Feedback gezeigt werden (lade-animation, Erfolgnachricht, Überlegung PWA)
        - Internetverbindung während Rattenfest wichtig
    - nicht so langsam, wie ein Webshop sich leisten kann
- Fehler einfach beheben:
    - Hinweise anzeigen, bei ungewöhnlichen Bestellungen (eine 0 zuviel bei Anzahl Getränke, Feld leer gelassen welches bei diesem Getränk sonst eingetragen wird, besonders kleine Bestellung..)
    - Rückgängig/Wiederholen Button genügend gross und schnell (gutes System für History finden)
- Zuverlässigkeit : sehr wichtig, keine halb verarbeiteten Bestellungen, keine falschen Informationen anzeigen
- Umstellung auf Digital verbessern
    - Pausenfunktion einbinden für RF Arbeiter, da jetzt Meldungen sofort reinkommen
    - Bestellung per Sprache erstellen (eher nicht, es ist laut)
    - Bilder nutzen, damit Bars ihre Bestellung besser einschätzen können: bei grosser Bestellung ein Bild mit vielen Getränken und bei wenigen Getränken Bild mit wenig Getränken

// Functional Requirements
- Analyse/Statistics: was wäre wichtig? Export als Excel/CSV der Daten (wie? wo speichern?) Vergleiche zwischen verschiedenen Jahren. Bessere Schätzungen
- Getränke im Lager erfassen/anpassen (RF, im voraus)
    - sinnvolle Optionen/Felder
- Bar User erstellen und teilen (RF)
    - Login ... (Bar)
- Getränke bestellen (Bar)
- Undo/Redo (siehe oben)
- History > alte Bestellungen betrachten, prüfen
- Abholung > Identität verifizieren nötig? Abholung bestätigen
- Kontaktfunktion (allgemeine Probleme/Fragen melden, Notfallmeldungen während Fest, wer von RF behandelt Meldungen)



=== Risiken und Unsicherheiten

Spezielle Umgebung: während Rattenfest
- ausserhalb von der Website: Tipps für Bars, wie sie das Gerät mit der Website einrichten können, damit es möglichst integriert und nicht lästig ist (Gerät, Halterung, Rolle zuweisen ?)
- Bedienung von Website (User Experience)  eng, dunkel, laut, Bedienung eingeschränkt
// ähnliche Recherchen (finde auf die schnelle Ideen für Apps, die prüfen, ob jemand betrunken ist. Auch Recherchen, dass Prototypen von Betrunkenen getestet werden können, wenn es dann bedienbar ist, ist es gutes UX. Analyse von ähnlichen Arbeiten

Risiko eine Funktion zu vergessen: das könnte zu Tricks und Umwegen führen, deshalb User Tests machen, Zielgruppe befragen


== Vorhandene Lösungswege
// (Konkurrenzanalyse/Wettbewerbsanalyse)

// TODO: konkrete gut dokumentierte Lösungen finden

- event organisations softwares > meiste haben nicht fokus Getränkbestellung sondern tickets, zeitmanagement..
- Getränkelieferanten/Webshop Lösungen (Ziel: wenig Performance, es läuft das ganze Jahr durch)
- Lösungen ohne Website?
- der Vorteil gegenüber einem Chat wo man Bestellungen schreibt ist offensichtlich, aber freie Textnachrichten haben auch Vorteile > Bemerkungen-Möglichkeit bei Bestellung einbauen?

== Anwendungsszenarien (detailierter)
// TODO: in welcher Form?

== Erfolgszenario
Die Arbeit war erfolgreich, wenn ...
