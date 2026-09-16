
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
    // #box(image("resources/logos/Logo.svg", height: 4cm))
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
            [#strong[Team:];], [Andrin Klarer (#link("mailto:andrin.klarer@ost.ch")[andrin.klarer\@ost.ch];)],
            [], [Jasmin Fässler (#link("mailto:jasmin.faessler@ost.ch")[jasmin.faessler\@ost.ch];)],

            [#strong[Betreuer:];], [Frieder Loch (#link("mailto:frieder.loch@ost.ch")[frieder.loch\@ost.ch];)],
        )],
        outlined: false,
        numbering: none,
    )

    \
    \
    Departement Informatik \
    Ostschweizer Fachhochschule
    #v(3cm)
    #box(image("resources/logos/logo-ost.svg", height: 2cm))
]


// Inhaltsverzeichnis

#set page(numbering: "1") // only for this typst document
#outline(
    depth: 2,
)

