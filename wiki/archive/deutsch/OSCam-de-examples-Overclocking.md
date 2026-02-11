> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/examples/Overclocking

## Inhaltsverzeichnis

+   [1 Beispiel-Konfigurationen Overclocking](#Beispiel-Konfigurationen_Overclocking)
    +   [1.1 Dreambox und andere interne Reader](#Dreambox_und_andere_interne_Reader)
    +   [1.2 easymouse2 Reader](#easymouse2_Reader)
        +   [1.2.1 Beispielkonfiguration S02](#Beispielkonfiguration_S02)
    +   [1.3 Phoenix/Smartmouse Reader](#Phoenix/Smartmouse_Reader)
    +   [1.4 Smargo Smartreader+](#Smargo_Smartreader+)
    +   [1.5 Baudraten](#Baudraten)

## Beispiel-Konfigurationen Overclocking

### Dreambox und andere interne Reader

Für die Dreambox und andere interne Reader wird die höchstmögliche clockrate automatisch ermittelt. Der **MHz-Parameter in \[reader\]** ermöglicht es, den von OSCam automatisch ermittelten Wert zu überschreiten, wenn er von 357 und 358 abweicht. Üblicherweise sollte dort aber kein Wert für mhz eingetragen werden.

Bei bestimmten Dreamboxes (insbesondere PPC-Clones) führt der Default-Wert im Parameter mhz zu langsamen ECM-Zeiten und/oder zu *"not found"*. Durch das stufenweise Setzen der Werte z.B. wie 200, 300, 400, ... 1600 kann man einen Wert herausfinden, der mit dem Receiver und der Karte gut arbeitet. Je höher der mhz-Wert, desto niedriger wird die ECM-Zeit (seltsam genug ;-) )

Wenn ein zu niedriger Wert gewählt wird, wird die Karte nicht erkannt (**no ATR** oder **card not supportet**). Wird ein zu hoher Wert gewählt, werden die ECM-Zeiten niedrig. Die Erfahrungen zeigen, dass entweder des Fehlen der mhz-Zeile oder ein Eintrag von mhz = 1000 am besten funktioniert.

### easymouse2 Reader

#### Beispielkonfiguration S02

Dipschalter:

```
1. Dip    = unten (5 Volt)
2. Dip    = unten (Phoenix)
3. Dip    = oben ---> Einstellungen in Dip 4!
4. Dip    = 10 MHz
```

Configuration Reader:

```
[reader]
label                         = mymouse
enable                        = 1
protocol                      = mouse
device                        = /dev/ttyUSB0
services                      = skywelt,skyweltextra,skyfilm
caid                          = 1702
force_irdeto                  = 1
boxkey                        = 1122334455667788
detect                        = cd
mhz                           = 1000
cardmhz                       = 600
ident                         =
group                         = 1,2,3
emmcache                      = 1,3,2
blockemm-unknown              = 1
lb_weight                     = 100
```

### Phoenix/Smartmouse Reader

Overclocking funktioniert nicht unter Windows und Mac OS X. Einstellungen sind unmittelbar am reader erforderlich (meistens Dip-Schalter). OSCam selbst kann in diesem Fall keine Frequenzen setzen!

### Smargo Smartreader+

+   protocol = **smargo** für die Kernel-Treiber (libusb wird nicht benötigt) oder
+   protocol = **smartreader** (nicht empfohlen) für die auf libusb basierende Treiber-Implementation von OSCam.

Die Reader-Frequenz mit dem Smargo Smartreader+Tool (srp\_tools) setzen. Wenn keine mhz und cardmhz gesetzt werden, versucht OSCam auf der Grundlage der Maximum-Speed von ATR die Baudrate automatisch zu setzen. Overclocking ist möglich.

### Baudraten

OSCam versucht, die Baudraten automatisch zu setzen. Bei einem **Standard Serial Port** sind die Einstellungsmöglichkeiten für eine Baudrate begrenzt, sodass Overclocking möglicherweise nicht funktioniert. Daher ist bei der Benutzung von Serial Readern der beste Weg zum Overclocking die Verbindung des Readers über einen **FTDI basierten USB to serial port adapter**.

Wenn Overclocking nicht funktioniert, sollte die effektive Baudrate über das logfile festgestellt werden. Wenn diese zu stark von der geforderten Baudrate abweicht, wird die Karte nicht erkannt (no ATR). Dann sollte der Wert von mhz erneut angepasst werden. Je höher die Baudrate, desto genauer arbeitet die effektive Baudrate.