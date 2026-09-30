
== Problem Domain

// brauchen wir hier noch problem domain fuer die vorbestellungen? > Ja, wird gemacht

// Die "Problem Domain" hilft das Problem ohne Missverständnisse durch die Sprache zu verstehen.

// TODO: Bild zuschneiden, sobald es keine Inhaltsänderungen mehr gibt
// TODO: Begrifflichkeiten einheitlich festhalten und so über gesamte Doku verwenden
// wir können jetzt mit der Problem Domain bestimmen, wo die Engpässe und wichtigsten Stellen sind, die wir verbessern wollen und worauf wir besonderen Fokus setzen

#figure(
  image("resources/problem-domain/Bestellungen.egn.svg", width: 300pt),
  kind: image,
  caption: [Problem Domain der Getränkebestellung],
)

// TODO: nochmals nachrechnen und die Einheit genauer definieren, Schätzungen
Umfang:
- Eine Getränke-Bestellung umfasst wenige bis zu mehreren hundert Artikel.
- Das Bereitstellen der Getränke (4) dauert je nach Grösse der Bestellung und Anzahl der eingehenden Bestellungen zwischen 2 und 10 Minuten.
- Gemäss den Erfahrungen aus dem letzten Jahr gehen zu Spitzenzeiten bis zu 10-15 Bestellungen pro 15 Minuten ein.
- Die Wege bei der Abholung (7) sind unterschiedlich lang. Bis man sich mit der Ware durch die Menschenmenge gekämpft hat, können mehrere Minuten vergehen.

Höchste Priorität bei der Bestellung: Solange ein Produkt an Lager ist, darf es an keiner Bar ausgehen.
Das wird durch schnelle Kommunikation und Live-Updates sichergestellt.
// und wenn im Zeitrahmen der SA: Prognose pro Bar, Empfehlung auf Website: "es sind .. minuten vorbei seit der letzten Bestellung, möchtet du diese Artikel wieder bestellen ..."

#figure(
  image("resources/problem-domain/Rückgabe.egn.svg", width: 300pt),
  kind: image,
  caption: [Problem Domain der Getränkerückgabe am Ende des Festes],
)

Bei der Rückgabe ist das Fest vorbei und es darf deshalb auch länger dauern.
