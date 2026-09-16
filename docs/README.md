## Dokumentation Informationen

### Github Pipeline

Wurde grössenteils vonm SE Project übernommen.

### Spellcheck

Lokale Lösung: konvertiere .pdf zu .txt und prüfe dann den Text auf Rechtschreibefehler.

Beispielsweise: mit poppler-utils `pdftotext Dokumentation-SA-BAR.pdf` + hunspell `hunspell -d de_CH Dokumentation-SA-BAR.txt`. 
Dictionary mit Wörtern zum ignorieren benutzen und Englisch: `hunspell -p ./resources/spellcheck-ignore.txt -d de_CH,en_US Dokumentation-SA-BAR.txt`

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
