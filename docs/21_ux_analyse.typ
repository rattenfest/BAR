
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


=== Accessibility Guidelines übertragen // TODO: Titel?

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

Die "W3C Web Accessibility Initiative (WAI)" entwickelt weiter Standarde und Hilfen um die Accessibility (Zugänglichkeit) sicherzustellen @w3chomepage. Für uns sind die "Web Content Accessibility Guidelines (WCAG)" @wcag relevant, aber User Agent Accessibility Guidelines (UAAG), WAI-ARIA und Authoring Tool Accessibility Guidelines (ATAG) weniger.

Für die WCAG gibt es eine Quick Reference @wcagreference. Wir haben einige Regeln für uns übernommen und in der Checkliste auf WCAG verlinkt.

// Weshalb die wichtigen Funktionen sehr gut ersichtlich und erreichbar platziert sein müssen und wenig Klicks benötigen sollen.
// diese sollte dann rückgängig gemacht werden können.


==== Einhändige Nutzung <einhaendig>
// muss vielleicht auch weiter oben einmal erwähnt werden, ist mir spontan eingefallen:
// TODO: Quelle finden
Die Bar MA könnten nur eine Hand frei haben, beispielsweise beim nachschauen ob die Bestellung bereit ist. Deshalb sollen diese Aktionen so auf dem Bildschirm positioniert sein, damit sie gut mit dem Daumen erreicht werden. Weniger häufig genutzte Aktionen wie die Einstellungen können weiter weg platziert werden.


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

Die Punkte wurden zusätzlich in passende Untertitel gruppiert, die sinnvoll sind für diese Punkte.

klarer Entscheidungsprozess (Bestellung aufnehmen, Vorbestellung)
- [ ] Klare Schritte aufzeigen // @bogza2020user
- [ ] jeder Schritt ist sinnvoll getrennt und verständlich
- [ ] In der Navigation ist der aktuelle Schritt, vorherige und nächste Schritt ersichtlich
  - siehe auch https://www.w3.org/WAI/WCAG22/quickref/#location
- [ ] Der Nutzer wird informiert, wenn eine Aktion den Kontext wechselt (Seitenwechsel, vorhandene Optionen werden geändert) https://www.w3.org/WAI/WCAG22/quickref/#on-input

Einheitlichkeit
- [ ] Die Navigationssteuerung ist einheitlich https://www.w3.org/WAI/WCAG22/quickref/#consistent-navigation
- [ ] Komponente mit gleichen Funktionalitäten werden einheitlich dargestellt und genutzt https://www.w3.org/WAI/WCAG22/quickref/#consistent-identification

- [ ] Kontextänderungen werden nur durch den Nutzer aufgerufen, oder können durch den Nutzer deaktiviert werden https://www.w3.org/WAI/WCAG22/quickref/#change-on-request (Beispielsweise wenn der Nutzer auf der Website ist und eine Nachricht erhält, soll entweder nicht ein Popup den Bildschirm damit verdecken oder der Nutzer kann diese Popups deaktivieren)

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
// - keine Optionen die nur mit Pop-Up / Toast erreichbar sind, sondern alles gehört zu den klaren Schritten, siehe "Klare Schritte aufzeigen"

Aktionen ausführen/ Buttons und Links / Operable / Bedienbarkeit (aber ohne Bedienung oben ^)
- [ ] Alles was mit Gestensteuerung möglich ist, kann auch durch Klicks erreicht werden https://www.w3.org/WAI/WCAG22/quickref/#pointer-gestures
- [ ] Die Grösse von Targets (Buttons, Links, alles was anklickbar ist) sind mindestens 44 x 44 Pixels gross (Ausnahmen dokumentiert erlaubt) https://www.w3.org/WAI/WCAG22/quickref/#target-size-enhanced
- [ ] Input ist mit einer Computermaus und Touchscreen möglich https://www.w3.org/WAI/WCAG22/quickref/#concurrent-input-mechanisms // stark geändert. Computermaus meint nicht physisch sondern auch ein Trackpad. Vielleicht zu Zeiger umbenennen?
- [ ] Es werden keine Drag & Drop oder Mouse-Down Events genutzt. // ansonsten ist https://www.w3.org/WAI/WCAG22/quickref/#dragging-movements und https://www.w3.org/WAI/WCAG22/quickref/#multiple-ways nötig

Eingabehilfen
- [ ] Die Aktion von einem Link und Button ist eindeutig erkennbar https://www.w3.org/WAI/WCAG22/quickref/#link-purpose-in-context
- [ ] Input Fehler werden dem Nutzer sinnvoll als Text erklärt https://www.w3.org/WAI/WCAG22/quickref/#error-identification
- [ ] Wenn möglich werden bei Input Fehlern Empfehlungen/Vorschläge angezeigt https://www.w3.org/WAI/WCAG22/quickref/#error-identification
- [ ] Bei erfolgreicher Eingabe erhält Nutzer eine Erfolgsmeldung  // link unter https://www.w3.org/WAI/WCAG22/quickref/#error-identification führt zu https://www.w3.org/WAI/WCAG22/Techniques/general/G199.
- [ ] Nachrichten wie eine Erfolgsmeldung oder Bestellnachrichten sollten nicht automatisch verschwinden, da es nicht sichergestellt ist, dass der Nutzer nicht wegschaut. // Aber kein WCAG dazu gefunden.

Zusätzliche Hilfen
- [ ] Informationen und Tipps als Pop-Up auffindbar // @bogza2020user + https://www.w3.org/WAI/WCAG22/quickref/#help
- [ ] Hilfen sind einheitlich platziert https://www.w3.org/WAI/WCAG22/quickref/#consistent-help

Lesbarkeit in speziellen Lichtverhältnissen
- [ ] Passende Farbwahl https://www.w3.org/WAI/WCAG22/quickref/#use-of-color
- [ ] Kontrastverhältnis mindestens 4.5:1 wo möglich 7:1
- [ ] Zoomen soll möglich sein https://www.w3.org/WAI/WCAG22/quickref/#resize-text
- [ ] Es befindet sich kein Text in den Bildern https://www.w3.org/WAI/WCAG22/quickref/#images-of-text


Sitzung
- [ ] Daten sind gespeichert, wenn Nutzer sich neu authentifizieren musste https://www.w3.org/WAI/WCAG22/quickref/#re-authenticating

Position der Bedienungselemente
- [ ] Häufig nutzbare Aktionen befinden sich nahe beim Daumen (unten) @einhaendig


Die Nutzung soll auf Smartphone und Laptops bedienbar sein. Der Prototyp der Vorarbeit wurde sogar von einer Bar mit einem Laptop genutzt, wobei die meisten das private Smartphone nutzten.

Die Tastaturnavigation wird nicht speziell geprüft. Es wird semantisches HTML genutzt womit dies möglichst sichergestellt wird. // und sinnvolle library mit out of the box accessibility?? besser argumentieren? siehe Guideline 2.1 https://www.w3.org/WAI/WCAG22/quickref/#keyboard
Auch spezifische Guidelines für Screen-Reader sind nicht in der Checkliste enthalten, da sie für die Zielgruppe irrelevant sind. // Screen Reader und SEO, Scraper... wie nennen?
So wurde auch "2.4.2 Page Titled" nicht als Bedingung notiert, um Freiheit zu lassen beim Seitenaufbau und da die Bedingung "In der Navigation ist der aktuelle Schritt, vorherige und nächste Schritt ersichtlich" bereits diesen Punkt erfüllt.

Das Kontrastverhältnis sollte wo möglich 7:1 betragen, darf aber an speziellen Orten 4.5:1 sein. Beim Prototyp aus der Vorarbeit genügt der Kontrast knapp, es hat grauen Text (\#737373) auf hellgrünem Hintergrund (\#F0FDF4) mit dem Kontrastverhältnis 4.52:1. Es soll auch die Schriftgrösse einbezogen werden bei der Überlegung, ob der Kontrast genügt.

Das Dashboard mit den Bestellungen wird automatisch mit neuen Bestellungen aktualisiert. Wir entscheiden uns jedoch dafür, dass die Updates nicht pausiert werden können. https://www.w3.org/WAI/WCAG22/quickref/#pause-stop-hide

Die Animationen können nicht deaktiviert werden. Es wird darauf geachtet, dass die Animationen den durchschnittlichen Nutzer nicht stören. https://www.w3.org/WAI/WCAG22/quickref/#animation-from-interactions

Der Punkt "2.4.4 Link Purpose (In Context)" wurde erweitert zu Buttons (https://www.w3.org/WAI/WCAG22/quickref/#link-purpose-in-context).




// offene Fragen @andrin
// - Es gibt keine Timeouts oder?? https://www.w3.org/WAI/WCAG22/quickref/#timeouts





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

