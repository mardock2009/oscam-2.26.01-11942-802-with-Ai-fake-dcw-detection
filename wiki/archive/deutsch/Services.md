> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Services

## Inhaltsverzeichnis

+   [1 **Betatunnel**](#Betatunnel)
    +   [1.1 Sky AT/DE](#Sky_AT/DE)
    +   [1.2 Kabel Deutschland Home HD + Privat HD + Sky DE](#Kabel_Deutschland_Home_HD_+_Privat_HD_+_Sky_DE)
+   [2 **Services**](#Services)
    +   [2.1 Sky DE](#Sky_DE)
    +   [2.2 Sky Österreich](#Sky_Österreich)
    +   [2.3 HD+](#HD+)
    +   [2.4 MTV Unlimited](#MTV_Unlimited)
    +   [2.5 SRG/SSR - Swiss (13.0E & 19.0)](#SRG/SSR_-_Swiss_\(13.0E_&_19.0\))
    +   [2.6 BIS.tv (13.0E,19.2E)](#BIS.tv_\(13.0E,19.2E\))
    +   [2.7 BIS.tv (5.0W)](#BIS.tv_\(5.0W\))
    +   [2.8 TéléSAT Numérique (13.0E, 19.2E, 23.5E)](#TéléSAT_Numérique_\(13.0E,_19.2E,_23.5E\))
    +   [2.9 WillyTel](#WillyTel)
    +   [2.10 ORF Digital](#ORF_Digital)
    +   [2.11 AustriaSat (Plus Austria, HD Austria, Kombi Austria)](#AustriaSat_\(Plus_Austria,_HD_Austria,_Kombi_Austria\))
    +   [2.12 Telekommunication Niessl GmbH - Hallo TV](#Telekommunication_Niessl_GmbH_-_Hallo_TV)
    +   [2.13 Kabel Deutschland](#Kabel_Deutschland)
    +   [2.14 Unitymedia (UM2) & KabelBW (V23) = (UMKBW) (incl. Sky)](#Unitymedia_\(UM2\)_&_KabelBW_\(V23\)_=_\(UMKBW\)_\(incl._Sky\))
    +   [2.15 NetCologne (German Cable)](#NetCologne_\(German_Cable\))
    +   [2.16 UnityMedia NRW inkl. Sky NRW (German Cable)](#UnityMedia_NRW_inkl._Sky_NRW_\(German_Cable\))
    +   [2.17 TNTSAT](#TNTSAT)
    +   [2.18 Canal+ France](#Canal+_France)
    +   [2.19 CANALSAT/CANAL+ France](#CANALSAT/CANAL+_France)
    +   [2.20 Canal Digitaal, the Netherlands](#Canal_Digitaal,_the_Netherlands)
    +   [2.21 TivùSat](#TivùSat)
    +   [2.22 Digiturk](#Digiturk)
    +   [2.23 Canal Digital Nordic (0.8W)](#Canal_Digital_Nordic_\(0.8W\))
    +   [2.24 Focus Sat (0.8W)](#Focus_Sat_\(0.8W\))
    +   [2.25 Dolly Buster](#Dolly_Buster)
    +   [2.26 Redlight](#Redlight)
    +   [2.27 Redlight / Hustler HD (DGCrypt)](#Redlight_/_Hustler_HD_\(DGCrypt\))
    +   [2.28 Private Spice](#Private_Spice)
    +   [2.29 Free-X TV / Private Spice](#Free-X_TV_/_Private_Spice)
    +   [2.30 XXL / Dorcel Astra 19.2](#XXL_/_Dorcel_Astra_19.2)
    +   [2.31 Digital+ SD](#Digital+_SD)
    +   [2.32 Digital+ HD](#Digital+_HD)
    +   [2.33 CyfraStart+HD](#CyfraStart+HD)
    +   [2.34 Viasat 4.8E](#Viasat_4.8E)
    +   [2.35 Hustler/Dorcel Astra 19.2](#Hustler/Dorcel_Astra_19.2)

# **Betatunnel**

**Erklärung**

Der Betatunnel dient zum Mappen (Umhängen) von Sky- und KD-CAIDs, sodass z.B. 1833'er-Anfragen über 1702 beantwortet
werden können. Notwendig ist dieses Mapping eigentlich nur bei HD-Kanälen, aber es lassen sich auch alle anderen Kanäle damit "umhängen".
Der Eintrag gehört in die oscam.user. Es dürfen keine Zeilenumbrüche oder Leerzeichen vorhanden sein

Nähere Erläuterung: [oscam.user - betatunnel](/wiki/OSCam/de/Config/oscam.user#betatunnel "OSCam/de/Config/oscam.user")

## Sky AT/DE

**Auto-Betatunnel**

```
betatunnel = 1833.FFFF:1702
```


**Sky komplett S02** (Stand 21-02-2014)

```
betatunnel = 1833.0070:1702,1833.0071:1702,1833.0082:1702,1833.0084:1702,1833.007C:1702,1833.0076:1702,1833.0086:1702,1833.007B:1702,1833.007D:1702,1833.007E:1702,1833.007F:1702,
1833.0080:1702,1833.0073:1702,1833.0065:1702,1833.0074:1702,1833.006B:1702,1833.006F:1702,1833.0083:1702,1833.006E:1702,1833.006C:1702,1833.006A:1702,1833.0081:1702,1833.0072:1702,
1833.010C:1702,1833.0116:1702,1833.0120:1702,1833.012A:1702,1833.0134:1702,1833.013E:1702,1833.0148:1702,1833.0152:1702,1833.0102:1702,1833.007A:1702,1833.0077:1702,1833.006D:1702,
1833.010E:1702,1833.0118:1702,1833.0122:1702,1833.012C:1702,1833.0136:1702,1833.0140:1702,1833.014A:1702,1833.0154:1702,1833.0104:1702,1833.0069:1702,1833.010B:1702,1833.0115:1702,
1833.011F:1702,1833.0129:1702,1833.0133:1702,1833.013D:1702,1833.0147:1702,1833.0151:1702,1833.0101:1702,1833.0066:1702,1833.0079:1702,1833.0078:1702,1833.0075:1702,1833.0135:1702
```

## Kabel Deutschland Home HD + Privat HD + Sky DE

ACHTUNG: Hierzu muss der Eintrag CS\_MAXTUNTAB = 20 in der globals.h erhöht (verdoppelt) werden.

```
betatunnel = 1834.C351:1722,1834.C352:1722,1834.C353:1722,1834.C354:1722,1834.C35F:1722,1834.C355:1722,1834.C356:1722,1834.C357:1722,1834.C358:1722,
1834.C362:1722,1834.0081:1722,1834.0082:1722,1834.0083:1722,1834.0084:1722,1834.C359:1722,1834.C35A:1722,1834.C363:1722,1834.C364:1722,
1834.C365:1722,1834.C366:1722,1834.006F:1722,1834.0070:1722,1834.0071:1722,1834.0072:1722
```

# **Services**

**Erklärung**

Durch die Verwendung von Services ist es möglich den Cardreader zu entlasten, da nur Anfragen durchgelassen werden die entschlüsselt werden können. Ferner ist es möglich einzelnen Usern nur bestimmte Sender freizugeben.

Es gibt KEINE Zeilenumbrüche bei der SRVID, auch wenn es teilweise so dargestellt wird.

Format:

```
[name]
caid   = CAID[,CAID]...
provid = provider ID[,provider ID]...
srvid  = service ID[,service ID]...
```


Nähere Erläuterung: [oscam.user - services](/wiki/OSCam/de/Config/oscam.user#services "OSCam/de/Config/oscam.user")

## Sky DE

Sky DE Komplett mit HD, 3D und Sondersender

```
[skyfullhd]
caid = 098C,09AF,09C4,1702,1833
srvid = 0008,0009,000A,000B,000C,000D,000E,0010,0011,0013,0014,0015,0016,0017,0018,0019,001A,001B,001C,001D,001E,0021,0022,0023,
0024,0025,0026,0027,0029,002A,002B,0032,0034,0038,0039,0065,0066,0069,006A,006B,006C,006D,006E,006F,0070,0071,0072,0073,0074,
0075,0076,0077,0078,0079,007A,007B,007C,007D,007E,007F,0080,0081,0082,0083,0084,0086,0087,0088,0089,008A,008C,00A8,00DD,00DE,
00DF,00F2,00FB,00FC,00FD,00FE,0101,0102,0104,0105,0106,0107,010B,010C,010E,010F,0110,0111,0115,0116,0118,0119,011A,011B,011F,
0120,0122,0123,0124,0125,0129,012A,012C,012D,012E,012F,0133,0134,0135,0136,0137,0138,0139,013D,013E,0140,0141,0142,0143,0147,
0148,014A,014B,014C,014D,014E,0151,0152,0154,0159,0163,016D,0191,0201,0203,0204,0206,0FDA,125D,1485,2EFE,4462,700A
```

Sky DE ohne Buli, Sport und XXX

```
[skyde]
caid = 1702,1833,09C4,098C
srvid = 000C,001C,0021,0022,0023,0025,0026,0027,0044,0071,00A8,0034,0037,0039,001A,000D,0070,000E,0082,0012,2EFE,0043,79E0,6FF1,7001,
3331,0084,0041,0013,6FE0,7008,6D68,0038,0040,0042,700A,0204,003D,0016,0203,006F,006B,003A,003C,0014,006A,002B,000B,0083,07FF,
001D,4461,0018,0206,003F,003E,4462,0032,0010,0024,002A,001B,0017
```

Sky DE Komplett mit HD ohne Blue Movie, Select

```
[skyfullhd]
caid   = 1702,1833,09C4,098C
srvid  =
0008,0009,000A,000B,000C,000D,000E,0010,0011,0013,0014,0015,0016,0017,0018,0019,001A,001B,001C,001D,0021,0022,0023,0024,0025,
0026,0027,0029,002A,002B,0032,0034,001E,0037,0038,0039,003A,003C,003D,003E,003F,0040,0041,0042,0043,0044,0069,006A,006B,006C,
006D,006E,006F,006D,0065,0066,0070,0071,0072,0073,0074,0076,0077,007A,007B,007C,007D,007E,007F,0080,0081,0082,0083,0084,00A8,
00DD,00DE,00DF,00FC,00FD,00F2,0106,0107,0110,0111,011A,011B,0124,0125,012E,012F,0138,0139,0142,0143,014C,014D,0156,0160,016B,
0175,0201,0203,0204,0206,07FF,2EFE,3331,4461,4462,6FF1,7001,7009,700A,6FB8,013E,0148,015C,010E,0118,0122,012C,0136,0140,014A,
0154,0104,0087
```

**Services nach "Orginal Sky Paketen"
****UPDATE 2014-10-01
**

Sky DE Starter

```
[skystarter]
caid   = 1702,09C4,098C
srvid  = 000E,000D,000C,0034,00A8,0017,001B,002A,0024,0010,0032,001D,0016,001C,001A,0013,0206,0018,0015,0011
```

Sky DE Welt + Welt HD

```
[skywelt]
caid   = 1702,09C4,098C
srvid  = 000E,000D,000C,0034,00A8,0017,001B,002A,0024,0010,0032,001D,0016,001C,001A,0013,0206,0018,0015,0011,0082,0070,0076,0071,007F,007E,007B,007C,006C,0084,007D,0080,0065,006A,008A,008C,0191
```

Sky DE Welt Extra

```
[skyweltextra]
caid   = 1702,09C4,098C
srvid  = 0021,0023,0025,0026,0027,0038,0039,003A,2EFE,4461,4462,700A,1485,7001
```

Sky DE Film

```
[skyfilm]
caid   = 1702,09C4,098C
srvid  = 0022,000A,000B,002B,0009,0008,0014,0204,0029,0019,0203
```

Sky DE Film HD

```
[skyfilmhd]
caid   = 1702,09C4,098C
srvid  = 006E,0083,0074,006B,0073,006F,0086,0087
```

Sky DE Sport

```
[skysport]
caid   = 1702,09C4,098C
srvid  = 001E,00DD,00DE,00FD,0107,0111,011B,0125,012F,0139,0143,014D,016B,0175,325F
```

Sky DE Sport HD

```
[skysporthd]
caid = 1702,1833
srvid = 007A,0077,0135,0081,010C,0072,0116,0120,012A,0134,0152,013E,0148,015C,006D,010E,0118,0122,012C,0136,0140,014A,0154,0104,0066
```

Sky DE Bundesliga

```
[skybundesliga]
caid   = 1702,09C4,098C
srvid  = 00FC,00DF,0106,0110,011A,0124,012E,0138,0142,014C
```

Sky DE Bundesliga HD

```
[skybundesligahd]
caid = 1702,1833
srvid = 007A,0077,0135,010B,0115,0069,011F,0129,0133,0151,013D,0147,015B,006D,010E,0118,0122,012C,0136,0140,014A,0154,0104,0066
```

Sky DE 3D

```
[sky3d]
caid   = 1702,1833,09C4,098C
srvid  = 0075
```

Sky DE Blue Movie, Der Infokanal (0201) ist auch in \[skywelt\].

```
[bluemovie]
caid   = 1702,09C4,098C
srvid  = 0201,0159,0163,016D
```

Sky DE Select + Sky DE Select + Sky DE Blue Movie 1+2 HD

```
[skyselect]
caid   = 1702,1833,09C4,098C
srvid  = 0012,0078,0079,007A,00FB,00FE,0105,010F,0119,0123,012D,0137,0141,014B,014E
```

Sky DE komplett Kabel Deutschland

```
[skykomplettKD]
caid   = 1722,1834
srvid  = 000A,000B,002B,0029,0009,0014,0204,0008,0203,0019,0083,006F,0082,0071,0070,EF14,0084,0EE6,006A,006B,006C,0072,002A,0024,
0017,0032,001D,001B,0021,0022,0023,0025,0026,0027,001C,0013,001A,000E,000D,000C,00A8,0206,0016,0018,0034,0015,00DF,0106,0110,011A,
0124,012E,0138,0142,014C,0156,0160,00FC,003C,003D,2EFE,4461,4462,003F,003E,3393,0038,003A,0042,0040,700A,0044,0043,0043,6FF1,7009,
3331,3395,001E,0096,0097,0098,0099,009A,009B,009C,0015,0201,0159,0163,016D,0046,0011,00DD,00DE,00FD,014D,0143,0139,012F,0125,011B,
0107,0111,016B,0175
```

## Sky Österreich

```
[skywelt]
caid                          = 1702
provid                        = 000000
srvid                         = 002A,0018,000E,001A,001C,0010,0206,0016,0013,00A8,000C,000D,001D,001B,0017,0011,0034,0024,0032,0038,0027,0021,700A,0026,0039,0023

[skywelthd]
caid                          = 1702,1833
provid                        = 000000
srvid                         = 0082,0084,007C,0071,0076,0070,006C,0086,007B,007D,007F,007E,0080,006D,0065,006A,0087

[skyfilm]
caid                          = 1702
provid                        = 000000
srvid                         = 0019,0203,0009,000A,000B,002B,0008,0014,0029,0204,0022

[skyfilmhd]
caid                          = 1702,1833
provid                        = 000000
srvid                         = 006F,0074,0083,006B,006E,0073

[sky3d]
caid                          = 1702,1833
provid                        = 000000
srvid                         = 0075

[skyfußballbundesliga]
caid                          = 1702
provid                        = 000000
srvid                         = 00DF,0106,0110,011A,0124,012E,0138,0142,014C,00FC

[skyfußballbundesligahd]
caid                          = 1702,1833
provid                        = 000000
srvid                         = 0069,010B,0115,011F,0129,0133,013D,0147,0151,0101,0066,010E,0118,0122,012C,0136,0140,014A,0154,0104

[skysport]
caid                          = 1702
provid                        = 000000
srvid                         = 00DD,00DE,0107,0111,011B,0125,012F.0139,0143,014D,00FD,001E

[skysporthd]
caid                          = 1702,1833
provid                        = 000000
srvid                         = 0081,0072,010C,0116,0120,012A,0134,013E,0148,0152,0102,007A,0077,0135

[skyselecthd]
caid                          = 1702,1833
provid                        = 000000
srvid                         = 0012,0078,00FB,0105,010F,0119,0123,012D,0137,0141,014B,00FE,014E

[skyerotik]
caid                          = 1702
provid                        = 000000
srvid                         = 0015,0201,0159,0163,016D,0079

[skyorf]
caid                          = 1702
provid                        = 000000
srvid                         = 32C9,32CA,32CB,32CC,32CD,32CE,32CF,32D0,32D1,32D2,32D3,33A5,332D,32D4,33A7,4E27,132F,1330,33AC

```

## HD+

```
[hdplus]
caid = 1830,1843 # weiße (1830) und schwarze (1843) SmartCard
provid = 000000,003411,008011
srvid = 0002,277E,EF10,EF11,1581,EF15,EF74,EF75,EF76,EF77,6FEC,5274,1519,2E9B,151A,157F,EF78,157C,EF14,2774,2EAF,2777,30D4,1392,30D6,307A,EF79,183D,EF16,EF17
```

```
[hdplus_skyde]
caid = 09C4,098C # HD+ über Sky (V13/V14 Smartcards)
srvid = 0002,277E,EF10,EF11,1581,EF15,EF74,EF75,EF76,EF77,6FEC,5274,1519,2E9B,151A,157F,EF78,157C,EF14,2774,2EAF,2777,30D4,1392,30D6,307A,EF79,183D,EF16,EF17
```

## MTV Unlimited

```
[mtvunlimited]
caid                          = 0B00
provid                        = 000000
srvid                         = 6FEF,6FF3,6FEE,6FFF,6FF1,6FF0
```

## SRG/SSR - Swiss (13.0E & 19.0)

```
# Viaccess 4.0
[srgssr] - Version 4
caid                          = 0500
provid                        = FFF430,040810,040820,040830
srvid                         = 4336,4331,4332,1260,1F43,4334,4333,4337,4338
```

```
# Viaccess 5
[srgssr] - Version 5
caid                          = 0500
provid                        = FFF430,050800,050810,050820,050830,050840
srvid                         = 4336,4331,4332,1260,1F43,4334,4333,4337,4338
```

```
# Viaccess 6
[srgssr] - Version 6
caid                          = 0500
provid                        = FFF430,060200,060210,060220,060230,060240
srvid                         = 4336,4331,4332,1260,1F43,4334,4333,4337,4338
```

## BIS.tv (13.0E,19.2E)

```
[BISTV_OPTIONBEINSPORT]
caid   = 0500
provid = 042800,042810
srvid  = 019A,019B
# srvid = BeIN Sport 1,BeIN Sport 2 HD
```

```
[BISTV_OPTIONCINEMA]
caid   = 0500
provid = 042800,042810
srvid  = 01CD,4286,01C8,428A,01C9,4289
# srvid = Action,Ciné FX,Ciné Polar
```

```
[BISTV_OPTION_NIGHT]
caid   = 0500
provid = 042800,042810
srvid  = 07FD,364C,4285,01D4
# srvid = Dorcel TV,XXL
```

```
[BISTV_PANORAMA]
caid   = 0500
provid = 042800,042810
srvid  = 01C4,427D,01C5,427C,01C6,427E,0133,019F,01C7,428C,01A1,0134,01CF,427F,446A,01CA,4281,3619,361A,012E,012F,013A,0131,01A3,01F8,
6FF7,445E,01A2,0139,01D1,0132,01CE,4287,0138,0137,4284,4290,01C3,428B,012D,0136,01CB,4282,01F6,0135
# srvid = AB1,AB Moteurs,Animaux,Arte HD,BFM TV,Chasse et Pêche,D17,D8,Encyclo,Equidia Live,Escales,France 24,France 2 HD,France 3,
France 4,France 5,France Ô,Game One,Golf Channel,Gulli,LCP,Lucky Jack,M6 HD,Mangas,NRJ12,NT1,RTL9,TF1 HD,TMC,Toute l'Histoire,
TV8 Mont Blanc,W9
```

## BIS.tv (5.0W)

```
[BISTV_OPTIONBEINSPORT]
caid   = 0500
provid = 042800,042810
srvid  = 019A,019B
# srvid = BeIN Sport 1,BeIN Sport 2 HD
```

```
[BISTV_OPTIONCINEMA]
caid   = 0500
provid = 042800,042810
srvid  = 00D4,00D6,00D7
# srvid = Action,Ciné FX,Ciné Polar
```

```
[BISTV_OPTIONNIGHT]
caid   = 0500
provid = 042800,042810
srvid  = 00D9,00D8
# srvid = Dorcel TV,XXL
```

```
[BISTV_PANORAMA]
caid   = 0500
provid = 042800,042810
srvid  = 00CB,00CC,00D0,0194,013B,0130,00D3,013D,0134,00D1,00DC,00CF,0192,0110,1000,013A,0104,0131,0105,00CE,013E,013C,0106,0193,00CA,0138,
0137,00C9,012D,0191,0136,00D2,00DA,0135
# srvid = AB1,AB Moteurs,Animaux,Arte HD,BFM TV,Canal,Chasse et Pêche,D17,D8,Encyclo,Equidia Live,Escales,France 2 HD,France 3,
France 4,France 5,France Ô,Game One,Gulli,I-Télé,LCP,M6 HD,Mangas,NRJ12,NT1,RTL9,TF1 HD,TMC,Toute l'Histoire,TV5 Monde,W9
```

## TéléSAT Numérique (13.0E, 19.2E, 23.5E)

```
[TELESAT_BASIC]
caid   = 0100
provid = 00006D
srvid  = 01C5,427C,01C6,427E,31E8,5226,01C7,428C,01A1,23F1,22CA,1FB4,200F,31E7,5221,01CF,427F,01CA,4281,3335,391D,1FD7,01A3,23F7,240B,01F8,
6FF7,01A2,23F6,240A,07FA,3208,5286,31EE,21FD,01CE,4287,20AD,31EC,391B,6FEF,7003,6FFF,7002,12CA,6FF3,6FFD,1987,3B65,6FF2,6FFC,31ED,428D,4460,
6F6D,01CB,4282,6FF1,6FFB,0007,6FF0,6FFA,2F68,446D
# srvid = AB Moteurs,Animaux,Canvas,Canvas HD,Chasse et Pêche,D17,Disney Channel France 1,Disney Channel France,Een,Een HD,Encyclo,
Escales,ESPN America,Eurosport France,France Ô,Game One,Gulli,Hustler TV,KetnetOp12,Klara,Maison,Mangas,MCM Top,MNM,MTV Dance,MTV Idol,
MTV Music 24,MTV Pulse,MTV Rocks,Nat Geo Wild HD,Nickelodeon France,Studio Brussel,Stylia,TCM France,Toute l'histoire,VH1 Classic Europe,
VH1 Europe,Vivolta
```

```
[TELESAT_BASICLIGHT]
caid   = 0100
provid = 00006D
srvid  = 01C4,427D,01CC,01D0,1498,1793,2906,1D21,1D2B,51CC,6F69,14A6,1484,07FD,364C,4285,42A3,012E,2462,2476,1F48,013A,23F3,2407,0131,1F41,1F58,
147A,14A9,147B,1479,1497,6FEC,14A8,0137,4284,4290,1485,14A5,1499,1483,233D,14A7
# srvid = AB1,AB3,AB4,Bel RTL,Boomerang,Cartoon Network,Classic 21,Club RTL,Dorcel TV,France 2 HD,France 3,France 4,France 5,La Deux,
La Première,La Trois,La Une HD,Mint,MTV France,Musiq 3,NT1,Plug RTL,Pure FM,Radio Contact,RTL-TVI HD,TF1 HD,VivaCité
```

```
[TELESAT_BASICPLUS]
caid   = 0100
provid = 00006D
srvid  = 2589,1FDE,22CB,2201,2581,446C,1FE1,1FA7,2B01,2B33,391A,1FDC,20A2,4464,0069,1F47,1F4C,1C85,2525,2204,1FA8,2523,1FD9,1909,1FB0,1FDA,1FE2,
251E,4470,1FDB
# srvid = Canal J,Comédie,Disney Junior France,Disney XD France,Histoire,June,KidsCo,LCI La Chaîne Info,MCM Pop,Mezzo,Motors TV,
National Geographic France,Piwi,Planète,Télétoon1,Télétoon,Tiji,Ushuaia TV,Voyage
```

```
[TELESAT_LESPACECINE]
caid   = 0100
provid = 00006D
srvid  = 01CD,4286,01C8,428A,01C9,4289,01D4,4280,429E
# srvid = Action,Ciné FX,Ciné Polar,XXL
```

```
[TELESAT_LESPACEGAY]
caid   = 0100
provid = 00006D
srvid  = 3218,5284
# srvid = Man-X
```

```
[TELESAT_LESPACEHD]
caid   = 0100
provid = 00006D
srvid  = 0001,6FB8,6FB9
# srvid = MTV Live HD
```

```
[TELESAT_RADIO]
caid   = 0100
provid = 00006D
srvid  = 1498,14A6,31EE,14A9,1497,31EC,14A8,14A5,1499,31ED,14A7
# srvid = Bel RTL,Classic 21,Klara,La Première,Mint,MNM,Musiq 3,Pure FM,Radio Contact,Studio Brussel,VivaCité
```

```
[TELESAT_TVVLAANDEREN]
caid   = 0100
provid = 00006D
srvid  = 31E4,5278,3216,5282,3210,527C,0FAB,0FAC,0FAD,320E,527A,3214,527E,3212,5280,31E3,3210,527C
# srvid = 2BE,Acht,Kanaal Z,Nederland 1,Nederland 2,Nederland 3,VIER,VIJFtv,Vitaya,VTM,vtmKzoom
```

## WillyTel

```
[WillyTel Family XL]
caid = 0B00
srvid = 0265,0267,0268,026b,026d,026e,026f,0abe,0b86,4e85,4e86,4e8b,4e8c,4e8f,4e91,4e92,4e95,4e96,4e97,4e98,4e99,4ee9,4eea,4eed,4eef,4efb,00d4,
0bea,4r86,4eec,4ef2,4ef3
```

## ORF Digital

```
[orf] - ORF Digital Cryptoworks
caid                          = 0D95,0D98
provid                        = 00000004
srvid                         = 32C9,132F,32CA,1330,32CB,32CC,1334,32CD,33F7,32CE,33F8,32CF,33F9,32D0,33FA,32D1,33FB,32D2,33F5,32D3,33F6,332D,33FC,33A5,33FD,32D4,33AC,33A7,4E27,3337,1331,14B8,3402

[orf] - ORF ICE Irdeto
caid                          = 0648,0650
provid                        = 000000
srvid                         = 32C9,132F,32CA,1330,32CB,32CC,1334,32CD,33F7,32CE,33F8,32CF,33F9,32D0,33FA,32D1,33FB,32D2,33F5,32D3,33F6,332D,33FC,33A5,33FD,32D4,33AC,33A7,4E27,3337,1331,14B8,3402

[orf] - ORF Sky
caid                          = 09C4,098C
provid                        = 000000
srvid                         = 32C9,132F,32CA,1330,32CB,32CC,1334,32CD,33F7,32CE,33F8,32CF,33F9,32D0,33FA,32D1,33FB,32D2,33F5,32D3,33F6,332D,33FC,33A5,33FD,32D4,33AC,33A7,4E27,3337,1331,14B8,3402
```

## AustriaSat (Plus Austria, HD Austria, Kombi Austria)

```
[plusaustria]
caid                          = 0D95
provid                        = 000000,000004,000010
srvid                         = 125D,4462,0025,1485,2EFE,325F,3251,3252,3253,3262

[plusaustria]
caid                          = 0648
provid                        = 000000
srvid                         = 125D,4462,0025,1485,2EFE,325F,3251,3252,3253,3262

[hdaustria]
caid                          = 0648,098C,09C4
provid                        = 000000
srvid                         = 14B7,14B4,2E87,2EA5,14B5,2E91,14B6,527E,527D,152D

[kombiaustria]
caid                          = 0648
provid                        = 000000
srvid                         = 14B7,14B4,2E87,2EA5,14B5,2E91,14B6,527E,527D,2B01,4461,4462,0025,07FF,2EFE,6FEF,6FF3,6FEE,6FFF,6FF0,003B,152D,3251,3252,3253,3262
```

## Telekommunication Niessl GmbH - Hallo TV

```
[hallotv]
caid                          = 0B02
provid                        = 000000
srvid                         = 32D7,32D8,32D9
```

## Kabel Deutschland

KD Premium HD

```
[kdhd]
caid   = 1722,1834
provid = 000000
srvid  = C351,C352,C353,C354,C357,C356,C355,C358,C361,C364,C366
```

KD Privat HD

```
[kdprivhd]
caid   = 1722,1834
provid = 000000
srvid  = C35F,C362,C359,C363,C35A,C365
```

KD Premium Extra / Home SD(alt)

```
[kdhome]
caid   = 1722,1834
srvid  = C3BB,D03E,C480,D036,D09C,C617,C615,C483,C3B8,C482,D0A1,C357,C3BF,D035,CF70,D0A4,C3BC,C613,C60F,C60D,C610,C356,C614,C611,C3B9,CF73,
         D0A5,D0A3,C481,D099,C47D,C355,D16B,C3BA,C358,C619,C618,C352,C47F,C351,C3B7,C47E,C3BD
```

KD Premium Radio

```
[kdhradio]
caid   = 1722,1834
srvid  = C419,C41A,C41C,C41E,C41F,C420,C423,C424,C425,C427,C42B,C42D,C42E,C42F,C430,C432,C433,C437,C438,C439,C43A,C43B,C43C,C43F,C441,C442,
         C443,C445,C446,C447
```

KD Digital "Free"

```
[kdfree]
caid   = 1722,1834
srvid  = C3BE,D177,D16E,CF77,D038,D16C,CF09,D043,D09B,CF0C,D046,D045,D10A,D16D,D168,D165,CF76,D171,D178,D10B,D179,CFDD,CFDB,D167,CF12,D049,
         D10D,D03F,D10E,D10F,D040,D17E,D172,D039,D047,D173,CF17,D176,D044,D042,CF0D,D17B,CF0E,D166,D041,C3B5,D03A,D175,D170,D163,D161,D04D,
         CF7F,D17A,D174,D16F,D162,CF0A,D03B,CF7E,CFE3,D04A,CF0F,D04B,D04C,D03D,D169,D164,C60C
```

## Unitymedia (UM2) & KabelBW (V23) = (UMKBW) (incl. Sky)

last review: 2015-01-20 by: EgLe

KabekBW und Unitymedia verschmelzen immer mehr zusammen, im Frühling(2015) wird wohl auch der Name KabelBW fallen.
Hier habe ich mal nach der letzten gültigen Senderliste vom 01.Dezebmber 2014 alles Händisch angepasst und überprüft.



```
[UM-KBW HD Programme]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 814D,7D65,7D66,814E,7D67,814F,7980,046A,B02E,0458,0459,621B,AC48,B415,6DCF,B02D,6DD0,B417,759C,8150,AC4A,7D68,7D69,8151,69E7,94D6,94D5,5274,75A4,0463,6219,9CA5,94D7,69EA,0464,B416,4E96,42DA,621A,A85D,94D8,B7FD,71B5,94D7,797F
```

```

[UM-KBW Digital TV Allstars]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 75A1,0412,4AAC,6211,4AAB,3335,3336,5270,5271,3719,371A,3B00,3B07,3B01,4AAA,03F6,0402,0404,526F,371E,3AFE,03F8,6606,3337,332E,3338,526E,3333,3B04,371D,2F50,6212,03F5,3AFF,5272,0405,3B05,3330,75A3,AC49,372B,0403,2B65,3339,3334,3718,371C,3B0C,6217,040C,6210,371F,371B,041A,372C,3B08,620F,526D,3B03,3B02,660B
```

```
[UM-KBW Kino & Bonus]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 4AA7,4AA6,4AA5,4AA4,4AA3,4AA2,3EEA,3EE9,7595,372A,3729,3717,6DC9,6DC8,6DCA,6DCB,69E4,71AF,71B1,6DCE,6DCD,71AD,71B2,6600,71AE
```

```
[UM-KBW International]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 5A3D,5A41,5A40,5658,71B3,6213,6214,565D,565F,6604,6603,5A4A,5E35,5A3D,5A41,5A40,5658,5659,71B3,6213,6214,565D,565F,565E,6604,6603,5A4A,5E35,5659,565E,6605,565A,565B,565C,5669,5A3E,5A43,5A47,5660,5656,5A42,5A44,5A45,BBE5,5657,5A46,759D,6215,5E34,5657,759E,5A3F,759F,65FB,6601,65FE,65FD,65FF,65FC,6602,7596
```

```
[UM-KBW Music Choice]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 2B73,2B8D,2B8E,2B88,3345,334B,2B80,2B8F,3346,2B90,2B86,2B76,2B84,3344,2B87,3348,334A,3342,334D,2B74,334F,2B85,2B75,2B71,2B72,3349,2B82,2B77,334E,2B89,2B78,334C,3341,2B8B,2B7C,3350,3347,3343,2B7D,2B79,2B7E,2B8C,2B7A,2B8A,2B7F,2B81,2B7B,2B83
```

```
[UM-KBW-Sky Starter bzw. Sky Welt]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 002A,0015,0201,0018,000E,001A,001C,0010,0206,0016,0013,00A8,000C,000D,001D,001B,0017,0034,0024,0032,0011
```

```
[UM-KBW-Sky Welt HD]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 0070,0082,0084,007C,0076,007B,006C,0071
```

```
[UM-KBW-Sky Film]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 0022,0019,0203,0009,000A,000B,002B,0008,0014,0029,0204
```

```
[UM-KBW-Sky Film]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 0074,006F,006E,0083,006B
```

```
[UM-KBW-Sky Sport]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 00DD,00DE,0107,0111,011B,0125,012F,0139,0143,014D,00FD,001E
```

```
[UM-KBW-Sky Sport HD]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 0081,0072,010C,0116,0120,010e,0118,0112
```

```
[UM-KBW-Sky Bundesliga]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 00DF,0106,0110,011A,0124,012E,0138,0142,014C,00FC
```

```
[UM-KBW-Sky Bundesliga HD]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 0069,010B,0115,011F
```

```
[UM-KBW-Sky Bundesliga HD]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 00FB,0105,010F,0119,0123,012D,0137,0141,014B,00FE,014E
```

```
[UM-KBW-Sky Blue Movie & Sky 3D]
caid                          = 098E,1838,1850
provid                        =
srvid                         = 0159,0163,016D,0075
```

## NetCologne (German Cable)

```
# DVB-C - NetCologne - (German Cable)
# update: 2013-05-23 by morpheusGR
```

NC Premium HD+

```
[netcologne_premium_hd+]
caid                          = 0B00,098C
provid                        = 000000
srvid                         = 0131,213E,0130,2134,012D,0898,012F,2148,215C,012E
```

NC MTV Tune-inn

```
[netcologne_mtv_tune-inn]
caid                          = 0B00
provid                        = 000000
srvid                         = 6FEF,6FEE,6FF3,6FF0,6FF1
```

NC Männer und Sport

```
[netcologne_meanner_und_sport]
caid                          = 0B00
provid                        = 000000
srvid                         = 026D,4E95,0269,2058,0267,2062,4E8D
```

NC Unterhaltung

```
[netcologne_unterhaltung]
caid                          = 0B00
provid                        = 000000
srvid                         = 4E85,026F,4E91,4E98,4EF3,200D,7009,4EF4,2EFE,2152,4E86,4E97
```

NC Unterhaltung Extra

```
[netcologne_unterhaltung_extra]
caid                          = 0B00
provid                        = 000000
srvid                         = 0BEA,0BB8,4E96,4EED,4EF6,4EF2,204E,4E9A,4EEA,0960,4E8F,0268,4E99,026B,2774
```

NC Sonstige

```
[netcologne_sonstige]
caid                          = 0B00
provid                        = 000000
srvid                         = 014E,203A,4EE9,4EF2,0266
```

NC Balkan

```
[netcologne_balkan]
caid                          = 0B00
provid                        = 000000
srvid                         = 814C,8160,206D,817E,146E,2071
```

NC Griechisch

```
[netcologne_griechisch]
caid                          = 0B00
provid                        = 000000
srvid                         = 2012,1A90,19C8
```

NC Italienisch

```
[netcologne_italienisch]
caid                          = 0B00
provid                        = 000000
srvid                         = 0A28,9150,0546,02C6,207B,02D0,0578,0514,2792
```

NC Japanisch

```
[netcologne_japanisch]
caid                          = 0B00
provid                        = 000000
srvid                         = 2015,2016
```

NC Polnisch

```
[netcologne_polnisch]
caid                          = 0B00
provid                        = 000000
srvid                         = 026C,05DC,0CA5,0381
```

NC Russich

```
[netcologne_russich]
caid                          = 0B00
provid                        = 000000
srvid                         = 0B22,0A8C,09F6,000D,0010,0012
```

NC Serbisch

```
[netcologne_serbisch]
caid                          = 0B00
provid                        = 000000
srvid                         = 0002,0009,000A,0802,0003
```

NC Spanisch/Portugiesich

```
[netcologne_spanisch/portugiesich]
caid                          = 0B00
provid                        = 000000
srvid                         = 0DAE,2026,202B,1A2C,2030
```

NC Türkisch

```
[netcologne_tuerkisch]
caid                          = 0B00
provid                        = 000000
srvid                         = 04E2,04B0,09C4,2058,047E,041A,060E,208F
```

NC Türkisch Extra

```
[netcologne_tuerkisch_extra]
caid                          = 0B00
provid                        = 000000
srvid                         = 91B4,9484,8174,032A,947A,277E,038E
```

NC Türkisch LigTV

```
[netcologne_tuerkisch_ligtv]
caid                          = 0B00
provid                        = 000000
srvid                         = 0B54
```

NC Türkisch TurkMax

```
[netcologne_tuerkisch_TurkMax]
caid                          = 0B00
provid                        = 000000
srvid                         = 0640
```

## UnityMedia NRW inkl. Sky NRW (German Cable)

```
# DVB-C - UnityMedia - (German Cable)
# update: 2014-09-02 by piddiw
```

```
[Unitymedia Digitaler Kabelanschluss]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 5A49,75A1

[Unitymedia HD Option]
caid   = 1831,1838,1850
provid = 000000,000401,001103
srvid  = B417,69E7,7980,7D67,AC4A,7D66,7D69,814D,814E,8151,7D65,7D68,4E96,8150,B02D,814F

[Unitymedia Highlights]
caid   = 098E,1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 002A,4AAC,3335,6210,3B07,000E,0010,332E,3338,3333,2F50,000D,75A3,001B,0024,371F,0032

[Unitymedia Highlights HD]
caid   = 098E,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 6219,B417,69E7,7980,007C,7D67,75A4,0070,AC4A,7D66,94D5,7D69,814D,94D7,814E,8151,7D65,7D68,4E96,8150,69EA,5274,007B,B02D,814F,B02E

[Unitymedia Allstars]
caid   = 098E,1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 002A,4AAC,6211,4AAB,3335,5271,6210,3719,3B00,3B07,620F,4AAA,000E,3B03,3AFD,371E,3AFE,3B02,0010,6606,3337,332E,3338,3333,3B04,371D,2F50,6212,000D,3AFF,5272,526F,001D,AC49,3B05,3330,75A3,372B,001B,2B65,
3339,3718,6217,3B0C,371C,3334,0024,371F,0032,372C,3B08,526D,0402,0404

[Unitymedia Allstars HD]
caid   = 098E,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 6219,621A,6DCF,759C,B417,0082,69E7,7980,007C,94D6,7D67,75A4,94D8,6DD0,0070,AC4A,B416,AC48,7D66,94D5,7D69,797F,814D,94D7,B415,814E,8151,7D65,7D68,621B,4E96,42DA,8150,69EA,5274,007B,B02D,814F

[Unitymedia Kino auf Abruf]
caid   = 1722,1831,1835,1838
provid = 000000,000401,001103
srvid  = 4AA7,4AA6,4AA5,4AA4,4AA3,4AA2,3EEA,3EE9

[Unitymedia Bonus]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 7595,372A,3729,3717,6DC9,6DC8,6DCA,6DCB,6DCE,69E4,71B1,6DCD,71AD,71B2,6600,71AE

[Unitymedia MusicChoice]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 2B73,2B8D,2B8E,2B88,3345,334B,2B80,2B8F,3346,2B90,2B86,2B76,2B84,3344,2B87,3348,334A,3342,334D,2B74,334F,2B85,2B75,2B71,2B72,3349,2B82,2B77,334E,2B89,2B78,334C,3341,2B8B,2B7C,3350,3347,3343,2B7D,
2B79,2B7E,2B8C,2B7A,2B8A,2B7F,2B81,2B7B,2B83

[Unitymedia Arabisch]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 7595,7596

[Unitymedia Bosnien]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 65FA,65FE,6600

[Unitymedia Griechenland]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 759E,5A3F,759F

[Unitymedia Italien]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 6605,6DCD,5669,565A,565B,565C

[Unitymedia Japan]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 65F6,65F7

[Unitymedia Kroatien]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 65FA,6601,65FB,6600

[Unitymedia Polen]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 5657,5E34,5A46,759D,6215

[Unitymedia Russland]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 5660,5656,71B1,5A42,5A44,5A45

[Unitymedia Serbien]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 65FA,65FD,65FF,65FC,6602,6600

[Unitymedia Spanien-Portugal]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 5A3E,71AD,5A43,5A47

[Unitymedia Türkei Basis]
caid   = 1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 6604,5A3D,5A41,5A40,5658,6603,71B3,6213,5E35,5A4A,6214,565D,565F,71AE

[Sky Starter]
caid   = 098E,1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 002A,0015,0201,0018,000E,001A,001C,0010,0206,0016,0013,00A8,000C,000D,001D,001B,0017,0011,0034,0024,0032

[Sky Welt]
caid   = 098E,1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 002A,0015,0201,0018,000E,0082,001A,001C,0084,0010,007C,0206,0016,0013,00A8,000C,0076,000D,0070,001D,001B,0017,0011,006C,0034,0024,0032,007B

[Sky Film]
caid   = 098E,1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 0019,0203,0009,0022,000A,000B,002B,0008,0014,0029,0204

[Sky Film HD]
caid   = 098E,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 006F,0074,006E,0083,006B

[Sky Sport]
caid   = 098E,1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 00DD,00DE,0107,0111,011B,0125,012F,0139,0143,014D,00FD,001E

[Sky Sport HD]
caid   = 098E,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 0081,0072,010C

[Sky Sport Premium HD]
caid   = 098E,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 010e,0118,0112,0081,0072,010C,0116,0120

[Sky Bundesliga]
caid   = 098E,1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 00DF,0106,0110,011A,0124,012E,0138,0142,014C,00FC

[Sky Bundesliga HD]
caid   = 098E,1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 0069,010B,0115

[Sky Bundesliga Premium HD]
caid   = 098E,1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 0069,010B,0115,011F

[Sky Select]
caid   = 098E,1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 00FB,0105,010F,0119,0123,012D,0137,0141,014B,00FE,014E

[Sky BlueMovie]
caid   = 098E,1722,1831,1835,1838,1850
provid = 000000,000401,001103
srvid  = 0159,0163,016D
```

## TNTSAT

ALL 2012-12-28

```
[TNTsat_all]
caid   = 0500
provid = 030B00
srvid  = 1903,2009,2010,2136,2200,2202,2206,2207,2208,2211,2214,2216,2289,2329,2337,2351,2458,2462,2472,2476,2480,2486,2649,2650,2651,2652,2653,2654,4284,4290,1FEB,25E5,25E6,25E7,25E8,25E9,1F41,1F44,1F45,1F48,1F4A,1F55,1F56,1F57,1F58,1FD8,1FDF,20A4,20A5,20AE,20AF,20B3,20B4,20B5,20B6,217C,21FD,221A,221B,233D,234B,245E,246C,248A,25EA,25EB,25EC,25ED,25EE,25EF,25F0,264A,264B,264C,264D,264E,264F,2F67,2F8A,2F8E,6F73,6F86,6F87
```

TNTSAT HD

```
[TNTSAT_HD]
caid   = 0500
provid = 030B00
srvid  = 2329,233d,2458,245e,2462,246c,2472,2476
```

TNTSAT SD

```
[TNTSAT_SD]
caid   = 0500
provid = 030B00
srvid  = 1f41,1f44,1f48,1f4a,1f55,1f56,1f57,1f58,1fd8,1feb,20a4,20a5,20ae,20af,20b3,20b4,20b5,20b6,23f1,23f3,23f6,23f7,
         2405,2407,240a,240b,25e5,25e6,25e7,25e8,25e9,25ea,25eb,25ec,25ed,25ee,25ef,25f0,2649,264a,264b,264c,264d,264e,
         264f,2650,2651,2652,2653,2654,4284,4290
```

## Canal+ France

Canal+ SD France: "Le Bouquet"

```
[CPLUS_LE_BOUQUET_SD]
caid = 0500
provid = 032830
srvid = 2009,200C,201D,200B,200A,200D,2010,20B3,20AE,20A5,20B6,1F48,25E5,25E6,25E7,2649,25E9,264D,2650,2651,25ED,25EE,25EF,
2653,25E8,264A,264B,264C,25EA,264E,264F,25EB,25EC,1F57,2652,25F0,23F3,2407,1F41,1F58,20AF,20B4,20A4,20B5,1FEB,1FD8,4284,
4290,1F44,1F56,1F4A,1F55,23F1,2405,23F6,240A,23F7,240B
```

Canal+ HD France: Canal+ HD, Family HD, Cinema HD, Sport HD, Décalé HD

```
[CPLUS_LE_BOUQUET_HD]
caid = 0500
provid = 032830
srvid = 2263,2262,2265,2261,2275,227F,2264,2278
```

## CANALSAT/CANAL+ France

```
[CSAT_CHAINEALUNITE]
caid   = 0500
provid = 032820,032830,032840
srvid  = 2343,2357,4285,2417,26B9,26CD,1F47,1F4C,1966,197A,190A,2521,2135
# srvid = DJazz.TV HD,Dorcel TV,Golf,Golf HD,Mezzo,Mezzo Live HD,Pink X,Seasons,Melody
```

```
[CSAT_HD]
caid   = 0500
provid = 032820,032830,032840
srvid  = 19C9,19DD,2458,246C,189D,18B1,189E,18B2,2464,2482,248C,26C4,2263,2262,2265,2261,2275,227F,2264,2278,2270,2284,26C1,2341,2355,
234C,24E2,19DE,24E1,2343,2357,2335,2349,2462,2476,26B9,26CD,196B,197F,1989,245E,2472,197B,24BB,24CF,1966,197A,6FB8,6FB9,1987,232B,196A,
2333,2347,245A,246E,2478,1969,197D,19CB,26C5,26B2,26C6,233D,1968,197C,2461,2475,2460,2474
# srvid = 13 Rue Universal HD,Arte HD,beIN Sport 1 HD,beIN Sport 2 HD,Blackbelt TV HD,Brava HD,Canal Cinéma HD,Canal Décalé HD,
Canal Family HD,Canal HD,Canal Sport HD,Ciné Premier HD,Discovery Channel HD,Discovery Science HD,Disney Channel HD,Disney Cinemagic HD,
Disney Junior HD,Disney XD HD,DJazz.TV HD,Eurosport HD,France 2 HD,Golf HD,Kombat Sport HD,M6 HD,M6 Music HD,Ma Chaîne Sport HD,
Mezzo Live HD,MTV Live HD,Nat Geo Wild HD,National Geographic Channel HD,OCS Max HD,Paris Première HD,Penthouse HD,serieclub HD,
Syfy Universal HD,TCM HD,Téva HD,TF1 HD,TF6 HD,Ushuaïa TV HD,W9 HD
```

```
[CSAT_LESCHAINESCANAL]
caid   = 0500
provid = 032820,032830,032840
srvid  = 2520,200B,2263,200A,2262,2009,200C,201D,200D,2265,2261,2275,227F,2010,2024,2264,2278,21AE,21B0,21C1
# srvid = Canal à la demande,Canal Cinéma,Canal Cinéma HD,Canal Décalé,Canal Décalé HD,Canal,Canal Family,Canal Family HD,
Canal HD,Canal Sport,Canal Sport HD,Mosaïque Canal
```

```
[CSAT_LESTHEMATIQUES]
caid   = 0500
provid = 032820,032830,032840
srvid  = 1F46,19C9,19DD,427D,1FDF,1FEC,2458,246C,20A3,2742,274E,2156,2F94,2F8A,2753,6F70,26C4,2589,213B,213D,2142,6F69,2F99,6F6A,1FDE,
23A3,2587,23F1,2F8E,26C1,2341,2355,200F,234C,22CB,19DE,2201,24E1,22CF,2526,22C9,79F4,1FD7,2335,2349,1AF9,1AFA,1AFE,20A5,20B6,2462,2476,
25E5,25E6,25E7,2649,25E9,264D,1F48,2650,2651,25ED,25EE,25EF,2653,25E8,264A,264B,264C,25EA,264E,264F,25EB,25EC,1F57,2652,25F0,23F3,2407,
1F41,1F58,23F7,240B,6FF7,23F6,240A,2581,2011,1F4A,1F55,21FE,1FE1,196B,197F,1989,22C6,1FDC,23F2,2202,2F58,274F,20AF,20B4,245E,2472,23AA,
21FD,4287,20A0,20A2,20AD,1B59,219B,219C,219D,21A2,21A6,21AE,21B0,21C1,6FF5,6FEC,7003,6FB8,6FB9,7002,6FF2,6FFC,1F44,1F56,1906,4284,4290,
1F45,2333,2347,190A,2523,1FD9,2588,2203,2138,428B,1FE0,1969,197D,1F49,21FF,19CB,1909,1FDA,1FDD,26B2,26C6,20AE,20B3,2329,233D,251D,1968,
197C,1FE2,1FD8,1FEB,2206,1901,2F67,20A1,2654,2F68,1FDB,20A4,20B5,2460,2474
# srvid = 13 Rue Universal,13 Rue Universal HD,AB1,Arte,Arte HD,À voir ce soir,BBC World News,Best of Shopping,BFM Business,BFM TV,
Bloomberg TV,Boing,Brava HD,Canal J,Canalsat Radios,Cartoon Network,Cash TV,CNN International,Comédie,
Canalsat à la demande,Cuisine,D17,D8,Discovery Channel HD,Discovery Science HD,Disney Channel,Disney Channel HD,Disney Junior,
Disney Junior HD,Disney XD,Disney XD HD,E,Equidia Life,Equidia Live,Euronews,Eurosport,Eurosport HD,France 24,France 2,
France 2 HD,France 3 Amiens,France 3 Besançon,France 3 Bordeaux,France 3 Caen,France 3 Clermont-Ferrand,France 3 Dijon,France 3,
France 3 Grenoble,France 3 Lille,France 3 Limoges,France 3 Lyon,France 3 Marseille,France 3 Montpellier,France 3 Nancy,France 3 Nantes,
France 3 Nice,France 3 Orléans,France 3 Paris,France 3 Poitiers,France 3 Reims,France 3 Rennes,France 3 Rouen,France 3 National,
France 3 Strasbourg,France 3 Toulouse,France 4,France 5,France Ô,Game One,Gulli,Histoire,Infosport,iTélé,Jimmy,June,Kombat Sport HD,
La Chaîne Météo,LCI,La Chaîne parlementaire,L'Équipe TV,Liberty TV,M6 Boutique  Co,M6,M6 HD,M6 Replay,Maison,Mangas,MCM,MCM Pop,
MCM Top,Montagne TV,Mosaïque Canalsat,Mosaïque Canal,MTV Base,MTV,MTV Idol,MTV Live HD,MTV Pulse,Nickelodeon,NRJ 12,NRJ Hits,NT1,
Paris Première,Paris Première HD,Pink TV,Piwi,Planète,Planète Justice,Planète No Limit,Planète Thalassa,RTL9,serieclub,serieclub HD,Sport,
Syfy Universal,Syfy Universal HD,Télétoon1,Télétoon,Téva,Téva HD,TF1,TF1 HD,TF6,TF6 HD,TiJi,TMC,Trace Urban,TV5 Monde,TV8 Mont-Blanc,
TV Breizh,France 3 Via Stella,Vivolta,Voyage,W9,W9 HD
```

```
[CSAT_PACK18ANS]
caid   = 0500
provid = 032820,032830,032840
srvid  = 4285,1907,1902,245A,246E,2478,21A5,4280
# srvid = Dorcel TV,Frenchlover TV,Libido TV,Penthouse HD,Private Spice,XXL
```

```
[CSAT_PACKBEINSPORT]
caid   = 0500
provid = 032820,032830,032840
srvid  = 1AF6,189D,18B1,1AFC,189E,18B2,19D3,19D4,19D5,19D6,19D7,19D8,19D9
# srvid = beIN Sport 1,beIN Sport 1 HD,beIN Sport 2,beIN Sport 2 HD,beIN Sport Max 3,beIN Sport Max 4,beIN Sport Max 5,
beIN Sport Max 6,beIN Sport Max 7,beIN Sport Max 8,beIN Sport Max 9
```

```
[CSAT_PACKCINEMA]
caid   = 0500
provid = 032820,032830,032840
srvid  = 2205,209F,1F42,2207,1F43,428A,4289,200E,2270,2284,22C7,6F6D,26C5
# srvid = Ciné Classic,Ciné Club,Ciné Émotion,Ciné Famiz,Ciné Frisson,Ciné FX,Ciné Polar,Ciné Premier,Ciné Premier HD,
Ciné Star,TCM,TCM HD
```

```
[CSAT_PACKFAMILLE]
caid   = 0500
provid = 032820,032830,032840
srvid  = 6F6F,22CA,22CD,22CC,24E2,2584,2585,197B,1904,213C,1F47,1F4C,1966,197A,1987,2204,232B,7005,251E,2461,2475
# srvid = Boomerang,Disney Channel 1,Disney Cinemagic 1,Disney Cinemagic,Disney Cinemagic HD,M6 Music Black,M6 Music Club,
M6 Music HD,M6 Music,MCS Bien-être,Mezzo,Mezzo Live HD,Nat Geo Wild HD,National Geographic Channel,National Geographic Channel HD,
Nickelodeon Junior,Ushuaïa TV,Ushuaïa TV HD
```

```
[CSAT_PACKFRISSONS]
caid   = 0500
provid = 032820,032830,032840
srvid  = 2464,2482,248C,1907,1902,1F47,1F4C,1966,197A,2525,6FEE,6FF8,6FF3,6FFD,245A,246E,2478,21A5,2521,2135,22C5,6FFB,6FFA,4280
# srvid = Blackbelt TV HD,Frenchlover TV,Libido TV,Mezzo,Mezzo Live HD,Motors TV,MTV Hits,MTV Rocks,Penthouse HD,
Private Spice,Seasons,Melody,Trace Tropical,VH1 Classic,VH1,XXL
```

```
[CSAT_PACKGRANDCINEMA]
caid   = 0500
provid = 032820,032830,032840
srvid  = 2205,209F,1F42,2207,1F43,428A,4289,200E,2270,2284,22C7,24C2,219E,24C4,196A,24C3,2522,6F6D,26C5
# srvid = Ciné Classic,Ciné Club,Ciné Émotion,Ciné Famiz,Ciné Frisson,Ciné FX,Ciné Polar,Ciné Premier,Ciné Premier HD,Ciné Star,
OCS Choc,OCS Géants,OCS Happy,OCS Max HD,OCS Novo,OCS Max,TCM,TCM HD
```

```
[CSAT_PACKHORIZONS]
caid   = 0500
provid = 032820,032830,032840
srvid  = 427C,4286,427E,428A,4285,427F,4281,1F47,1F4C,1966,197A,4282
# srvid = AB Moteurs,Action,Animaux,Ciné FX,Dorcel TV,Encyclo,Escales,Mezzo,Mezzo Live HD,Toute l'Histoire
```

```
[CSAT_PACKORANGECINEMASERIES]
caid   = 0500
provid = 032820,032830,032840
srvid  = 24C2,219E,24C4,196A,24C3,2522
# srvid = OCS Choc,OCS Géants,OCS Happy,OCS Max HD,OCS Novo,OCS Max
```

```
[CSAT_PACKSPORT]
caid   = 0500
provid = 032820,032830,032840
srvid  = 427C,3335,2139,251F,2524,1908,2583,24BB,24CF,21A9,2525,219F,2145,2144,219A
# srvid = AB Moteurs,ESPN America,ESPN Classic Sport,Eurosport 2,Extreme Sports Channel,Girondins TV,Ma Chaîne Sport,
Ma Chaîne Sport HD,MCS Extrême,Motors TV,Nautical Channel,OL TV,OM TV,Onzéo
```

```
[CSAT_PAYPERVIEW]
caid   = 0500
provid = 032820,032830,032840
srvid  = 23AB,23F5
# srvid = Canalplay
```

```
[CSAT_RADIO]
caid   = 0500
provid = 032820,032830,032840
srvid  = 2168,216F,2175,216E,2156,2F94,2164,2161,214E,2148,214B,2173,2149,214A,2147,215C,2157,215D,2153,2155,215E,2158,2167,216C,214D,
2176,215F,2162,216B,216D,214C,2170,2163,2151,214F,215A,2150,215B,2152,2154,2160,2159,2166
# srvid = Ado FM,BBC Arabic,BBC World Service,Beur FM,BFM Business,Chérie FM,Contact FM,Europe 1,FIP,France Bleu,France Culture,
France Info,France Inter,France Musique,Fun Radio,Jazz Radio,Le Mouv',Monte Carlo Doualiya,Nostalgie,Nova,NRJ,OÜI FM,Radio Alfa,
Radio Classique,Radio Courtoisie,Radio FG,Radio Latina,Radio Notre-Dame,Shalom,RFI Internationale,RFI Multilingue,RFM,Rire et Chansons,
RMC Info,RTL2,RTL,Skyrock,Sud Radio,TSF Jazz,Vibration,Virgin Radio,Voltage
```

## Canal Digitaal, the Netherlands

Canal Digitaal the Netherlands SD and HD channels

```
[canaldigitaal]
caid   = 100
provid = 0006A
srvid  = 1B7B,17C0,51D6,0FAB,0FAB,0FAC,0FAD,0808,0809,0FBE,13B1,07F3,07DF,07E4,
0FAF,6FF0,6FF1,6FFF,6FEF,6FF3,0FAE,7007,07F4,31F9,07FA,07D4,07D5,0FA2,07D6,07EF,0FA3,07E9,51C7,
51D1,232A,13BB,51CC,13AA,5230,178E,177A,177F,1784,1789,1F47,5142,5154,5144,5146,31E7,31E8,13B2,
1793,1B6C,5217,17CA,5212,522B,521C,6FB8,1B67,1B62,1B71,13B1,13C0,17CE,13B2,5221,5226
```



## TivùSat

```
[TivùSat]
caid   = 183D
provid =
srvid  = 0FBC,0E24,0E25,0001,0002,0003,0004,0006,0007,0008,0009,0310,0313,0730,2136,2140,2141,2142,2144,000A,030F,06AD,0CE5,0CE9,0CEA,0CEB,0CED,0CEE,0D49,0D4B,0D4E,0D52,0D66,0E1E,0E2A,1C55,213F,29D0,2A95,2B66,34CC,44C1

```

caid = 183E provid = srvid = 4532,29E5

## Digiturk

Digiturk ohne XXX und HD Kanaele

```
[digiturk]
caid = 0D00
provid = 0000C0
srvid = 14B7,05EC,1DB6,1E7D,1F4D,061A,1DB9,14C3,1CC0,1C8B,14C7,1C8D,10DC,025C,1906,
0264,025B,0932,05DD,190B,0456,1D4D,1C86,10DA,1D5F,044D,14B5,0907,1E83,1D5E,
027E,10D2,14BF,06AE,1D4E,05E6,1905,1D58,1907,190A,1D51,025A,1F45,10D1,193D,
1DB8,10CF,05DE,0454,14B8,028C,1C87,1C8F,0455,1D56,1DB4,06A7,06A8,06AF,06A6,
1C85,10CD,10CE,08FE,05E2,08FD,06AC,14C5,06A9,10F4,1904,1914,06A5,05E3,1F49,
06AB,025D,190C,0259,1D5B,1D5C,1D61,0457,1DB7,044E,1F47,1F42,1DB5,05DF,1F4C,
1F43,1F44,1DB1,06B1,14C4
```

## Canal Digital Nordic (0.8W)

not verified!

```
[canaldigitalnordic]
caid = 0b00
provid = 000000
srvid = 00C9,00CA,00CB,00CC,00CD,00CE,00E3,00E5,00E9,0A8F,0A90,0A92,0A93,0A96,
0AEF,0AF1,0AF9,0AFB,0AFC,0AFF,0B00,0B5D,0B60,0B6C,0B70,0B71,0B72,0B73,
0B77,0B78,0BB9,0BBA,0BBB,0BBC,0BBD,0BBE,0BBF,0BC0,0BC1,0BC2,0BC3,0BC4,
0BCF,0BD0,0BD1,0BD4,0BD5,0BD6,0BD7,0BD8,0BD9,0BDA,0BDB,0BDC,0BDD,0BDE,
0BDF,0BE0,0C82,0C85,0C86,0C87,0C89,0C8A,0C8B,0CEA,0CEB,0CEC,0CEF,0CF0,
0CF1,0CF3,0CF6,0CF7,0D4A,0D4B,0D4C,0D4D,0D4F,0D50,0D51,0D52,0DAE,0DAF,
0DB0,0DB1,0DB2,0DB3,0DB4,0DB5,0DB6,0DB8,0DBB,0ED9,0EDD,0EDE,0EDF,0EE0,
0FA7,0FA8,0FAC,0FAD,0FAE,0FAF,0FB0,0FB2,01A0,01A1,01A2,01F6,03F5,03F6,
03F7,03F8,03FA,03FF,05DD,05DE,05E4,05E5,05E7,05F0,05F1,07D1,07D2,07D7,
07DE,08FD,009A,09C5,09C7,09CB,09CF,09D0,09D2,0011,11FC,11FD,012D,012E,
12BF,12C1,12C2,12C5,013D,019B,019C,019D,019F,0021,025A,025B,040A,040B,
040C,040D,044F,0051,057C,057D,057E,057F,060B,060D,064E,072F,073A,073B,
073C,073D,078E,083B,083C,083D,083F,0091,0095,096A,096B,096C,0099,100A,
100B,100C,106A,106B,106C,106D,106E,106F,125D,125E,125F,0130,0131,0132,
132A,132B,132C,0133,0134,0135,0191,0192,0193,0196,0197,0199,0259,0263,
0389,0400,0401,0402,0403,0404,0580,0605,0608,0642,0648,0649,0721,0726,
0736,0737,0787,0838,0839,0841,0842,0843,0966,0967,0968,0969,1005,1006,
1007,1008,1009,1067,1069,1070,1071,1195,1260,1261,1262,1263,1325,1326,
1327,1328,1329,1374,1771,1901,1902,1904,1905,2702
```

## Focus Sat (0.8W)

```
[focussat]
caid = 0B02
provid = 000000
srvid = 76C2,76C3,76C4,76C5,76C6,76C7,76C8,76C9,76CA,76CB,76CC,76CD,7725,7726,7727,7728,7729,772A,772B,772D,772E,7730,7731,7733,7789,778A,778B,778C,778E,7791,7792,7793,7794,7795,7797,77ED,77EE,77F5,77F6,77F7,77FA,7853,7855,7856,7857,7858,785B,785E,785F,78B5,78B8,78BA,78BC,78BD,78BE,78C2,78C3
```

## Dolly Buster

```
[dollybuster]
caid = 0500
provid = 042200,042210
srvid = 1272,1273,1274,1275,1264,1290,1291
```

## Redlight

```
[redlightastra]
caid                          = 0500
provid                        = 050F00,FFF8F0
srvid                         = 100B,0FE0,2205,2204,226F

[redlighthotbird]
caid                          = 0500
provid                        = 050F00,FFF8F0
srvid                         = 4205,4220,4224,4207,1CBB,4267,4222,01D4,4221
```

## Redlight / Hustler HD (DGCrypt)

```
[redlightdg]
caid = 4ABF
provid = 000000
srvid = 4224,4225,1360
```

## Private Spice

```
[privatespice]
caid = 0500
provid = 032500
srvid = 1251
```

## Free-X TV / Private Spice

```
[freextv]
caid = 0500
provid = FFF830,041700,041710
srvid = 1251,0832,0833
```

## XXL / Dorcel Astra 19.2

```
[xxl]
caid = 0500
provid = 042800
srvid = 4280,4285,427F
```

## Digital+ SD

```
[digital+]
caid  = 0100
provid  = 004106
srvid  = 1B5A,272E,2755,6F6A,6FB8,6FF0,6FF3,6FF4,7468,7469,746B,746C,746D,746E,746F,7470,
7471,7472,7473,7474,7477,7478,7479,74CC,74CD,74CE,74CF,74FE,74FF,7500,7501,7502,7562,7563,
7565,7566,7567,7568,7569,756A,756B,756D,756E,756F,7570,7571,7572,7573,7574,7576,7577,7578,
7579,7596,7598,7599,759A,759B,75A4,75A6,75A9,75B0,75B1,75B2,75C6,75DD,75DE,75DF,75E0,75E1,
75E2,75F9,75FA,75FB,75FC,75FE,75FF,7601,7602,7604,760C,760E,7611,7612,7613,7614,7615,7616,
7617,7618,7619,761A,761B,761C,761D,761E,761F,7620,7621,7622,7623,7624,7625,7626,768E,768F,
7690,7691,7692,7693,7694,7695,7696,7697,7699,769A,769B,769C,769D,769E,76C0,76C3,76C4,76C5,
76C7,76C8,76C9,76CA,76CC,76CE,7729,772A,772B,772D,772F,7730,7731,7732,7736,7738,7789,778A,
778B,778D,778E,778F,7790,7792,7795,7796,7797,779C,779D,77BC,77BE,77BF,77C0,77C1,77C2,77C3,
77C5,77C7,77C9,77ED,77EE,77EF,77F3,77F4,77F5,77F6,781E,781F,7820,7821,7822,7850,7851,7852,
7853,7854,7855,7882,7883,7884,7885,7886
```

## Digital+ HD

```
[Digital+HD]
caid = 1810
provid = 000000,004001
srvid = 74CC,76C0,7479,76CA,7500,746C,75FB,7851,746D,7502,746E,7736,7882,77C1,760C,76C7,7883,77C9,
7694,7855,74CF,77C5,74FE,746F,7468,7850,7477,7885,7796,781F,7790,7471,76C8,74FF,7730,77F5,75F9,
77EF,7570,77BC,77C0,77C2,7604,77C7,77C3,77BF,760E,77BE,7469,75FE,7822,778F,7853,74CD,778E,7852,
7792,756B,756E,7577,7578,7579,769E,76CC,76C4,7601,77F3,7501,7732,7789,7692,769A,769D,769C,769B,
7573,7574,7576,75FD,778A,7821,778D,7884,77D8,7797,7731,772D,772B,74CE,76C9,76CE,7795,6FB8,77F6,
6FF3,6FF0,76C5,7470,781E,76C3,7820,7729,772A,746B,7696,7699,6FF4,7602,75FF,77F4,77EE,7738,77ED,
7472,7473,7474,779D,779C,7478,7886,7612,7613,7614,7615,7625,7626,7621,761C,761D,7628,761B,7624,
7616,7619,75FA,7618,761A,7611,761E,7627,7623,761F,7620,7617,7622,75A6,75B0,75B2,7854,768E,768F,
7690,7691,7565,7566,7567,756F,7693,7697,7568,7569,756A,7695,7562,7571,7563,7572,778B
```

## CyfraStart+HD

```
[CyfraStartHD]
caid                          = 0100
provid                        = 000068
srvid                         = 332D,3336,332F,290E,10D7,3DCD,10D9,32E3,12C7,3ABD,12C8,0C22,13F9,130E,12F7,12C5,379F,3781,12F9,12CB,379E,3780,379B,12F8,12C6,379B,377D,12F6,12C4,379D,377F,13F1,0005,0019,10DD,1163,1136,379C,377E,10E1,1164,1137,379A,377C,12E8,12FE,12FF,130A,117C,117D,130C,130B,130A,13F6

<pre>
332D : Polsat
3336 : Polsat 2 International
332F : TV 4
290E : TV6 Polska
10D7 : TVN
3DCD : TVN HD
10D9 : TVN Siedem
32E3 : TVN 7 HD
12C7 : TVP 1
3ABD : TVP 1 HD
12C8 : TVP 2
0C22 : TVP 2 HD
13F9 : TVP Kultura
130E : ALE KINO+
12F7 : ALE KINO+
12C5 : Ale Kino+
379F : ALE KINO+ HD
3781 : Ale Kino+ HD
12F9 : DOMO+
12CB : Domo+
379E : DOMO+ HD
3780 : Domo+ HD
379B : teleTOON+ HD
12F8 : teleTOON+
12C6 : Teletoon+ Polska
379B : teleTOON+ HD
377D : Hyper+ HD
12F6 : KUCHNIA+
12C4 : Kuchnia+
379D : KUCHNIA+ HD
377F : Kuchnia+ HD
13F1 : Trace Urban
0005 : Viva Polska
0019 : VIVA Polska.
10DD : TTV
1163 : PLANETE+
1136 : Planete+ Polska
379C : PLANETE+ HD
377E : Planete+ HD Polska
10E1 : Religia.TV
1164 : MINIMINI+
1137 : Mini Mini+
379A : MINIMINI+ HD
377C : MiniMini+ HD
12E8 : CYFRA+ RADIO
12FE : tech
12FF : tech 2
130A : DTV CABLE KU
117C : DTV CABLE PL
117D : DTV CABLE MI
130C : DTV CABLE ZI
130B : DTV CABLE AL
130A : DTV CABLE KU
13F6 : TVP Info
```

## Viasat 4.8E

```
[Viasat 4.8E DK]
caid: 093E
provid: 000000
srvid:
0852,0460,1FB8,0C3A,0460,122A,071C,0474,047E,0712,074E,1AFA,0C6C,0F0A,046A,0F0A,113A,118A,0492,1B80,1158,046A,1180,0C76,0762,0758,0708,1B62,1B6C,0C1C,
0FB4,190A,18B0,1B9E,1798,13D8,083E,0D7A,0528,0FFA,1B94,1FA4,123E,1220,1234,1202,11F8,1216,122A,120C,071C,074E,0712,0456,1FB8,1B94,044C,073A,0852,0C3A,
04AB,0C30,0C26,0870,1BBA

093E:0852|Viasat |TV3+|Sirius 5E
093E:0F0A|Viasat |BoomerangSirius 5E
093E:113A|Viasat |Canal8|Sirius 5E
093E:118A|Viasat |Canal9|Sirius 5E
093E:0492|Viasat |Cartoon Networks|Sirius 5E
093E:1B80|Viasat |CNN|Sirius 5E
093E:0C6C|Viasat |Disney Channel SE|Sirius 5E
093E:1158|Viasat |Disney Channel DA|Sirius 5E
093E:046A|Viasat |Disney Junior|Sirius 5E
093E:0C76|Viasat |Disney XD S|Sirius 5E
093E:1180|Viasat |Disney XD D/N|Sirius 5E
093E:0762|Viasat |DR K|Sirius 5E
093E:0708|Viasat |DR Update|Sirius 5E
093E:1B62|Viasat |DR 1|Sirius 5E
093E:1B6C|Viasat |DR 2|Sirius 5E
093E:0758|Viasat |DR Ramasjang|Sirius 5E
093E:0C1C|Viasat |E! |Sirius 5E
093E:0FB4|Viasat |Euronews|Sirius 5E
093E:190A|Viasat |Viasat Explorer FSS|Sirius 5E
093E:18B0|Viasat |Kidsco EAST| Sirius 5E
093E:1B9E|Viasat |MTV DK| Sirius 5E
093E:1798|Viasat |Nat GEO Wild| Sirius 5E
093E:13D8|Viasat |National Geographic| Sirius 5E
093E:083E|Viasat |Nature/Crime/Playboy | Sirius 5E
093E:0D7A|Viasat |Nick DK/MTV eu|Sirius 5E
093E:0528|Viasat |Premiere Leauge|Sirius 5E
093E:0FFA|VIasat |Travel |Sirius 5E
093E:1B94|Viasat |TV3 Sport 1|Sirius 5E
093E:1FA4|Viasat |TV2 Sport Extra 2|Sirius 5E
093E:123E|Viasat |TV2/Bornholm|Sirius 5E
093E:1220|Viasat |TV2/Fyn|Sirius 5E
093E:1234|Viasat |TV2/Lorry|Sirius 5E
093E:1202|Viasat |TV2/Midt-Vest|Sirius 5E
093E:11F8|Viasat |TV2/Nord|Sirius 5E
093E:1216|Viasat |TV2/Syd|Sirius 5E
093E:122A|Viasat |TV2/Øst|Sirius 5E
093E:120C|Viasat |TV2/ØstJylland|Sirius 5E
093E:071C|Viasat |TV2 Charlie|Sirius 5E
093E:1B94|Viasat |TV3 Sport 1 |Sirius 5E
093E:074E|Viasat |TV2 News |Sirius 5E
093E:0712|Viasat |TV2 Zulu |Sirius 5E
093E:0460|Viasat |TV3 Danmark |Sirius 5E
093E:0456|Viasat |TV3 Norge |Sirius 5E
093E:1FB8|Viasat |TV3 Puls |Sirius 5E
093E:073A|Viasat |TV3 Sport PL |Sirius 5E
093E:044C|Viasat |TV3 Sverige |Sirius 5E
093E:0852|Viasat |TV3+ |Sirius 5E
093E:047E|Viasat |VFilm Action|Sirius 5E
093E:0C3A|Viasat |VFilm Classic |Sirius 5E
093E:04AB|Viasat |VFilm Drama|Sirius 5E
093E:0C26|Viasat |VFilm Family |Sirius 5E
093E:0C30|Viasat |VFilm Nordic |Sirius 5E
093E:0870|Viasat |Viasat 4 |Sirius 5E
093E:1B8A|Viasat |Viasat Expolorer DK|Sirius 5E
093E:0474|Viasat |Viasat Film|Sirius 5E
```

## Hustler/Dorcel Astra 19.2

```
[Hustler 19.2]
caid = 0500
provid = 050F00
srvid = 4285,3253
```