> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/Monitoring

## Inhaltsverzeichnis

+   [1 Monitoring](#Monitoring)
    +   [1.1 Webinterface](#Webinterface)
        +   [1.1.1 Features](#Features)
            +   [1.1.1.1 bereits implementiert](#bereits_implementiert)
            +   [1.1.1.2 noch in Arbeit](#noch_in_Arbeit)
        +   [1.1.2 Parameter](#Parameter)
        +   [1.1.3 Template System](#Template_System)
    +   [1.2 MicroMon](#MicroMon)

## Monitoring

### Webinterface

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung:** Das Webinterface benutzt nur eine einfache Authenthication. Diese Authentication ist für die Verwendung von außerhalb des Home-Netzwerks nicht sicher genug, weil der gesamte Verkehr einschließlich **userid** und **password** unverschlüsselt stattfindet. Ein Eindringling kann damit die gesamte Kontrolle über das System erlangen. Wenn ein Zugriff auf das Webinterface aus dem Internet vorgesehen ist, wird dringend empfohlen, einen **SSL securde reverse proxy** wie z.B. Apache zu benutzen. Alles andere ist äußerst kritisch. Diskussionen zum WebIf findet man [hier](http://www.streamboard.tv/wbb2/thread.php?threadid=26719 "streamboard-thread:26719")



#### Features

##### bereits implementiert

+   Edit oscam.user (Lesen und Schreiben)
+   Edit oscam.services (Lesen und Schreiben)

##### noch in Arbeit

+   Edit oscam.conf \[global\] (Lesen, Schreiben, Update nur nach Neustart)
+   Edit oscam.server \[reader\] (Lesen noch nicht alle Parameter, Schreiben noch nicht)

#### Parameter

**Siehe oscam.conf \[webif\] [hier](/wiki/OSCam/de/Config/oscam.conf#WebIf "OSCam/de/Config/oscam.conf")**

#### Template System

Das Webinterface ermöglicht es, eigene Seiten zu entwickeln. Die Original-Templates für die Entwicklung sind in **savetemplates.html** zu finden. OSCam wird diese Templates in dem Verzeichnis speichern, das im Parameter **httptpl** von oscam.conf \[webif\] eingetragen ist.

### MicroMon

Eine ausführliche Dokumentation ist hier zu finden: **[MicroMon](/wiki/MicroMon "MicroMon")**