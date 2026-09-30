
== Nutzungskontext am Fest <analyse-ux>
// literaturrecherche (zu ux + interatkion im umfeld bei betrunkenen,dunkel und eng: Randbedingungen in dieser Umgebung > danach ein Konzept dazu)


// TODO: dieses Kapitel streichen?

=== Restaurant und Bars Umgebung

Die Umgebung am Rattenfest ist ähnlich zu der in einer Küche von einem Restaurant oder einer vollen Bar.

Bestellung von Restaurant https://is.muni.cz/th/yzp5k/Study_on_home_delivery_platforms.pdf

Ablenkung im Restaurant
Ablenkung https://firstmonday.org/ojs/index.php/fm/article/view/6949/5629 "cognitive overload and the erosive lack of focus"

Stress minimieren https://accesson.kr/ijcon/v.21/3/1/57459
"4 different categories (User Experience, Usability, Psychophysiology of Stress and Interface Visual Design) were identified, defined and exemplified: Content Overload, Service Instability, Low level of Attractiveness, Lack of Control, Low level of Safety, Low Usability, Unpredictability, Uncertainty, Unfamiliarity, Judgment or social evaluation threat and Poor Visual Design. This set of elements could help design better interfaces while taking into consideration users’ mental and emotional state."

Einfluss auf die Umgebung auf die Bar Mitarbeiter, ist besonders die kürzere Aufmerksamkeitsspanne durch die vielen Ablenkungen, kürzeres Kurzzeitgedächtnis und höherer Stress.
Gemäss ^ sind die wichtigsten Stressfaktoren "Content Overload, Service Instability, Low level of Attractiveness, Lack of Control, Low level of Safety, Low Usability, Unpredictability, Uncertainty, Unfamiliarity, Judgment or social evaluation threat and Poor Visual Design".

Wir suchen ein gutes Mass zwischen "Content Overload", zuviele Informationen die den Nutzer überfordern und zu wenige Informationen. Ein Bar-Mitarbeiter soll, nach einer kurzen Ablenkung, dort weitermachen können wo er aufgehört hat.
Die weiteren Punkte .. können durch User Experience Tests des fertigen Produktes gelöst werden. NFR... Usability


=== Accessibility Guidelines übernehmen // TODO: Titel?

Ein schlechtes Beispiel: der Bar Mitarbeiter erhält den Auftrag, das Getränk XY nachzubestellen, dann öffnet dieser den Link zur Website und sucht den Button "neue Bestellung" und klickt darauf. Sofort kommt jemand und sagt ob er schnell ein Becher von XY abfüllen kann. Danach soll er fortsetzen aber jetzt sieht er eine Liste von ganz vielen Getränkeartikeln und weiss nicht mehr, wie er dahin gekomment ist und was er machen wollte. Er muss nochmals den Link öffnen und kann dieses Mal die Bestellung erstellen. Er klickt aber auf das falsche Getränk und da es schnell gehen muss hat er die Bestellung bereits abgeschickt.

Die Nutzer unserer Website, sind aber nicht betrunken, /* DOCH!!! :) */ doch kann die spezielle Umgebung das Bewusstsein verschlechtern und einen Nutzer ablenken.
Es kann das Erinnerungsvermögen verschlechtern beispielsweise durch Ablenkungen. Ausserdem gibt es Zeitdruck an einer Bar, besonders bei vielen Besuchern die etwas kaufen oder schnell ihren Becher zurückgeben wollen, was auch zu Fehlklicks führen kann.

// Das UI sollte sich an den User Context (Benutzerkontext) anpassen gemäss @userIsDrunk. > immer mit worst case rechnen

Wir übertragen Accessibility Guidelines von älteren Menschen auf unsere Bar Mitarbeiter, aufgrund der speziellen Umgebung. // ältere und betrunkene

Wichtige Faktoren für gute Usability für ältere Personen für eine Web-Lösung sind erstens ein klarer Entscheidungsprozess mit klaren Schritten die an die Prioritäten vom Nutzer angepasst werden. Zweitens soll der Inhalt einfach gehalten werden, dass heisst einfache Sprache und Piktogramme nutzen. Drittens soll das UI intuitiv und benutzerfreundlich sein, Informationen sollen auf ein minumum reduziert werden (cognitive overload). Es kann Pop-Up Fenster und Informationen/Tipps anzeigen. Drop-down Menüs und Scrolling soll möglichst verhindert werden. @bogza2020user

Den zweiten Punkt mit der einfachen Sprache nennt sich auch "cognitive accessibility" und gehört zu den zusätzlichen Standards von WCAG.
Die wichtigste Regeln sind einfache Wörter, Präsensform, kurze Sätze und kurze Textblöcke, unmissverständlichen Inhalt, klare Bilder und einfache Videos.
Ausserdem soll man sich nicht auf das mathematische Können der Nutzer verlassen.
@W3cCognitiveAccess
// // TODO: in NFR, detailiertere Beschreibungen auf der Website

Die "W3C Web Accessibility Initiative (WAI)" entwickelt weiter Standarde und Hilfen um die Accessibility (Zugänglichkeit) sicherzustellen @w3chomepage. Für uns sind die "Web Content Accessibility Guidelines (WCAG)" @wcag wichtig, aber User Agent Accessibility Guidelines (UAAG), WAI-ARIA und Authoring Tool Accessibility Guidelines (ATAG) weniger.

Für die WCAG gibt es eine Quick Reference @wcagreference. Wir haben einige Regeln für uns übernommen und in der Checkliste auf WCAG verlinkt.
// Für "Wahrnehmbar" soll sichergestellt werden, dass der Inhalt auf dem Hintegrund gut sichtbar ist (1.4) dazu zählt eine passende Farbwahl, guter Kontrast .


// aus dem web 1 spick:
// Barrierefreiheit Anforderungen
// Wahrnehmbar. Informationen und Komponenten des UI müssen für alle Benutzer
// wahrnehmbar sein. Bedienbar. Komponenten des User Interface und die Navigation müssen
// für alle Benutzer bedienbar sein. Verständlich. Informationen und die Bedienung des User
// Interface müssen verständlich sein. Robust. Inhalte müssen so robust sein, dass sie von einer
// Vielzahl von User Agents, einschliesslich assistiver Technologien, interpretiert werden können
//
// Grundprinzip (Welches Grundprinzip ist betroffen?)
// Leitlinie (Was wollen wir erreichen?)
// Erfolgskriterium (Wann haben wir die Leitlinie erreicht?)
// Level (Wie wichtig/arbeitsintensiv/streng ist das Erfolgskriterium? A, AA, AAA)


// Weshalb die wichtigen Funktionen sehr gut ersichtlich und erreichbar platziert sein müssen und wenig Klicks benötigen sollen.
// diese sollte dann rückgängig gemacht werden können.


=== Guidelines für Rattenfest Website // TODO siehe Zeile 108
// alternativer Titel: "Zusammengefasst als Checkliste"
#import "@preview/cheq:0.4.0": checklist
#show: checklist

// TODO Formatierung: eventuell die einzelnen Abschnitte in eine Tabelle und mit Farben arbeiten und als 1-2 PDF Seiten.
// Links anderst formatieren
// siehe ähnliche Checklisten: (TODO inhalt vergleichen, evt. ergänzen)
// - https://www.a11yproject.com/checklist/
// - https://www.okabletech.org/wp-content/uploads/2022/05/Accessibility-Checklist-PDF.pdf


Eine Zusammenfassung der oben besprochenen Accessibility Guidelines, angepasst auf die Umgebung am Rattenfest.
Auf der verlinkten WCAG Website finden sich weitere Informationen.

klarer Entscheidungsprozess (Bestellung aufnehmen, Vorbestellung)
- [ ] Klare Schritte aufzeigen // @bogza2020user
- [ ] jeder Schritt ist sinnvoll getrennt und verständlich
- [ ] In der Navigation ist der aktuelle Schritt, vorherige und nächste Schritt ersichtlich

einfache Sprache // @bogza2020user @W3cCognitiveAccess
- [ ] einfache Wörter
- [ ] Präsensform
- [ ] kurze Sätze und kurze Textblöcke
- [ ] unmissverständlichen Inhalt
- [ ] klare Bilder und einfache Videos
- [ ] Text ist nicht länger als 80 Zeichen pro Zeile // https://www.w3.org/WAI/WCAG22/quickref/#visual-presentation

Informationen
- [ ] Piktogramme, Bilder, Visualisierungen sinnvoll eingesetzt // @bogza2020user
- [ ] Informationen auf ein Minimum reduzieren // @bogza2020user
- [ ] Keine Rechnungen im Kopf vom Nutzer nötig // @W3cCognitiveAccess

Navigation und Bedienung
- [ ] Es ist möglichst kein Scrolling notwendig // @bogza2020user
- [ ] Es ist gibt keine Drop-Down Menüs // TODO: sinnvolle Alternative für das Navigationsmenü? z.B. immer ein zurück und vorwärts button und Daten werden gespeichert // @bogza2020user
- [ ] Inhalt ist nicht hinter Hover/Focus versteckt // ähnlich zu https://www.w3.org/WAI/WCAG22/quickref/#content-on-hover-or-focus
- [ ] Es gibt keine zeitbegrenzten Optionen oder der Nutzer kann den Timer deaktivieren. Ausser es ist an eine Real-Time Aktivität gebunden, beispielsweise die Bestellung ist bereits bereitgestellt worden. https://www.w3.org/WAI/WCAG22/quickref/#timing-adjustable
- [ ] TODO weitermachen ab https://www.w3.org/WAI/WCAG22/quickref/#page-titled

Zusätzliche Hilfen
- [ ] Informationen und Tipps als Pop-Up auffindbar // @bogza2020user

Lesbarkeit in speziellen Lichtverhältnissen
- [ ] Passende Farbwahl https://www.w3.org/WAI/WCAG22/quickref/#use-of-color
- [ ] Kontrastverhältnis mindestens 4.5:1 wo möglich 7:1
- [ ] Zoomen soll möglich sein https://www.w3.org/WAI/WCAG22/quickref/#resize-text
- [ ] Es befindet sich kein Text in den Bildern https://www.w3.org/WAI/WCAG22/quickref/#images-of-text

Sitzung
- [ ] Daten sind gespeichert, wenn Nutzer sich neu authentifizieren musste https://www.w3.org/WAI/WCAG22/quickref/#re-authenticating

Die Nutzung soll auf Smartphone und Laptops bedienbar sein. Der Prototyp der Vorarbeit wurde sogar von einer Bar mit einem Laptop genutzt, wobei die meisten das private Smartphone nutzten.

Die Tastaturnavigation wird nicht speziell geprüft. Es wird semantisches HTML genutzt womit dies möglichst sichergestellt wird. // und sinnvolle library mit out of the box accessibility?? besser argumentieren? siehe Guideline 2.1 https://www.w3.org/WAI/WCAG22/quickref/#keyboard

Das Kontrastverhältnis sollte wo möglich 7:1 betragen, darf aber an speziellen Orten 4.5:1 sein. Beim Prototyp aus der Vorarbeit genügt der Kontrast knapp, es hat grauen Text (\#737373) auf hellgrünem Hintergrund (\#F0FDF4) mit dem Kontrastverhältnis 4.52:1. Es soll auch die Schriftgrösse einbezogen werden bei der Überlegung, ob der Kontrast genügt.

Das Dashboard mit den Bestellungen wird automatisch mit neuen Bestellungen aktualisiert. Wir entscheiden uns jedoch dafür, dass die Updates nicht pausiert werden können. https://www.w3.org/WAI/WCAG22/quickref/#pause-stop-hide

Die Animationen können nicht deaktiviert werden. Es wird darauf geachtet, dass die Animationen den durchschnittlichen Nutzer nicht stören. https://www.w3.org/WAI/WCAG22/quickref/#animation-from-interactions

// offene Fragen @andrin
// Es gibt keine Timeouts oder?? https://www.w3.org/WAI/WCAG22/quickref/#timeouts


https://www.w3.org/WAI/WCAG22/quickref/#contrast-enhanced
https://www.w3.org/WAI/WCAG22/quickref/#contrast-minimum

Einige Punkte müssen bereits vor dem Programmieren beachtet werden. Dazu gehört die Zoom-Funktionalität.

// > User Tests machen in ähnlicher Umgebung (z.B. bei der nächsten Bar)

=== Dark Mode
Da es spezielle Lichtverhältnisse gibt am Rattenfest, wollten wir herausfinden ob sich ein Dark Mode besser eignet.\
Gemäss @pathari2024dark macht bei schwachem Licht Dark-Mode, im Gegensatz zum Light-Mode, das Auge eher müde. Es wird aber auch erwähnt, dass andere Studien zu einem anderen Ergebnis geführt haben, was an der Bildschirmgrösse liegen könnte @laine2025impact.\
Ausserdem ist der Prototyp der am letzten Rattenfest getestet wurde Light-Mode und es gab keine spezifischen Wünsche für den Dark-Mode.\
Deshalb wird die Website im Light Mode entwickelt.

// ==== Interaktion

// Gestensteuerung (swipe)?
// qr-code siehe Konkurrenzanalyse


== Erkenntnisse
// Beschlüsse aus Recherche und Befragung → FR/NFR (Meilenstein M1)
// Es wurden Möglichkeiten gefunden, die Getränke schneller zu erfassen
// wichtige Probleme, "Pitfalls"

