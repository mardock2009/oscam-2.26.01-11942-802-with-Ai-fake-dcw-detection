> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/examples/Reader

## Inhaltsverzeichnis

+   [1 Beispiel-Konfigurationen Reader](#Beispiel-Konfigurationen_Reader)
    +   [1.1 Serial-Mouse kompatible Reader](#Serial-Mouse_kompatible_Reader)
    +   [1.2 USB-Mouse kompatible Reader](#USB-Mouse_kompatible_Reader)
    +   [1.3 Remote Camd3.78x Reader with fallback for group 1](#Remote_Camd3.78x_Reader_with_fallback_for_group_1)
    +   [1.4 Remote Newcamd Reader with fallback for group 2](#Remote_Newcamd_Reader_with_fallback_for_group_2)
    +   [1.5 Remote CCcam Reader](#Remote_CCcam_Reader)
    +   [1.6 PCSC Reader](#PCSC_Reader)
    +   [1.7 Smargo Smartreader+](#Smargo_Smartreader+)
    +   [1.8 Internal Reader](#Internal_Reader)
    +   [1.9 Constant CW](#Constant_CW)
    +   [1.10 Remote Radegast Reader](#Remote_Radegast_Reader)
    +   [1.11 AD-Teknik](#AD-Teknik)
        +   [1.11.1 AB Multiprogrammer 3.5 serial](#AB_Multiprogrammer_3.5_serial)
        +   [1.11.2 AB Multiprogrammer 3.6. USB](#AB_Multiprogrammer_3.6._USB)
        +   [1.11.3 AB USB Phoenix at 6.00 mhz](#AB_USB_Phoenix_at_6.00_mhz)
    +   [1.12 sc8in1 reader](#sc8in1_reader)
+   [2 Smargo Special](#Smargo_Special)

## Beispiel-Konfigurationen Reader

Der \[reader\] ist das Modul, das dem OSCam-Server ermöglicht, EMMs, die er von Usern (clients) erhält, in CWs zu übersetzen. Diese CWs werden an die clients zur Entschlüsselung von channels zurückgeschickt.

Es gibt zwei Arten von readern

+   Hardware-Reader, die auf irgendeine Weise *physisch* mit dem PC verbunden sind, auf dem der OSCam-Server läuft, und
+   Remote Reader, die auf anderen PC's als der OSCam-Server laufen.

Für die **Hardware-Reader** muss OSCam wissen

+   was für ein Typ dieser Reader ist,
+   wie er mit dem PC verbunden ist,
+   welches *protocol* er verwendet und
+   welche Subscriptions-Cards in diesen Reader eingesteckt werden sollen.

Für die **Remote Reader** muss OSCam wissen

+   mit welcher IP und welchem Port verbunden werden muss,
+   welches *protocol* verwendet wird,
+   welche Authentifizierung (user/password) vorgeschrieben ist und
+   auch hier wieder welche Subscriptionen untestützt werden sollen.

Nachfolgend einige wichtige Configurations-Beispiele für unterstützte Cardreader

### Serial-Mouse kompatible Reader

```
[reader]
label    = myserialmouserreader
protocol = mouse
detect   = CD
device   = /dev/ttyS0
group    = 1
emmcache = 1,3,2
services = myservice,thisservice
caid     = 0100
```

### USB-Mouse kompatible Reader

```
[reader]
label     = myusbmousereader
protocol  = mouse
detect    = CD
device    = /dev/ttyUSB0
aeskey    = 0102030405060708090a0b0c0d0e0f10
group     = 2
emmcache  = 1,3,2
services  = services2
caid      = 0200
```

### Remote Camd3.78x Reader with fallback for group 1

```
[reader]
label     = mycamd378xreader
protocol  = cs378x
device    = 192.168.0.1,1234
user      = user1,
password  = password1
group     = 1
fallback  = 1
```

### Remote Newcamd Reader with fallback for group 2

```
[reader]
label     = mynewcamdreader
protocol  = newcamd
key       = 0102030405060708091011121314
device    = 192.168.0.2,2345
user      = user2
password  = password2
group     = 2
fallback  = 1
```

### Remote CCcam Reader

```
[reader]
label     = mycccamreader
protocol  = cccam
device    = 192.168.0.3,3456
user      = user3
password  = password3
group     = 3
caid      = 0300,0400,0500
cccversion= 1.2.3
cccbuild  = 4567
```

### PCSC Reader

```
[reader]
label     = mypcscreader
protocol  = pcsc
device    = 0
aeskey    = 0102030405060708090a0b0c0d0e0f10
group     = 4
caid      = 0600
```

### Smargo Smartreader+

```
# BEISPIEL 1
[reader]
label     = mysmargoreader
protocol  = smartreader
device    = 001:002
aeskey    = 0102030405060708090a0b0c0d0e0f10
group     = 5
caid      = 0700

# BEISPIEL 2
[reader]
label      = mysmargoreader
protocol   = smartreader
device     = Serial:Reader 1
detect     = cd
mhz        = 600
cardmhz    = 600
emmcache   = 1,3,2
group      = 5
services   = my_services
```

### Internal Reader

```
[reader]
label     = myinternalreader
protocol  = internal
device    = /dev/sci0
group     = 6
caid      = 0800
```

### Constant CW

```
[reader]
label     = myconstantcw
protocol  = constcw
device    = /var/keys/constant.cw
group     = 7
```

### Remote Radegast Reader

```
[reader]
label        = myradegastreader
protocol     = radegast
device       = 192.168.0.6,56789
group        = 9
caid         = 0500
```

### AD-Teknik

#### AB Multiprogrammer 3.5 serial

```
[reader]
label        = mymultiprogrammer3.5
protocol     = mp35
detect       = CD
device       = /dev/ttyS1
group        = 10
emmcache     = 1,3,2
services     = services10
caid         = 0900
```

#### AB Multiprogrammer 3.6. USB

```
[reader]
label        = mymultiprogrammer3.6
protocol     = mp35
detect       = CD
device       = /dev/ttyUSB1
group        = 11
emmcache     = 1,3,2
services     = services11
caid         = 1000
```

#### AB USB Phoenix at 6.00 mhz

```
[reader]
label        = mymultiprogrammerUSBPhoenix
protocol     = mp35
detect       = CD
device       = /dev/ttyUSB2
mhz          = 600
group        = 12
emmcache     = 1,3,2
services     = services12
caid         = 1100
```

### sc8in1 reader

```
[reader]
label        = mysc8in1reader
protocol     = sc8in1
device       = /dev/ttyUSB0:1
group        = 13
emmcache     = 1,3,2
services     = services11
caid         = 1200
```

## Smargo Special

Vorab, die Lösung lautet **udev** => [\[1\]](http://de.wikipedia.org/wiki/Udev)

Smargos bieten von Haus aus keine eindeutige Kennung, zumindest bis Firmware 1.04 nicht. Ab Firmware 1.04 kann man jedoch ein eindeutiges Kennzeichen mit den Smargo-Tools vergeben. Wie dieses Kennzeichen (der eindeutige Name) zu setzen ist, kannst Du der Smargo-Tool-Dokumentation entnehmen, die den Smargo-Tools beiliegen sollte.

Nachfolgend ein Beispiel mit drei Smargos und einem MasterCRD auf einem Debian-Linux.

Wir **entfernen alle Smargos vom PC** und bezeichnen diese dann sukzessive eindeutig, indem wir die Smargo-Linux-Tools wie folgt ausführen:

```
cd /dahin/wo/die/smargotools/liegen # wir wechseln in das Smargo-Tool-Verzeichnis
# Smargo OHNE Karte einstecken, am Besten in einen "anderen" USB-Slot!
./srp_tool -n 1 # wir weisen hiermit die ID "1" zu und der OSCam-Device-Eintrag lautet dann "Serial:Reader 1"
# Smargo raus und nächsten rein...
./srp_tool -n 2 # wir weisen hiermit die ID "2" zu und der OSCam-Device-Eintrag lautet dann "Serial:Reader 2"
# u.s.w...
```

Die udev-Regeln als Beispiel:

```
# wir erstellen neue udev-Regeln
vi /lib/udev/rules.d/10-usb-deinNameZumBeispiel.rules
# und fügen folgende Inhalte ein...
# Smargo 1
SUBSYSTEMS=="usb", KERNEL=="ttyUSB*", ATTRS{serial}=="Reader 1", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", SYMLINK+="smargo1", MODE="0666"
# Smargo 2
SUBSYSTEMS=="usb", KERNEL=="ttyUSB*", ATTRS{serial}=="Reader 2", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", SYMLINK+="smargo2", MODE="0666"
# Smargo 3
SUBSYSTEMS=="usb", KERNEL=="ttyUSB*", ATTRS{serial}=="Reader 3", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", SYMLINK+="smargo3", MODE="0666"
# MasterCRD ueber Serial-Connector *************************
SUBSYSTEMS=="usb", KERNEL=="ttyUSB*", ATTRS{idVendor}=="4711", ATTRS{idProduct}=="4712", SYMLINK+="masterCRD", MODE="0666"
```

Die udev-Regeln für Smargo SmartReader und Triple Reader+ als Beispiel [\[2\]](http://www.streamboard.tv/wbb2/thread.php?postid=454631):

```
# File: /etc/udev/rules.d/45-smargo-reader.rules
############################## smargo tripple ###########################
SUBSYSTEMS=="usb", ATTRS{interface}=="Triple Reader+", ATTRS{../serial}=="12345678", ATTRS{bInterfaceNumber}=="01", SYMLINK+="sc/my-special-card", GOTO="smargo_tripple_end"
SUBSYSTEMS=="usb", ATTRS{interface}=="Triple Reader+", SYMLINK+="sc/triple-$attr{../serial}-$attr{bInterfaceNumber}"
LABEL="smargo_tripple_end"
############################## smargo stick ##############################
SUBSYSTEMS=="usb", KERNEL=="ttyUSB*", ATTRS{serial}=="Reader 1234567", SYMLINK+="sc/my-very-important-card"
```

Somit schaut die oscam.server z.B. wie folgt aus:

```
[reader]
label               = my_smargo1
protocol            = smartreader     # oder "mouse"
device              = Serial:Reader 1 # oder bei "mouse" /dev/smargo1
detect              = cd
mhz                 = 600
cardmhz             = 600
emmcache            = 1,3,2
group               = 1

[reader]
label               = my_smargo2
protocol            = mouse           # oder "smartreader"
device              = /dev/smargo2    # oder bei "smartreader" Serial:Reader 2
detect              = cd
mhz                 = 368
cardmhz             = 368
emmcache            = 1,3,2
group               = 2

# usw...
```