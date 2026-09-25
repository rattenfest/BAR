
== Technologie Entscheidung

=== Kriterien des Frameworks
// bessere Begriffe finden, einordnen mit Grafik oder Tabelle?
- langlebig/bewährt
- PWA mit Benachrichtigungen möglich
- Live-Update (Client-Side)
- einfache Infrastruktur und Hosting
- einfach zu updaten (auch für Nicht-Informatiker mit KI)
- Unabhängigkeit vom Framework, erleichtert das Wechseln auf ein anderes Framework (Zusammenhang zu "einfach zu updaten")
- Unterstützung für Typensystem und ein typsicheres Datenmodell
- Geeignet für kleine/mittelgrosse Website
- Dokumentation
- Einfache Einrichtung


==== Bemerkungen
Die Performance ist in unserem Fall nicht abhängig vom Framework, sondern vom Hosting-Provider. 
Der Unterschied zwischen React und Angular beträgt nur Millisekunden @TechInsider. 
// In "TBT" gewinnt React 19.0 mit 0 gegen 200ms von Angular 20. Aber in "update-heavy scenarios" benötigt Angular 20 42ms und React 48ms. // zu genau und es muss noch mehr vom Artikel eingebaut werden um korrekt zu sein
Ausserdem verbessern die Frameworks ihre Performance laufend @TechInsider. 

Wir suchen eine Lösung mit Client-Side Rendering, damit neuer Inhalt ohne ein Neuladen angezeigt wird.

Info: Major Release enthält neue Features und möglicherweise das entfernen von veralteten Funktionen. Es ist möglicherweise nötig, den Code upzudaten, neue Tests zu schreiben und neue APIs zu lernen.
Bugfixes und Sicherheitsupdates sind auch im LTS (Long-Term Support) nötig, aber der Code muss nicht verändert werden.

== React

Vorteile
- Können wir
- bewährt, React wurde 2013 veröffentlicht. @reactHistory. Es gibt keine Dokumentation, wie häufig es einen neuen "Major Release" gibt. Aber React veröffentlichte seit 2020 alle zwei Jahre einen neuen "Major Release" mit "Breaking Changes" @reactVersioning.
// beispiel breaking change: https://react.dev/blog/2024/04/25/react-19-upgrade-guide#breaking-changes
// v19 ab dez. 2024
// v18 ab märz 2022
// v17 ab okt. 2020
// v16 ab sept. 2017
// v15 ab apr. 2016
- PWA möglich mit create-react-app (deprecated), Next.JS (übertriebenn)  https://www.overcode.tech/blog/react-pwa oder mit Vite + PWA von Vite (Schwierigkeit?)
- viele Entwicklungstools wie Tests müssen mit weiteren npm packages eingerichtet werden

== Angular
Vorteile
- Ahnlich zu React, was wir können, aber Einarbeitung ist nötig
- PWA integriert und gut dokumentiert von Angular @angularPWA
- Der LTS (Long-Term Support) beträgt 12 Monate, dass bedeutet Angular veröffentlicht jedes Jahr einen neuen Major Release. @angularVersion

- unpassende Projektgrösse? zuviel für unsere "kleine" Website?

- Einfache Einrichtung, da alles bereits vorgegeben

== Ember
"Ember follows a 6-week release cycle, releasing a new minor version every 6 weeks. With a strong commitment to stability, upgrades between minor versions are straightforward and fast. The well-thought-out deprecation mechanism that gives you ample warning of code that would need to change in the next major version, and deprecated or upgraded features often come with codemods that can be run to automatically update your codebase.
" @emberjs

== VueJS
@vuejs

Inspiriert von Angular
- besser für kleine Projekte
- PWA möglich https://cli.vuejs.org/core-plugins/pwa.html#configuration https://www.vuemastery.com/blog/getting-started-with-pwas-and-vue3/#starting-a-pwa-from-scratch

== Blazor von .NET

// Ist mehr ausgerichtet auf grosse Webseiten und benötigt ein .NET Setup. > vielleicht auch nicht?=
Ein grosser Vorteil ist, dass eine Blazor Webapp auch als Mobile App laufen kann. Blazor lässt C# Code im Browser in einer WebAssembly .NET Laufzeitumgebung (Runtime) laufen @guardrex2026Aug. Dazu muss es zuerst die WebAssembly Laufzeitumgebung herunterladen, was die Ladezeit im Vergleich zu JS-basierten Webapps verlangsamt @reactVsBlazor.
// TODO?? Runtime erklären?
// 


== Fazit
// zuerst die anderen Punkte notieren
// Blazor ist zuviel?
// Angular für grössere Teams und Projekte gedacht aber PWA integriert, gute Dokumentation
// Sehr abhängig von React. 
// wieso Angular sinn machen kann: falls wir das Projekt noch vergrössern wollen und andere Sachen vom Rattenfest integrieren