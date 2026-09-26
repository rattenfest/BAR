
== Technologie Entscheidung

=== Kriterien des Frameworks
// TODO: Kriterien priorisieren, was ist am wichtigsten. @andrin?
// bessere Begriffe finden, einordnen mit Grafik oder Tabelle?

1. einfache Infrastruktur // und Hosting möglich
  \ 1a? zentrale Möglichkeit zum Testen und Updaten für Nicht-Informatiker möglich // - einfach zu testen und updaten // (auch für Nicht-Informatiker mit KI) > wir bauen ein Dashboard dafür oder ein CLI Script für Vercel oder so > @andrin wo wird das dokumentiert und wieviel Zeit dafür planen?
  //    - wie einfach das updaten von major releases ist, wird dann ersichtlich wenn in Nutzung..
  \ 1b? langlebig/bewährt,
  \ 1c? Unabhängigkeit vom Framework, erleichtert das Wechseln auf ein anderes Framework (Zusammenhang zu "einfach zu updaten")

2. PWA mit Benachrichtigungen möglich
3. Geeignet für kleine/mittelgrosse Website

4. Einfacher Einstieg, einfach zu lernen

// - Einfache Einrichtung // nicht wie .NET > nicht so gut benanntes Kriterium
// - Unterstützung für Typensystem und ein typsicheres Datenmodell // > kann immer TS einbinden
// - Live-Update (Client-Side) > sichergestellt bei Client Side Frameworks
// - Zusammenarbeit mit Datenbank > supabase von allen unterstützt aber next.js ist am einfachsten

=== Vorauswahl

Die Performance ist in unserem Fall nicht abhängig vom Framework, sondern vom Hosting-Provider.
Der Unterschied zwischen React und Angular beträgt nur Millisekunden @TechInsider.
// In "TBT" gewinnt React 19.0 mit 0 gegen 200ms von Angular 20. Aber in "update-heavy scenarios" benötigt Angular 20 42ms und React 48ms. // zu genau und es muss noch mehr vom Artikel eingebaut werden um korrekt zu sein
Ausserdem verbessern die Frameworks ihre Performance laufend @TechInsider.

Wir suchen eine Lösung mit Client-Side Rendering, damit neuer Inhalt ohne ein Neuladen angezeigt wird.

Für das Hosting kennen wir bereits Vercel und Supabase für die Datenbankanbindung, dieses eignet sich für React, Vue und Angular.

Es wurden die 4 momentan grössten Frontend Web Frameworks analysiert und nach den Kriterien verglichen @stackoverflowSurvey. Diese Frameworks besitzen eine gute Dokumentation und viele Nutzer.

#figure(
  image(
    "resources/research/stackoverflow-dev-survey-2025-technology-most-popular-technologies-webframe-webframe-prof-social.png",
    width: 70%,
  ),
  kind: image,
  caption: [Stack Overflow Umfrage 2025],
)

// == Ember > zu klein
// Django vorallem server side rendering

// nicht relevant?
// TODO
https://2025.stateofjs.com/en-US/libraries/
#figure(
  image("resources/research/experience-sentinent.png", width: 60%),
  kind: image,
  caption: [Beschreibung], // vielleicht dieses Bild nciht, verwirrend?
)
#figure(
  image("resources/research/changes-over-time.png", width: 60%),
  kind: image,
  caption: [Beschreibung],
)

=== Informationen

== React / Next.js mit Typescript

1. Aufwändigere erste Einrichtung, Testing und Builder muss manuell eingerichtet werden.
Wir können eine Vorlage wie den T3Stack verwenden, durch die vielen Abhängigkeiten steigt aber die Komplexität und Aufwand beim Updaten. Ausserdem wird dann Next.JS verwendet, obwohl wir kein Server-Side Rendering benötigen. @t3stack
2. PWA ist möglich mit create-react-app (deprecated), Next.JS (übertriebenn)  https://www.overcode.tech/blog/react-pwa oder mit Vite + PWA von Vite (dokumentiert)  https://vite-pwa-org.netlify.app/guide/ // TODO
3. React eignet sich gut für diese Projektgrösse. @BibEntry2026JanFramework
4. Da wir bereits React kennen ist für uns der Einstieg einfach. Für React muss man JSX verstehen. // Wird an der OST in den Web Engineering Modulen unterrichtet.



=== Updates

Info: Major Release enthält neue Features und möglicherweise das entfernen von veralteten Funktionen. Es ist möglicherweise nötig, den Code upzudaten, neue Tests zu schreiben und neue APIs zu lernen.
Bugfixes und Sicherheitsupdates sind auch im LTS (Long-Term Support) nötig, aber der Code muss nicht verändert werden.

React wurde 2013 veröffentlicht. @reactHistory. Es gibt keine Information in der Dokumentation, wie häufig es einen neuen "Major Release" gibt. Aber React veröffentlichte seit 2020 alle zwei Jahre einen neuen "Major Release" mit "Breaking Changes" @reactVersioning.
// beispiel breaking change: https://react.dev/blog/2024/04/25/react-19-upgrade-guide#breaking-changes
// v19 ab dez. 2024
// v18 ab märz 2022
// v17 ab okt. 2020
// v16 ab sept. 2017
// v15 ab apr. 2016


== Angular

1. Einfache und schnelle Einrichtung ohne die Datenbankanbindung. @angularInstallation // habe ich getestet mit nodejs bereits aktiv, in 2 Minuten ist das Projekt bereit. Supabase: https://www.rapidevelopers.com/supabase-tutorial/how-to-use-supabase-with-angular und Supabase Lokal: https://supabase.com/docs/guides/local-development
  - Der LTS (Long-Term Support) beträgt 12 Monate, dass bedeutet Angular veröffentlicht jedes Jahr einen neuen Major Release. @angularVersion
2. PWA integriert und gut dokumentiert von Angular @angularPWA
3. Angular gemacht für grosse Unternehmens-Systeme. @BibEntry2026JanFramework

4. Angular hat eine hohe Lernkurve durch die starke und Meinungsstarke (opinionated) Architektur. @studyFrontendFrameworks Das Vorwissen von React und Typescript macht den Einstieg leichter.

== Vue / Vue.js
@vuejs

1. Einfache Einrichtung und die Tools (JSX Support, Vitest, Router..) können direkt ausgewählt werden. // https://vuejs.org/guide/quick-start.html
2. PWA möglich https://cli.vuejs.org/core-plugins/pwa.html#configuration https://www.vuemastery.com/blog/getting-started-with-pwas-and-vue3/#starting-a-pwa-from-scratch
3. Gemacht für kleine Projekte aber lässt sich auch gut skalieren.

4. Einfach zu lernen, da alles im Framework integriert ist und der Syntax einfacher ist als React. @browserstack

== ASP.NET
// Ein Vorteil ist, dass eine Blazor Webapp auch als Mobile App laufen kann.
Blazor lässt C\# Code im Browser in einer WebAssembly .NET Laufzeitumgebung (Runtime) laufen @guardrex2026Aug.
Jedoch muss es zuerst die WebAssembly Laufzeitumgebung herunterladen, was die Ladezeit im Vergleich zu JS-basierten Webapps verlangsamt @reactVsBlazor.
// TODO?? Runtime erklären? Beschreibung entfernen?

1. Das Setup ist sehr ausführlich erklärt, es wird keine Shell benötigt wie in den anderen Frameworks. @blazorSetup
// Ist mehr ausgerichtet auf grosse Webseiten und benötigt ein .NET Setup. > vielleicht auch nicht?=
2. Die PWA Einrichtung ist ausführlich dokumentiert. Für die Push-Benachrichtigungen wird ein Backend Server benötigt. @blazorPWA
3. Geeignet für grosse Websites und Unternehmen die bereits .NET nutzen.
4. Es wird in C\# programmiert und es werden Komponente genutzt ähnlich zu React. @blazorSetup Für das HTML wird im Gegensatz zu React, welches JSX nutzt,Razor verwendet @danroth272020Mar. So muss ein zusätzlicher Syntax gelernt werden.




== Fazit
// zuerst die anderen Punkte notieren
// Blazor ist zuviel?
// Angular für grössere Teams und Projekte gedacht aber PWA integriert, gute Dokumentation
// Sehr abhängig von React.
// wieso Angular sinn machen kann: falls wir das Projekt noch vergrössern wollen und andere Sachen vom Rattenfest integrieren
