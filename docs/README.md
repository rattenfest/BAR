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
)
```

Bei Ausnahmefällen nutze `// lint:ignore [reason]` vor `#table`.
