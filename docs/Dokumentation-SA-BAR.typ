

#set heading(numbering: "1.1")
#show heading.where(level: 1): set text(size: 24pt)
#show heading.where(level: 2): set text(size: 16pt)
#show heading.where(level: 3): set text(size: 14pt)
#show heading.where(level: 4): set text(size: 12pt)
#show heading.where(level: 5): set text(size: 11pt)

#set page(
  margin: 1in,
)

#set text(
  lang: "de",
  region: "CH",
)

#set par(justify: true)

#show heading.where(level: 2): it => {
  it
  line(length: 100%)
  v(0.4em)
}

#set page(footer: context [
  *SA Dokumentation*
  #h(1fr)
  #counter(page).display(
    "1/1",
    both: true,
  )
])

// Remove numbering for headings after level 5, headings too long for example at "User Testings" but "Testing Concept" needs numbers up to level 4 for references
#show heading: it => {
  if (it.numbering == none or it.level >= 5) {
    block(it.body)
  } else {
    block(counter(heading).display() + " " + it.body)
  }
}


// -----------------------------------------------------


#include "00_title_page.typ"
#pagebreak()
#include "01_summary.typ"

#include "10_einleitung.typ"

#include "20_hintergrund.typ"
#include "21_konkurrenzanalyse.typ"
#include "21_risikoanalyse.typ"
#include "22_requirements.typ"

#include "30_methode.typ"

#include "40_ergebnisse.typ"

#include "60_fazit.typ"


#pagebreak()



#include "90_project_information.typ"

= Hilfsmittelverzeichnis

Die folgende Übersicht dokumentiert die im Projekt verwendeten Hilfsmittel nach Aufgabenbereich.
Die konkreten Tools werden im Verlauf des Projekts ergänzt.

#figure(
  table(
    columns: (1fr, 2fr),
    stroke: 0.5pt + gray,
    inset: 6pt,
    align: (left, left),
    table.header(
      table.cell(text(weight: "bold")[Aufgabenbereich]),
      table.cell(text(weight: "bold")[Tools]),
    ),
    [Literatur-Recherche und Verwaltung], [Google, DuckDuckGo, scholar.google.com],
    [Datenanalyse und Visualisierung], [],
    [Ideengenerierung], [Claude, Gemini, Typst],
    [Übersetzung], [],
    [Prototyping], [Figma],
    [Coding], [Claude Code],
    [Texterstellung, Textoptimierung, Rechtschreibe- und Grammatikprüfung], [Claude, Hunspell],
    // siehe README.md für die Anleitung
    [Zusammenarbeit und Projektmanagement], [Teams, GitHub, Outlook, Google Meet, Typst, WhatsApp],
    [DevOps], [GitHub],
    [Notizen], [Obsidian, Papier],
  ),
  kind: table,
  caption: [Hilfsmittelverzeichnis],
)


= Bilderverzeichnis
#outline(
  title: none,
  target: figure.where(kind: image),
)

= Tabellenverzeichnis
#outline(
  title: none,
  target: figure.where(kind: table),
)

= Bibliografie
#bibliography("resources/bibliography.bib", title: none, style: "ieee")

#include "99_anhang.typ"
