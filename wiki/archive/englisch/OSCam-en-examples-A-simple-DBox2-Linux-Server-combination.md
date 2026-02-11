> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/examples/A simple DBox2-Linux-Server-combination

## Inhaltsverzeichnis

+   [1 A simple DBox2-Linux-Server-combination](#A_simple_DBox2-Linux-Server-combination)
    +   [1.1 Intro](#Intro)
    +   [1.2 Server and Client](#Server_and_Client)
        +   [1.2.1 oscam.services](#oscam.services)
    +   [1.3 Server](#Server)
        +   [1.3.1 oscam.conf](#oscam.conf)
        +   [1.3.2 oscam.server](#oscam.server)
        +   [1.3.3 oscam.user](#oscam.user)
    +   [1.4 Client](#Client)
        +   [1.4.1 oscam.conf](#oscam.conf_2)
        +   [1.4.2 oscam.server](#oscam.server_2)
        +   [1.4.3 oscam.user](#oscam.user_2)

## A simple DBox2-Linux-Server-combination

Tested with OSCam "1.00 build #3149" and "1.00-unstable\_svn build #4185"

### Intro

The following example shows a simple main configuration for three CS. Client is a dbox2 and server a PC with BS Linux Debian 6. Client connect by \[camd35\] protocol to server.

### Server and Client

#### oscam.services

Details: [oscam.services](/wiki/OSCam/de/Config/oscam.services "OSCam/de/Config/oscam.services")

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Attention:** This file is a **important** OSCam-congiguration-file! Do not be **lazy** and maintain the oscam.services correctly, then you will be rewarded with fast switching. That means that you fill in only "srvid's" that opens your CS.



```
[mm_sky] # SKY: Complete
caid=1702
provid=000000
srvid=0008,0009,000A,000B,000C,000D,000E,000F,0010,0011,0013,0014,0015,0016,0017,0018,0019,001A,001B,001C,001D,0022,0024,0029,002A,002B,0032,0034,0035,003C,003D,003E,003F,0041,0042,0043,0044,0075,007A,007B,007C,007E,007F,0080,0081,0082,0083,0084,0096,0097,0098,0099,009A,009B,009C,00A8,00DD,00DE,00DF,00FB,00FC,00FD,00FE,0105,0106,0107,0108,010F,0110,0111,0119,011A,011B,0123,0124,0125,012D,012E,012F,0137,0138,0139,0141,0142,0143,014B,014C,014D,0156,0159,0160,0163,016B,016D,0175,0201,0203,0204,0206,07FF,2EFE,3331,3331,3394,4461,4462,6FF1,7009,700A

[mm_hd] # HD+
caid=1830
provid=000000,003411,008011
srvid=277E,EF10,EF11,EF14,EF15,EF74,EF75,EF76,EF77
# 277E Test, e.g. for AU, worling in SD

[sa_sky] # SKY: Welt, Film, Erotik, Select, Radio
caid=1702
provid=000000
srvid=000E,000D,000C,0034,00A8,001B,002A,0024,0032,001D,0016,0022,001C,001A,0013,0206,0018,0015,000A,000B,002B,0009,0008,0014,0029,0019,0203,0011,00FB,0105,010F,0119,0123,012D,0137,0141,014B,00FE,0108,0099,009A,009C,0096,0098,0097,009B
```

### Server

#### oscam.conf

Details: [oscam.conf](/wiki/OSCam/de/Config/oscam.conf "OSCam/de/Config/oscam.conf")

```
[global]
# Prozess
nice                        = -10
pidfile                     = /tmp/oscam.pid
# Logging
logfile                     = /tmp/oscam.log
disablelog                  = 0
maxlogsize                  = 256
usrfile                     = /tmp/oscam_user.log
disableuserfile             = 0
usrfileflag                 = 1
# Timeouts - If you have problems adjust or remove rows!
clienttimeout               = 2000
fallbacktimeout             = 1000
serialreadertimeout         = 800
# Sonstiges
clientdyndns                = 0
unlockparental              = 1
saveinithistory             = 1

[monitor]
port                        = 15990
nocrypt                     = 127.0.0.1,192.168.0.0-192.168.0.255 # "No entry for other IP's!"
aulow                       = 30
hideclient_to               = 0
monlevel                    = 4
appendchaninfo              = 0

[camd35]
port                        = 15991

[webif]
httpport                    = 16000
httprefresh                 = 0
httpallowed                 = 127.0.0.1,192.168.0.0-192.168.0.255 # "No entry for other IP's!"
httphideidleclients         = 0
httpreadonly                = 0
```

#### oscam.server

Details: [oscam.server](/wiki/OSCam/de/Config/oscam.server "OSCam/de/Config/oscam.server")

```
[reader]
label               = mm_sky
enable              = 1
protocol            = mouse
device              = /dev/smargo1
detect              = cd
mhz                 = 600
cardmhz             = 600
emmcache            = 1,3,2
services            = mm_sky
group               = 1

[reader]
label               = mm_hd
enable              = 1
protocol            = mouse
device              = /dev/smargo3
detect              = cd
mhz                 = 368
cardmhz             = 368
emmcache            = 1,3,2
services            = mm_hd
rsakey              = XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
boxkey              = YYYYYYYYYYYYYYYY
group               = 2

[reader]
label               = sa_sky
enable              = 1
protocol            = mouse
device              = /dev/smargo2
detect              = cd
mhz                 = 600
cardmhz             = 600
emmcache            = 1,3,2
services            = sa_sky
group               = 3
```

#### oscam.user

Details: [oscam.user](/wiki/OSCam/de/Config/oscam.user "OSCam/de/Config/oscam.user")

```
[account]
user            = monitor
pwd             = password
monlevel        = 4
group           = 1,2,3

[account]
user            = dbox2
pwd             = password
monlevel        = 0
au              = 1
services        = mm_sky,sa_sky
cccmaxhops      = 5
cccreshare      = 3
group           = 1,3 # a dbox2 can not HD, so no group 2 !

[account]
user            = dm800_1
pwd             = password
monlevel        = 0
au              = 1
services        = mm_sky,mm_hd,sa_sky
cccmaxhops      = 5
cccreshare      = 3
group           = 1,2,3
```



### Client

#### oscam.conf

Details: [oscam.conf](/wiki/OSCam/de/Config/oscam.conf "OSCam/de/Config/oscam.conf")

```
[global]
# Prozess
nice                        = -10
pidfile                     = /tmp/oscam.pid
# Logging
logfile                     = /dev/null
disablelog                  = 1
maxlogsize                  = 16
usrfile                     = /dev/null
disableuserfile             = 1
usrfileflag                 = 0
# Sonstiges
unlockparental              = 1

[dvbapi]
enabled                     = 1
au                          = 1
boxtype                     = dbox2 # dbox2|dreambox|dm7000|duckbox|ufs910|ipbox|ipbox-pmt. Default dreambox.
user                        = local

[webif]
httpport                    = 16000
httprefresh                 = 0
httpallowed                 = 127.0.0.1,192.168.0.0-192.168.0.255 # "No entry for other IP's!"
httphideidleclients         = 0
httpreadonly                = 0
```

#### oscam.server

Details: [oscam.server](/wiki/OSCam/de/Config/oscam.server "OSCam/de/Config/oscam.server")

```
[reader]
label               = sky
enable              = 1
protocol            = camd35
device              = "OSCAM-SERVER-IP",15991
account             = dbox2,password
services            = mm_sky,sa_sky
group               = 1
# if you would like t oddress a ccc...
[reader]
label               = cccam
enable              = 1
protocol            = cccam
device              = "CCCAM-SERVER-IP","CCCAM-SERVER-PORT"
account             = dbox2,password
cccversion          = 2.0.11
cccmaxhops          = 5
ccckeepalive        = 1
audisabled          = 1
services            = !mm_sky,!sa_sky # if thou dost not your services, you should remove this line! ;)
group               = 2
```



#### oscam.user

Details: [oscam.user](/wiki/OSCam/de/Config/oscam.user "OSCam/de/Config/oscam.user")

```
[account]
user                = local
pwd                 = local
monlevel            = 0
au                  = 1
cccmaxhops          = 5
cccreshare          = 3
group               = 1,2
```