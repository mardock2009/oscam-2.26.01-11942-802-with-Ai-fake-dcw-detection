> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/examples/Sky HD and MTV-Unlimited

## Inhaltsverzeichnis

+   [1 Sky GER HD, MTV-Unlimited, HD+ and TNTSAT](#Sky_GER_HD,_MTV-Unlimited,_HD+_and_TNTSAT)
    +   [1.1 Basics](#Basics)
    +   [1.2 Configuration](#Configuration)
        +   [1.2.1 oscam.conf](#oscam.conf)
        +   [1.2.2 oscam.server](#oscam.server)
        +   [1.2.3 oscam.user](#oscam.user)
        +   [1.2.4 oscam.services](#oscam.services)
    +   [1.3 Client connection with mgcamd](#Client_connection_with_mgcamd)
    +   [1.4 Client connection with CCcam](#Client_connection_with_CCcam)
    +   [1.5 Client connection with OSCam DVB API](#Client_connection_with_OSCam_DVB_API)
        +   [1.5.1 oscam.conf](#oscam.conf_2)
        +   [1.5.2 oscam.user](#oscam.user_2)
        +   [1.5.3 oscam.server](#oscam.server_2)
        +   [1.5.4 oscam.services](#oscam.services_2)

## Sky GER HD, MTV-Unlimited, HD+ and TNTSAT

### Basics

+   1x serial Cardreader with Sky GER Nagra 3 S02 SC (6,00 Mhz) SD CAID 1702, HD CAID 1833, Ident 000000
+   1x USB serial Cardreader with MTV-Unlimited Conax SC (3,57 Mhz) CAID 0B00, Ident 000000
+   1x USB serial Cardreader with HD+ Nagravison SC (3,68 Mhz) CAID 1830, Ident 000000,003411,008011
+   1x USB serial Cardreader with TNTSAT Viaccess SC (3,57 Mhz) CAID 0500, Ident 030B00,FFF400
+   protocol understood by many clients and STBs: newcamd

### Configuration

#### oscam.conf

This is where we configure OScam for the newcamd protocol. We need the following values:

+   Choose a DES Key for newcamd protocol (14-byte value), e.g. 0102030405060708091011121314.
+   Choose a port for Sky SD CAID 1702, e.g. 12345.
+   Choose a port for MTV-Unlimited CAID 0B00, e.g. 23456.
+   Choose a port for HD+ CAID 1830, e.g. 34567.
+   Choose a port for TNTSAT CAID 0500, e.g. 45678.

Now we write the newcamd configuration, specifying for each port the CAID and Idents.

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

+   The frequencies for each card reader should be known.
+   We define a separate reader for each card, name must be unique.
+   Each reader is assigned a different group number.
+   For each reader we specify a caid, the idents, and a service name, to identify what card is stored in it.

```
[reader]
detect    = CD
device    = /dev/ttyS0
protocol  = mouse

label     = reader0
emmcache  = 1,3,2
caid      = 1702
ident     = 1702:000000
services  = sky
group     = 0

[reader]
detect    = CD
device    = /dev/ttyUSB0
protocol  = mouse

label     = reader1
emmcache  = 1,3,2
caid      = 0B00
ident     = 0B00:000000
services  = mtv_unlimited
group     = 1

[reader]
detect    = CD
device    = /dev/ttyUSB1
protocol  = mouse

rsakey    = <Enter your RSA Key here>
boxkey    = <Enter your Box Key here>
label     = reader2
emmcache  = 1,3,2
caid      = 1830
ident     = 1830:000000,003411,008011
services  = hdp
group     = 2

[reader]
detect    = CD
device    = /dev/ttyUSB2
protocol  = mouse

aeskeys   = 0500@030B00:<Enter your AES Key here>,<Enter your AES Key here>
label     = reader3
emmcache  = 1,3,2
caid      = 0500
ident     = 0500:030B00,FFF400
services  = tntsat
group     = 3

```

#### oscam.user

+   Create for each receiver and each CAID its own accaount, associating it with the appropriate service and group.
+   All clients are configured for AutoUpdate. If it is not performed, the card validity is not extended.
+   Configure all Sky HD service IDs through betatunnel and map Sky HD CAID 1833 to Sky SD 1702. This way, the card will only receive requests for CAID 1702.

```
[account]
user       = skyuser1
pwd        = skypassword1
group      = 0
au         = reader0
betatunnel = 1833.007a:1702,1833.007b:1702,1833.007c:1702,1833.007e:1702,1833.007f:1702,1833.0080:1702,1833.0081:1702,1833.0082:1702,1833.0083:1702,1833.0084:1702
ident      = 1702:000000
caid       = 1702
services   = sky

[account]
user       = skyuser2
pwd        = skypassword2
group      = 0
au         = reader0
betatunnel = 1833.007a:1702,1833.007b:1702,1833.007c:1702,1833.007e:1702,1833.007f:1702,1833.0080:1702,1833.0081:1702,1833.0082:1702,1833.0083:1702,1833.0084
ident      = 1702:000000
caid       = 1702
services   = sky

[account]
user       = mtvuser1
pwd        = mtvpassword1
group      = 1
au         = reader1
ident      = 0B00:000000
caid       = 0B00
services   = mtv

[account]
user       = mtvuser2
pwd        = mtvpassword2
group      = 1
au         = reader1
ident      = 0B00:000000
caid       = 0B00
services   = mtv

[account]
user       = hdpuser1
pwd        = hdppassword1
group      = 2
au         = reader2
ident      = 1830:000000,003411,008011
caid       = 1830
services   = hdp

[account]
user       = hdpuser2
pwd        = hdppassword2
group      = 2
au         = reader2
ident      = 1830:000000,003411,008011
caid       = 1830
services   = hdp

[account]
user       = tntuser1
pwd        = tntpassword1
group      = 3
au         = reader3
ident      = 0500:030B00,FFF400
caid       = 0500
services   = tntsat

[account]
user       = tntuser2
pwd        = tntpassword2
group      = 3
au         = reader3
ident      = 0500:030B00,FFF400
caid       = 0500
services   = tntsat

```

You should avoid the abbreviation of the beta tunnel like so:

```
"Betatunnel = 1833.FFFF:1702"
```

If the clients are not 100% identical, then caching would be bypassed.

#### oscam.services

+   Definition of Services.

```
[mtv]
caid=0B00
provid=000000
srvid=6FEE,6FEF,6FF0,6FF1,6FF3,6FFA,6FFF

[sky]
caid=1702
provid=000000
srvid=000C,000D,000E,000F,0010,0013,0015,0016,0017,0018,001A,001B,001C,001D,0022,0024,002A,0032,0034,00A8,0206,003C,003D,003E,003F,0040,0041,0042,0043,0044,07FF,2EFE,3331,3394,4461,4462,6FF1,7009,700A,0011,0035,00DD,00DE,00FD,0107,0111,011B,012F,0125,0139,0143,014D,016B,0175,006A,006B,006F,0070,0071,0072,0075,0077,0081,0082,0083,0084,00DF,00FC,0106,0110,011A,0124,012E,0138,0142,014C,0156,0160,0008,0009,0014,0019,0029,000A,000B,002B,0203,0204,0096,0097,0098,0099,009A,009B,009C

[hdp]
caid=1830
provid=000000,003411,008011
srvid=EF10,EF11,EF14,EF15,EF74,EF75,EF76,EF77

[tntsat]
caid=0500
provid=030B00,FFF400
srvid=1F41,1F44,1F48,1F4A,1FD8,200C,20A4,20B3,20B4,20B6,2261,2329,232A,23F7,2405,2407,240A,2458,245E,25E5,25E6,25E7,25E8,25E9,25EA,25EB,25EC,25ED,25EE,25EF,25F0,2649,264A,264B,264C,264D,264E,264F,2650,2651,2652,2653,2654,4284
```

### Client connection with mgcamd

+   Both Sky SD CAID 1702 and Sky HD CAID 1833 are accessed through **one** connection.
+   No additional mapping is required on the client side.
+   The mgcamd client supports AutoUpdate.
+   Add these lines to newcamd.list:

```
CWS = 192.168.178.1 12345 skyuser1 skypassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14 lan server1
CWS = 192.168.178.1 23456 mtvuser1 mtvpassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14 lan server2
CWS = 192.168.178.1 34567 hdpuser1 hdppassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14 lan server3
CWS = 192.168.178.1 45678 tntuser1 tntpassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14 lan server4
```

### Client connection with CCcam

+   Both Sky SD CAID 1702 and Sky HD CAID 1833 are accessed through **one** connection.
+   No additional mapping is required on the client side.
+   Add these lines to CCcam.cfg:

```
N: 192.168.178.1 12345 skyuser1 skypassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14
N: 192.168.178.1 23456 mtvuser1 mtvpassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14
N: 192.168.178.1 23456 hdpuser1 hdppassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14
N: 192.168.178.1 23456 tntuser1 tntpassword1 01 02 03 04 05 06 07 08 09 10 11 12 13 14
```

### Client connection with OSCam DVB API

+   Yes, we are using OScam as a client!
+   Both Sky SD CAID 1702 and Sky HD CAID 1833 are accessed through **one** connection.
+   OSCam DVB API supports AutoUpdate.

#### oscam.conf

+   No logging.
+   DVB API defined with AU.

```
[global]
disablelog      = 1
disableuserfile = 1

[dvbapi]
enabled = 1
au      = 1
user    = dummyuser
```

#### oscam.user

+   User defined with AU.
+   User is assigned to all groups.
+   Betatunnel must be specified on the client side.

```
[account]
user       = dummyuser
pwd        = dummypassword
betatunnel = 1833.007a:1702,1833.007b:1702,1833.007c:1702,1833.007e:1702,1833.007f:1702,1833.0080:1702,1833.0081:1702,1833.0082:1702,1833.0083:1702,1833.0084
group      = 0,1,2,3
au         = 1
```

#### oscam.server

+   Define a remote reader for each service.
+   We have EMM caching even on the client side.
+   Replace the IP address of the OSCam server on the **device** line to match your LAN configuration.

```
[reader]
label     = reader0
device    = 192.168.178.1,12345
protocol  = newcamd
user      = skyuser1
password  = skypassword1
key       = 0102030405060708091011121314
emmcache  = 1,3,2
caid      = 1702
ident     = 1702:000000
services  = sky
group     = 0

[reader]
label     = reader1
device    = 192.168.178.1,23456
protocol  = newcamd
user      = mtvuser1
password  = mtvpassword1
key       = 0102030405060708091011121314
emmcache  = 1,3,2
caid      = 0B00
ident     = 0B00:000000
services  = mtv
group     = 1

[reader]
label     = reader2
device    = 192.168.178.1,34567
protocol  = newcamd
user      = hdpuser1
password  = hdppassword1
key       = 0102030405060708091011121314
emmcache  = 1,3,2
caid      = 1830
ident     = 1830:000000,003411,008011
services  = hdp
group     = 2

[reader]
label     = reader3
device    = 192.168.178.1,45678
protocol  = newcamd
user      = tntuser1
password  = tntpassword1
key       = 0102030405060708091011121314
emmcache  = 1,3,2
caid      = 0500
ident     = 0500:030B00,FFF400
services  = tntsat
group     = 3

```

#### oscam.services

+   Copy from the server (see above).