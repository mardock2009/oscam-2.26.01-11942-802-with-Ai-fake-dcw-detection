> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/Which protocols Card Reader and Cards are supported

## Inhaltsverzeichnis

+   [1 **Which protocols, Card Reader and Cards are supported?**](#Which_protocols,_Card_Reader_and_Cards_are_supported?)
    +   [1.1 Protocolls](#Protocolls)
        +   [1.1.1 From OScam supported protocolls](#From_OScam_supported_protocolls)
        +   [1.1.2 Options](#Options)
    +   [1.2 Card Reader](#Card_Reader)
        +   [1.2.1 Seriell](#Seriell)
        +   [1.2.2 USB](#USB)
    +   [1.3 Cards](#Cards)

## **Which protocols, Card Reader and Cards are supported?**

### Protocolls

+   UDP = no firm connection between client and server sockets. No checking wheter all data packets have arrived.

+   TCP = firm connection between client and server sockets. Checking wheter all data packets have arrived. More overhead and therefore a little slower than UDP. However, this is irrelevant for the small amounts of data for CS. Great advantage: stable compounds in low Internet lines.

#### From OScam supported protocolls

+   newcamd with cascading/remote server ECM support
+   camd 3.3x TCP
+   camd 3.5x / 3.57x UDP with cascading/remote server ECM support, ECM and EMM support with size > 256 bytes
+   camd 3.78x TCP with cascading/remote server ECM support, ECM and EMM support with size > 256 bytes
+   CCcam with cascading/remote server ECM support, ECM and EMM support with size > 256 bytes
+   DVB API with multi tuner and PIP support
+   gbox with cascading/remote server ECM support
+   serial (HSIC, SSSP, BOMBA, DSR 9500)
+   radegast

#### Options

+   \-a|--crash-dump = write oscam.crash on segfault (needs installed GDB and OSCam compiled with debug infos -ggdb)
+   \-b|--daemon = starts in background, writing oscam.version with starttime and version info in temporary directory
+   \-B <filename> = set PID file, overrides pidfile of oscam.conf, default: none
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

### Card Reader

An updated list you will find here: [DeviceList](http://www.streamboard.tv/oscam/wiki/DeviceList "streamboard:oscam/wiki/DeviceList")

#### Seriell

+   reader with Mouse protocol 3,5 or 6 Mhz clockspeed
+   intern Reader (z.B. Dreambox)
+   reader can also have a seral-USB adapter connection

#### USB

+   reader with FTDI Chipset (z.B. Smargo Smartreader+)
+   reader with Prolific Chipset, no overclocking possible!

### Cards

A updated list you find here: [CardsList](http://www.streamboard.tv/oscam/wiki/CardsList "streamboard:oscam/wiki/CardsList")