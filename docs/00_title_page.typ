
#set document(
  title: [Getränkebestellungen am Rattenfest],
  author: "Andrin Klarer, Jasmin Fässler",
)

#let doc_version = sys.inputs.at("version", default: "Lokaler Build")

#set align(center)
\
\
#title()
\

#block[
  Studienarbeit \
  Herbstsemester 2026
  \
  \

  #v(0.2cm)
  #box(image("resources/logos/rat-black.svg", height: 4cm))
  #v(0.5cm)

  #let date = datetime.today()
  Version: #doc_version \
  Datum: #date.display("[day].[month].[year]")
  \
  \
  \

  #figure(
    align(
      center,
      // lint:ignore Titelseite
    )[#table(
      columns: 2,
      align: (right, left),
      stroke: none,
      [#strong[Team:];], [Andrin Klarer],
      [], [Jasmin Fässler],

      [#strong[Betreuer:];], [Frieder Loch],
    )],
    outlined: false,
    numbering: none,
  )

  \
  \
  #v(2cm)

  Departement Informatik \
  Ostschweizer Fachhochschule
  #v(1cm)
  #box(image("resources/logos/logo-ost.svg", height: 2cm))
]




// Inhaltsverzeichnis

#pagebreak()
#set page(numbering: "1") // only for this typst document
#outline(
  depth: 3,
)

