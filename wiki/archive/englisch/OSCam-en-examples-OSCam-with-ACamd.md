> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/examples/OSCam with ACamd

## Inhaltsverzeichnis

+   [1 OSCam <---> ACamd and vPlug](#OSCam_<--->_ACamd_and_vPlug)
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

## OSCam <---> ACamd and vPlug

### ACamd

Since in addition to LINUX-based HTPC applications (eg, VDR) increasingly commercial or Do-It-Yourself WINDOWS-based programs are used, are configuations for ACamd with OSCam interesting.

ACamd is developed by **appiemulder** [\[2\]](http://www.sat4all.com/forums/ubbthreads.php/topics/1426161/ACamd_voor_Windows#Post1426161). Board language is Dutch. Application and parameters are in English.

Previously known WINDOWS-applications:

```
DVBViewer-Pro
ProgDVB
Mediacenter
```

Built-in tv-cards:

```
z.B.
Technotrend TT S2 3200
```

ACamd has many opportunities to link to card servers. The easiest option is chosen **Camd35-Protokoll(UDP)**.

### vPlug

Neben den Möglichkeiten von CS stellt sich natürlich auch die Frage, inwieweit ein CA-EMU noch zusätzlich Keys für z.B. ORF, AustriaSat oder Hustler TV zur Verfügung stellen kann.

Hier bietet sich das Plugin **vPlug** an, das wie ACamd zB in DVBVierwer Pro, ProgDVB oder Mediacenter eingebunden werden kann. Dieses Plugin wurde von **Vahid** gebaut. Hier findet Ihr den entsprechenden Thread [\[3\]](http://dvbn.happysat.org/viewforum.php?f=63). Das Plugin gibt es als Client- und als Server-Version. In diesem Beitrag wird nur die erprobte Client-Version behandelt, da ja OSCam als Server verwendet wird. vPlug enthält eine Reihe sehr guter Tools u.a. zur Analyse der von den Sendern ausgesandten streams (Monitor) und zum Update der SIDs und Keys.

Installationsbeispiele gibt es weiter unten ebenfalls einen Download-Link.


### Configuration OSCam

#### oscam.user

Example with preference to certain CAID's and betatunnel for HD

```
[account]
user                       = user1
pwd                        = pwd1
expdate                    = 2020-12-31
group                      = 1
au                         = mouse1
services                   = s**welt,s**weltextra,s**film,s**hd,music+choice+extra
caid                       = 1702,1833,0D05
betatunnel                 = 1833.0075:1702,1833.0077:1702,1833.007A:1702,1833.007B:1702,1833.007C:1702,1833.007D:1702,1833.007E:1702,1833.007F:1702,
                             1833.0080:1702,1833.0081:1702,1833.0082:1702,1833.0083:1702,1833.0084:1702
suppresscmd08              = 0
```



### Configuration ACamd

#### cardclient.conf

```
# camd35 client
<camd35>:<serverip>:<au[0,1]>:<caid>:<user>:<pwd>
```

example

```
camd35:192.168.1.111:1:1702/FFFF:user1:pwd1
```



#### smartcard.conf

Autodetected for ACS 0383/0384 cards (Z/non - Zmode)

```
irdeto:[0384/1702] PLAIN   # für Sky-Irdeto-Card
```



#### ACamd\_PMT.txt

```
I:04:0D05:00000000:ORF # Ignore, because ORF via EMU
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

Hier kann die aktuelle Version von ACamd heruntergeladen werden [\[4\]](http://streamboard.de.vu/wbb2/portal_subdb.php?dbid=44)

#### vPlug

Link zum Download der aktuellen Version [\[5\]](http://streamboard.de.vu/wbb2/portal_subdb.php?dbid=44)


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

Während ACamd ruht, arbeitet nun vPlug als CA-EMU. Man erleichtert vPlug die Arbeit, indem man die nicht benötigten CAIDs auf ignore setzt. Siehe auch die Spalte *ignored*, wo in diesen Fällen ein *yes* steht. In dem Beispiel wird ein HD-Sender encrypted.