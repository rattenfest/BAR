= Projektmanagement

== Vorgehen


Der Aufwand beträgt 2 Arbeitstage pro Woche für ca. 17h/W , insgesamt 240 Stunden Aufwand.


// ich (jasmin) notiere die verwendete Zeit in einer einfachen Notiztabelle, um sicherzugehen, dass ich die Zeit einhalte.

// TODO: arbeit mit issues beschreiben, kanban oder so
// alle weiteren Planungen zur Projektarbeit befinden sich in den Github Issues vom Projekt.


#set page(flipped: true)
== Zeitplan und Meilensteine

Hier ist der Zeitplan mit den wichtigsten Meilensteinen.

\


#import "@preview/gantty:0.5.1": gantt

#figure(
  scale(80%, reflow: true, gantt(yaml("resources/project-time-plan.yaml"))),
  kind: image,
  caption: [Langfristiger Zeitplan],
)


// offene Issues: https://github.com/rattenfest/BAR/issues?q=is%3Aissue+state%3Aopen
// Meilensteine: https://github.com/rattenfest/BAR/milestones


// 3 sehr wichtige Meilensteine
// meilensteinebene + burndownchart mit 3 punkten genügt
==== M1: Recherche fertig

Die Recherche (Literatur und Befragung von Usern) wurde ausgewertet und es wurden mindestens drei Beschlüsse daraus gezogen, die sich in den FR oder NFR zeigen. // natürlich viel mehr als drei Beschlüsse gewünscht

==== M2: Umsetzung, Programmierung abgeschlossen

Die Umsetzung der FR und NFR ist abgeschlossen und die Website ist im Internet erreichar.

==== M3: Dokumentation bereit zum Korrekturlesen

Die Dokumentation beinhaltet alle nötigen Informationen gemäss dem Leitfaden und ist bereit zum Korrekturlesen.


#set page(flipped: false)

