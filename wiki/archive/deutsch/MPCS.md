> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# MPCS

## Inhaltsverzeichnis

+   [1 Was kann das Programm?](#Was_kann_das_Programm?)
+   [2 Welche Plattformen und Protokolle werden unterstützt](#Welche_Plattformen_und_Protokolle_werden_unterstützt)
    +   [2.1 Plattformen](#Plattformen)
    +   [2.2 Protokolle](#Protokolle)
        +   [2.2.1 camd3](#camd3)
            +   [2.2.1.1 camd 3.3](#camd_3.3)
            +   [2.2.1.2 camd 3.5](#camd_3.5)
        +   [2.2.2 newcamd](#newcamd)
        +   [2.2.3 gbox](#gbox)
        +   [2.2.4 radegast](#radegast)
+   [3 Welche Card Reader werden unterstützt?](#Welche_Card_Reader_werden_unterstützt?)
    +   [3.1 Seriell](#Seriell)
    +   [3.2 USB](#USB)
        +   [3.2.1 Smartmouse Programmer](#Smartmouse_Programmer)
+   [4 **Dateien für die Konfiguration und deren Variablenbeschreibung**](#Dateien_für_die_Konfiguration_und_deren_Variablenbeschreibung)
    +   [4.1 mpcs.conf](#mpcs.conf)
        +   [4.1.1 **Variablenbeschreibung**](#Variablenbeschreibung)
            +   [4.1.1.1 **Nice**](#Nice)
            +   [4.1.1.2 *ClientTimeout*](#ClientTimeout)
            +   [4.1.1.3 **ClientMaxIdle**](#ClientMaxIdle)
            +   [4.1.1.4 **CacheDelay**](#CacheDelay)
            +   [4.1.1.5 FallbackTimeout](#FallbackTimeout)
            +   [4.1.1.6 BindWait](#BindWait)
            +   [4.1.1.7 ResolveDelay](#ResolveDelay)
            +   [4.1.1.8 DyndnsInterval](#DyndnsInterval)
            +   [4.1.1.9 LogFile](#LogFile)
            +   [4.1.1.10 PidFile](#PidFile)
            +   [4.1.1.11 MaxLogSize](#MaxLogSize)
            +   [4.1.1.12 showecmdw](#showecmdw)
            +   [4.1.1.13 showemmdw](#showemmdw)
            +   [4.1.1.14 disablecache1](#disablecache1)
            +   [4.1.1.15 disablecache2](#disablecache2)
            +   [4.1.1.16 disablecache](#disablecache)
            +   [4.1.1.17 WaitCards](#WaitCards)
            +   [4.1.1.18 ReaderAlarm](#ReaderAlarm)
            +   [4.1.1.19 Filter](#Filter)
            +   [4.1.1.20 \[newcamd\]](#[newcamd])
            +   [4.1.1.21 \[anticasc\]](#[anticasc])
                +   [4.1.1.21.1 enabled](#enabled)
                +   [4.1.1.21.2 numUsers](#numUsers)
                +   [4.1.1.21.3 sampletime](#sampletime)
                +   [4.1.1.21.4 samples](#samples)
                +   [4.1.1.21.5 denysamples](#denysamples)
                +   [4.1.1.21.6 panalty](#panalty)
                +   [4.1.1.21.7 aclogfile](#aclogfile)
            +   [4.1.1.22 camd 3.5x](#camd_3.5x)
    +   [4.2 **V0.9e**](#V0.9e)
        +   [4.2.1 Variablenbeschreibung](#Variablenbeschreibung_2)
            +   [4.2.1.1 UsrFile](#UsrFile)
            +   [4.2.1.2 Sleep](#Sleep)
            +   [4.2.1.3 ServerIP](#ServerIP)
            +   [4.2.1.4 Port](#Port)
            +   [4.2.1.5 NoCrypt](#NoCrypt)
            +   [4.2.1.6 AULow](#AULow)
            +   [4.2.1.7 MonLevel](#MonLevel)
            +   [4.2.1.8 Port](#Port_2)
            +   [4.2.1.9 Key](#Key)
            +   [4.2.1.10 Passive](#Passive)
            +   [4.2.1.11 NoCrypt](#NoCrypt_2)
            +   [4.2.1.12 Port](#Port_3)
            +   [4.2.1.13 Port](#Port_4)
            +   [4.2.1.14 User](#User)
            +   [4.2.1.15 Allowed](#Allowed)
            +   [4.2.1.16 Device](#Device)
            +   [4.2.1.17 Password](#Password)
            +   [4.2.1.18 MaxDist](#MaxDist)
            +   [4.2.1.19 CardInfos](#CardInfos)
            +   [4.2.1.20 IgnoreList](#IgnoreList)
            +   [4.2.1.21 Locals](#Locals)
            +   [4.2.1.22 Reader](#Reader)
    +   [4.3 mpcs.user](#mpcs.user)
        +   [4.3.1 **Variablenbeschreibung**](#Variablenbeschreibung_3)
            +   [4.3.1.1 \[account\]](#[account])
            +   [4.3.1.2 User](#User_2)
            +   [4.3.1.3 Pwd](#Pwd)
            +   [4.3.1.4 MonLevel](#MonLevel_2)
            +   [4.3.1.5 Uniq](#Uniq)
            +   [4.3.1.6 ab MPCS 1.0n](#ab_MPCS_1.0n)
            +   [4.3.1.7 Group](#Group)
            +   [4.3.1.8 AU](#AU)
            +   [4.3.1.9 Enddate](#Enddate)
            +   [4.3.1.10 Betatunnel](#Betatunnel)
    +   [4.4 mpcs.reader(V1.0)](#mpcs.reader\(V1.0\))
        +   [4.4.1 **Variablenbeschreibung**](#Variablenbeschreibung_4)
            +   [4.4.1.1 \[reader\]](#[reader])
            +   [4.4.1.2 blockua](#blockua)
            +   [4.4.1.3 blockga](#blockga)
            +   [4.4.1.4 blocksa](#blocksa)
            +   [4.4.1.5 AU](#AU_2)
            +   [4.4.1.6 Enable](#Enable)
            +   [4.4.1.7 Label](#Label)
            +   [4.4.1.8 Protocol](#Protocol)
            +   [4.4.1.9 Device](#Device_2)
            +   [4.4.1.10 pincode](#pincode)
            +   [4.4.1.11 BaudRate](#BaudRate)
            +   [4.4.1.12 PTS](#PTS)
            +   [4.4.1.13 EMMCache](#EMMCache)
            +   [4.4.1.14 Detect](#Detect)
            +   [4.4.1.15 Group](#Group_2)
            +   [4.4.1.16 Fallback](#Fallback)
            +   [4.4.1.17 CAID](#CAID)
            +   [4.4.1.18 CHID](#CHID)
            +   [4.4.1.19 SERVICES](#SERVICES)
    +   [4.5 mpcs.server](#mpcs.server)
        +   [4.5.1 Variablenbeschreibung](#Variablenbeschreibung_5)
            +   [4.5.1.1 Account](#Account)
            +   [4.5.1.2 BlockNano](#BlockNano)
    +   [4.6 mpcs.services](#mpcs.services)
    +   [4.7 mpcs.srvid](#mpcs.srvid)
    +   [4.8 mpcs.ac](#mpcs.ac)
    +   [4.9 mpcs.cert](#mpcs.cert)
    +   [4.10 mpcs.guess](#mpcs.guess)
    +   [4.11 mpcs.ird](#mpcs.ird)
+   [5 **Beispiel-Konfigurationen**](#Beispiel-Konfigurationen)
    +   [5.1 PW, arena und MTV](#PW,_arena_und_MTV)
        +   [5.1.1 **Basis**](#Basis)
        +   [5.1.2 **Konfiguration**](#Konfiguration)
            +   [5.1.2.1 mpcs.conf](#mpcs.conf_2)
            +   [5.1.2.2 mpcs.server](#mpcs.server_2)
            +   [5.1.2.3 mpcs.user](#mpcs.user_2)
            +   [5.1.2.4 mpcs.cert](#mpcs.cert_2)
            +   [5.1.2.5 mpcs.services](#mpcs.services_2)
        +   [5.1.3 **Client-Anbindung**](#Client-Anbindung)
            +   [5.1.3.1 **mgcam**](#mgcam)
            +   [5.1.3.2 **CCcam**](#CCcam)
    +   [5.2 Sky GER HD](#Sky_GER_HD)
        +   [5.2.1 **Basis**](#Basis_2)
        +   [5.2.2 **Konfiguration**](#Konfiguration_2)
            +   [5.2.2.1 mpcs.conf](#mpcs.conf_3)
            +   [5.2.2.2 mpcs.server](#mpcs.server_3)
            +   [5.2.2.3 mpcs.user](#mpcs.user_3)
        +   [5.2.3 **Client-Anbindung**](#Client-Anbindung_2)
            +   [5.2.3.1 **mgcam**](#mgcam_2)
            +   [5.2.3.2 **CCcam**](#CCcam_2)
+   [6 **Fehlersituationen**](#Fehlersituationen)
    +   [6.1 rejected user ident](#rejected_user_ident)
+   [7 Versionen](#Versionen)
    +   [7.1 0.9d](#0.9d)
        +   [7.1.1 **Basis**](#Basis_3)
        +   [7.1.2 **zusätzliche Features**](#zusätzliche_Features)
        +   [7.1.3 **Forum**](#Forum)
    +   [7.2 0.9d gepatched](#0.9d_gepatched)
        +   [7.2.1 **Basis**](#Basis_4)
        +   [7.2.2 **zusätzliche Features**](#zusätzliche_Features_2)
        +   [7.2.3 **Forum**](#Forum_2)
        +   [7.2.4 **unterstütze SCs**](#unterstütze_SCs)
    +   [7.3 pre 0.9e Community Edition](#pre_0.9e_Community_Edition)
        +   [7.3.1 **Basis**](#Basis_5)
        +   [7.3.2 **zusätzliche Features**](#zusätzliche_Features_3)
        +   [7.3.3 **Forum**](#Forum_3)
        +   [7.3.4 **unterstütze SCs**](#unterstütze_SCs_2)
    +   [7.4 OSCam 0.99.3a](#OSCam_0.99.3a)
        +   [7.4.1 **Basis**](#Basis_6)
        +   [7.4.2 **zusätzliche Features**](#zusätzliche_Features_4)
        +   [7.4.3 **Forum**](#Forum_4)
        +   [7.4.4 **unterstütze SCs**](#unterstütze_SCs_3)
    +   [7.5 MPCS 1.0 beta](#MPCS_1.0_beta)
        +   [7.5.1 **Basis**](#Basis_7)
        +   [7.5.2 **zusätzliche Features**](#zusätzliche_Features_5)
        +   [7.5.3 **Forum**](#Forum_5)
        +   [7.5.4 **unterstütze SCs**](#unterstütze_SCs_4)
    +   [7.6 Windows (cygwin)](#Windows_\(cygwin\))
        +   [7.6.1 mpcs-1.01bs-i386-pc-cygwin](#mpcs-1.01bs-i386-pc-cygwin)
            +   [7.6.1.1 **Cardserver als Dienst starten**](#Cardserver_als_Dienst_starten)
    +   [7.7 Router](#Router)
        +   [7.7.1 Fritzbox 7110](#Fritzbox_7110)
        +   [7.7.2 Fritzbox 7120](#Fritzbox_7120)
        +   [7.7.3 Fritzbox 7170](#Fritzbox_7170)
        +   [7.7.4 Speedport W920V](#Speedport_W920V)
        +   [7.7.5 WRT](#WRT)
    +   [7.8 STB](#STB)
        +   [7.8.1 dbox 2](#dbox_2)
        +   [7.8.2 Dreambox](#Dreambox)
+   [8 Monitoring/ Remote Konfiguration](#Monitoring/_Remote_Konfiguration)
    +   [8.1 MicroMon](#MicroMon)
        +   [8.1.1 **Beschreibung**](#Beschreibung)
        +   [8.1.2 **Forum**](#Forum_6)
    +   [8.2 MPCS Control Center](#MPCS_Control_Center)
+   [9 allgemeine Links](#allgemeine_Links)
    +   [9.1 Forum Streamboard](#Forum_Streamboard)
    +   [9.2 Know How](#Know_How)
+   [10 Credits](#Credits)

# Was kann das Programm?

MPCS ist ein **m**ulti-**p**lattform/**m**ulti-**p**rotokoll **c**ard**s**erver.

Am 19.11.2003 regte user **Mode** im **streamboard-forum** die **Idee: [Cardserver](/wiki/Cardserver "Cardserver") für Linux** an. Aus den Diskussionen ging ein erster **neuer [Cardserver](/wiki/Cardserver "Cardserver")** hervor, den **dukat** am 13.01.2004 vorstellte. Anlässlich der Weiterentwicklung dieses **MPCS** zur Version 0.7j schrieb dukat am 27.11.04:

*"linux [cardserver](/wiki/Cardserver "Cardserver")" ist natuerlich jetzt ein merkwuerdiger name für einen [cardserver](/wiki/Cardserver "Cardserver"), der auf verschiedenen platformen laufen kann. ich habe ihn deshalb auf mp-cardserver umgetauft.(multi-platform/multi-protokoll.)*

# Welche Plattformen und Protokolle werden unterstützt

## Plattformen

**Linux** mit den hauptsächlichen Derivaten einschließlich [dbox 2](http://de.wikipedia.org/wiki/DBOX2) und [Dreambox](http://de.wikipedia.org/wiki/Dreambox) .

**Windows** unter Verwendung von **cygwin**.

## Protokolle

### camd3

Die Verwendung dieses Protokolls hat den Vorteil, dass auf der Seite der [Clients](http://de.wikipedia.org/wiki/Client), die auf der Basis von [camd3](/wiki/Camd3 "Camd3") arbeiten, keine Änderungen in den Konfigurationen nötig sind, sofern serverseitig auf diese Variablen Rücksicht genommen wird (z.B. in der mpcs.users). Erfolgreich getestet bis [camd3](/wiki/Camd3 "Camd3") Vers. 3.902.

#### camd 3.3

Entspricht auf Clientseite (camd3.servers) dem Eintrag unter cs378x (TCP) Vgl. [camd3](/wiki/Camd3 "Camd3")

#### camd 3.5

Entspricht auf Clientseite (camd3.servers) dem Eintrag unter cs357x (UDP) Vgl. [camd3](/wiki/Camd3 "Camd3")

### newcamd

### gbox

### radegast

# Welche Card Reader werden unterstützt?

## Seriell

+   Reader mit Mouse Protokoll 3,5 bzw. 6 Mhz Taktfrequenz
+   interne Reader (z.B. Dreambox)
+   Reader können auch über einen Serial-USB Adapter angeschlossen werden.

## USB

### Smartmouse Programmer

HYOSUNG FREEPRO-008

Dip-Schalter 3.58 und 6.00 Mhz

Stromversorgung 5 V DC

Anschluss über USB/232-Converter

Stromversorgung 5 Volt über USB

Protokoll: mouse

```
Eintrag in mpcs.server bzw. mpcs.reader
Detect = CTS
```

# **Dateien für die Konfiguration und deren Variablenbeschreibung**

Hinweis für alle Dateien: Komandozeilen können mit # auskommentiert werden. Das hat zur Folge, dass eine auskommentierte Zeile bei Ausführung des Programms nicht gelesen und damit auch nicht ausgeführt wird!

## mpcs.conf

**V1.0 (KrazyIvan Version)**

```
[global]
Nice            = -1
ClientTimeout   = 4
ClientMaxIdle   = 60
CacheDelay      = 0
FallbackTimeout = 1
BindWait        = 10
ResolveDelay    = 10
DyndnsInterval  = 120
LogFile         = stdout
PidFile         = /var/run/mpcs.pid
MaxLogSize      = 102400
showecmdw       = 0
showemmdw       = 0
disablecache1   = 0
disablecache2   = 0
disablecache    = 0
Filter          = 0

[newcamd]
Key             = 0102030405060708091011121314
Port            = 23423@0604:000000;

# -- camd 3.5x ----------------------------------------------------------------
# Port            : Port-Number (0 disables this protocol)
# ServerIP        : bind service to ONE dedicated ip-address
# -----------------------------------------------------------------------------

[cs378x]
Port            = 54343

[cs357x]
Port            = 54343
```

### **Variablenbeschreibung**

#### **Nice**

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

**Systempriorität**. MPCS benötigt fast keine CPU-Leistung. Wenn aber CPU-Leistung benötigt wird, sollte diese sofort zur Verfügung stehen. Werte von 20 bis -20 sind möglich, wobei 20 gering und -20 sehr hoch ist. Wird der Parameter auskommentiert(#), wird diese Funktion nicht ausgerufen. Das ist wichtig z.B. für die dbox 2[\[1\]](http://de.wikipedia.org/wiki/DBOX2), wenn die Fehlermeldung "*relocation error:setpriority*" erscheint. Vgl. [Prioritätsscheduling](http://de.wikipedia.org/wiki/Prioritätsscheduling)

```
Nice = -1
```

#### *ClientTimeout*

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

**Maximale Wartezeit** des Clients in Sekunden auf eine Antwort.

```
ClientTimeout = 4
```

#### **ClientMaxIdle**

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Maximale Zeit in Sekunden, die der Client inaktiv bleiben kann, bevor er automatisch abgemeldet wird.

```
ClientMaxIdle = 120
```

#### **CacheDelay**

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Mindestzeit in Millisekunden, die ein Request brauchen muss. Hört sich zwar paradox an, betrifft aber das Problem, wenn die **Antwort** aus dem cache **zu schnell** an den Client übermittelt wird.

```
CacheDelay = 300
```

#### FallbackTimeout

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **Parameter wird abhängig vom Setup/Programmversion benötigt.**

Maximale Wartezeit des [Cardservers](/wiki/Cardserver "Cardserver") in Sekunden auf primäre [Reader](/wiki/Reader "Reader"), bevor der/die [Fallback](/wiki/Fallback "Fallback")\-Reader (falls vorhanden!) befragt werden.

```
FallbackTimeout = 1
```

#### BindWait

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Maximale Zeit in Sekunden, die der [Cardreader](/wiki/Cardreader "Cardreader") beim Start wartet, bis er den jeweiligen Netzwerk-Port in Zugriff bekommt. Falls der MPCS innerhalb dieser Zeit den Port nicht binden kann, terminiert er mit "Bind Request failed". Ursachen dafür sind

+   Doppelbelegung von Ports
+   Ein vormals abgestürzter MPCS der die Ports nicht wieder freigegeben hat
+   der MPCS wurde mehrmals gleichzeitig gestartet

```
BindWait = 20
```

#### ResolveDelay

Zeit in Sekunden, gibt die Pause bei der Namensauflösung an.

```
ResolveDelay =
```

#### DyndnsInterval

*bitte noch ergänzen!*

#### LogFile

Hier kann die Logdatei eingestellt und Devices benannt werden.

```
LogFile = /dev/null          (Es wird kein Logfile erzeugt)
LogFile = /dev/tty           (Bildschirmausgabe)
LogFile = syslog             (Die Ausgabe wird an den syslogd übergeben)
LogFile = /var/log/mpcs.log  (linux i386)
LogFile = mpcs.log           (im Verzeichnis, in dem MPCS enthalten ist)
```

#### PidFile

Hier kann ein [Pidfile](/wiki/Pidfile "Pidfile") angegeben werden. Das ist eine ASCII-Datei, in der die Prozess-ID vom Hauptprozess des [Cardservers](/wiki/Cardserver "Cardserver") enthalten ist. Dieser Eintrag kann dazu benutzt werden, um den Cardserver wieder "sauber" anzuhalten, wenn er im Hintergund läuft.

```
PidFile = /var/run/mpcs.pid (Linux i386)
PidFile = /tmp/mpcs.pid     (dbox2)
```

#### MaxLogSize

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Mit diesem Parameter kann die maximale Größe der Logdatei festgelegt werden. Das ist bei umfangreichem Logbetrieb empfehlenswert. Die Logdaten werden dann im Verfahren First-In/First-out auf die festgelegte Größe begrenzt.

#### showecmdw

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*bitte ergänzen*

#### showemmdw

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*bitte ergänzen*

#### disablecache1

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*bitte ergänzen*

```
disablecache1 = 0
disablecache1 = 1
```

#### disablecache2

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*bitte ergänzen*

```
disablecache2 = 0
disablecache2 = 1
```

#### disablecache

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*bitte ergänzen*

```
disablecache = 0
disablecache = 1
```

#### WaitCards

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

```
WaitCards = 0 Es werden sofort Clientanfragen versucht zu beantworten
WaitCards = 1 Es wird gewartet bis alle lokalen Kartenleser initialisiert worden. Erst dann werden Anfragen von Clients beantwortet.
```

#### ReaderAlarm

ReaderAlarm = 0 ReaderAlarm = 1 Wenn der MPCS einen Fehler an einem lokalen Reader feststellt wird dieser neu initialisiert.

#### Filter

*bitte ergänzen*

#### \[newcamd\]

Für Newcamd-User selbsterklärend!

#### \[anticasc\]

+   Abschnitt für Anti-Cascading [Konfiguration](http://www.streamboard.tv/wbb2/thread.php?postid=289763#post289763 "streamboard-post:289763")

+   Beispiel

```
[anticasc]
enabled     = 1
numUsers    = 1
sampleTime  = 2
penalty     = 1
acLogFile   = /var/log/mpcs/ac.log
samples     = 2
denySamples = 9
```

##### enabled

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*Anti-Cascading aktivieren/deaktivieren*

```
enabled = 0 (nicht aktiviert)
enabled = 1 (aktiviert)
```

##### numUsers

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Kann auch in der mpcs.users definiert werden.

*Anzahl der zugelassenen User pro Account*

```
numusers = Anzahl
numusers = = (Cascading erlaubt)
```

##### sampletime

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*Dauer eines Sample in Minuten*

```
sampletime = Minuten
```

##### samples

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*Wie viele aufeinanderfolgende Samples müssen über dem Limit liegen, damit von Cascading ausgegangen wird?*

```
samples = Anzahl
```

##### denysamples

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*Für wieviele Samples gilt die Panalty?*

```
denysamples = Anzahl
```

##### panalty

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*Art der Panalty*

+   Kann auch in der mpcs.users definiert werden.

```
panalty = 0 (nur in Log-File)
panalty = 1 (fake CW senden)
panalty = 2 (Account temporär sperren)
```

##### aclogfile

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*Log-File für Cascading*

```
aclogfile = /var/log/mpcs/ac.log (Log-File)
```

#### camd 3.5x

Selbsterklärend. Wegen Protokoll camd 3.5 siehe auch Abschnitt **Protokolle** ([Protokolle](#Protokolle))

```
[cs357x]
Port      = 54343
```

Wichtig: Wenn hier ein Port eingetragen wird, muss dieser Port mit dem Eintrag in der camd3.servers bei den Clients übereinstimmen! Vgl. [camd3.servers](/wiki/Camd3#camd3.servers "Camd3")



* * *

## **V0.9e**

**Parameter wie bei V1.0 (KrazyIvan), jedoch zusätzlich:**

* * *

```
[global]
UsrFile    =
Sleep      =
ServerIP   =

[monitor]
Port       =
NoCrypt    =
AULow      =
MonLevel   =

[camd33]
Port       =
Key        =
Passive    =
NoCrypt    =

[camd35]
Port       =

[radegast]
Port       =
User       =
Allowed    =

[serial]
Device     =

[gbox]
Password   =
MaxDist    =
CardInfos  =
IgnoreList =
Locals     =
Reader     =
```

### Variablenbeschreibung

**\[global\]**

#### UsrFile

Hier kann eine Datei angegeben werden, in der ganze Sitzungen protokolliert werden.

Format der Datei ist wie folgt:

```
datum uhrzeit spcw username ip port cw-found cw-cache cw-notfound login-time logout-time proto-desc
```

wobei:

```
spcw = sekunden pro cw = alle wieviel sekunden (im schnitt) wurde ein cw geschickt
ip bzw. port = ip bzw. port vom client
cw-found = anzahl direkt gelesener cw's
cw-cache = anzahl cw's aus dem cache
cw-notfound = anzahl nicht gefundener cw's
login-time bzw. logout-time = timestamp nach unix-standard (typ time_t)
```

#### Sleep

Systemglobaler Standardwert für alle Accounts (Siehe auch mpcs.user)

#### ServerIP

Listener auf bestimmte IP binden. Dies ist dann zunächst der Standardwert für alle Listener! Dieser Parameter kann in allen Netzserverdiensten ebenfalls eingetragen werden, um den Standardwert zu überschreiben. Nur sinnvoll in komplexen Routing-Environments. Zur Reglementierung von Zugriffen sollte eine Firewall dienen. (dukat: *Wer mit dieser Info nichts anfangen kann, brauchts nicht. Empfehlung: Diesen Parameter nicht verwenden!*

**\[monitor\]**

#### Port

Gibt den **UDP-Port** für Monitorfunktionen an. Bei Port=0 wird dieser Dienst nicht aktiviert.

#### NoCrypt

Gibt eine IP oder einen Bereich an, in dem auch unverschlüsselte Clients Zugriff haben. Dieser Parameter kan mehrfach angegeben werden.

```
Beispiele:
NoCrypt=127.0.0.1                   ---> Client mit IP 127.0.0.1 (localhost) darf unverschlüsselt zugreifen.
NoCrypt=192.168.0.0-192.168.255.255 ---> Clients mit IP zwischen 192.168.0.0 und 192.168.255.255 dürfen unverschlüsselt zugreifen.
```

Verschlüsselte Clients haben grundsätzlich Zugriff!

#### AULow

Intervall in Minuten (default=30). Wenn in diesem Zeitraum kein EMM mehr eingegangen ist, wird die EMM-Versorgung am Monitor als "low" angezeigt.

#### MonLevel

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Standardeinstellung für Monitor-Zugang (default=2). Diese Einstellung kann pro User in mpcs.user überschrieben werden! Empfehlung - in der mpcs.conf den MonLevel = 0 und den MonLevel in der mpcs.user per Client festlegen. Zudem sollte ein separater Useraccount angelegt werden der nur für das Monitoring benutzt wird.

```
MonLevel = 0  Kein Zugriff auf Monitorfunktion
MonLevel = 1  Client sieht nur Serverprozesse und seine eigenen Prozesse
MonLevel = 2  Client sieht alle Prozesse, kann aber keine Aktion auslösen
MonLevel = 3  Client sieht alle Prozesse und kann die die UserDB neu laden.
MonLevel = 4  uneingeschränkter Zugriff auf die Monitorfunktion.
```

**\[camd33\]**

#### Port

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **Parameter wird abhängig vom Setup/Programmversion benötigt.**

Gibt den **TCP**\-Port für camd3.3x Serverdienst an. Bei Port=0 wird dieser Dienst nicht aktiviert.

#### Key

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **Parameter wird abhängig vom Setup/Programmversion benötigt.**

128-Bit-Schlüssel zur Verschlüsselung.

```
Achtung:
Wird dieser Parameter nicht oder falsch angegeben, wird bei camd3.3x generell nicht verschlüsselt (Siehe Logfile!)
```

#### Passive

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **Parameter wird abhängig vom Setup/Programmversion benötigt.**

Definition für aktiven oder passiven Client. Generell geht das Camd3.3x-Protokoll von einem aktiven Client aus. Es kann aber unter bestimmten Umständen bei manchen Clients (meistens plugin) zur Schwierigkeiten kommen. In diesem Fall

```
Passive=1
```

eintragen.

```
Empfehlung:
Passive=0
```

#### NoCrypt

Gibt eine IP oder einen Bereich an, in dem auch unverschlüsselte Clients Zugriff haben. Dieser Parameter kan mehrfach angegeben werden.

```
Beispiele:
NoCrypt=127.0.0.1                   ---> Client mit IP 127.0.0.1 (localhost) darf unverschlüsselt zugreifen.
NoCrypt=192.168.0.0-192.168.255.255 ---> Clients mit IP zwischen 192.168.0.0 und 192.168.255.255 dürfen unverschlüsselt zugreifen.
```

Verschlüsselte Clients haben grundsätzlich Zugriff!

**\[camd35\]**

#### Port

Gibt den **UPD**\-Port für camd3.5x/3.6x Serverdienst an. Bei Port=0 wird dieser Dienst nicht aktiviert.

```
Anmerkung:
Dieses Protokoll verschlüsselt grundsätzlich und bildet den Schlüssel aus dem Benutzernamen.
```

**\[radegast\]**

#### Port

Gibt den **TCP**\-Port für Radegast-Serverdienst an. Bei Port=0 wird dieser nicht aktiviert.

```
Achtung:
Dieses Protokoll kann zwar verschlüsseln, ist aber derzeit im Cardserver nicht implementiert!
```

#### User

Benutzereinstellung, die für diesen Client gilt.

```
Siehe "Account". Dieser Parameter ist optional.
```

#### Allowed

*bitte ergänzen*

**\[serial\]**

+   Generell können folgende Clients angeschlossen werden:
+   hsic ---> humax sharing interface client
+   sssp ---> simple serial sharing protocol
+   bomba ---> Reciever mit BOMBA-Firmware (z.B. Arion, Ferguson, OpenBox6xx, PowerSky, NewStar, SatStar, TERMAL/OloMPiA, He@d, OpenSky...)
+   dsr9500 sharing protocol

Für jeden Client muss ein "Device="-Eintrag erfolgen.

#### Device

```
<user>@<device>[:baud}][?option1=value1[&option2=value2]]
```

+   user ---> Account, der für diesen Client verwendet wird
+   device ---> Die serielle Schnittstelle, an der der Client angeschlossen ist
+   baud ---> Option = Baudrate (default=115200)
+   option (2 Möglichkeiten):
+   timeout ---> Maximale Zeit eines Empfangs (default=50ms)
+   delay ---> Zusätzliche Pause in ms beim Senden zwischen jedem einzelnen Zeichen (default=0)

**\[gbox\]**

+   Das GB\*X-Modul im MPCS arbeitet als GB\*X-Server, CS2GB\*X und GBOX2CS.
+   Es können also

```
- mehrere GB*X-Server miteinander verbunden (GB*X-Server),
- von Clients des MPCS auf die GB*X-Karten zugegriffen,
- und Lokale Karten oder Karten/EMUS von Remote-Servern ins GB*X-Netzwerk zurück geshared werden
```

Die einzelnen GB\*X-Server werden als Reader in der mpcs.server (bis vers. 0.9.e) bzw. in der mpcs.reader (ab version 1.0) eingetragen.

#### Password

Eigenes Passwort der gbox. Dieser Passwort muss in der D-Line des GB\*X-Servers eingetragen werden.

#### MaxDist

Bis zu welcher Distanz sollen Karten von GB\*X-Servern angenommen und verwendet werden (default=5).

#### CardInfos

Pfad zu der Datei, in der die Karteninformationen abgelegt werden, die das GB\*X-Mudol von den angeschlossenen GB\*X-Servern erhält. Die Datei muss im beschreibbaren Bereich liegen,

#### IgnoreList

Pfad zur ignore.list. In der ignore.list sind Provider aufgelistet, die vom GB\*X-Modul ignoriert werden sollen.

```
Das Format der Datei muss wie folgt aussehen:
G:{0100000A}#Kommentar
G:{0100000B}
Die ersten zwei Bytes sind die CaID und die letzten zwei Bytes die ProviderID
```

Dieser Parameter ist optional.

#### Locals

Das GB\*X-Modul kann Karten in das GB\*X-Modul zurücksharen. Dazu kann hier die Liste der Karten eingetragen werden.

```
Beispiel:
17220000,18010501,0D220400
Die ersten zwei Bytes sind die CaID und die letzten zwei Bytes die ProviderID, getrennt duch ein ','
```

Dieser Parameter ist optional.

#### Reader

ECM's aus dem GB\*X-Netzwerk für diese Karten werden an Lokale Reader (mouse), Remote-Camd3 und Remte-Newcamd Server weitergeleitet.

## mpcs.user

**V1.0 (KrazyIvan Version)**

```
[account]
User       = user
Pwd        = 54546
MonLevel   = 2
Uniq       = 1
Group      = 1
AU         = 1
EndDate    = 2009/01/05
Betatunnel = 1833.0081:1702,1833.0082:1702
```

### **Variablenbeschreibung**

#### \[account\]

Grundsatz: Es können mehrere \[account\]-sections erstellt werden. Jede vollständige section wird dann als account verwendet. So kann für jeden user ein separater Account mit unterschiedlichen Zugangsdaten und Berechtigungen angelegt werden. Z.B.: \[dbox-Wohnzimmer\] mit allen Rechten, jedoch \[dbox-Kinderzimmer\] nur mit Rechten, die den Jugendschutz berücksichtigen. Oder \[Dyndns-IP\], die nur ein bestimmtes PayTV- Paket erhalten soll.

#### User

User-Name. Muss gesetzt sein!

```
User = Max
```

#### Pwd

Passwort. Muss gesetzt sein!

```
Pwd = MaxPasswort
```

#### MonLevel

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Hier kann der Monitorlevel des einzelnen User festgelegt werden.

```
MonLevel = 0  Kein Zugriff auf Monitorfunktion
MonLevel = 1  Client sieht nur Serverprozesse und seine eigenen Prozesse
MonLevel = 2  Client sieht alle Prozesse, kann aber keine Aktion auslösen
MonLevel = 3  Client sieht alle Prozesse und kann die die UserDB neu laden.
MonLevel = 4  uneingeschränkter Zugriff auf die Monitorfunktion.
```

Es empfielt sich einen reinen Monitoraccount anzulegen. Zudem sollte in der [mpcs.conf](#mpcs.conf) der MonLevel auf 0 gesetzt werden. Dann kann man den Monitorlevel gezielt in der mpcs.user setzen. Wenn dieser optionale Parameter im User Account fehlt wird der MonLevel aus der mpcs.conf angenommen.

```
[account]
User       = Monitor
Pwd        = 54546
MonLevel   = 4
```

#### Uniq

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Mit Uniq wird geregelt ob sich ein Client gleichzeitig nur einmal oder mehrmals anmelden darf

```
Uniq = 0 (disable) default
Uniq = 1 (Client darf sich nur einmal anmelden per Username)
```

#### ab MPCS 1.0n

```
Uniq = 0 (disable) default
Uniq = 1 (per IP)
Uniq = 2 (per Port)
Uniq = 3 (only 1 user allow for all port)
```

#### Group

[![](/images/d/dc/HakenRot.png)](/wiki/Datei:HakenRot.png) **Parameter wird benötigt**

Jeder User muss in einer oder mehrere Gruppen eingetragen sein. Damit lässt sich dann bestimmen, auf welche Reader, sofern mehrere vorhanden sind, dieser Client Zugriff haben soll. Gültige Werte 1-32

```
Group = <grp>[,<grp>][,<grp>]...
```

```
Group = 1      (eine Gruppe)
Group = 1,4,5  (mehrere Gruppen)
```

#### AU

Mit den Eintragungen in diesem Abschnitt kann gesteuert werden, ob für bestimmte oder alle Reader AU zugelassen werden soll. Gültige Werte:

```
AU=     0                 -> kein AU
AU=     1                 -> Auto (ab 1.0)
AU=     <gültiger Reader> -> AU für eingetragenen Reader
```

Zum AU ist im allgemeinen zu sagen:

+   Sparsamer Umgang mit AU Clients ist besser für den MPCS
+   Ein AU Client erhält die Kartendaten (Sicherheit)
+   Benutzung der EmmCache Funktion vermeidet zu hohe Belastung des Readers

#### Enddate

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Hier kann ein Ende-Datum für das Nutzungsrecht des Clienten am Server eingegeben werden. Mit Ablauf dieses Datums hat der Client keine Möglichkeit mehr, auf den Server zuzugreifen!

#### Betatunnel

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Bis zur Version 0.9.e ist hier eine Betacrypt-Tunnelung möglich. Im Beispiel werden 1833.0081 und 1833.0082 jeweils auf 1702 getunnelt.

Betatunnel = 1833.0081:1702,1833.0082:1702

Ab Version 1.0n ist dieser Parameter nicht mehr erforderlich. Allerdings muss dann die Caid des Betatunnels im mpcs.reader manuell freigeben sein, Bsp: CAID=1702,1833. Eine CAID-Freigabe über die .services reicht nicht. Der Mpcs bündelt dann ggf. CCCam-HD-1702 und 1833-HD-Anfragen auf die CAID 1702 auf den Reader und beantwortet diese aus einem gemeinsamen Cache.

*bitte prüfen und eventuell überarbeiten!*

## mpcs.reader(V1.0)

Tritt an die Stelle von mpcs.server (bis einschließlich Version 0.9.e!)

**V1.0 (KrazyIvan Version)**

```
[reader]
blockua          = 1
blockga          = 1
blocksa          = 1
AU               = 1
Enable           = 1
Label            = myreader
Protocol         = mouse
Device           = /dev/ttyS0
#pincode         = 7291
#BaudRate	  = 16000
EMMCache         = 1,1,10
Detect           = CD
Group            = 1,2,3
Fallback         = 0
CAID	          = 0666
ChID             = 0666:02,03,04,05,06,07,0E
```

### **Variablenbeschreibung**

#### \[reader\]

Grundsatz: Es können mehrere \[reader\]-sections erstellt werden. Jede vollständige section wird dann als reader verwendet. Beispiele: \[NG²\], \[phoenix\], \[mastercrd\] usw.

#### blockua

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*unique address-EMMs, entspricht D3 bei PW*

```
blockua = 0 (nicht blocken)
blockua = 1 (Blocke EMMs, die an die Karte direkt adressiert sind)
```

#### blockga

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*global address-EMMs, entspricht D0 bei PW*

```
blockga = 0 (nicht blocken)
blockga = 1 (Blocke EMMs, die an alle Karten gehen)
```

#### blocksa

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

*shared address-EMMs, entspricht D2 bei PW*

```
blocksa = 0 (nicht blocken)
blocksa = 1 (Blocke EMMs, die an bestimmte Gruppen von Karten gehen)
```

#### AU

Zum AU ist im allgemeinen zu sagen:

+   Sparsamer Umgang mit AU Clients ist besser für den MPCS
+   Ein AU Client erhält die Kartendaten (Sicherheit)
+   Benutzung der EmmCache Funktion vermeidet zu hohe Belastung des Readers

```
AU = 0 (Autoupdate aus)
AU = 1 (Autoupdate ein)
```

#### Enable

```
Enable = 0 (Reader aus)
Enable = 1 (Reader ein)
```

#### Label

[![](/images/d/dc/HakenRot.png)](/wiki/Datei:HakenRot.png) **Parameter wird benötigt**

Name der Readers. Pflichtfeld! Wird benötigt, um die Zuordnung von AU in mpcs.user zu ermöglichen.

```
Label = Mouse
```

#### Protocol

[![](/images/d/dc/HakenRot.png)](/wiki/Datei:HakenRot.png) **Parameter wird benötigt**

Kommunikationsprotokoll für den Reader.

```
Protocol = mouse (Lokaler Cardreader)
Protocol = internal (Alle Cardreader mit einem "Device=/dev/sciX")
Protocol = camd35 (Cascading - camd 3.5-kompatibler Remote-Server)
```

#### Device

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **Parameter wird abhängig vom Setup/Programmversion benötigt.**

Bei lokalem Reader (mouse-mode) das Device, an dem der Reader angeschlossen ist.

```
Device = /dev/ttyS0   (Reader an COM1 (bei Linux i386 und Windows))
Device = /dev/tts/1   (Reader an COM2 (Linux dbox2 mit multicam))
Device = /dev/ttyUSB0 (Reader an USB  (Linux i386))
```

Hinweis: Der Zähler für die Device liegt immer um 1 hinter der Nummer des COM-Ports! Also ttyS0 = COM1, tts/1 = COM2. Bei Benutzung neuerer PC sind kaum noch serielle Anschlüsse vorhanden, sodass in diesen Fällen USB 2.0 benutzt werden muss. Hier am besten im Gerätemanager des PC (Windows) nachschauen, welcher COM-Port dem Reader zugewiesen wurde und in die Device den Port -1 eintragen!

#### pincode

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **Parameter wird abhängig vom Setup/Programmversion benötigt.**

Bei Readern, die mit einem Pincode arbeiten, muss dieser hier eingetragen werden.

```
Pincode = 12345
```

#### BaudRate

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **Parameter wird abhängig vom Setup/Programmversion benötigt.**

Für Reader, deren Geschwindigkeit über eine Baudrate eingestellt werden kann, kann hier ein Eintrag erfolgen.
Verwendet man am Reader eine höhere Taktfrequenz als für die Karte vorgesehen (Übertakten/ Overclocking), muß hier die Baudrate nach folgender Formel angepasst werden:

```
Baudrate = 9600 / originalCardMHz * newCrystalMHZ
```

```
Baudrate =  9600  (entspricht default)
Baudrate = 16000  (6MHz-Karte wird mit 10MHz betrieben | 9600 / 6 * 10 = 1600)
```

Bei dem Gebrauch von USB-Wandlern ist darauf zu achten, dass der PL2303 nur Standardbaudraten unterstützt, und somit der Betrieb einer übertakten Karte nicht möglich ist. Es wird die Verwendung eines Wandlers mit FTDI empfohlen.

#### PTS

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **Parameter wird abhängig vom Setup/Programmversion benötigt.**

```
PTS=0
PTS=1
```

```
Diese Einstellung wirkt nur bei VIA && Cryptoworks Karten
Einstellung PTS=0 sollte bei S02 Karten benutzt werden.
```

#### EMMCache

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Definition des EMM-Caches für den Reader. Derzeit nur für lokale Reader. Betrifft die AU-Funktion. Damit kann entschieden werden, ob Update-Kommandos vom Provider immer oder nur unter bestimmten Voraussetzungen geschrieben werden. Format:

```
EmmCache = <usecache>,<rewritte>,<logging>
```

```
* <usecache> 0 = cache aus
* <usecache> 1 = cache ein

* <rewrite>  n = Wie oft ein und das selbe Update-Kommando geschrieben wird. Gilt nur bei <usecache> 1

* <logging>  0 = Einträge im Logfile nur im Fehlerfall
* <logging>  1 = Nur geschriebene Emm's keine verworfenen (skipped)
* <logging>  2 = alle emm's werden im Log vermerkt
```

Laut [KrazyIvan](http://www.streamboard.tv/wbb2/thread.php?postid=290619#post290619 "streamboard-post:290619") werden folgende Parameter für <logging> verwendet:

```
   1) only error EMM
   2) 1 + written EMM only
   3) 2 + skip EMM only
   4) 3 + blocked EMM only
   5) 4 + disable EMM
6-10) still not yet.. so every number show much info in the log about EMM
```

Empfehlung:

```
EmmCache = 1,3,2
```

#### Detect

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Statusleitung für "Karte ist drin".

```
Detect = CD   (Carrier Detect)
Detect = DSR  (Data Set Ready)
Detect = CTS  (Clear To Send)
Detect = RING (Ring Indicator)
Detect = NONE (Erkennung wird abgeschaltet, aber es wird immer ein "Karte ist drin" signalisiert!)
Detect = gpio2 ... gpio7 (neu für mipsel-uclibc)
```

+   Inverse Leitung = "!" voranstellen (z.B. "Detect=!CTS")

#### Group

[![](/images/d/dc/HakenRot.png)](/wiki/Datei:HakenRot.png) **Parameter wird benötigt**

Jeder Reader muss in einer oder mehrere Gruppen eingetragen sein. Damit lässt sich bestimmen, welcher Client auf welchen Reader Zugriff hat. Gültige Werte 1-32

```
Group = <grp>[,<grp>][,<grp>]...
```

```
Group = 1      (eine Gruppe)
Group = 1,4,5  (mehrere Gruppen)
```

#### Fallback

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

```
Fallback = 0 (Reader ist kein Fallback-Reader)
Fallback = 1 (Reader ist Fallback-Reader)
```

#### CAID

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Liste gültiger caid's und mapping für diesen Reader. Wird <mask> nicht angegeben, ist <mask> automatisch FFFF. Wird <new caid> nicht angegeben, wird caid nicht verändert. Dieser Parameter ist optional. Wird er nicht gesetzt, sind alle caid's gültig und werden nicht gemapped.

```
CAID=<caid>[&<mask>][:<new caid>],...
```

```
CAID = 1702           (dieser Reader wird nur für caid 1702 benutzt)
CAID = 1702,1722      (dieser Reader wird nur für caid 1702 und 1722 benutzt)
CAID = 1702&FFDF      (hat die gleiche Folge wie die vorhergehende Zeile)
CAID = 1702&FFDF:1702 (dieser Reader wird ebenfalls nur für caid 1702 und 1722 benutzt und die caid wird auf 1702 gemapped.)
CAID = 0100,0600&FF00 (dieser Reader wird für caid 0100 und 0600-06FF benutzt.)
```

#### CHID

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Es können zu einer caid ganz bestimmte CHID's zugelassen werden. (funktioniert nur bei IRDETO!)

```
CHID = 000A
CHID = 000A,000B,000C
```

#### SERVICES

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

Hiermit können die Abfragen nach den Eintragungen aus der mpcs.services eingeschränkt werden.

```
services = sky
```

## mpcs.server

**Bis V. 0.9.e (Team Edition) - ab Version 1.0n tritt an diese Stelle mpcs.reader!**

```
[reader]
Label            = myreader
Protocol         = mouse
Device           = /dev/ttyS0
Detect           = CD
Account          = user1,pwd1
EMMCache         = 1,1,10
BlockNano        =
Group            = 1,2,3
CAID	          = 0666
```

### Variablenbeschreibung

Siehe Erläuterungen zu [mpcs.reader(V1.0)](#mpcs.reader\(V1.0\))! Die dort nicht enthaltenen Parameter werden nachfolgend beschrieben:

#### Account

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **Parameter wird abhängig vom Setup/Programmversion benötigt.**

Benutzername und Passwort beim Zugriff auf Remote-Server (Proxy).

```
Account = Username,Password
```

#### BlockNano

[![](/images/9/93/HourGlass.png)](/wiki/Datei:HourGlass.png)**Diese Option wird nicht mehr verwendet**.

## mpcs.services

!!Achtung!! Es werden nur 32 Abschnitte unterstützt. Bei einem Überlauf (mehr als 32 Abschnitte) fängt der mpcs wieder am Anfang der Datei an.

```
[SkyWelt]
caid=1702,1833
srvid=000C,000D,000E,0010,0013,0015,0016,0017,0018,001A,001B,001C,001D,0022,0024,002A,0032,0034,00A8,0206
```

```
[SkyWeltExtra]
caid=1702,1833
srvid=003C,003D,003E,003F,0040,0042,0043,0044,3331,3393,3394,3395,3397,3398,4461,4462,6FF1,6FFF,7009,700A
```

```
[SkyMCE]
caid=1702,1833
srvid=0096,0097,0098,0099,009A,009B,009C
```

```
[SkyFilm]
caid=1702,1833
srvid=0008,0009,000A,000B,0014,0019,0029,002B,0203,0204
```

```
[SkyHD]
caid=1702,1833
srvid=0081,0082,0083,007E,007F,0080,0084
```

```
[BlueMovie]
caid=1702,1833
srvid=0201,0159,0163,016D
```

```
[SkySport]
caid=1702,1833
srvid=0011,0035,00DD,00DE,00FD,0107,0111,011B,0125,012F,0139,0143,014D,016B,0175
```

```
[SkyBundesliga]
caid=1702,1833
srvid=00DF,00FC,0106,0110,011A,0124,012E,0138,0142,014C,0156,0160
```

```
[SkySelect]
caid=1702,1833
srvid=0012,00FB,00FE,0105,0108,010F,0119,0123,012D,0137,0141,014B
```

```
[BB]
caid=1702,1833
srvid=000F
```

```
[ORF]
caid=0D05,0D95
srvid=32c9,32ca,32cb,32cc,32cd,32ce,32cf,32d0,32d1,32d2,32d3,32d4,32d5,32d6,F1E0,3332,132F,4E27,1330
```

```
[KD]
provid=001101
caid=1801
```

```
[MTVUnlimited]
caid=0B00
srvid=6ff0,6ff1,6fee,6fff,6ff3,6fef
```

```
[Dorcel]
provid=020810
caid=0500
srvid=00CD,00D4,00D7,3786,427F,4280,4285
```

```
[hd+]
caid=1830
srvid=EF10,EF11,EF74,EF75,EF76,277E
```

```
[SF]
caid=0500
srvid=0385,038B,038F,03DE,36B2,36B8,36B3,36B9
```

```
[ArenaFamily]
caid=0D22
srvid=001B,001D,003D,003E,003F,0042,3331,3335,3391,3392,3393,3394,3395,3396,3397,3398,3399,4461,4462,4F7C,6FEE,6FEF,6FF1
```

```
[ArenaFamilyXL]
caid=0D22
srvid=0046,339A
```

```
[ArenaFamilyXXL]
caid=0D22
srvid=0045,339C
```

## mpcs.srvid

Diese Datei wird vornehmlich genutzt um über die Monitorschnittstelle den Channelnamen auszugeben. In der 1.0 Version ist diese Ausgabe bislang defekt.

```
0001:MTV Portugal
0002:MTV Polska
0003:Music Box Russia
0004:VH1 Polska
0005:VIVA Polska
0006:MTV 1
0007:VH1
0008:PREMIERE START
0009:PREMIERE 4
000a:PREMIERE 1
000b:PREMIERE 2
...
..
.
```

## mpcs.ac

Cycles für [Anticascading](/wiki/Anticascading "Anticascading")

Diese Datei wird nur benötigt wenn [Anticascading](/wiki/Anticascading "Anticascading") eingeschaltet ist. Diese Liste dient als Referenz, in welchen Intervallen [ECM](/wiki/ECM "ECM") Requests eingehen sollten. Der letzte Eintrag (\*=7) setzt den Wert für "alle Anderen darüber nicht aufgeführten. Der Wert ist in Sekunden anzugeben.

```
0100:00003D=20
0100:000065=7
0100:00006A=13
0500:020910=30
0500:020A00=15
0500:020A10=15
0500:020A20=15
0500:020A30=15
0500:020A40=15
0500:021500=15
0604:000000=11
0919:000000=20
0961:000000=8
1702:FFFFFF=7
1722:FFFFFF=7
1801:000000=20
4A70:000000=14
*=7
```

## mpcs.cert

```
#
#	this file contains needed Issuer Public Keys -or- Session Keys
#	(currently supported with cryptoworks only)
#
#CAID:reserved:KEY

#sample with IPK for CAID 0D22
0D22:00000000:8000XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

#sample with Session Key for CAID 0D22
0D22:00000000:B5C7XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

## mpcs.guess

```
#
#	mpcs caid guessing table (by len)
#	caid 0500 and 1801 not needed
#	format: <len>:<caid>
#	where <len> is length of ecm in hex
#
29:1762
34:0604
36:0D05
3C:4A70
6E:0919
47:0D05
48:0D05
4C:0B00
50:0D05
51:0D05
54:1702
5A:0B00
67:0B00
71:0D0C
72:4AD0
73:090F
7C:090F
81:090F
85:0D02
91:4AD1
99:0D00
9C:0D02
```

## mpcs.ird

```
;-------------------------------------------
; Irdeto guessing table (by signature)
; format: <byte3>:<byte4-7>:<caid>:<sid>
; all fields in hex
```

# **Beispiel-Konfigurationen**

## PW, arena und MTV

### **Basis**

+   1x Cardreader seriell mit PW Nagra 3 SC (6 Mhz)
+   1x Cardreader USB mit arena Cryptoworks SC (3,58 Mhz)
+   1x Cardreader USB mit MTV Conax SC (3,58 Mhz)
+   Protokoll: newcamd

### **Konfiguration**

#### mpcs.conf

+   newcamd Protokoll
+   Für jede CAID wird ein seperater TCP/IP-Port definiert.

```
[global]
Nice            = -1

LogFile         = /var/log/mpcs/mpcs.log
UsrFile         = /var/log/mpcs/mpcsuser.log
Level           = 15

ClientTimeout   = 5
CacheDelay      = 120

[monitor]
Port            = 988
AULow           = 120
MonLevel        = 1

[newcamd]
Key             = 0102030405060708091011121314
Port            = 12345@1702:000000;23456@0D22:FFFFFF;34567@0B00:FFFFFF
```

#### mpcs.server

+   Die entsprechende Frequenz für die SC wird am Reader eingestellt.
+   Jeder Reader bekommt seine CAID zugewiesen.

```
[reader]
Label          = reader0
Device         = /dev/ttyS2
Protocol       = mouse
EMMCache       = 1,3,2
Detect         = CD
Services       = premiere
CAID           = 1702
Group          = 1

[reader]
Label          = reader1
Device         = /dev/ttyUSB0
Protocol       = mouse
EMMCache       = 1,3,2
Detect         = CD
Services       = arena
CAID           = 0D22
Group          = 2

[reader]
Label          = reader2
Device         = /dev/ttyUSB1
Protocol       = mouse
EMMCache       = 1,3,2
Detect         = CD
Services       = mtv
CAID           = 0B00
Group          = 3

```

#### mpcs.user

+   Jeder Receiver bekommt einen eigenen Account pro CAID.
+   Jeder Account kann sich nur einmal zum Card Server verbinden.

```
[account]
User     = userp1
Pwd      = password1
Uniq     = 1
Group    = 1
Services = premiere
AU       = reader0
IDENT    = 1702:000000
CAID     = 1702
MonLevel = 0

[account]
User     = userp2
Pwd      = password2
Uniq     = 1
Group    = 1
Services = premiere
AU       = reader0
IDENT    = 1702:000000
CAID     = 1702
MonLevel = 0

[account]
User     = usera1
Pwd      = password3
Uniq     = 1
Group    = 2
Services = arena
AU       = reader1
IDENT    = 0D22:FFFFFF
CAID     = 0D22
MonLevel = 0

[account]
User     = usera2
Pwd      = password4
Uniq     = 1
Group    = 2
Services = arena
AU       = reader1
IDENT    = 0D22:FFFFFF
CAID     = 0D22
MonLevel = 0

[account]
User     = userm1
Pwd      = password5
Uniq     = 1
Group    = 3
Services = mtv
AU       = reader2
IDENT    = 0B00:FFFFFF
CAID     = 0B00
MonLevel = 0

[account]
User     = userm2
Pwd      = password6
Uniq     = 1
Group    = 3
Services = mtv
AU       = reader2
IDENT    = 0B00:FFFFFF
CAID     = 0B00
MonLevel = 0
```

#### mpcs.cert

+   Bitte den entsprechenden Cryptoworks Issuer Public Key (IPK) eintragen.

```
0D22:00000000:arena-Cryptoworks-IPK
```

#### mpcs.services

+   Die Service IDs der einzelnen Sender werden zu einer Gruppe zusammengefaßt.

```
[arena]
caid=0D22
srvid=0032,00F4,00DC,00E3,00E1,00F2,00F3,00D4

[premiere]
caid=1702
srvid=000C,000D,000E,000F,0013,0015,0016,0018,001B,001C,001D,0020,0024,002A,0032,00A8,0203,0206

[mtv]
caid=0B00
srvid=6FF1,6FFA,6FEF,6FEE,6FFF,6FF3,6FF0
```

### **Client-Anbindung**

#### **mgcam**

+   in newcamd.list:

```
CWS = 192.168.178.1 12345 userp1 password1 01 02 03 04 05 06 07 08 09 10 11 12 13 14 lan server1
CWS = 192.168.178.1 23456 usera1 password3 01 02 03 04 05 06 07 08 09 10 11 12 13 14 lan server2
CWS = 192.168.178.1 34567 userm1 password5 01 02 03 04 05 06 07 08 09 10 11 12 13 14 lan server3
```

#### **CCcam**

+   in CCcam.cfg:

```
N: 192.168.178.1 12345 userp1 password1 01 02 03 04 05 06 07 08 09 10 11 12 13 14
N: 192.168.178.1 23456 usera1 password3 01 02 03 04 05 06 07 08 09 10 11 12 13 14
N: 192.168.178.1 34567 userm1 password5 01 02 03 04 05 06 07 08 09 10 11 12 13 14
```



## Sky GER HD

### **Basis**

+   1x Cardreader seriell mit Sky GER Nagra 3 SC (6,00 Mhz)
+   Protokoll: newcamd

### **Konfiguration**

#### mpcs.conf

+   newcamd Protokoll
+   Nur für die CAID 1702 wird ein entsprechender TCP/IP-Port definiert.

```
[global]
Nice            = -1

LogFile         = /var/log/mpcs/mpcs.log
UsrFile         = /var/log/mpcs/mpcsuser.log
Level           = 15

ClientTimeout   = 5
CacheDelay      = 120

[monitor]
Port            = 988
AULow           = 120
MonLevel        = 1

[newcamd]
Key             = 0102030405060708091011121314
Port            = 12345@1702:000000
```

#### mpcs.server

+   Die entsprechende Frequenz für die SC wird am Reader eingestellt.
+   Der Reader bekommt nur die CAID 1702 zugewiesen.

```
[reader]
Label          = reader0
Device         = /dev/ttyS1
Protocol       = mouse
EMMCache       = 1,3,2
Detect         = CD
CAID           = 1702
Group          = 1

```

#### mpcs.user

+   Jeder Receiver bekommt einen eigenen Account.
+   Als Betatunnel werden alle Service IDs der HD Sender eingetragen und somit von CAID 1833 auf 1702 gemappt. Die SC bekommt also nur Anfragen über die CAID 1702.

```
[account]
User       = users1
Pwd        = password1
Group      = 1
AU         = reader0
Betatunnel = 1833.0075:1702,1833.0077:1702,1833.007a:1702,1833.007b:1702,1833.007c:1702,1833.007e:1702,1833.007f:1702,1833.0080:1702,1833.0081:1702,1833.0082:1702,1833.0083:1702,1833.0084:1702
IDENT      = 1702:000000;1833:000000
CAID       = 1702,1833
MonLevel   = 0

[account]
User       = users2
Pwd        = password2
Group      = 1
AU         = reader0
Betatunnel = 1833.0075:1702,1833.0077:1702,1833.007a:1702,1833.007b:1702,1833.007c:1702,1833.007e:1702,1833.007f:1702,1833.0080:1702,1833.0081:1702,1833.0082:1702,1833.0083:1702,1833.0084:1702
IDENT      = 1702:000000;1833:000000
CAID       = 1702,1833
MonLevel   = 0

```

Gelegentlich liest man, dass man mit "Betatunnel = 1833.FFFF:1702" einfach alle 1833-ECMs auf 1702 mappen kann. Davon ist allerdings **abzuraten**: Zwar funktioniert dies anscheinend, d.h. HD wird entschlüsselt, allerdings ist diese Konfiguration ineffizient: Es führt dazu, dass bei gemischten Umgebungen mit Clients, die nur 1702 nutzen und solche mit HD-Receivern, die sowohl für 1702 als auch für 1833 eingeloggt sind, die ECMs für die SD-Kanäle je nach Client teilweise mit 1833 (getunnelt) und teilweise mit 1702 bearbeitet werden. Dadurch wird der ECM-Cache ausgehebelt und unter Umständen unnötigerweise zwei Anfragen für denselben Kanal an die Karte geschickt und bearbeitet. Durch die explizite Auflisting der unterstützten ServIDs wie oben werden Anfragen für die SD-Sender auf 1833 von MPCS sofort rejected und die i.d.R. ja selbstlernenden Clients auf der Gegenseite werden die Anfrage über 1702 versuchen.

### **Client-Anbindung**

#### **mgcam**

+   Sowohl für die SD CAID 1702 als auch für die HD CAID 1833 muß nur **eine** Verbindung hergestellt werden.
+   Ein weiteres Mapping auf Seite der mgcam ist nicht nötig.
+   in newcamd.list:

```
CWS = 192.168.178.1 12345 users1 password1 01 02 03 04 05 06 07 08 09 10 11 12 13 14 lan server1
```

#### **CCcam**

+   Sowohl für die SD CAID 1702 als auch für die HD CAID 1833 muß nur **eine** Verbindung hergestellt werden.
+   Ein weiteres Mapping auf Seite der CCcam ist nicht nötig.
+   in CCcam.cfg:

```
N: 192.168.178.1 12345 userp1 password1 01 02 03 04 05 06 07 08 09 10 11 12 13 14
```

# **Fehlersituationen**

## rejected user ident

+   Fehlermeldung: rejected user ident
+   Lösung: In mpcs.user bei dem entsprechenden User noch die IDENT definieren.

# Versionen

## 0.9d

##### **Basis**

+   letzte offizielle mpcs Version von dukat

##### **zusätzliche Features**

+   keine, da orginal

##### **Forum**

+   [mp-cardserver v0.9d - mit quickhack](http://www.streamboard.tv/wbb2/thread.php?threadid=24001 "streamboard-thread:24001") (dukat)

## 0.9d gepatched

##### **Basis**

+   mpcs 0.9d

##### **zusätzliche Features**

+   Cryptoworks und Conax EMMs
+   Patch newcamd Protokoll
+   Nagra Fix für neue Premiere-Karten (N3)
+   Fix für russian NTV+
+   1833to1702 Patch für Premiere HD
+   neuer Conax Reader
+   Conax Pincode
+   Cryptoworks Pincode
+   neues ECM-Mapping

##### **Forum**

+   [Quellcode mpcs0.9d aktuell gepatched](http://www.streamboard.tv/wbb2/thread.php?threadid=24869 "streamboard-thread:24869") (okmikel)

##### **unterstütze SCs**

+   Nagra 2 (ECM, EMM)
+   Nagra 3 (ECM, EMM)
+   Conax (ECM, EMM)
+   Cryptoworks (ECM, EMM)
+   Seca
+   Irdeto

## pre 0.9e Community Edition

##### **Basis**

+   mpcs 0.9d

##### **zusätzliche Features**

+   Patch Cryptoworks und Conax EMMs
+   Patch für das Newcamd-Protokoll
+   Nagra-Fix für neue Premiere-Karten
+   Fix für russian NTV+
+   Premiere HD Patch (siehe Betatunnel) für Nagra3 und Nagra2 (SAT, Kabel Deutschland, Unitymedia (Nagra2)
+   aktuellen reader-conax.zip
+   aktuellen Conax-Diff (Pincode)
+   Cryptoworks-Pincode-Patch
+   PIN-Code-Handling für ORF-Cryptoworks-Karten gefixt
+   Timeout-Patch
+   Patch für User-"IDENT" bei newcamd

##### **Forum**

+   [mpcs-pre\_0.9e\_Community\_edition](http://www.streamboard.tv/wbb2/thread.php?postid=289440#post289440 "streamboard-post:289440") (cherup)

##### **unterstütze SCs**

+   Nagra 2 (ECM, EMM)
+   Nagra 3 (ECM, EMM)
+   Conax (ECM, EMM)
+   Cryptoworks (ECM, EMM)
+   Seca
+   Irdeto

## OSCam 0.99.3a

##### **Basis**

+   mpcs pre 0.9e Community Edition

##### **zusätzliche Features**

+   add support for reader with 6.00 MHz (Mhz option in config, on Linux only),
+   better support for Viaccess EMMs,
+   add support for some Videoguard 2 SCs (e.g. Sky UK and Sky Italia), on Linux only at this time,
+   support for SECA PPV (but you still need to buy the event/film),
+   and some bugs corrections

##### **Forum**

+   [OSCam 0.99.3](http://www.streamboard.tv/wbb2/thread.php?postid=297410#post297410 "streamboard-post:297410") (smurzch2)
+   [OSCam Wiki](http://www.streamboard.tv/oscam/wiki "streamboard:oscam/wiki")
+   [OSCam SVN](http://www.streamboard.tv/svn/oscam/ "streamboard:svn/oscam/")

##### **unterstütze SCs**

+   [aktuelle Liste der unterstützen SCs](http://www.streamboard.tv/oscam/wiki/CardsList "streamboard:oscam/wiki/CardsList")

## MPCS 1.0 beta

##### **Basis**

+   mpcs 0.9e

##### **zusätzliche Features**

+   cache2 problem fix
+   support overclock card custom BaudRate
+   multi AU reader suport per user, also old signle reader way work in mpcs.user
+   also AU per reader can be disbale and enble in mpcs.reader
+   UNIQ=1 now works in way that must be ;-)
+   Crypto EMM, VIA EMM, Conax EMM fix
+   add Blocker UA GA SA (only crypto and irdeto works)
+   auto reload user in mpcs.user if changed.. not need restart mpcs
+   1702:000000 now is use, no need make 1702:FFFFFF map any more
+   and some new extra future and many bug fix

##### **Forum**

+   [MPCS1.0](http://www.streamboard.tv/wbb2/thread.php?postid=290169#post290169 "streamboard-post:290169") (KrazyIvan)

##### **unterstütze SCs**

+   Nagra 2 (ECM, EMM)
+   Nagra 3 (ECM, EMM)
+   Conax (ECM, EMM)
+   Cryptoworks (ECM, EMM)
+   Seca
+   Irdeto

## Windows (cygwin)

#### mpcs-1.01bs-i386-pc-cygwin

Link zur version: [Streamboard-Attachment:11311](http://www.streamboard.tv/wbb2/attachment.php?attachmentid=11311 "streamboard-attachment:11311")

```
Achtung!
* Bitte darauf achten, dass sich die richtige cygwin.dll im gleichen Verzeichnis wie die .exe befindet!
* Funktionsfähig ist die Version 1005.25.0.0. Diese befindet sich auch im Link.
```

##### **Cardserver als Dienst starten**

Verwendet man einen PC als Cardserver, so muss der Cardserver entweder von Hand gestartet oder in den Autostart eingetragen werden. Mithilfe der **Windows-Dienste** kann der cardserver unmittelbar mit dem Hochfahren des Systems gestartet werden.

+   **Voraussetzungen**

mpcs-1.01bs-i386-pc-cygwinn.exe und cygwin.dll im Verzeichnis MPCS (Im Beispiel C:\\MPCS) Microsoft-Tools **instsrv.exe** und **srvany.exe** beides in Windows Resource Kit Tools (WinXP und WinServer2003) enthalten. Windows Resource Kit Tool kann über die Windows-Update-Seite kostenlos herunter geladen werden ([http://microsoft.com/downloads/details...&DisplayLang=en](http://microsoft.com/downloads/details...&DisplayLang=en)).

+   **Einrichtung des Dienstes**

```
Eingabeaufforderung (Start ---> Programme ---> Zubehör ---> Eingabeaufforderung):
"C:\Programme\WindowsResourceKits\Tools\instcrv.exe"Cardserver
"C:\Programme\WindowsResourceKits\Tools\srvany.exe"
Achtung: Die (") bitte unbedingt mit eingeben!
```

+   **Konfiguration des Dienstes in der Registry**

```
Start ---> Ausführen ---> regedit ---> HKEY_LOKAL_MACHINES\System\CurrentControlSet\Services\Cardserver
Wenn ihr den Dienst richtig eingerichtet habt (s.o.), findet Ihr hier einen Schlüssel (Ordner) Parameters.
Wenn nicht, mit Rechtsklick im rechten Fenster (Kontextmenü) Neu ---> Schlüssel wählen und Parameters eingeben

Bei den Parameters muss nun die Zeichenfolge Application angelegt werden:
Wieder Rechtsklick im rechten Fenster (Kontextmenü) Neu ---> Zeichenfolge wählen und als Wert eingeben:
C:\MPCS\mpcs-1.01bs-i386-pc-cygwinn.exe

Dann muss noch die Zeichenfolge AppDirectory angelegt werden:
Wieder Rechtsklick im rechten Fenster (Kontextmenü) Neu ---> Zeichenfolge wählen und als Wert eingeben:
C:\MPCS\
```

+   Das sieht dann in diesem Teil der Registry so aus:

[![](/images/3/35/Reg%2CEditor.jpg)](/wiki/Datei:Reg,Editor.jpg)

+   Starten und Prüfen

```
Start ---> Systemsteuerung ---> Verwaltung ---> Dienste ---> Cardserver ---> Starten
Rechtsklick auf Cardserver ---> Eigenschaften ---> Automatisch
PC neu starten und testen, ob alles automatisch startet und funktioniert. Mit microMon bekommt man da einen hervorragenden Überblick
Am besten sowohl MPCS und microMon mit dem PC automatisch starten.
```

+   Beenden des Dienstes

Wenn man sich zur Einrichtung des MPCS-Servers auf dem PC als Dienst entschieden hat, dann muss man folgerichtig davon ausgehen, dass dieser Dienst mit dem Hochfahren des PC gestartet und mit seinem Herunterfahren wieder beendet wird. Möchte man, aus welchen Gründen auch immer, diesen Dienst manuell beenden bzw. neu starten, empfiehlt es sich, wie folgt vorzugehen:

```
Start ---> Systemsteuerung ---> Verwaltung ---> Dienste ---> Cardserver ---> anhalten, beenden oder neu starten.
```

Eine andere Art der Beendigung bewirkt, dass der Dienst im Hintergrund weiter läuft und es bei einem manuellen Neustart zu Instanzen-Kollisionen kommen kann (Pipe Error). Durch Verknüpfung der Verwaltungsmaske "Dienste" mit dem Desktop kann ein umständliches Durchhangeln über Start zu den Diensten vermieden werden!

**Anmekrung:** Dieses How-To wurde von **Guest\_a\_\*** aus dem Keywelt-Board [\[2\]](http://www.keywelt-board.com/index.php?showtopic=77192) übernommen.

## Router

### Fritzbox 7110

### Fritzbox 7120

### Fritzbox 7170

+   [7170-MPCS thread im Streamboard](http://www.streamboard.tv/wbb2/thread.php?threadid=25471 "streamboard-thread:25471")

### Speedport W920V

### WRT

## STB

### dbox 2

### Dreambox

# Monitoring/ Remote Konfiguration

## MicroMon

##### **Beschreibung**

+   Der [microMon](/wiki/MicroMon "MicroMon") kann die Loggingschnittstelle des MPCS mitschneiden und Statistiken über Clientzugriffe erheben. Zusätzlich ist die Konfiguration der Clients möglich. [MicroMon](/wiki/MicroMon "MicroMon") bietet zudem die Darstellung der Logs von [camd3](/wiki/Camd3 "Camd3"), [newCS](/wiki/NewCS "NewCS"), MBox und GBox an. Auch [Syslog](http://de.wikipedia.org/wiki/Syslog) aus anderen Quellen (z.B. [dbox2](http://de.wikipedia.org/wiki/D-box)) kann dargestellt werden.

##### **Forum**

+   [microMon 2.n \[Thunderstorm\]](http://www.streamboard.tv/wbb2/thread.php?postid=291318#post291318 "streamboard-post:291318") (Alno)

## MPCS Control Center

# allgemeine Links

## Forum Streamboard

+   [MPCS Forum im Streamboard](http://www.streamboard.tv/wbb2/board.php?boardid=214 "streamboard-board:214")
+   [Thread Wiki-Doku MPCS](http://www.streamboard.tv/wbb2/thread.php?threadid=25472 "streamboard-thread:25472") (Alno, wiwe)

## Know How

+   [Grundlagen Zugangsberechtigungssystem (CSA, ECM, EMM, CA-Systeme)](http://de.wikipedia.org/wiki/Zugangsberechtigungssystem)

# Credits

+   An **dukat** (Streamboard), den **Vater von MPCS**.
+   An **KrazyIvan** (Streamboard), der MPCS zur Version 1.0n weiterentwickelt hat und auch fortführt.
+   An **smurzch2** (Streamboard), für die Weiterführung des MPCS oscam als Open Source.