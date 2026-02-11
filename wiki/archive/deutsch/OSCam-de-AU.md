> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/AU

## Inhaltsverzeichnis

+   [1 AU](#AU)
    +   [1.1 Was ist AU?!](#Was_ist_AU?!)
    +   [1.2 Wie viel AU?!](#Wie_viel_AU?!)
    +   [1.3 AU-ready!](#AU-ready!)
+   [2 AU per CCcam](#AU_per_CCcam)
    +   [2.1 OSCam-CCcam-Protokoll](#OSCam-CCcam-Protokoll)
        +   [2.1.1 CCcam.cfg](#CCcam.cfg)
        +   [2.1.2 oscam.conf](#oscam.conf)
        +   [2.1.3 oscam.user](#oscam.user)
        +   [2.1.4 oscam.services](#oscam.services)
    +   [2.2 Auf Umwegen](#Auf_Umwegen)
        +   [2.2.1 CCcam.cfg](#CCcam.cfg_2)
        +   [2.2.2 oscam.conf](#oscam.conf_2)
        +   [2.2.3 oscam.user](#oscam.user_2)
        +   [2.2.4 oscam.services](#oscam.services_2)
        +   [2.2.5 HD+](#HD+)

## AU

### Was ist AU?!

**AU** bedeutet **A**uto**U**pdate und damit ist gemeint, dass Deine Abos (Karten) automatisch aktualisiert (in der Laufzeit verlängert) werden. Die von Dir abonnierten Programme werden also mit einem Gültigkeitszeitstempel Deines Provider (Anbieter) versehen. Wenn die Karte kein **AU** erhält und dieser Zeitraum überschritten wird, bleibt das Programm dunkel. Es ist also sehr wichtig, dass Deine Karten mit **AU** versorgt werden.

**AU** kann Dein Abo auch gezielt deaktivieren, z.B. im Fall einer Kündigung. Nur dann macht es eventuell Sinn, **AU** kurz vorher zu deaktivieren, sodass die Gültigkeitszeitstempel nicht mehr verändert werden können und Du nach der Kündigung das eine oder andere Programm für ein paar weitere Tage/Wochen empfangen kannst.

**Siehe [Zugangsberechtigungssystem](http://de.wikipedia.org/wiki/Zugangsberechtigungssystem) (ECM/EMM)**

### Wie viel AU?!

Wenn Du mehrere Receiver betreibst, müssen selbstverständlich nicht alle Receiver ihre Updates zur Karte senden. In der Regel sollte es ausreichen, wenn nur der Receiver **AU** (EMMs) sendet, der regelmäßig eingeschaltet/genutzt wird, bzw. als Server dient.

### AU-ready!

AU-ready bedeutet, dass das **Karten-System in OSCam** erfolgreich getestet und bestätigt wurde, sprich EMM\`s auf die Karte geschrieben werden und die CPU-Last des Receiver dabei im "grünen" Bereich bleibt.

Stand der nachfolgenden AU-Tabelle ist OSCam-SB-0.99.4-trunk-2020. Verantwortlich ist Alno, besten Dank dahin. Wenn Dein Karten-System noch nicht AU-ready oder implementiert ist, dann poste EMM-Dumps Deiner Karte. Ausführliche Informationen kannst Du dem OSCam-Log entnehmen, wenn Du OSCam z.B. mit dem Schalter "-d 64" startest!

```
Cardsystem          AU-ready    Implemented
-------------------------------------------
Conax               0           1
Conax - MTV         1           1
Cryptoworks         0           1
DRE-Crypt           0           0
Irdeto              0           1
Irdeto - Sky        1           1
Nagravision         0           1
Seca                0           1
Viaccess            0           0
Videoguard2         0           0
```



## AU per CCcam

Viele setzen CCcam als Client ein, aber leider funktioniert AU dabei nicht immer über das CAMD3- oder NewCAMD-Protokoll (L-/N-Lines).

### OSCam-CCcam-Protokoll

Zuverlässig getestet mit OSCam #5469, CCcam 2.1.3 und den Karten S02, V13 HD+ und UM02. Hierzu muss nur CCcam in der oscam.conf aktiviert werden.

Beispiel für S02, V13 und HD+:

#### CCcam.cfg

```
# CCCAM ----------------------------------------------------
# C: <hostname> <port> <username> <password> <wantemus> ( { caid:id(:uphops), caid:id(:uphops), ... } )
# OSCam-CCcam-AU-Connection
C: 192.168.0.1 4712 dm800se dm800se no { 0:0:1 }
# CCcam-Connection
C: 192.168.0.1 4713 dm800se dm800se no { 0:0:6 }
```

#### oscam.conf

```
 [cccam]
port           = 4712
version        = 2.1.3
reshare        = 10
reshare_mode   = 1
```

#### oscam.user

```
[account]
user            = dm800se
pwd             = dm800se
au              = mm_sky,mm_hd,mi_sky
services        = mm_sky,mm_hd,mi_sky
group           = 1,2,3,4
description     = Wohnzimmer AU
```



#### oscam.services

```
# SKY: Complete --------------------------------------------
[mm_sky]
caid=1702,1833
provid=000000
srvid=002A,0015,...
# HD+ ------------------------------------------------------
[mm_hd]
caid=1830
provid=000000,003411,008011
srvid=277E,5273,EF10,EF11,EF14,EF15,EF74,EF75,EF76,EF77
# SKY: Welt / Extra / BuLi / HD+ ---------------------------
[mi_sky]
caid=09C4
provid=000000
srvid=002A,0015,...
```

### Auf Umwegen

**Muss nicht sein**, wenn CCcam in OSCam aktiviert ist, siehe oben.

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung:** AU per NewCAMD-Protokoll muss immer gezielt auf einen Reader gerichtet werden. Ein "au = 1" funktioniert bei diesem Protokoll nicht!

Beispiel für zwei S02-Karten:

#### CCcam.cfg

```
# NewCAMD CONNECTIONS **************************************
#N: <IP> <Port> <Username> <Passwort> <Description Key(14byte)> <Entfernung zur Karte in Hops (Standard: 1)> <Tarneinstellung (Standard: 0)>
N: 192.168.0.1 4711 dm800_1 dm800 01 02 03 04 05 06 07 08 09 10 11 12 13 14
N: 192.168.0.1 4712 dm800_2 dm800 01 02 03 04 05 06 07 08 09 10 11 12 13 14
```

#### oscam.conf

```
[newcamd]
port           = 4711@1702:000000;4712@1702:000000 # je Karte ein Port, auch wenn es sich um "gleiche" Karten handelt
key            = 0102030405060708091011121314
allowed        = 127.0.0.1,192.168.0.0-192.168.0.255 # Du kommst hier nicht rein :)
```

#### oscam.user

```
[account]
user            = dm800_1
pwd             = dm800
au              = mm_sky        # AU nur für diesen Reader...
services        = mm_sky,sa_sky # ...aber Zugriff für beide Reader, damit das LoadBalancing greift ;)
group           = 1,2           #    ^^^

[account]
user            = dm800_2
pwd             = dm800
au              = sa_sky        # AU nur für diesen Reader...
services        = mm_sky,sa_sky # ...aber Zugriff für beide Reader, damit das LoadBalancing greift ;)
group           = 1,2           #    ^^^
```

#### oscam.services

```
[mm_sky]    # SKY: Complete
caid=1702
provid=000000
srvid=0008,0009,...

[sa_sky]    # SKY: Welt, Film, Erotik, Select, Radio
caid=1702
provid=000000
srvid=000E,000D,...
```

#### HD+

Eine HD+-Karte an OSCam lässt sich nur per CCcam Protokoll von einem CCcam-Client aktualisieren.

Update: HD+-Karte an OSCam lässt sich mittlerweile auch per Newcamd Protokoll von einem CCcam-Client/Mgcam-Client aktualisieren.