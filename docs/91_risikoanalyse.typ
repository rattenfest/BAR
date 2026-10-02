== Risikoanalyse
Die Risiken sind in zwei Gruppen unterteilt: Projektrisiken gefährden die Durchführung dieser Arbeit, Einsatzrisiken gefährden den zuverlässigen Einsatz der Applikation am Fest. @risikomatrix zeigt die Einordnung beider Gruppen nach Eintrittswahrscheinlichkeit und Auswirkung, wobei sich die Auswirkung jeweils auf das Ziel der entsprechenden Gruppe bezieht.

#let risk-color(w, a) = {
  let s = w + a
  if s >= 5 { rgb("#f4a6a6") } // rot: kritisch
  else if s == 4 { rgb("#fde2a7") } // gelb: beobachten
  else { rgb("#c8e6c9") } // grün: akzeptabel
}
#let r(w, a, body) = table.cell(fill: risk-color(w, a), body)
#let risk(id, title, desc, measure) = block(breakable: false, below: 1.2em)[
  *#id #title*
  #v(-0.4em)
  #grid(
    columns: (6.5em, 1fr),
    column-gutter: 0.5em,
    row-gutter: 0.6em,
    text(fill: gray.darken(30%))[Ursache], desc,
    text(fill: gray.darken(30%))[Massnahme], measure,
  )
]
#let nfr-ref(n) = link(label("nfr-" + n))[NFR-#n]

#figure(
  table(
    columns: (auto, 1fr, 1fr, 1fr),
    align: center + horizon,
    inset: 10pt,
    stroke: 0.5pt + gray,
    [], table.cell(colspan: 3)[*Eintrittswahrscheinlichkeit*],
    [*Auswirkung*], [*unwahrscheinlich*], [*möglich*], [*wahrscheinlich*],
    [*hoch*], r(1, 3)[R-05], r(2, 3)[R-02, R-04], r(3, 3)[R-03, R-07],
    [*mittel*],
    r(1, 2)[
      /*P-02*/
    ],
    r(2, 2)[/*P-01, */R-06],
    r(3, 2)[R-01],
    [*tief*], r(1, 1)[], r(2, 1)[], r(3, 1)[],
  ),
  caption: [Risikomatrix],
) <risikomatrix>

// === Projektrisiken
// Die folgenden Risiken betreffen die Durchführung dieser Arbeit innerhalb des vorgegebenen Zeitbudgets.

// #risk(
//   "P-01",
//   "Umfang zu gross",
//   [28 Functional Requirements in 240 Stunden.],
//   [MoSCoW-Priorisierung, «Muss»-Anforderungen zuerst.],
// )
// #risk(
//   "P-02",
//   "Ausfall eines Teammitglieds",
//   [Krankheit oder andere Verpflichtungen während des Semesters.],
//   [Aufgaben und Stand in GitHub Issues dokumentiert, gegenseitige Code Reviews.],
// )

// === Einsatzrisiken
Die folgenden Risiken betreffen den zuverlässigen Einsatz der Applikation am Fest.

#risk(
  "R-01",
  "Mängel zeigen sich erst im Einsatz",
  [Das Rattenfest findet erst nach der Abgabe statt, eine Validierung unter realen Bedingungen ist nicht möglich.],
  [User Tests mit Personen, die das Fest kennen, und Erkenntnisse aus dem Prototyp 2026. Simulation der Bedingungen an einer anderen Studenten-Bar oder mit z. B. abdunkeln der Testumgebung oder testen unter Menschengruppen.
    Ausserdem wurde der Prototyp in Vorarbeiten @vorarbeiten bereits getestet.],
)
#risk(
  "R-02",
  "Bedienung unter Festbedingungen",
  [Dunkelheit, Lärm und Ablenkung erschweren die Bedienung.],
  [Literaturrecherche zum Nutzungskontext, #nfr-ref("03") und @analyse-ux. Tipps für die Bars zur Einrichtung des Geräts (z. B. Halterung, feste Zuständigkeit).], // TODO: ein NFR für diese Tipps vorhanden?
)
#risk(
  "R-03",
  "Instabile Internetverbindung",
  [Bei rund 3'000 Besuchenden ist das Mobilnetz überlastet und ist teilweise instabil.],
  [Applikation robust gegenüber Unterbrüchen, Seiteninhalt klein halten, #nfr-ref("01"), #nfr-ref("02").],
)
#risk(
  "R-04",
  "Betrieb durch nachfolgendes OK",
  [Das OK wechselt jährlich und hat unterschiedliche technische Kenntnisse.],
  [Administration über die Oberfläche und Anleitung, #nfr-ref("06"). Weiterentwicklung und Bugfixes dank KI vereinfacht.],
)
#risk(
  "R-05",
  "Ausfall oder Limits der Hosting-Dienste",
  [Abhängigkeit von Vercel und Supabase.],
  [Limits der Tarife vorab prüfen, Paid-Usage-Modelle berücksichtigen.], // TODO: wann wird das gemacht?
)
#risk(
  "R-06",
  "Darstellungsprobleme auf Geräten",
  [Unterschiedliche Browser und Bildschirmgrössen.],
  [Testmatrix gemäss #nfr-ref("04").],
)
#risk(
  "R-07",
  "Gewünschte Lösung existiert bereits",
  [Es existiert bereits ein Projekt, welches das gleiche Problem löst und besser ist. Oder ein Teil von unserem Projekt wird bereits besser gelöst z. B. Einsatz von NFC.],
  [Konkurrenzanalyse @konkurrenzanalyse.],
)
