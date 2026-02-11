> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/examples/Config Dreambox

## Inhaltsverzeichnis

+   [1 Konfigurationsbeispiele für die Dreambox](#Konfigurationsbeispiele_für_die_Dreambox)
    +   [1.1 Intro](#Intro)
    +   [1.2 Install](#Install)
    +   [1.3 LoadBalancer](#LoadBalancer)
    +   [1.4 oscam.conf](#oscam.conf)
    +   [1.5 oscam.user](#oscam.user)
    +   [1.6 oscam.server](#oscam.server)
    +   [1.7 oscam.dvbapi](#oscam.dvbapi)

## Konfigurationsbeispiele für die Dreambox

Getestet mit "OSCam r9842 - Modern r1103" auf diversen Dreamboxen.

### Intro

Bedenke bitte, dass OSCam eine Menge an "Stellschrauben" hat, womit man es bis ins Detail einstellen kann, was es wiederum nicht immer einfach macht. Aber OSCam ist genau dadurch besonders mächtig! Maßgeschneiderte Konfigurations-Beispiele sollte man sich deshalb schnell aus dem Kopf schlagen ;)

Bringe OSCam erstmal mit einer Minimal-Konfigurationen zum Laufen - was eigentlich nicht besonders schwierig ist - und "schraube" erst dann an Details.

### Install

Die Installation ist abhängig vom Image. In der Regel entpackt man OSCam auf dem PC, kopiert die Binary per FTP (im Binary-Mode) auf die Dream, chmoded diese 0755 und fertig. Ggf. muss noch ein Start-Skript angepasst oder erstellt werden, aber dies ist wie bereits erwähnt vom eingesetzten Image abhängig. Beispiel-Start-Skript (*oscam.emu*), welches unter anderem bei [Newnigma²](http://newnigma2.to/)\-Images eingesetzt und in */usr/script* abgelegt wird: [OSCam/de/scripts/Dreambox](/wiki/OSCam/de/scripts/Dreambox "OSCam/de/scripts/Dreambox")

### [LoadBalancer](/wiki/OSCam/de/Config/oscam.conf#Loadbalancer "OSCam/de/Config/oscam.conf")

Wenn du mehrere Karten betreibst, welche die "selben" Sender öffnen können (egal ob lokal oder als Proxy), dann aktiviere den Loadbalancer (oscam.conf --> lb\_mode). Ansonsten lasse diesen inaktiv und checke nur den "Betatunnel" in "oscam.user".

### [oscam.conf](/wiki/OSCam/de/Config/oscam.conf "OSCam/de/Config/oscam.conf")

```
# oscam.conf ***********************************************
# 05.09.2014
[global]
# Logging --------------------------------------------------
logfile             = /tmp/oscam.log
disablelog          = 0
maxlogsize          = 128
# emmlogdir nur aktivieren, wenn die EMM-Logs auch aufgeräumt werden, ansonsten kann der Speicher volllaufen!
#emmlogdir           = /tmp/ # <-- ggf. anpassen!

# Timeouts -------------------------------------------------
# bei Problemen die "*timeout"-Zeilen entfernen oder Werte anpassen!
# default 5000
clienttimeout       = 2000
# fallbacktimeout     = 1500 # <-- ggf. anpassen, falls Fallback-Reader konfiguriert sind!

# LoadBalance ----------------------------------------------
# lb_mode:          0 = deaktiviert (default); 1 = schnellster Reader; 2 = Reader der am laengsten nicht geantwortet hat; 3 = Reader mit der geringsten Auslastung
lb_mode             = 0 # <-- ggf. anpassen! Ein aktivierter Loadbalancer macht bei mehreren Readern, welche die selbe CAID liefern, Sinn!

# Cards ----------------------------------------------------
waitforcards        = 1
preferlocalcards    = 1

# Sonstiges ------------------------------------------------
unlockparental      = 1
dropdups            = 1

# CAMs -----------------------------------------------------
# CAMD3 TCP
[cs378x]
port                = 47111 # <-- anpassen!
suppresscmd08       = 1

# CAMD3 UDP
[cs357x]
port                = 47112 # <-- anpassen!
suppresscmd08       = 1

# CCCAM
[cccam]
port                = 47113 # <-- anpassen!
version             = 2.3.0
reshare             = 4
keepconnected       = 0

# DVBAPI ---------------------------------------------------
[dvbapi]
enabled             = 1
au                  = 1
boxtype             = dreambox
user                = local
pmt_mode            = 0
request_mode        = 1

# WEBIF ----------------------------------------------------
[webif]
# für SSL ein "+" dem Port voranstellen, z.B. "+15000"
httpport            = 15000 # <-- anpassen!
httprefresh         = 0
httpallowed         = 127.0.0.1,192.168.0.0-192.168.0.255 # <-- anpassen!
httphideidleclients = 0
httpreadonly        = 0
httphelplang        = de
httposcamlabel      = MyOSCam # <-- anpassen!

# MONITOR --------------------------------------------------
[monitor]
port                = 0
```

### [oscam.user](/wiki/OSCam/de/Config/oscam.user "OSCam/de/Config/oscam.user")

```
# oscam.user ***********************************************
# 05.09.2014
[account]
user            = local
pwd             = local
hostname        = 127.0.0.1
group           = 1,2,3
uniq            = 0
au              = sci0,sci1       # <-- ggf. anpassen!
keepalive       = 1
betatunnel      = 1833.FFFF:1702  # <-- auskommentieren, wenn der LoadBalancer deaktiviert ist
```



### [oscam.server](/wiki/OSCam/de/Config/oscam.server "OSCam/de/Config/oscam.server")

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung:** Eine Dream hat nur max. 2 interne Smardcard-Slots. Also aktiviere nur die Karten (Reader), die du benötigst, indem du die Kommentare (Rauten "#") am Zeilenanfang der entsprechenden Reader entfernst und die Einstellungen deiner Umgebung anpasst!

```
# oscam.server *********************************************
# 05.09.2014
# INTERNAL -------------------------------------------------
# OBERER SLOT   = sci0
# UNTERER SLOT  = sci1

#[reader]
#label               = sci0
#description         = Sky 1702
#enable              = 1
#group               = 1
#protocol            = internal
#device              = /dev/sci0   # <-- anpassen!
#caid                = 1702
#detect              = cd
#cardmhz             = 2700
##mhz                 = 900
#autospeed           = 1
#force_irdeto        = 1
#emmcache            = 1,1,2
#blockemm-unknown    = 1
#dropbadcws          = 1
#lb_weight           = 300
#
#[reader]
#label               = sci1
#description         = HD+ 1830
#enable              = 1
#group               = 1
#protocol            = internal
#device              = /dev/sci1   # <-- anpassen!
#caid                = 1830
#boxkey              = <16 Bytes>  # <-- anpassen!
#rsakey              = <128 Bytes> # <-- anpassen!
#detect              = cd
#cardmhz             = 2700
##mhz                 = 368
#autospeed           = 1
#emmcache            = 1,1,2
#blockemm-unknown    = 1
#dropbadcws          = 1
#lb_weight           = 300
#
#[reader]
#label               = Int_Via_D1
#description         = Internal Viaccess DIGI 1
#enable              = 1
#group               = 1
#protocol            = internal
#device              = /dev/sci0   # <-- anpassen!
#caid                = 0500
#detect              = cd
#cardmhz             = 2700
##mhz                 = 385
#autospeed           = 1
#emmcache            = 1,1,2
#blockemm-unknown    = 1
#dropbadcws          = 1
#lb_weight           = 300
#
#[reader]
#label               = Int_Sky_V13
#description         = Internal Sky V13
#enable              = 1
#group               = 1
#protocol            = internal
#device              = /dev/sci0   # <-- anpassen!
#caid                = 09C4
#boxid               = <8 Bytes>   # <-- anpassen!
#detect              = cd
#cardmhz             = 2700
##mhz                 = 480
#autospeed           = 1
#ins7e11             = 15
#emmcache            = 1,1,2
#blockemm-u          = 0           # <-- anpassen!
#blockemm-s          = 0           # <-- anpassen!
#blockemm-g          = 0           # <-- anpassen!
#blockemm-unknown    = 1           # <-- anpassen!
#saveemm-u           = 1
#saveemm-s           = 0
#saveemm-g           = 0
#saveemm-unknown     = 0
#dropbadcws          = 1
#lb_weight           = 300
#
#[reader]
#label               = Int_Sky_V14
#description         = Internal Sky V14
#enable              = 1
#group               = 1
#protocol            = internal
#device              = /dev/sci0
#caid                = 098C
#boxid               = <8 Bytes>   # <-- anpassen!
#detect              = cd
#cardmhz             = 2700
##mhz                 = 480
#autospeed           = 1
##ins7e11             = 15
#emmcache            = 1,1,2
#blockemm-u          = 0           # <-- anpassen!
#blockemm-s          = 0           # <-- anpassen!
#blockemm-g          = 0           # <-- anpassen!
#blockemm-unknown    = 1           # <-- anpassen!
#saveemm-u           = 1           # <-- anpassen!
#saveemm-s           = 0
#saveemm-g           = 0
#saveemm-unknown     = 0
#dropbadcws          = 1
#lb_weight           = 300
```



### [oscam.dvbapi](/wiki/OSCam/de/Config/oscam.dvbapi "OSCam/de/Config/oscam.dvbapi")

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung:** Die Priorisierung, die in der oscam.dvbapi vorgenommen werden kann, wirkt sich extrem auf die **Umschaltzeiten** aus! Also, einfach nur die Sender oder CAIDs in der "richtigen" Reihenfolge priorisieren ;)

```
# oscam.dvbapi *********************************************
# 05.09.2014
#
# Types:
#   P - Priority
#       format:     P: <caid>:[<provider>]:[<srvid>]:[<ecmpid>]
#   I - Ignore
#       format:     I: <caid>:[<provider>]:[<srvid>]:[<ecmpid>]
#   M - Map
#       format:     M: <caid>:[<provider>]:[<srvid>]:[<ecmpid>] <target caid>:[<target provider>]
#   D - Delay
#       format:     D: <caid>:[<provider>]:[<srvid>]:[<ecmpid>] <delay (ms)>
#
# Examples:
#   P: 0100:123456          prioritise CAID 0100 with provider 123456
#   P: :::1234              prioritise ECM with provider ID 1234 on any service
#   P: 0200                 prioritise CAID 0200
#   P: 0300::9ABC           prioritise CAID 0300 on service 9ABC only
#   M: 0400 0500:123456     map CAID 0400 to provider ID 123456 with CAID 0500 always
#   D: 0600 200             wait 200 ms before writing CW for CAID 0600
#   I: :654321              ignore provider ID 654321 for every service
#   I: 0                    ignore every CAID that was not handled before
#
# **********************************************************
#
# PRIOS ####################################################
# PRIO BY CAID:PROVIDER:SID ********************************
# ORF Prio: CW (d05:0) -------------------------------------
# Da ORF auch die CAID 1702 sendet, muessen die folgenden Zeilen UNBEDINGT vor den Sky-Einstellungen stehen!
P: 0D05::132F # ORF1 HD
P: 0D05::1330 # ORF2 HD
P: 0D05::32C9 # ORF1
P: 0D05::32CA # ORF2
P: 0D05::32CB # ORF2 Wien
P: 0D05::32CC # ORF2 NiederÖsterreich
P: 0D05::32CD # ORF2 Burgenland
P: 0D05::32CE # ORF2 OberÖsterreich
P: 0D05::32CF # ORF2 Salzburg
P: 0D05::32D0 # ORF2 Tirol
P: 0D05::32D1 # ORF2 Vorarlberg
P: 0D05::32D2 # ORF2 Steiermark
P: 0D05::32D3 # ORF2 Kärnten
P: 0D05::32D4 # ATV+
P: 0D05::3332 # Austria 9 TV
P: 0D05::332D # ORF III
P: 0D05::33A5 # ORF Sport+
P: 0D05::33A7 # ATV2
P: 0D05::33AC # ATV HD
P: 0D05::4E27 # Puls 4 Austria
#
# PRIO BY CAID:PROVIDER ************************************
#
# PRIO BY CAID *********************************************
# EIGENE KARTEN NACH OBEN!
P: 098C # Sky V14
P: 1702 # Sky S02
P: 1833 # Sky Betatunnel
P: 09C4 # Sky V13
P: 1830 # HD+
P: 1843 # HD+
P: 0D05 # ORF
# P: 0D95 # AustriaSat Cryptoworks
#
# IGNORES ##################################################
# IGNORE BY SID ********************************************
#
# IGNORE BY CAID *******************************************
```