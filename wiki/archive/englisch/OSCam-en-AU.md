> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/AU

## Inhaltsverzeichnis

+   [1 AU](#AU)
    +   [1.1 What is AU?!](#What_is_AU?!)
    +   [1.2 How much AU?!](#How_much_AU?!)
    +   [1.3 AU-ready!](#AU-ready!)
+   [2 AU over CCcam](#AU_over_CCcam)
    +   [2.1 CCcam.cfg](#CCcam.cfg)
    +   [2.2 oscam.conf](#oscam.conf)
    +   [2.3 oscam.user](#oscam.user)
    +   [2.4 oscam.services](#oscam.services)
    +   [2.5 CCcam.cfg](#CCcam.cfg_2)
    +   [2.6 oscam.conf](#oscam.conf_2)
    +   [2.7 oscam.user](#oscam.user_2)
    +   [2.8 oscam.services](#oscam.services_2)
    +   [2.9 HD+](#HD+)

## AU

### What is AU?!

**AU** stands for **A**uto**U**pdate and it's the procedure that extends the validity of your subscription card. Each card has a time limit, usually a month, after which it will stop decoding channels. AU informs the card to extend this time limit, and must be executed periodically, to allow you to watch the channels you subscribe for. If the procedure is not executed properly, the card does not receive the time extension, and your decoder will fail to unscramble the channels.

The satellite providers are using the AU procedure to serve notices to subscribers who have failed to pay their subscription fees. In such a case, a signal is sent to the card to reduce the validity. Blocking such a signal would allow you to continue watching until the original card limit has been reached.

### How much AU?!

If you have several receivers, it's not necessary for all receivers to send updates to the card. It's sufficient for one receiver to execute AU in order to update the card, usually the one most commonly used. For the procedure to work, the receiver that is enabled to execute AU must be tuned to one of the subscribed channels.

### AU-ready!

AU-ready means that OSCam has been successfully tested and confirmed to write the EMMs to the card, allowing the receivers to continue decoding. The table below lists the condition for different systems at OSCam-SB-0.99.4-trunk-2020 version. Many thanks to Alno for this! If your system is not yet AU-ready or implemented, then post EMM dumps of your card to the forums. Detailed information can be found in the OSCam log, if you start OSCam with the switch "-D64".

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

## AU over CCcam

AU over CCcam works for the following cards: SKY Germany S02, Astra HD+ black and white and Unitymedia UM02. YOu only have to set up the CCcam Protocol in oscam.conf and connect the client running CCcam. Example for direct AU over CCcam Protocol: Beispiel für S02, V13 und HD+:

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



[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Warning:** When using the NewCamd protocol, always set AU directed at a reader. Setting "au = 1" will not work properly!

### CCcam.cfg

```
# NewCAMD CONNECTIONS **************************************
#N: <IP> <Port> <Username> <Password> <Description Key (14byte)> <nr_of_hops_away (default: 1)> <stealth mode (default: 0)>
N: 192.168.0.1 4711 dm800_1 dm800 01 02 03 04 05 06 07 08 09 10 11 12 13 14
N: 192.168.0.1 4712 dm800_2 dm800 01 02 03 04 05 06 07 08 09 10 11 12 13 14
```

### oscam.conf

```
[newcamd]
port           = 4711@1702:000000;4712@1702:000000 # each card with its own port
key            = 0102030405060708091011121314
allowed        = 127.0.0.1,192.168.0.0-192.168.0.255
```

### oscam.user

```
[account]
user            = dm800_1
pwd             = dm800
au              = mm_sky        # AU for the mm_sky reader
services        = mm_sky,sa_sky # ... but access both readers, for Load Balancing to work ;)
group           = 1,2           # (see above)

[account]
user            = dm800_2
pwd             = dm800
au              = sa_sky        # AU for sa_sky reader
services        = mm_sky,sa_sky # ... but access both readers, for Load Balancing to work ;)
group           = 1,2           # (see above)
```

### oscam.services

```
[mm_sky]    # SKY: Complete
caid=1702
provid=000000
srvid=0008,0009,000A,000B,000C,000D,000E,000F,0010,0011,0013,0014,0015,0016,0017,0018,0019,001A,001B,001C,001D,0022,0024,0029,002A,002B,0032,0034,0035,003C,003D,003E,003F,0041,0042,0043,0044,0075,007A,007B,007C,007E,007F,0080,0081,0082,0083,0084,0096,0097,0098,0099,009A,009B,009C,00A8,00DD,00DE,00DF,00FB,00FC,00FD,00FE,0105,0106,0107,0108,010F,0110,0111,0119,011A,011B,0123,0124,0125,012D,012E,012F,0137,0138,0139,0141,0142,0143,014B,014C,014D,0156,0159,0160,0163,016B,016D,0175,0201,0203,0204,0206,07FF,2EFE,3331,3331,3394,4461,4462,6FF1,7009,700A

[sa_sky]    # SKY: World, Film, Erotic, Select, Radio
caid=1702
provid=000000
srvid=000E,000D,000C,0034,00A8,001B,002A,0024,0032,001D,0016,0022,001C,001A,0013,0206,0018,0015,000A,000B,002B,0009,0008,0014,0029,0019,0203,0011,00FB,0105,010F,0119,0123,012D,0137,0141,014B,00FE,0108,0099,009A,009C,0096,0098,0097,009B
```



### HD+

Unfortunately, OSCam can update an HD+ card with a CCcam client, only by the CCcam Protocol.