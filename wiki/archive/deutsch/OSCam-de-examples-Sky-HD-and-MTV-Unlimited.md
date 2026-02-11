> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/examples/Sky HD and MTV-Unlimited

## Inhaltsverzeichnis

+   [1 Sky GER HD, MTV-Unlimited, HD+ und TNTSAT](#Sky_GER_HD,_MTV-Unlimited,_HD+_und_TNTSAT)
    +   [1.1 Basis](#Basis)
    +   [1.2 Konfiguration](#Konfiguration)
        +   [1.2.1 oscam.conf](#oscam.conf)
        +   [1.2.2 oscam.server](#oscam.server)
        +   [1.2.3 oscam.user](#oscam.user)
        +   [1.2.4 oscam.services](#oscam.services)
    +   [1.3 Client-Anbindung über mgcamd](#Client-Anbindung_über_mgcamd)
    +   [1.4 Client-Anbindung über CCcam](#Client-Anbindung_über_CCcam)
    +   [1.5 Client-Anbindung über OSCam DVB API](#Client-Anbindung_über_OSCam_DVB_API)
        +   [1.5.1 oscam.conf](#oscam.conf_2)
        +   [1.5.2 oscam.user](#oscam.user_2)
        +   [1.5.3 oscam.server](#oscam.server_2)
        +   [1.5.4 oscam.services](#oscam.services_2)
        +   [1.5.5 oscam.dvbapi](#oscam.dvbapi)

## Sky GER HD, MTV-Unlimited, HD+ und TNTSAT

### Basis

+   1x Cardreader seriell mit Sky GER Nagra 3 S02 SC (6,00 Mhz) SD CAID 1702, HD CAID 1833, Provider ID 000000
+   1x Cardreader USB seriell mit MTV-Unlimited Conax SC (3,57 Mhz) CAID 0B00, Provider ID 000000
+   1x Cardreader USB seriell mit HD+ Nagravison HD1 SC (3,68 Mhz) CAID 1830, Provider ID 000000,003411,008011
+   1x Cardreader USB seriell mit TNTSAT Viaccess SC (3,57 Mhz) CAID 0500, Provider ID 030B00,FFF400
+   offenes Protokoll, das von vielen Clients/STBs unterstützt wird, TCP basierend, sehr stabil und zuverlässig: newcamd

**Tipp**: Die entsprechenden CAIDs mit den vollständigen Provider IDs und Classes kann dem Log-File entnehmen, wenn der Reader initialisiert wird.

### Konfiguration

#### oscam.conf

+   DES Key für newcamd Protokoll definieren.
+   Es wird sowohl für die Sky SD CAID 1702 als auch für die HD CAID 1833 nur ein TCP/IP-Port definiert. Ein Betatunnel leitet die HD CAID 1833 auf die SD CAID 1702 um.
+   Es wird ein Port für die MTV-Unlimited CAID 0B00 definiert.
+   Es wird ein Port für die HD+ CAID 1830 definiert.
+   Es wird ein Port für die TNTSAT CAID 0500 definiert.

```
[global]
nice            = -1

logfile         = /var/log/oscam.log
usrfile         = /var/log/oscamsuser.log

[newcamd]
key             = 0102030405060708091011121314
port            = 12345@1702:000000,23456@0B00:000000;34567@1830:000000,003411,008011;45678@0500:030B00,FFF400
```

#### oscam.server

+   Die entsprechende Frequenz für die SCs wird am Reader eingestellt.
+   Es wird jeweils ein Reader für die Sky SD CAID 1702, einer für MTV-Unlimited CAID 0B00, einer für die HD+ CAID 1830 und einer für die TNTSAT CAID 0500 definiert.
+   Jeder Reader kommt in eine seperate Gruppe.

```
[reader]
detect    = CD
device    = /dev/ttyS0
protocol  = mouse

label     = reader1
emmcache  = 1,3,2
caid      = 1702
ident     = 1702:000000
services  = sky
group     = 1

[reader]
detect    = CD
device    = /dev/ttyUSB0
protocol  = mouse

label     = reader2
emmcache  = 1,3,2
caid      = 0B00
ident     = 0B00:000000
services  = mtv_unlimited
group     = 2

[reader]
detect    = CD
device    = /dev/ttyUSB1
protocol  = mouse

rsakey    = <Bitte RSA Key eintragen>
boxkey    = <Bitte Box Key eintragen>
label     = reader3
emmcache  = 1,3,2
caid      = 1830
ident     = 1830:000000,003411,008011
services  = hdp
group     = 3

[reader]
detect    = CD
device    = /dev/ttyUSB2
protocol  = mouse

aeskeys   = 0500@030B00:<Bitte AES Key eintragen>,<Bitte AES Key eintragen>,<Bitte AES Key eintragen>,<Bitte AES Key eintragen>
label     = reader4
emmcache  = 1,3,2
caid      = 0500
ident     = 0500:030B00,FFF400
services  = tntsat
group     = 4

```

#### oscam.user

+   Jeder Receiver bekommt pro CAID einen eigenen Account, der dem entsprechenden Service und der entsprechenden Gruppe zugeordnet wird.
+   Alle Clients dürfen ein AU durchführen. Mindestens für einen Client muss AU aktivert werden, sonst wird die Gültigkeit der SC nicht verlängert.
+   Als Betatunnel werden alle Service IDs der Sky HD Sender eingetragen und somit von der Sky HD CAID 1833 auf Sky SD 1702 gemappt. Die SC bekommt also nur Anfragen über die CAID 1702.

```
[account]
user       = skyuser1
pwd        = skypassword1
group      = 1
au         = reader1
betatunnel = 1833.0069:1702,1833.006A:1702,1833.006B:1702,1833.006C:1702,1833.006F:1702,1833.0070:1702,1833.0071:1702,1833.0072:1702,1833.0075:1702,1833.0076:1702,1833.0077:1702,1833.007C:1702,1833.0081:1702,1833.0082:1702,1833.0083:1702,1833.0084:1702
ident      = 1702:000000
caid       = 1702
services   = sky

[account]
user       = skyuser2
pwd        = skypassword2
group      = 1
au         = reader1
betatunnel = 1833.0069:1702,1833.006A:1702,1833.006B:1702,1833.006C:1702,1833.006F:1702,1833.0070:1702,1833.0071:1702,1833.0072:1702,1833.0075:1702,1833.0076:1702,1833.0077:1702,1833.007C:1702,1833.0081:1702,1833.0082:1702,1833.0083:1702,1833.0084:1702
ident      = 1702:000000
caid       = 1702
services   = sky

[account]
user       = mtvuser1
pwd        = mtvpassword1
group      = 2
au         = reader2
ident      = 0B00:000000
caid       = 0B00
services   = mtv

[account]
user       = mtvuser2
pwd        = mtvpassword2
group      = 2
au         = reader2
ident      = 0B00:000000
caid       = 0B00
services   = mtv

[account]
user       = hdpuser1
pwd        = hdppassword1
group      = 3
au         = reader3
ident      = 1830:000000,003411,008011
caid       = 1830
services   = hdp

[account]
user       = hdpuser2
pwd        = hdppassword2
group      = 3
au         = reader3
ident      = 1830:000000,003411,008011
caid       = 1830
services   = hdp

[account]
user       = tntuser1
pwd        = tntpassword1
group      = 4
au         = reader4
ident      = 0500:030B00,FFF400
caid       = 0500
services   = tntsat

[account]
user       = tntuser2
pwd        = tntpassword2
group      = 4
au         = reader4
ident      = 0500:030B00,FFF400
caid       = 0500
services   = tntsat

```

Die Abkürzung des Betatunnels mit

```
betatunnel = 1833.FFFF:1702
```

sollte vermieden werden. Falls nicht zu 100% die gleichen Clients verwendet werden, wird das Caching ausgehebelt. Oft kommt es auch zu parallelen Anfragen von CAID 7102 und CAID 1833.

#### oscam.services

+   Definitionen der Services.

```
[mtv]
caid=0B00
provid=000000
srvid=6FEE,6FEF,6FF0,6FF1,6FF3,6FFA,6FFF

[sky]
caid=1702
provid=000000
srvid=0008,0009,000A,000B,000C,000D,000E,0010,0011,0012,0013,0014,0015,0016,0017,0018,0019,001A,001B,001C,001D,0021,0022,0023,0024,0025,0026,0027,0029,002A,002B,0032,0034,0035,0037,0038,0039,003A,003B,003C,003D,003E,003F,0040,0041,0042,0043,0044,0045,0046,0069,0070,0071,0072,006A,006B,006C,006F,0075,0076,0077,0078,0079,007A,007B,007C,007D,007E,007F,0080,0081,0082,0083,0084,0096,0097,0098,0099,009A,009B,009C,00A8,00DD,00DE,00DF,00FB,00FC,00FD,00FE,0105,0106,0107,0108,010F,0110,0111,0119,011A,011B,0123,0124,0125,012D,012E,012F,0137,0138,0139,0141,0142,0143,014B,014C,014D,0156,0159,0160,0163,016B,016D,0175,0201,0203,0204,0206,07FF,2EFE,3331,4461,4462,6FF1,7001,7009,700A

[hdp]
caid=1830
provid=000000,003411,008011
srvid=1519,5273,5274,EF10,EF11,EF14,EF15,EF74,EF75,EF76,EF77

[tntsat]
caid=0500
provid=030B00,FFF400
srvid=1F41,1F44,1F48,1F4A,1FD8,200C,20A4,20B3,20B4,20B6,2261,2329,232A,23F7,2405,2407,240A,2458,245E,25E5,25E6,25E7,25E8,25E9,25EA,25EB,25EC,25ED,25EE,25EF,25F0,2649,264A,264B,264C,264D,264E,264F,2650,2651,2652,2653,2654,4284
```

**Tipp**: Zum erstellen einer aktuellen Service Definition, schaltet man einfach alle einzelnen Sender durch ("Zapping") und wertet das OSCam Log-File mit dem entsprechenden Befehl aus:

```
cat <Log-File> | grep found | awk 'BEGIN {FS = "/"} {print $5}' | sort -u
```

### Client-Anbindung über mgcamd

+   Sowohl für die Sky SD CAID 1702 als auch für die Sky HD CAID 1833 muss nur **eine** Verbindung hergestellt werden.
+   Ein weiteres Mapping auf Seite der mgcamd ist nicht nötig.
+   Die mgcamd unterstützt AU.
+   in newcamd.list:

```
CWS = 192.168.178.1 12345 skyuser1 skypassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14 lan server1
CWS = 192.168.178.1 23456 mtvuser1 mtvpassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14 lan server2
CWS = 192.168.178.1 34567 hdpuser1 hdppassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14 lan server3
CWS = 192.168.178.1 45678 tntuser1 tntpassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14 lan server4
```

### Client-Anbindung über CCcam

+   Sowohl für die Sky SD CAID 1702 als auch für die Sky HD CAID 1833 muss nur **eine** Verbindung hergestellt werden.
+   Ein weiteres Mapping auf Seite der CCcam ist nicht nötig.
+   in CCcam.cfg:

```
N: 192.168.178.1 12345 skyuser1 skypassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14
N: 192.168.178.1 23456 mtvuser1 mtvpassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14
N: 192.168.178.1 34567 hdpuser1 hdppassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14
N: 192.168.178.1 45678 tntuser1 tntpassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14
```

### Client-Anbindung über OSCam DVB API

+   Hier nutzen wir die OSCam Client Funktion.
+   Sowohl für die Sky SD CAID 1702 als auch für die Sky HD CAID 1833 muss nur eine Verbindung hergestellt werden.
+   Der OSCam DVB API unterstützt AU.

#### oscam.conf

+   Kein Logging.
+   DVB API mit AU aktivieren.
+   Benutzer für AU definieren.
+   Jede nach verwendetem STB bitte den Boxtype entsprechend anpassen.

```
[global]
disablelog      = 1
disableuserfile = 1

[dvbapi]
enabled = 1
au      = 1
user    = dummyuser
boxtype = dreambox
```

#### oscam.user

+   Benutzer für AU anlegen.
+   Benutzer ist Mitglied in allen Gruppen.
+   Betatunnel schon auf der Client-Seite verwenden.

```
[account]
user       = dummyuser
pwd        = dummypassword
betatunnel = 1833.007a:1702,1833.007b:1702,1833.007c:1702,1833.007e:1702,1833.007f:1702,1833.0080:1702,1833.0081:1702,1833.0082:1702,1833.0083:1702,1833.0084
group      = 1,2,3,4
au         = 1
```

#### oscam.server

+   Remote Reader für Sky SD CAID 1702, MTV-Unlimited CAID 0B00, HD+ CAID 1830 und TNTSAT CAID 0500 definieren.
+   Schon auf dem Client findet ein EMM Caching statt.

```
[reader]
label     = reader1
device    = 192.168.178.1,12345
protocol  = newcamd
user      = skyuser1
password  = skypassword1
key       = 0102030405060708091011121314
emmcache  = 1,3,2
caid      = 1702
ident     = 1702:000000
services  = sky
group     = 1

[reader]
label     = reader2
device    = 192.168.178.1,23456
protocol  = newcamd
user      = mtvuser1
password  = mtvpassword1
key       = 0102030405060708091011121314
emmcache  = 1,3,2
caid      = 0B00
ident     = 0B00:000000
services  = mtv
group     = 2

[reader]
label     = reader3
device    = 192.168.178.1,34567
protocol  = newcamd
user      = hdpuser1
password  = hdppassword1
key       = 0102030405060708091011121314
emmcache  = 1,3,2
caid      = 1830
ident     = 1830:000000,003411,008011
services  = hdp
group     = 3

[reader]
label     = reader4
device    = 192.168.178.1,45678
protocol  = newcamd
user      = tntuser1
password  = tntpassword1
key       = 0102030405060708091011121314
emmcache  = 1,3,2
caid      = 0500
ident     = 0500:030B00,FFF400
services  = tntsat
group     = 4

```

#### oscam.services

+   Bitte einfach kopieren (siehe oben).

#### oscam.dvbapi

+   alle CAIDs der Reader in oscam.server priorisieren.
+   alle anderen CAIDs werden mit I: 0 ignoriert.

```
P: 1702
P: 0B00
P: 1830
P: 0500
I: 0
```

+   zum Freischalten einer SC oder eines Pay-per-View Services kann man eine CAID **temporär** z.B. mit

```
P: 1830 1
```

priorisieren.