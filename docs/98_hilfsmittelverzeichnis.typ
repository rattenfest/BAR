
= Hilfsmittelverzeichnis

Die folgende Übersicht dokumentiert die im Projekt verwendeten Hilfsmittel nach Aufgabenbereich.
Die konkreten Tools werden im Verlauf des Projekts ergänzt.

// TODO: anstatt eine Tabelle es in paar Sätzen notieren und vermerken, dass wir alles manuell überprüft und angepasst haben?

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
    [Qualitätsoptimierung des Textes (Synonyme/Formulierung von Begriffen und Satzstruktur)], [GPT-5.6 Luna Anonymized],
    [Prototyping], [Figma],
    [Coding], [Claude Code],
    // TODO: konkreter, überprüfung, testgenerierung, optimierung oder auch Codegenerierung?
    [Texterstellung, Textoptimierung, Rechtschreibe- und Grammatikprüfung], [Claude, Hunspell],
    // siehe README.md für die Anleitung
    [Zusammenarbeit und Projektmanagement], [Teams, GitHub, Outlook, Google Meet, Typst, WhatsApp],
    [DevOps], [GitHub],
    [Notizen], [Obsidian, Papier],
  ),
  kind: table,
  caption: [Hilfsmittelverzeichnis],
)
