> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/OSCam and VPN

## Inhaltsverzeichnis

+   [1 OSCam und VPN](#OSCam_und_VPN)
    +   [1.1 Wirkungsbereiche eines OSCam-Card-Servers (CS)](#Wirkungsbereiche_eines_OSCam-Card-Servers_\(CS\))
        +   [1.1.1 intern](#intern)
        +   [1.1.2 extern](#extern)
    +   [1.2 Sicherheit](#Sicherheit)
        +   [1.2.1 intern](#intern_2)
        +   [1.2.2 extern](#extern_2)
+   [2 Welche Protokolle stehen zur Verfügung](#Welche_Protokolle_stehen_zur_Verfügung)
    +   [2.1 TCP oder UDP ?](#TCP_oder_UDP_?)
        +   [2.1.1 Eigenschaften von TCP](#Eigenschaften_von_TCP)
        +   [2.1.2 Eigenschaften von UDP](#Eigenschaften_von_UDP)
    +   [2.2 Ideale Kombination ?](#Ideale_Kombination_?)
        +   [2.2.1 UDP als Protokoll](#UDP_als_Protokoll)
        +   [2.2.2 VPN als Transportweg](#VPN_als_Transportweg)
            +   [2.2.2.1 IPCOP](#IPCOP)
+   [3 Fazit](#Fazit)
+   [4 Beispiel einer VPN-Lösung für OSCam-Cardserver](#Beispiel_einer_VPN-Lösung_für_OSCam-Cardserver)
    +   [4.1 Hardware IPCOP](#Hardware_IPCOP)
    +   [4.2 Hardware OScam-Server](#Hardware_OScam-Server)
    +   [4.3 Configuration des OSCam-Servers](#Configuration_des_OSCam-Servers)
        +   [4.3.1 oscam.conf \[cs357x\]](#oscam.conf_[cs357x])
        +   [4.3.2 oscam.user](#oscam.user)
        +   [4.3.3 oscam.ac](#oscam.ac)
    +   [4.4 Configuration beim Client](#Configuration_beim_Client)
    +   [4.5 Configuration IPCOP](#Configuration_IPCOP)
+   [5 Alles über IPCOP](#Alles_über_IPCOP)
+   [6 Quellen](#Quellen)

# OSCam und VPN

VPN steht für **V**irtual **P**rivate **N**etwork. Hier findet man eine ausführliche Definition [\[1\]](http://de.wikipedia.org/wiki/Virtual_Private_Network)

## Wirkungsbereiche eines OSCam-Card-Servers (CS)

Das sind die räumlichen Bereiche, in denen sich die Clients befinden, die vom CS Daten beziehen.

### intern

Bereiche, über die der Betreiber eines CS selbst verfügt bzw. unmittelbare Kontrolle hat; z.B. eigene Zimmer, Wohnung, Haus, Grundstück.

### extern

Bereiche, über die der Betreiber wenig oder keine unmittelbare Kontrolle hat; z.B. fremde Zimmer, Wohnungen, Häuser und Grundstücke im In- oder Ausland.

## Sicherheit

Damit ist der Schutz der Verbindungen zwischen CS und Client vor

+   Eindringen
+   Manipulieren
+   unbefugtes Nutzen
+   und Dokumentieren für die Verfolgung privater und öffentlicher Interessen [![](/images/f/f6/Smiley_wink.png)](/wiki/Datei:Smiley_wink.png)

gemeint.

### intern

Solange Kontrolle und Verfügbarkeit der CS-Verbindungen durch den Betreiber des CS gewährleistet ist, sind Fragen der Sicherheit nachrangig. Hier kann sich der User nach Lust und Laune mit den zur Verfügung stehenden Protokollen austoben. Es sind dann eher philosophische Fragen, welches Protokoll man für das CS verwenden möchte.

### extern

Im Gegensatz zum internen Bereich ist hier der Sicherheit und Zuverlässigkeit besondere Aufmerksamkeit zu widmen. Dabei spielen aber auch Fragen der Geschwindigkeit und des einfachen handlings eine Rolle. Damit kommen nun auch die zur Verfügung stehenden Protokolle in die Diskussion.

# Welche Protokolle stehen zur Verfügung

[Hier](http://www.streamboard.tv/wiki/OSCam/de/Which_protocols_Card_Reader_and_Cards_are_supported "streamboard:wiki/OSCam/de/Which protocols Card Reader and Cards are supported") werden die unterstützten Protokolle im OSCam-Wiki beschrieben

## TCP oder UDP ?

### Eigenschaften von TCP

**T**ransmission **C**ontrol **P**rotocol. Eine ausführliche Beschreibung dieses Protokolls für den **bidirektionalen** Datentransport findet man z.B. hier [\[2\]](http://de.wikipedia.org/wiki/Transmission_Control_Protocol)

**Haupteigenschaften**

+   zuverlässig
+   verbindungsorientiert
+   paketvermittelnd
+   bidirektional
+   Datenverluste werden erkannt und behoben

**Voraussetzungen**

+   Vollduplexverbindung (mit Einschränkungen auch Halbduplex)
+   Festdefinierte Endpunkte mit jeweils IP und Portnummer (Paar)

**Geschwindigkeit**

+   Wegen des komplexen Ablaufs (u.a. Drei-Wege-Handschlag) nicht so schnell wie UDP



### Eigenschaften von UDP

**U**ser **D**atagram **P**rotocol. Eine ausführliche Beschreibung dieses minimalen, **verbindungslosen** Netzwerkprotokolls findet man z.B. hier [\[3\]](http://de.wikipedia.org/wiki/User_Datagram_Protocol)

**Haupteigenschaften**

+   verbindungslos
+   nicht zuverlässig

**Voraussetzungen**

+   **keine** definierten Endpunkte

**Geschwindigkeit**

+   Da vor Übertragungsbeginn nicht erst eine Verbindung aufgebaut werden muss, können die Partner schneller mit dem Datenaustausch beginnen. Das fällt vor allem bei Anwendungen ins Gewicht, bei denen **nur kleine Datenmengen** ausgetauscht werden müssen. Ein Drei-Wege-Handschlag wie bei dem Transmission Control Protocol entfällt. UDP ist daher i.d.R. etwas schneller als TCP.




## Ideale Kombination ?

**Vorbemerkung:** Die nachfolgenden Überlegungen beziehen sich ausschließlich auf die Erfordernisse für CS! Es bestehen keine Zweifel darüber, dass in den meisten übrigen Bereichen des sensiblen Datentransports andere Kriterien gelten.

Da beim CS ja nur **kleinste Datenmengen** übertragen werden, stellt sich die Frage, ob hierfür ein so komplexes Protokoll wie TCP hergenommen werden muss, wenn man die Faktoren **Sicherheit** und **Zuverlässigkeit** auch auf andere Weise gewährleisten kann.

### UDP als Protokoll

**Vorteile**

+   Nur maximal 2 Config-Parameter auf dem Server für **alle** Clients, wo sie auch immer ihre Location haben. Siehe OSCam-Wiki [UDP](http://www.streamboard.tv/wiki/OSCam/de/Config/oscam.conf#camd35_.2F_cs357x_.28UDP.29 "streamboard:wiki/OSCam/de/Config/oscam.conf")
+   Nur 1 Config-Zeile beim Client

### VPN als Transportweg

VPN wird von verschiedenen Providern meistens gegen Gebühr angeboten. Davon muss man nicht Gebrauch machen. Es gibt linux-basierte Lösungen (Open-Source und GUI). Im vorliegenden Beispiel wird **IPCOP** eingesetzt.

#### IPCOP

IPCOP ist eine Linux-Distribution, deren einziger Einsatzzweck in dem Schutz von Netzwerken besteht. Sie ist

+   sicher
+   stabil
+   quellofen
+   flexibel und
+   leicht zu bedienen

(Zitate aus: Marco Sondermann "IPCop kompakt", Verlag bomots.de)

Neben der Hauptaufgabe einer **Firewall** bietet diese Distribution ein **VPN** an.

Der VPN-Tunnel von IPCOP gewährleistet

+   Vertraulichkeit durch Verschlüsselung
+   Integrität (Schutz gegen Manipulation) und
+   Authentizität durch Signierung der Datenpakete

Verbindungsmöglichkeiten

+   **Host-zu-Netz** auch RoadWarrior genannt. Einzelnen Hosts (Clients) wird der Zugriff zu einem Netzwerk ermöglicht.
+   **Netz-zu-Netz** zwei oder mehrere Netze können unmittelbar miteinander kommunizieren.

Mehr über IPCOP findet man in diesem Board [\[4\]](http://www.ipcop-forum.de/)


# Fazit

Durch eine Kombination von UDP und VPN können gewährleistet werden

+   Einfaches handling und Schnelligkeit von UDP und
+   Sicherheit, Integrität und Authentizität von VPN des IPCOP




# Beispiel einer VPN-Lösung für OSCam-Cardserver

[![](/images/a/a4/OSCam_VPN.jpg)](/wiki/Datei:OSCam_VPN.jpg)

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Hinweis:** Selbstverständlich gehören zwischen die IPCOP's und Internet jeweils noch ein Modem bzw. Router, diese wurden in dem obigen Schema aus Vereinfachungsgründen nicht dargestellt!

## Hardware IPCOP

Fast jeder abgelegte alte PC kann die Funktionen eines IPCOP übernehmen. Da dieser PC aber 24 Stunden an 7 Tagen der Woche durchlaufen soll, sollte man auf den Energieverbrauch achten.

**Mindestausstattung:** 3 Ethernet-Karten (10/100) für Rote Zone (Internet), grüne Zone (Internes Netz) und blaue Zone (eventuell WLan)

In der Praxis hat sich der Einsatz des Mini-PC ALIX 2D13 (LX800, IDE, RTC, 256MB RAM) bewährt [\[5\]](http://www.alix-board.de/produkte/alix2d13.html)

Man beachte, dass dieses Gerät max 4 - 5 Watt verbraucht, während man bei einem voll ausgebauten PC immer mit 40 - 50 Watt rechnen muss! Die Produkte von Alix haben sich offensichtlich auch schon bei dem Projekt **Osiris** hier im streamboard bewährt.

## Hardware OScam-Server

In der Praxis wird die Funktion des OSCam-Servers noch sehr oft von einem linux-basierten Receiver (dbox2, dream usw.) übernommen. Wie im Fall des IPCOP sollte man aber davon ausgehen, dass auch dieser Server im Interesse einer kontinuierlichen Versorgung der Clients ebenfalls 24 Stunden an 7 Tagen der Woche liefern muss. Daher wird eine **standalone** Lösung bevorzugt. In dem oben angeführten Beispiel übernimmt die Aufgaben des OSCam-Servers ein **sheevaplug**. Genau so gut könnte das aber auch ein **dockstar** oder ein **Alix** mit Osiris sein. Alle diese Geräte zeichnen sich durch ihre Miniaturbauweise und eine geringe Leistungsaufnahme aus (max. 8 W!)

## Configuration des OSCam-Servers

### oscam.conf \[cs357x\]

Der Eintrag in der oscam.conf \[cs357x\] umfasst gerade mal 2 Zeilen:

```
[cs357x]
port                          = 25500 (irgend ein anderer Port tut es auch!)
suppresscmd08                 = 1
```

### oscam.user

Für jeden Client wird in der oscam.user ein eigener \[account\] angelegt.

Beispiel:

```
[account]
user                          = dbox2_hier
pwd                           = ABCDEF
.
.
[account]
user                          = HTPC_hier
pwd                           = GHIJKL
.
.
usw.
```

### oscam.ac

Um einem Missbrauch vorzubeugen, sollte anticasc enabled werden [OSCam.ac](http://www.streamboard.tv/wiki/OSCam/de/Config/oscam.ac "streamboard:wiki/OSCam/de/Config/oscam.ac").

## Configuration beim Client

Beispiel dbox2 mit camd3 (camd3.servers):

```
 # cs357x - UDP
 # Sende alle ECMs
 cs357x://dbox2_hier:ABCDEF@192.168.4.100:25500
```

Beispiel HTPC mit ACamd (cardclient.conf):

```
# camd35 client
# UDP protocol
camd35:192.168.4.100:25500:1/1702/FFFF:HTPC_hier:GHIJKL*)
*) Die 1 hinter dem Port bedeutet AU enabled. Dahinter die CAID, die herausgefiltert werden soll.
```



## Configuration IPCOP

Die nachfolgende hardcopy zeigt die Config-Maske für VPN von IPCOP. Private Einträge sind unkenntlich gemacht. Angeschlossen sind zwei Net-to-Net-Verbindungen und eine Net-to-Host-Verbindung (roadwarrior). Davon ist die Verbindung zum roadwarrior angehalten. Weiter unten sind die Zertifikate dieser Verbindungen aufgeführt.

[![](/images/1/18/IPCOP-VPN-hardcopy_Maske.png)](/wiki/Datei:IPCOP-VPN-hardcopy_Maske.png)


# Alles über IPCOP

Da es eine Vielzahl von Erklärungswünschen gibt:

+   Ist das eine Firewall?
+   Ist das ein Router?
+   Ist das ein DHCP-Server?
+   Ist das ein VPN Portal?

verweise ich gerne auf die Cracks vom IPCOP-Board, die mit ein paar Skizzen und How-To's das Wesentliche herausgearbeitet haben. Warum sollte man das Rad noch einmal erfinden und hier alles wiederholen [\[6\]](http://www.ipcop-forum.de/dokumentation.php)


# Quellen

(1) Marco Sondermann "IPCop kompakt" - Verlag bomots.de -Linux- und Open Source Taschenbücher [\[7\]](http://www.amazon.de/IPCop-kompakt-Sicherheit-lokales-Firewall-Systems/dp/3939316415)

(2) Wiki.org Definitionen für VPN, TCP und UDP (im Text indexiert)

(3) ipcop-forum [\[8\]](http://www.ipcop-forum.de/)

(4) OSCam-Wiki streamboard