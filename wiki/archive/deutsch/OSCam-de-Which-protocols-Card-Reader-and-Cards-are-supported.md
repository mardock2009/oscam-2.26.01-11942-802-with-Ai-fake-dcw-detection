> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/Which protocols Card Reader and Cards are supported

## Inhaltsverzeichnis

+   [1 Protokolle](#Protokolle)
    +   [1.1 Protokollarten](#Protokollarten)
    +   [1.2 Die unterstützten Protokolle](#Die_unterstützten_Protokolle)
        +   [1.2.1 Kommandozeilen-Optionen](#Kommandozeilen-Optionen)
    +   [1.3 CCcam](#CCcam)
+   [2 Card Reader](#Card_Reader)
    +   [2.1 Seriell](#Seriell)
    +   [2.2 USB](#USB)
+   [3 Cards](#Cards)

## Protokolle

### Protokollarten

Bei den Protokollen gibt es UDP und TCP basierende:

+   UDP bedeutet, dass es keine fixe Verbindung zwischen Client und Server gibt. Der Client/Server sendet seine Anfrage/Antwort in der Hoffnung, dass sie ankommt. Es wird keine Überprüfung gemacht, ob alle Datenpakete ankommen.[\[1\]](http://de.wikipedia.org/wiki/User_Datagram_Protocol)

+   TCP bedeutet, dass eine fixe Verbindung über sogenannte Sockets zwischen Client und Server aufgebaut wird. Bei dieser Verbindung wird sichergestellt, dass gesendete Daten beim Empfänger auch ankommen. Es hat dadurch etwas mehr overhead als UDP und ist etwas langsamer. Bei den für CS übertragenen Datenmengen ist dies jedoch irrelevant. Der große Vorteil von TCP ist, dass selbst bei qualitativ schlechten Internetleitungen eine stabile Verbindung möglich ist.[\[2\]](http://de.wikipedia.org/wiki/Transmission_Control_Protocol)



### Die unterstützten Protokolle

+   camd 3.3x (TCP)
+   camd 3.5x / 3.57x (UDP) mit AU-Support, cascading/remote server ECM support, ECM und EMM support mit size > 256 bytes
+   camd 3.78x (TCP) mit cascading/remote server ECM report, ECM und EMM support mit size > 256 bytes
+   Newcamd (TCP) mit AU-Support, cascading/remote server ECM support
+   Radegast (TCP)
+   CCcam (TCP) mit cascading/remote server support, ECM und EMM support mit size > 256 bytes
+   GBox (UDP)mit cascading/remote server support, ECM und EMM suppurt mit size > 256 bytes
+   serial (HSIC, SSSP, BOMBA, DSR 9500)
+   DVB API mit AU, Multituner und PIP-Support



#### Kommandozeilen-Optionen

+   \-a|--crash-dump = write oscam.crash on segfault (needs installed GDB and OSCam compiled with debug infos -ggdb)
+   \-b|--daemon = starts in background, writing oscam.version with starttime and version info in temporary directory
+   \-B <filename> = change PID file name and path, overrides pidfile of oscam.conf, default: oscam.pid in default-tmp-directory
+   \-c|--config-dir <directory> = read configuration from <directory>, default:see CS\_CONFDIR in globals.h, while starting OSCam prints warnings on invalid keywords, comment lines start with # character.
+   \-d|--debug <level> = debug level mask:
    +   0 = no debugging (default)
    +   2 = ATR parsing info, ECM dumps, CW dumps
    +   4 = traffic from/to the reader
    +   8 = traffic from/to the clients
    +   16 = traffic to the reader-device on IFD layer
    +   32 = traffic to the reader-device on I/O layer
    +   64 = EMM logging
    +   128 = DVBAPI logging
    +   256 = load balancing logging
    +   512 = cache exchange logging
    +   1024 = client ECM logging
    +   2048 = CSP logging
    +   4096 = CWC logging
    +   65535 = debug all
+   \-g|--gcollect <mode> = garbage collector debug mode, default:none:
    +   1 = immediate free
    +   2 = check for double frees
+   \-h|--help = usage
+   \-I|--syslog-ident <ident> = set syslog ident, default:oscam
+   \-p|--pending-ecm <number> = maximum number of pending ECM packets, default:32, maximum:255
+   \-r|--restart <level> = restart level:
    +   0 = disabled, restart request sets exit status to 99
    +   1 = restart activated, web interface can restart oscam (default)
    +   2 = like 1, but also restart on segmentation faults
+   \-S|--show-sensitive = do not filter sensitive info (card serial numbers) in the logs
+   \-s|--capture-segfaults = capture segmentation faults
+   \-t|temp-dir <directory> = use <directory> for temporary data, default:temporary directory of OS
+   \-u|--utf8 = enable output of web interface in UTF-8 charset
+   \-V|--bild-info = show OSCam version info
+   \-w|--wait <seconds> = time waiting for system time to be set correctly



### CCcam

[![](/images/c/c8/UnderConstruction.jpg)](/wiki/Datei:UnderConstruction.jpg) **Baustelle**



## Card Reader

Ein aktualisiertes Verzeichnis wird hier bereit gehalten: [Device-List](http://www.streamboard.tv/oscam/wiki/DeviceList "streamboard:oscam/wiki/DeviceList")



### Seriell

+   Reader mit Mouse Protokoll 3,5 bzw. 6 Mhz Taktfrequenz
+   interne Reader (z.B. Dreambox)
+   Reader können auch über einen Serial-USB Adapter angeschlossen werden.



### USB

+   Reader mit FTDI Chipsatz (z.B. Smargo Smartreader+)
+   Reader mit Prolific Chipsatz, kein Übertakten möglich



## Cards

Ein aktualisiertes Verzeichnis wird hier bereit gehalten: [CardsList](http://www.streamboard.tv/oscam/wiki/CardsList "streamboard:oscam/wiki/CardsList")