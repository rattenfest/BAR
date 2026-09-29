= Design und Architektur
// Beschreibung der Konzepte Ihrer Lösung sowie deren Architektur. Bleiben Sie möglichst plattformneutral
// und technologieübergreifend. Begründen Sie Entscheide: Warum ist das gewählte Konzept (z.B. Pattern)
// geeignet? Auf welche anderen Lösungsoptionen haben Sie bewusst verzichtet und wieso? Was sind die
// positiven und negativen Auswirkungen der Entscheide? Zeigen Sie auf, wie Qualitätsattribute und NFAs
// erreicht werden.
// Das Kapitel kann in internes Design (Subsysteme, Komponenten, Klassen) und externes Design (UI)
// unterteilt werden.
// Setzen Sie beispielsweise UML-Diagramme mit Erläuterungen ein und verzichten Sie wenn möglich auf
// Code-Listings (siehe Implementation).

#include "31_technologieentscheid.typ"

== Architektur
// UI und Backend Konzept (Software-Architektur)

== Datenmodell
// mehrjahresfähig

== UI-Konzept
// Prototyp / Skizze der Lösung

== Zugangskonzept
// Aus Prototyp übernommen (@vorarbeiten), hier ausführlich beschreiben:
// - Bars: persönlicher Link mit UUID, ohne Passwort (FR-04, NFR-07)
//   Begründung: wechselnde Besetzung, geteilte Geräte
//   Konsequenzen: Link = Zugangsdaten, neu erzeugbar; Aktionen nur der Bar zuordenbar (vgl. NFR-05)
// - Lagerteam & Admins: Benutzername und Passwort, Rollen & Berechtigungen
// - Verworfene Alternativen (Passwort pro Bar, persönliche Konten, SMS-/E-Mail-Code)

#pagebreak()
= Implementation
// Beschreibt ausgewählte und interessante Implementationsaspekte sowie die verwendeten oder entwickelten
// Technologien (Algorithmen, Datenstrukturen usw.) und Abhängigkeiten (Frameworks, Libraries usw.).
// Ebenfalls wird in diesem Kapitel das Testing beschrieben. Verwenden Sie nur Codebespiele, wenn diese
// sinnvoll sind und etwas zur Erläuterung beitragen. Zudem sollten diese kurz und stark vereinfacht sein (z.B.
// Includes/Import sowie unwichtige Teile weglassen oder nur als Kommentar erwähnen).
