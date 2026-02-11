> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/What is OSCam

## Inhaltsverzeichnis

+   [1 Was kann OSCam?](#Was_kann_OSCam?)
    +   [1.1 Cardserver](#Cardserver)
    +   [1.2 Client](#Client)
    +   [1.3 Modules](#Modules)
        +   [1.3.1 oscam.version](#oscam.version)
        +   [1.3.2 Management modules](#Management_modules)

## Was kann OSCam?

Das Wichtigste vorweg: **OSCam ist Open Source!**

OSCam steht für **O**pen **S**ource **C**onditional **A**ccess **M**odul und ist eine **non-profit** Gemeinschaftsarbeit zahlreicher Entwickler. Die Entwicklung ist **public**, also offen einsehbar. Der Entwicklungsfortschritt kann hier verfolgt werden: [Timeline](http://www.streamboard.tv/oscam/timeline "streamboard:oscam/timeline"). OSCam timeline basiert auf changesets und wird mit tickets verfolgt. Die Entwicklungsschritte finden in sogenannten "svn's" (subversion) statt. Sie stehen für eine Compilation (siehe Plattformen) zur Verfügung.

*work in progress* bedingt, dass diese Dokumentation immer nur Schnappschüsse der Entwicklung darstellen kann. Die Mitarbeit der User ist sehr willkommen!

Zu Anfang der Entwicklung war OSCam ein reiner **cardserver**. Später kam der Bereich **client** hinzu. Das soll sicherstellen, dass alles *aus einer Hand* kommt.



### Cardserver

Wie sein Vorgänger MPCS ist OSCam ein Protokoll- und Plattform-Cardserver.

### Client

Der Bereich **Client** wird durch die Parameter **dvbapi** gesteuert. **Server** und **Client** sollen später in einem Protokoll zusammengeführt werden, damit keine Rücksicht mehr auf andere Protokolle mit **closed source** genommen werden muss. Derzeit sind solche Protokolle noch eingebunden ohne Verantwortlichkeit dafür, was in diesen **black boxes** mit den Daten und Befehlen passiert.

**Übersicht über die Abhängigkeiten von Server und Client:**

[![](/images/4/4f/Oscam-client.png)](/wiki/Datei:Oscam-client.png)

(Dank an **Alno** aus seinem workshop 2 zu diesem Topic)

### Modules

OSCam ist modular aufgebaut. Auf diese Weise kann der CPU-Einsatz der jeweiligen Hardware minimiert werden. Man kann nur die Module und Protokolle aussuchen, die man wirklich benötigt. Server mit kleiner CPU werden es danken!

Die Auswahl muss vor dem Compilieren getroffen werden. Da Compilieren den fortgeschrittenen Usern vorbehalten ist, wird hierauf in dieser Dokumentation nicht eingegangen. Im **streamboard** gibt es detailierte threads, die sich mit dem Compilieren beschäftigen. Interessierte User können sich dort informieren. Wer das Bauen einer binary (compilieren) selbst versuchen möchte, findet hier in diesem Wiki eine ausführliche Beschreibung [Self-made](/wiki/OSCam/de/Self-made#Umgebung "OSCam/de/Self-made")

Zusätzlich werden die Module nachfolgend aufgelistet, damit der User entscheiden kann, welche der im board veröffentlichten binaries zutreffen:



#### oscam.version

```
Webif support
Webif with SSL support
Dvbapi
Gbox support
Anticasc support
ECM doublecheck
Irdeto guessing
Debug
LED support
Qboxhd-LED support
Log history
Monitor
camd33
Camd35 UDP
Camd35 TCP
Newcamd
Cccam
Radegast
Serial
ConstCW
Cardreader
Nagra
Irdeto
Conax
Cryptoworks
Seca
Viaccess
Videoguard
Dre
Tongfang
```

**WebInterface** zeigt diese Files.

#### Management modules

Das script **config.sh** ist ein einfacher Weg

+   für die Anzeige und Auswahl aller existierender
    +   Module
    +   Protokolle und
    +   Reader

+   die Auswahl zu ändern und zu schließlich
+   einen Backup für den nächsten Aufruf eines build's zu erstellen, wenn man selbst compiliert.

Für den Fall, dass das script nicht gefunden wird oder nicht existiert, hier ein Download [Datei:Config.sh.rar](/wiki/Datei:Config.sh.rar "Datei:Config.sh.rar"). Es gehört in das Verzeichnis, in dem sich die heruntergeladene svn befindet und in dem mit **make** die Compilierung ausgeführt wird. Das script wird so zur Ausführung aufgerufen: **./config.sh -g**