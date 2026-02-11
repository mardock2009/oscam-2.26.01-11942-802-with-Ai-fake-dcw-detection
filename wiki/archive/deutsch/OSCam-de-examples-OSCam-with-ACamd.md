> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/examples/OSCam with ACamd

## Inhaltsverzeichnis

+   [1 OSCam <---> ACamd mit vPlug oder OSEmu](#OSCam_<--->_ACamd_mit_vPlug_oder_OSEmu)
    +   [1.1 ACamd](#ACamd)
    +   [1.2 vPlug](#vPlug)
    +   [1.3 Configuration OSCam](#Configuration_OSCam)
        +   [1.3.1 oscam.user](#oscam.user)
    +   [1.4 Configuration ACamd](#Configuration_ACamd)
        +   [1.4.1 cardclient.conf](#cardclient.conf)
        +   [1.4.2 smartcard.conf](#smartcard.conf)
        +   [1.4.3 ACamd\_PMT.txt](#ACamd_PMT.txt)
    +   [1.5 Installationsbeispiele](#Installationsbeispiele)
        +   [1.5.1 DVBViewer Pro](#DVBViewer_Pro)
            +   [1.5.1.1 ACamd](#ACamd_2)
            +   [1.5.1.2 vPlug](#vPlug_2)
    +   [1.6 Downloads](#Downloads)
        +   [1.6.1 ACamd](#ACamd_3)
        +   [1.6.2 vPlug](#vPlug_3)
    +   [1.7 Screenshots](#Screenshots)
        +   [1.7.1 ACamd-Monitor](#ACamd-Monitor)
            +   [1.7.1.1 ACamd als CS-Client](#ACamd_als_CS-Client)
            +   [1.7.1.2 ACamd während vPlug als EMU arbeitet](#ACamd_während_vPlug_als_EMU_arbeitet)
        +   [1.7.2 vPlug-Monitor](#vPlug-Monitor)
            +   [1.7.2.1 ECM/EMM über ACamd](#ECM/EMM_über_ACamd)
            +   [1.7.2.2 vPlug als CA-EMU](#vPlug_als_CA-EMU)
    +   [1.8 Configurationsbeispiele](#Configurationsbeispiele)
        +   [1.8.1 cs357x (udp)](#cs357x_\(udp\))
        +   [1.8.2 newcamd (hd+)](#newcamd_\(hd+\))
            +   [1.8.2.1 oscam.conf](#oscam.conf)
            +   [1.8.2.2 oscam.dvbapi](#oscam.dvbapi)
            +   [1.8.2.3 oscam.provid](#oscam.provid)
            +   [1.8.2.4 oscam.server](#oscam.server)
            +   [1.8.2.5 oscam.services](#oscam.services)
            +   [1.8.2.6 oscam.srvid](#oscam.srvid)
            +   [1.8.2.7 oscam.user](#oscam.user_2)
            +   [1.8.2.8 cardclient.conf](#cardclient.conf_2)
            +   [1.8.2.9 ACamd\_PMT.txt](#ACamd_PMT.txt_2)
        +   [1.8.3 ACamd und OSEmu](#ACamd_und_OSEmu)
            +   [1.8.3.1 ACamd.ini](#ACamd.ini)
            +   [1.8.3.2 ACamd\_PMT.txt](#ACamd_PMT.txt_3)
            +   [1.8.3.3 Serverseite](#Serverseite)

## OSCam <---> ACamd mit vPlug oder OSEmu

### ACamd

Da in HTPC neben **linux**\-basierenden Anwendungen (z.B. VDR) zunehmend kommerzielle oder im Selbstbau **windows**\-basierende Programme verwendet werden, sind Konfigurationen für ACamd mit OSCam interessant.

ACamd ist eine Anwendung von **appiemulder**, die offensichtlich leider nicht mehr weiterentwickelt wird [\[1\]](http://www.sat4all.com/forums/ubbthreads.php/topics/1426161/ACamd_voor_Windows#Post1426161). Die Boardsprache ist holländisch und erschließt sich eigentlich nur jemand, der vom Niederrhein stammt. Anwendung und Parameter sind aber in englisch verfasst! Einen Download-Link gibt es weiter unten.

Bisher bekannte Windows-Anwendungen, mit denen ACamd läuft:

```
DVBViewer-Pro
ProgDVB
Mediacenter
Mediaportal
```

Verbaute Karten:

```
z.B.
Technotrend TT S2 3200
```

ACamd bietet zahlreiche Verbindungsmöglichkeiten zu Card-Servern an. In diesem Beispiel ist die einfachste Möglichkeit: **Camd35-Protokoll (UDP)** gewählt worden.

### vPlug

Neben den Möglichkeiten von CS stellt sich natürlich auch die Frage, inwieweit ein CA-EMU noch zusätzlich Keys für z.B. ORF, AustriaSat oder Hustler TV zur Verfügung stellen kann.

Hier bietet sich das Plugin **vPlug** an, das wie ACamd zB in DVBVierwer Pro, ProgDVB oder Mediacenter eingebunden werden kann. Dieses Plugin wurde von **Vahid** gebaut. Hier findet Ihr den entsprechenden Thread [\[2\]](http://dvbn.happysat.org/viewforum.php?f=63). Leider wird dieses Plugin seit einiger Zeit wohl nicht mehr weiter eintwickelt. Das Plugin gibt es als Client- und als Server-Version. In diesem Beitrag wird nur die erprobte Client-Version behandelt, da ja OSCam als Server verwendet wird. vPlug enthält eine Reihe sehr guter Tools u.a. zur Analyse der von den Sendern ausgesandten streams (Monitor) und zum Update der SIDs und Keys.

Installationsbeispiele gibt es weiter unten, ebenfalls einen Download-Link.


### Configuration OSCam

#### oscam.user

Beispiel mit Bevorzugung bestimmter caid's und Betatunnel für HD

```
[account]
user                       = user1
pwd                        = pwd1
expdate                    = 2020-12-31
group                      = 1
au                         = mouse1
services                   = s**welt,s**weltextra,s**film,s**hd,music+choice+extra
caid                       = 1702,1833,0D05
betatunnel                 = 1833.0075:1702,1833.0077:1702,1833.007A:1702,1833.007B:1702,1833.007C:1702,1833.007D:1702,1833.007E:1702,
                             1833.007F:1702,1833.0080:1702,1833.0081:1702,1833.0082:1702,1833.0083:1702,1833.0084:1702
suppresscmd08              = 0
```



### Configuration ACamd

#### cardclient.conf

```
# camd35 client
<camd35>:<serverip>:<au[0,1]>:<caid>:<user>:<pwd>
```

Beispiel

```
camd35:192.168.1.111:1:1702/FFFF:user1:pwd1
```

#### smartcard.conf

Autodetected für ACS 0383/0384 cards (Z/non - Zmode)

```
irdeto:[0384/1702] PLAIN   # für Sky-Irdeto-Card
```

#### ACamd\_PMT.txt

```
I:04:0D05:00000000:ORF # Ignore, da ORF über EMU (vPlug)
B:1833:00000000:1702:00000000:HD-Mapping
```



### Installationsbeispiele



#### DVBViewer Pro

**Installationspfade (Ordner innerhalb von DVBViewer Pro):**

##### ACamd

+   **Plugins** (Die nachfolgenden Files werden u.a. bei der Installation von ACamd erzeugt)
    +   ACamd\_PMT.txt
    +   cardclient.conf
    +   smartcard.conf



##### vPlug

+   **Plugins** (Es werden u.a. folgende Files bei der Installation von vPlug angelegt:)
    +   v\_dcw\_sharing.ini
    +   v\_emm.ini
    +   v\_keys.db
    +   v\_sids.db
    +   vhelpers.mdl
    +   vplug.dll
    +   vplug.ini
    +   vPlugGUI.Log

+   **MDPlugins** Alternativ kann man auch diesen Ordner anlegen und vPlug dort installieren. ACamd **muss** aber immer in **Plugins** installiert werden!



### Downloads

#### ACamd

Hier kann die aktuelle Version von ACamd heruntergeladen werden [\[3\]](http://streamboard.de.vu/wbb2/portal_subdb.php?dbid=44)

#### vPlug

Link zum Download der aktuellen Version [\[4\]](http://streamboard.de.vu/wbb2/portal_subdb.php?dbid=44)


### Screenshots

#### ACamd-Monitor

##### ACamd als CS-Client

[![](/images/6/6a/ACamd_hardcopy_Monitor.png)](/wiki/Datei:ACamd_hardcopy_Monitor.png)

Hier bezieht ACamd die nötigen ECM über camd35(udp) vom OSCam-Server. Die Zeiten sind im grünen Bereich!


##### ACamd während vPlug als EMU arbeitet

[![](/images/a/a5/ACamd_hardcopy_Monitor_-EMU-.png)](/wiki/Datei:ACamd_hardcopy_Monitor_-EMU-.png)

ACamd hat den Sender über CS nicht gefunden. Da macht er nichts mehr und überlässt vPlug die Arbeit.


#### vPlug-Monitor

##### ECM/EMM über ACamd

[![](/images/f/f0/VPlug_hardcopy_Monitor_-neu.png)](/wiki/Datei:VPlug_hardcopy_Monitor_-neu.png)

Der vPlug-Monitor zeigt an, dass die ECM über CS kommen (AutoECM) und er nichts machen muss. Interessant sind hier aber auch die zahlreichen Auskünfte über die Bestandteile des Streams sowie CAID's, PID's und dergleichen.


##### vPlug als CA-EMU

[![](/images/f/f4/VPlug_hardcopy_Monitor_EMU-neu.png)](/wiki/Datei:VPlug_hardcopy_Monitor_EMU-neu.png)

Während ACamd ruht, arbeitet nun vPlug als CA-EMU. Man erleichtert vPlug die Arbeit, indem man die nicht benötigten CAIDs auf ignore setzt. Siehe auch die Spalte *ignored*, wo in diesen Fällen ein *yes* steht. In dem Beispiel wird ein HD-Sender decrypted.



### Configurationsbeispiele

#### cs357x (udp)

Diesem Protokoll und einer Nagra/Irdeto Card (S2) liegt die oben beschriebene [Configuration](#Configuration_OSCam) zu Grunde.

#### newcamd (hd+)

User Empedokles hat mit dieser Configuration gute Erfahrungen gemacht:

**Soft- und Hardware-Umgebung**

```
Virtueller Linux-Rechner mit Ubuntu 11.10:
Smartcard: HD PLUS (HD02)
Kartenleser: Easymouse
OSCAM: OSCAM-1.20-svn_7940-pcsc-smargo-webif-Ubuntu32_10.10
Windows-PC mit Windows 7 Prof. 64 Bit:
DVBViewer 4.9.6.0
ACamd: 0.6.2.0
```

**Hier die wichtigsten Konfigurationsdateien:**

##### oscam.conf

\[global\]

```
nice = -1
WaitForCards = 1
preferlocalcards = 1
lb_mode = 1
lb_save = 150
logfile = stdout
maxlogsize = 256
Saveinithistory = 1
```

\[webif\]

```
httpPort = 3001
httpUser = user
httpPWD = pass
httpRefresh = 10
httpAllowed = 0.0.0.0-255.255.255.255
httpReadOnly = 1
```

\[newcamd\]

```
Key = 0102030405060708091011121314
Port = 50002@1843:000000,003411,00008011
```

##### oscam.dvbapi

```
P: 1843 # prioritise CAID 1843
I: 1839 # ignore provider ID 1839 for every CAID
```

##### oscam.provid

```
1843:000000 | HD+ HD02|19.2E|de
1843:003411 | HD+ HD02|19.2E|de
1843:008011 | HD+ HD02|19.2E|de
```

##### oscam.server

(keys bitte selbst eintragen)

\[reader\]

```
Label = hdplus02
Protocol = mouse
Device = /dev/ttyUSB0
Mhz = 357
cardmhz = 357
Detect = CD
Group = 1
rsakey =  BF*********************************************************
boxkey = A7**************
CAID = 1843
EMMCache = 1,3,14
```

##### oscam.services

\[hdplus02\]

```
caid = 1843
provid = 000000,003411,008011
srvid = 277E,EF10,EF11,EF14,EF15,EF74,EF75,EF76,EF77,5273,5274,1519
```

##### oscam.srvid

```
1843:EF10|Astra HD+|RTL HD|TV|
1843:EF11|Astra HD+|VOX HD|TV|
1843:EF74|Astra HD+|SAT.1 HD|TV|
1843:EF75|Astra HD+|ProSieben HD|TV|
1843:EF76|Astra HD+|kabel eins HD|TV|
```

##### oscam.user

\[account\]

```
User = User1
Pwd = Pass1
Group = 1
AU = 1
```

##### cardclient.conf

```
newcamd:{IP bzw. hostname vom virt. Rechner}:50002:1/1843/FFFF:User1:Pass1:0102030405060708091011121314
```

##### ACamd\_PMT.txt

(ohne die Ignore-Einträge gehen manche Sender nicht, weil zu viele CAID's kommen)

```
P:1843:00000000:caid only
I:098c:00000000:Test
I:09c4:00000000:Test
I:1860:00000000:Test
I:1830:00000000:Test
```

#### ACamd und OSEmu

OSEmu bietet die Möglichkeit, bestimmte Sender auch ohne vPlug zu empfangen. Das hat den Vorteil, dass die Dekodierung nicht mehr durch ein Plugin im Receiver sondern einen virtuellen Reader beim OSCam-Server zentral stattfindet. [Hier](http://www.streamboard.tv/wbb2/thread.php?threadid=39010 "streamboard-thread:39010") ist der Thread, in dem darüber ausführlich geschrieben wird.

Das Plugin vPlug sollte, sofern bisher benutzt, deaktiviert werden!

##### ACamd.ini

Monitor von ACamd anzeigen lassen. Beim DVBViewerPro geht das über den Tab "Plugins". Im Monitor links außen den Tab "Actions" anklicken. Es sollten folgende Haken gesetzt sein:



[![](/images/9/93/ACamd_Actions.png)](/wiki/Datei:ACamd_Actions.png)



##### ACamd\_PMT.txt

Falls wegen der Benutzung von vPlug ein ignore für CAID 0D05 gesetzt wurde, muss diese Zeile auskommentiert werden.

[![Einstellung für OSEmu](/images/5/5f/ACamd_PMT.txt.png)](/wiki/Datei:ACamd_PMT.txt.png "Einstellung für OSEmu")

Mehr ist auf der Clientseite nicht zu tun. In diesem Beispiel bezieht der Receiver weiterhin über cs357x (UDP) seine Informationen zur Freischaltung eines Channels, z.B einmal über den Reader mit einer Karte oder über den virtuellen Reader mit OSEmu.

##### Serverseite

**oscam.user**
Darauf achten, dass der ACamd-Client auch die Gruppe des OSEmu benutzen darf.
Falls bestimmte CAIDs zugeordnet sind, ggf. um die vom OSEmu bedienten CAIDs ergänzen.
Falls Services verwendet werden, die entsprechenden Services ergänzen.