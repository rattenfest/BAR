## Dokumentation Informationen

### Github Pipeline

Wurde grössenteils vom SE Project übernommen.

### Spellcheck

Lokale Lösung: konvertiere .pdf zu .txt und prüfe dann den Text auf Rechtschreibefehler.

Beispielsweise: mit poppler-utils `pdftotext Dokumentation-SA-BAR.pdf` + hunspell `hunspell -d de_CH Dokumentation-SA-BAR.txt`. 
Dictionary mit Wörtern zum ignorieren benutzen und Englisch: `hunspell -p ./resources/spellcheck-ignore.txt -d de_CH,en_US Dokumentation-SA-BAR.txt`

Die Datei `spellcheck-ignore.txt` wird mit dem Command genutzt und mit `i` und `u` werden Wörter automatisch hinzugefügt, die Datei wird nicht von Hand bearbeitet.

### Tabellen

```typ
#figure(
  table(
    columns: (auto, auto, auto),
    
    [Test],
    [Schwierigkeit],
    [Erfolgreich?],
    
    [*Beispiel*],
    [],
    [☐],
  ),
  kind: table,
  caption: [Protokoll],
) <tabellen-label>
```

Bei Ausnahmefällen nutze `// lint:ignore [reason]` vor `#table`.

### Quellenangabe

Erstellung
```typ
@online{referenz-biespiel,
  author = {{Autor}},
  title = {Ein Titel},
  year = {2026},
  url = {https://beispiel.com/test/},
  urldate = {2026-MM-DD}
}
```

Nutzung
```typ
@referenz-beispiel
```

### Bild

Bilder und Tabellen müssen immer eine Beschreibung haben, damit ein Tabellen- und Bilderverzeichnis erstellt werden kann. Dazu muss beim Erstellen von Bildern und Tabellen das `caption` Attribut benutzt werden.

```typ
#figure(
  function(), // z. B. image("resources/bild.png", width: 80%),
  kind: type, // z. B. kind: image,
  caption: [Beschreibung]
) <bild-label>
```
