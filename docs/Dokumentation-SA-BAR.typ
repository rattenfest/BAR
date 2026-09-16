
#set text(font: ("Roboto", "Arial"), size: 0.9em)


#set heading(numbering: "1.1")

#set page(
    margin: 1in,
)

#set text(
    lang: "de",
    region: "CH",
)

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
    if (it.level >= 5) {
        block(it.body)
    } else {
        block(counter(heading).display() + " " + it.body)
    }
}


// -----------------------------------------------------


#include "00_title_page.typ"
#pagebreak()

#include "10_einleitung.typ"

#include "20_hintergrund.typ"

#include "30_methode.typ"

#include "40_ergebnisse.typ"

#include "50_diskussion.typ"

#include "60_fazit.typ"


#pagebreak()



#include "90_project_information.typ"



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
