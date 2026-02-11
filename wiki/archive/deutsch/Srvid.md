> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Srvid

```
If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.
```


**Erklärung**

Die oscam.srvid wird benutzt, um caid:srvid Kombinationen im Log und diversen Monitorausgaben in aussagekräftige Informationen umzuwandeln. Diese Informationen sind z.B. Kanalname, Provider etc.

Ein Tipp zu den srvid - je weniger Einträge in der Liste um so performanter ist das in oscam

```
OOO1,0002,0003:000d|...|....
```

ist wesentlich performanter und speicherschonender als

```
OOO1:000d|...|....
OOO2:000d|...|....
OOO3:000d|...|....
```

obwohl das Endergebnis das gleiche ist. Also immer versuchen, bei einer srvid die unter mehreren caid verfügbar ist, die caid's zu sammeln und in einen Eintrag zu packen.

Selbstverständlich sollten auch nicht benötigte srvid's aus der Liste entfernt werden. In ungünstigen Fällen können sich durch eine schlechte Liste
(Liste sehr lang + Treffer am Ende der Liste) die Antwortzeiten bis zu 50ms verschlechtern - abhängig von der CPU


Syntax:

```
CAID[,CAID]...:service ID|[provider]|[name]|[type]|[description]
```

Beispiele:

```
OB00:6FF1|MTV Networks|VH1 Classic|TV|Music
1830,1843:EF10|CBC|RTL HD|TV|General
1702,1722,1833,1834,09C4,09C7:000C|SKY|NatGeo Wild|TV|Documentaries
```


**microMon usage**

Da die Zuordnung des Channelnamen ausschließlich über die Service ID (SID) zu ungenau ist, nutzt der microMon die Kombination aus CAID und SID. Dieser "Code" ist eindeutig. Zusätzlich wurden weitere Informationen in die Datei eingetragen. Alle microMon Revisionen oberhalb 738 enthalten in verschiedenen Funktionen sogenannte Templates. Die Templates geben vor, wie die Einträge der microMon.srvid angezeigt werden. Als Tags stehen zur Verfügung:

+   \[provider\],
+   \[channel\],
+   \[type\] und
+   \[description\]

Beispiel:

```
[[provider]: [channel] ([type]) ([description])]
```

erzeugt bei 1702:0008

```
[Sky|Sky Comedy|TV|Entertainment]
```




+   **provider**
    +   Provider is used for **Transmitters** in first place!

    +   sometimes its more useful (e.g. Canal Digitaal & TV Vlaanderen -> M7 Group) to use the Broadcasters instead of transmitters ( mavise.obs.coe.int ).

    +   the third (not recommended) usage are packagers/packages as Austriasat or Sky Welt




+   **channel**

Channelname which appear in your digital receiver.


+   **type**
    +   TV -> Television programme
    +   Radio -> Radio programme
    +   Data -> some TV channels are listed as Data-channels. Those channels (feed´s) will not be shown in your


"normal" list on your receiver, but in settingseditors like Dreamboxedit etc. on most STB´s the green butten will open a menue where you can choose those channels (if they are on air!!!) Channelexamples: pay-per-view (Sky Select), sportchannels (Sky Sport 3 and above, Sky Bundesliga 2 and above, etc)


+   **description**
    +   Children
    +   Documentaries, Technology, History, ...
    +   News
    +   Porn, Erotic
    +   General
    +   Entertainment, Movies, Series,
    +   Music
    +   Sport
    +   Pay-per-View
    +   etc.

Shows which category the channel belongs to (categories can be found on e.g. KingOfSat or Satindex)

back to [oscam.srvid](/wiki/OSCam/de/Config/oscam.srvid "OSCam/de/Config/oscam.srvid")

* * *



## Inhaltsverzeichnis

+   [1 **DVB-S**](#DVB-S)
    +   [1.1 **Astra 19.2E**](#Astra_19.2E)
        +   [1.1.1 Astra HD+](#Astra_HD+)
        +   [1.1.2 Austriasat](#Austriasat)
            +   [1.1.2.1 Plus Austria](#Plus_Austria)
            +   [1.1.2.2 HD Austria](#HD_Austria)
        +   [1.1.3 Bis.TV (REVIEW NEEDED)](#Bis.TV_\(REVIEW_NEEDED\))
        +   [1.1.4 Canal+](#Canal+)
        +   [1.1.5 Canal Digitaal](#Canal_Digitaal)
        +   [1.1.6 CanalSat (REVIEW NEEDED)](#CanalSat_\(REVIEW_NEEDED\))
        +   [1.1.7 M7 Group](#M7_Group)
        +   [1.1.8 MTV Unlimited](#MTV_Unlimited)
        +   [1.1.9 Orange France (REVIEW NEEDED)](#Orange_France_\(REVIEW_NEEDED\))
        +   [1.1.10 ORF Digital](#ORF_Digital)
        +   [1.1.11 SKY AT/DE](#SKY_AT/DE)
        +   [1.1.12 Skylink](#Skylink)
        +   [1.1.13 Sportdigital](#Sportdigital)
        +   [1.1.14 SRG/SSR - Schweizer Fernsehen](#SRG/SSR_-_Schweizer_Fernsehen)
        +   [1.1.15 TivuSat](#TivuSat)
        +   [1.1.16 TNTSat](#TNTSat)
        +   [1.1.17 TV Vlaanderen](#TV_Vlaanderen)
        +   [1.1.18 FTA - Free to air](#FTA_-_Free_to_air)
            +   [1.1.18.1 ARD Digital](#ARD_Digital)
            +   [1.1.18.2 Canal+](#Canal+_2)
            +   [1.1.18.3 M7 Group](#M7_Group_2)
            +   [1.1.18.4 MTV Networks](#MTV_Networks)
            +   [1.1.18.5 ZDF Vision](#ZDF_Vision)
            +   [1.1.18.6 Unsorted](#Unsorted)
    +   [1.2 **Astra 23.5E**](#Astra_23.5E)
        +   [1.2.1 Canal Digitaal](#Canal_Digitaal_2)
        +   [1.2.2 M7 Group](#M7_Group_3)
        +   [1.2.3 SatBG (SkyLink)](#SatBG_\(SkyLink\))
        +   [1.2.4 Skylink](#Skylink_2)
        +   [1.2.5 TV Vlaanderen](#TV_Vlaanderen_2)
    +   [1.3 **Astra 28.2E**](#Astra_28.2E)
        +   [1.3.1 SkyUK (REVIEW NEEDED)](#SkyUK_\(REVIEW_NEEDED\))
    +   [1.4 **Eutelsat 5.0W**](#Eutelsat_5.0W)
        +   [1.4.1 Bis.TV (REVIEW NEEDED)](#Bis.TV_\(REVIEW_NEEDED\)_2)
    +   [1.5 **Eutelsat 9.0E**](#Eutelsat_9.0E)
        +   [1.5.1 Kabelkiosk (REVIEW NEEDED)](#Kabelkiosk_\(REVIEW_NEEDED\))
    +   [1.6 **Hispasat 30.0W**](#Hispasat_30.0W)
        +   [1.6.1 Zon (TVcabo)](#Zon_\(TVcabo\))
    +   [1.7 **Hotbird 13.0E**](#Hotbird_13.0E)
        +   [1.7.1 Bis.TV (REVIEW NEEDED)](#Bis.TV_\(REVIEW_NEEDED\)_3)
        +   [1.7.2 Cyfra +(REVIEW NEEDED)](#Cyfra_+\(REVIEW_NEEDED\))
        +   [1.7.3 Cyfrowy Polsat](#Cyfrowy_Polsat)
        +   [1.7.4 Free-X TV / Private Spice](#Free-X_TV_/_Private_Spice)
        +   [1.7.5 nc+](#nc+)
        +   [1.7.6 Redlight](#Redlight)
        +   [1.7.7 RTVi (REVIEW NEEDED)](#RTVi_\(REVIEW_NEEDED\))
        +   [1.7.8 Sky Italia](#Sky_Italia)
        +   [1.7.9 SRG/SSR - Schweizer Fernsehen](#SRG/SSR_-_Schweizer_Fernsehen_2)
        +   [1.7.10 TeleSat (REVIEW NEEDED)](#TeleSat_\(REVIEW_NEEDED\))
        +   [1.7.11 Telewizja na](#Telewizja_na)
        +   [1.7.12 TNK Smart HD+](#TNK_Smart_HD+)
        +   [1.7.13 TivùSat](#TivùSat)
+   [2 **DVB-C**](#DVB-C)
    +   [2.1 **Belgian Cable**](#Belgian_Cable)
        +   [2.1.1 Voo (REVIEW NEEDED)](#Voo_\(REVIEW_NEEDED\))
    +   [2.2 **Dutch Cable**](#Dutch_Cable)
        +   [2.2.1 Ziggo NL (@home) (REVIEW NEEDED)](#Ziggo_NL_\(@home\)_\(REVIEW_NEEDED\))
        +   [2.2.2 Ziggo NL (5555/8888) (REVIEW NEEDED)](#Ziggo_NL_\(5555/8888\)_\(REVIEW_NEEDED\))
    +   [2.3 **Finnish Cable**](#Finnish_Cable)
        +   [2.3.1 DNA Welho Helsinki](#DNA_Welho_Helsinki)
    +   [2.4 **German Cable**](#German_Cable)
        +   [2.4.1 Unitymedia & KabelBW (incl. Sky)](#Unitymedia_&_KabelBW_\(incl._Sky\))
        +   [2.4.2 Kabel Deutschland](#Kabel_Deutschland)
        +   [2.4.3 Kabelkiosk](#Kabelkiosk)
        +   [2.4.4 Primacom](#Primacom)
        +   [2.4.5 NetCologne (REVIEW NEEDED)](#NetCologne_\(REVIEW_NEEDED\))
+   [3 **not (yet) sorted by Satellites**](#not_\(yet\)_sorted_by_Satellites)
    +   [3.1 Al Jazeera Sport (REVIEW NEEDED)](#Al_Jazeera_Sport_\(REVIEW_NEEDED\))
    +   [3.2 Al Jazeera Sport (REVIEW NEEDED)](#Al_Jazeera_Sport_\(REVIEW_NEEDED\)_2)
    +   [3.3 SCT Satisfaction (REVIEW NEEDED)](#SCT_Satisfaction_\(REVIEW_NEEDED\))
    +   [3.4 TeleSat (REVIEW NEEDED)](#TeleSat_\(REVIEW_NEEDED\)_2)
+   [4 all to be sorted and reviewed](#all_to_be_sorted_and_reviewed)
    +   [4.1 andere](#andere)
    +   [4.2 NTVmir (5.0E)](#NTVmir_\(5.0E\))
    +   [4.3 FocusSat (0.8E)](#FocusSat_\(0.8E\))
    +   [4.4 Platforma HD/DV (9.0E)](#Platforma_HD/DV_\(9.0E\))
    +   [4.5 Penthouse HD (9.0E)](#Penthouse_HD_\(9.0E\))
    +   [4.6 Viasat (4.8E)](#Viasat_\(4.8E\))
    +   [4.7 Nova (13.0E)](#Nova_\(13.0E\))
    +   [4.8 Cyfra+](#Cyfra+)
    +   [4.9 Digitürk 7.0°E / 42.0°E](#Digitürk_7.0°E_/_42.0°E)
    +   [4.10 Pink International](#Pink_International)
    +   [4.11 Boom (4.0W)](#Boom_\(4.0W\))
    +   [4.12 N](#N)
    +   [4.13 N & Akta (Max TV)](#N_&_Akta_\(Max_TV\))
    +   [4.14 RTV](#RTV)
    +   [4.15 digital media centre](#digital_media_centre)
    +   [4.16 Belgacom](#Belgacom)
    +   [4.17 UPC Direct](#UPC_Direct)
    +   [4.18 UPC Direct - M1](#UPC_Direct_-_M1)
    +   [4.19 UPC Direct - Petofi Radio](#UPC_Direct_-_Petofi_Radio)
    +   [4.20 UPC Direct - Kossuth Radio](#UPC_Direct_-_Kossuth_Radio)
    +   [4.21 UPC 1W](#UPC_1W)
    +   [4.22 BFBS](#BFBS)
    +   [4.23 HRT](#HRT)
    +   [4.24 HTB+ 5 Kanal](#HTB+_5_Kanal)
    +   [4.25 DigitAlb](#DigitAlb)
    +   [4.26 Conto](#Conto)
    +   [4.27 MTV Networks](#MTV_Networks_2)
    +   [4.28 TSA](#TSA)
    +   [4.29 Harmonic](#Harmonic)
    +   [4.30 Digital+ (30W)](#Digital+_\(30W\))
    +   [4.31 DIGI TV](#DIGI_TV)
    +   [4.32 NC Num?ricable](#NC_Num?ricable)
    +   [4.33 NC Num?ricable - LCI](#NC_Num?ricable_-_LCI)
    +   [4.34 Orbit](#Orbit)
    +   [4.35 Orbit - TCM](#Orbit_-_TCM)
    +   [4.36 ABS-CBN - TFC](#ABS-CBN_-_TFC)
    +   [4.37 ABS-CBN](#ABS-CBN)
    +   [4.38 DigitAlb - TCM](#DigitAlb_-_TCM)
    +   [4.39 Digit?rk](#Digit?rk)
    +   [4.40 Digit?rk - STV](#Digit?rk_-_STV)
    +   [4.41 D-Smart](#D-Smart)
    +   [4.42 Bulsatcom](#Bulsatcom)
    +   [4.43 OSN](#OSN)
    +   [4.44 OSN - TCM](#OSN_-_TCM)
    +   [4.45 ADD](#ADD)
    +   [4.46 NOVA](#NOVA)
    +   [4.47 SCT](#SCT)
    +   [4.48 Arabesque](#Arabesque)
    +   [4.49 ADD - TCM](#ADD_-_TCM)
    +   [4.50 Orange 13E](#Orange_13E)
    +   [4.51 Orange 13E - LCP](#Orange_13E_-_LCP)
    +   [4.52 ITV Partner](#ITV_Partner)
    +   [4.53 Total TV](#Total_TV)
    +   [4.54 Total TV - OBN](#Total_TV_-_OBN)
    +   [4.55 Total TV - FTV](#Total_TV_-_FTV)
    +   [4.56 VisionTV](#VisionTV)
    +   [4.57 RCS DigiTV](#RCS_DigiTV)
    +   [4.58 RCS DigiTV - TCM](#RCS_DigiTV_-_TCM)
    +   [4.59 RCS DigiTV - M1](#RCS_DigiTV_-_M1)
    +   [4.60 RCS DigiTV - NeT TV](#RCS_DigiTV_-_NeT_TV)
    +   [4.61 RCS DigiTV - OBN](#RCS_DigiTV_-_OBN)
    +   [4.62 CS Link](#CS_Link)
    +   [4.63 Dolce TV](#Dolce_TV)
    +   [4.64 Dolce TV - M1](#Dolce_TV_-_M1)
    +   [4.65 Showtime Network](#Showtime_Network)
    +   [4.66 Showtime Network - TCM](#Showtime_Network_-_TCM)
    +   [4.67 Hello HD](#Hello_HD)
    +   [4.68 Canal Digital Nordic](#Canal_Digital_Nordic)
    +   [4.69 Canal Digital Nordic (catTV)](#Canal_Digital_Nordic_\(catTV\))
    +   [4.70 Meo](#Meo)
    +   [4.71 NTV](#NTV)
    +   [4.72 DMC](#DMC)
    +   [4.73 Multicanal](#Multicanal)
    +   [4.74 Mediaset Premium](#Mediaset_Premium)
    +   [4.75 Mediaset - La Fattoria](#Mediaset_-_La_Fattoria)
    +   [4.76 World TV](#World_TV)
    +   [4.77 Tring Digital](#Tring_Digital)
    +   [4.78 Akta (Max TV)](#Akta_\(Max_TV\))
    +   [4.79 HTB+](#HTB+)
    +   [4.80 Red Hot](#Red_Hot)
    +   [4.81 Cyfra + 13.0E](#Cyfra_+_13.0E)
    +   [4.82 ESP](#ESP)
    +   [4.83 ESP2](#ESP2)
    +   [4.84 ESP HD](#ESP_HD)
    +   [4.85 Satellite BG ( 23.5E )](#Satellite_BG_\(_23.5E_\))
    +   [4.86 Astro TV (91.5E)](#Astro_TV_\(91.5E\))
    +   [4.87 Indovision (108,2E)](#Indovision_\(108,2E\))
    +   [4.88 Telkom Vision (108,2E)](#Telkom_Vision_\(108,2E\))

# **DVB-S**

## **Astra 19.2E**

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


###

Astra HD+

last review: 2022-04-23 by: Darksniper

Additional Information:

+   can be booked for German Users on Sky DE V13/V14 smartcard: just copy the lines
+   HD03 card with CAID 1860 has CAK7 pairing and just works @official hardware

```
###
### DVB-S - Astra HD+ - Astra 19.2E
###
0D98,1830,1843,1860,098C,09C4:277E|HD+ by Astra|Aktivierung/Testchannel
0D98,1830,1843,1860,098C,09C4:EF10|HD+ by Astra|RTL HD
0D98,1830,1843,1860,098C,09C4:307A|HD+ by Astra|RTL UHD
0D98,1830,1843,1860,098C,09C4:EF11|HD+ by Astra|VOX HD
0D98,1830,1843,1860,098C,09C4:1581|HD+ by Astra|Sport1 HD
0D98,1830,1843,1860,098C,09C4:EF15|HD+ by Astra|RTLZWEI HD
0D98,1830,1843,1860,098C,09C4:EF74|HD+ by Astra|SAT.1 HD
0D98,1830,1843,1860,098C,09C4:EF75|HD+ by Astra|ProSieben HD
0D98,1830,1843,1860,098C,09C4:EF76|HD+ by Astra|kabel eins HD
0D98,1830,1843,1860,098C,09C4:EF77|HD+ by Astra|SIXX HD
0D98,1830,1843,1860,098C,09C4:6FEC|HD+ by Astra|Comedy Central HD
0D98,1830,1843,1860,098C,09C4:5274|HD+ by Astra|WELT HD
0D98,1830,1843,1860,098C,09C4:1519|HD+ by Astra|TELE 5 HD
0D98,1830,1843,1860,098C,09C4:2E9B|HD+ by Astra|SUPER RTL HD
0D98,1830,1843,1860,098C,09C4:151A|HD+ by Astra|DMAX HD
0D98,1830,1843,1860,098C,09C4:157F|HD+ by Astra|Deluxe Music HD
0D98,1830,1843,1860,098C,09C4:157C|HD+ by Astra|Disney Channel HD
0D98,1830,1843,1860,098C,09C4:EF78|HD+ by Astra|ProSieben Maxx HD
0D98,1830,1843,1860,098C,09C4:EF14|HD+ by Astra|ntv HD
0D98,1830,1843,1860,098C,09C4:2774|HD+ by Astra|TLC HD
0D98,1830,1843,1860,098C,09C4:2EAF|HD+ by Astra|NITRO HD
0D98,1830,1843,1860,098C,09C4:2777|HD+ by Astra|MTV HD
0D98,1830,1843,1860,098C,09C4:30D4|HD+ by Astra|SAT.1 Gold HD
0D98,1830,1843,1860,098C,09C4:1392|HD+ by Astra|Insight HD
0D98,1830,1843,1860,098C,09C4:30D6|HD+ by Astra|Eurosport 1 HD
0D98,1830,1843,1860,098C,09C4:78C0|HD+ by Astra|UHD1
0D98,1830,1843,1860,098C,09C4:0002|HD+ by Astra|UHD1 by Astra / HD+
0D98,1830,1843,1860,098C,09C4:EF79|HD+ by Astra|Kabel Eins Doku HD
0D98,1830,1843,1860,098C,09C4:183D|HD+ by Astra|Pro7Sat.1 UHD
0D98,1830,1843,1860,098C,09C4:EF16|HD+ by Astra|RTLup HD
0D98,1830,1843,1860,098C,09C4:EF17|HD+ by Astra|VOXup HD
##### Auch in HD Austria enthalten
0000,1830,1843,1860,0648,0650,098C,09C4:EF14|CBC|n-tv HD|TV|Astra HD+
```

last review: ??? by: ???

```
###
### DVB-S - Argus Classic SIDs
###
1830,1843:1C8E|HD PLUS GmbH|DMAX HD|TV|Astra HD+
1830,1843:0155|HD PLUS GmbH|Super RTL HD|TV|Astra HD+
1830,1843:1C9E|HD PLUS GmbH|Tele5 HD|TV|Astra HD+
1830,1843:1CC0|HD PLUS GmbH|NICK/CC HD|TV|Astra HD+
1830,1843:1CC2|HD PLUS GmbH|N24 HD|TV|Astra HD+
1830,1843:1CCC|HD PLUS GmbH|RTL HD|TV|Astra HD+
1830,1843:1CCE|HD PLUS GmbH|Vox HD|TV|Astra HD+
1830,1843:1CAE|HD PLUS GmbH|Sport1 HD|TV|Astra HD+
1830,1843:1CAA|HD PLUS GmbH|RTL2 HD|TV|Astra HD+
1830,1843:1CEA|HD PLUS GmbH|Sat1 HD|TV|Astra HD+
1830,1843:1CEC|HD PLUS GmbH|ProSieben HD|TV|Astra HD+
1830,1843:1CEE|HD PLUS GmbH|Kabel1 HD|TV|Astra HD+
1830,1843:1CA4|HD PLUS GmbH|Sixx HD|TV|Astra HD+
```

back to [index](#index)

### Austriasat

last review: 2015-02-04 by: Humorator

Additional information: check: don´t dubble post lines if you already have Dorcel, MTV etc. copied

+   Cryptoworks CAID 0D05 will be shut down on March 31st 2015
+   Dorcel & Hustler must be activated by phone!!!
+   New generation ICE CA-IDs are 0650 and 0D98
+   following is only possible for Austrian clients (GIS must be payed)
    +   Plus Austria (aka. Austriasat SD) can be booked on ORF-ICE smartcard: just copy the lines
    +   HD Austria (aka. Austriasat HD) can be booked on SKY AT V13/V14: just copy the lines
    +   HD Austria (aka. Austriasat HD) booked on an ORF-ICE has pairing and just works @official hardware
+   "Kombi Austria" includes both: Plus Austria & HD Austria

####

Plus Austria

```
###
### DVB-S - Plus Austria - Astra 19.2E
###
0000,0100,0648,0650,098C,09C4,0D95,0D98,1817:0FE0|M7 Group|Vivid TV|TV|Erotic
0000,0100,0648,0650,098C,09C4,0D95,0D98,1817:3251|M7 Group|Planet|TV|Plus Austria
0000,0100,0500,0624,0648,0650,0D95,0D98,1817,1818,1819:3252|M7 Group|Dorcel TV|Erotic
0000,0100,0624,0648,0650,0D95,0D96,0D98,1817,1818,1819:3253|M7 Group|Hustler TV|Erotic
### auch in MTV Unlimited enthalten
0000,0100,0500,0648,0650,0B00,0D95,0D98,1817,1818,1819:6FEE|MTV Networks|MTV Hits|TV|Plus Austria
0000,0100,0500,0624,0648,0650,0B00,0D95,0D98,1817,1818,1819:6FEF|MTV Networks|MTV Dance|TV|Plus Austria
0000,0100,0500,0624,0648,0650,0B00,0D95,0D96,0D98,1810,1817,1818,1819:6FF0|MTV Networks|VH1 Europe|TV|TV|Plus Austria
0000,0100,0500,0624,0648,0650,0B00,0D95,0D96,0D98,1810,1817,1818,1819:6FF3|MTV Networks|MTV ROCKS|TV|TV|Plus Austria
0000,0100,0500,0648,0650,0B00,0D95,0D98,1817,1818,1819:6FFF|MTV Networks|MTV Music 24|TV|TV|Plus Austria
### Falls sportdigital über anderes Paket, Eintrag nicht mehr nötig
0000,0100,0648,0650,098C,09C4,0D95,0D98,1817,1833:325F|M7 Group|sportdigital|TV|Plus Austria
### Falls bereits Sky Welt extra kopiert, sind diese Einträge nicht mehr nötig, da doppelt
### Plus Austria auch über Sky Welt Paket
0000,0648,0650,0D95,0D98,09C4,09AF,098C:0025|SKY|AXN Action|TV|Series
0000,0648,0650,0D95,0D98,09C4,09AF,098C:2EFE|RTL Group|RTL living|TV|Livestyle
0000,0648,0650,0D95,0D98,09C4,09AF,098C:125D|ProSiebenSat.1|Sat.1 emotions|TV|Entertainment
0000,0648,0650,0D95,0D98,09C4,09AF,098C:4462|ProSiebenSat.1|kabel eins classics|TV|Movies
0000,0100,0648,0650,098C,09C4,09AF,0D95,0D98,1817:0FDA|M7 Group|Animax|TV|Children
```

####

HD Austria

```
###
### DVB-S - HD Austria - Astra 19.2E
###
0000,0648,0650,098C,09C4:14B4|ProSiebenSat.1|SAT.1 HD Austria|TV|HD Austria
0000,0648,0650,098C,09C4:14B5|ProSiebenSat.1|ProSieben HD Austria|TV|HD Austria
0000,0648,0650,098C,09C4:14B6|ProSiebenSat.1|kabel eins HD Austria|TV|HD Austria
0000,0648,0650,098C,09C4:14B7|ProSiebenSat.1|PULS 4 HD Austria|TV|HD Austria
0000,0648,0650,098C,09C4:1589|BetaDigital|Deluxe Music HD Austria|TV|HD Austria
0000,0648,0650,098C,09C4:152D|BetaDigital|TELE 5 HD Austria|TV|HD Austria
0000,0648,0650,098C,09C4:152E|BetaDigital|DMAX HD Austria|TV|HD Austria
0000,0648,0650,098C,09C4:2E87|CBC|RTL HD Austria|TV|HD Austria
0000,0648,0650,098C,09C4:2E91|CBC|VOX HD Austria|TV|HD Austria
0000,0648,0650,098C,09C4:2EA5|CBC|RTL II HD Austria|TV|HD Austria
0000,0648,0650,098C,09C4:527D|MTV Networks|Nickelodeon/NickNight HD AT|TV|HD Austria
0000,0648,0650,098C,09C4:527E|BetaDigital|N24 HD Austria|TV|HD Austria
##### Auch in Astra HD+ enthalten
0000,1830,1843,1860,0648,0650,098C,09C4:EF14|CBC|n-tv HD|TV|HD Austria
```

back to [index](#index)

### Bis.TV (REVIEW NEEDED)

last review: 2013-01-06 by: ???

```
###
### DVB-S - Bis.TV - Astra 19.2E
###
0500:427C|Bis.TV 19|AB Moteurs|TV|
0500:427D|Bis.TV 19|AB1|TV|
0500:427E|Bis.TV 19|Animaux|TV|
0500:427F|Bis.TV 19|Encyclo|TV|
0500:4281|Bis.TV 19|Escales|TV|
0500:4282|Bis.TV 19|Toute l'Histoire|TV|
0500:4284|Bis.TV 19|NT1|TV
0500:4285|Bis.TV 19|Dorcel TV|TV|
0500:4286|Bis.TV 19|Action|TV|
0500:4287|Bis.TV 19|Mangas|TV|
0500:4289|Bis.TV 19|Cine Polar|TV|
0500:428A|Bis.TV 19|Cine FX|TV|
0500:428B|Bis.TV 19|RTL9|TV|
0500:428C|Bis.TV 19|Chasse et Peche|TV|
0500:428D|Bis.TV 19|Stylia|TV|
```

back to [index](#index)

### Canal+

last review: 2014-02-03 by: Humorator

```
###
### DVB-S - Canal+ - Astra 19.2E
###
### Nagra 3 & Mediaguard 2
0000,0100,1810:6FF4|MTV Networks|Nickelodeon Spain|TV|Children
0000,0100,1810:7468|Canal+|Fox Crime Spain|TV|Series
0000,0100,1810:7469|Canal+|Antena Nova|TV|General
0000,0100,1810:746A|Canal+|Garage TV|TV|Sport
0000,0100,1810:746B|Canal+|Disney Junior Spain|TV|Children
0000,0100,1810:746C|Canal+|C+ ACCIÓN||
0000,0100,1810:746D|Canal+|C+ COMEDIA||
0000,0100,1810:746E|Canal+|C+ DCINE||
0000,0100,1810:746F|Canal+|Fox Spain|TV|Series
0000,0100,1810:7471|Canal+|AXN White Spain|TV|Entertainment
0000,0100,1810:7472|Canal+|||
0000,0100,1810:7473|Canal+|||
0000,0100,1810:7474|Canal+|||
0000,0100,1810:7477|Canal+|AXN Spain|TV|General
0000,0100,1810:7479|Canal+|Canal+ ...30|TV|Movies
0000,0100,1810:749A|Canal+|Divinity|TV|Lifestyle
0000,0100,1810:749B|Canal+|Fox News|TV|News
0000,0100,1810:749C|Canal+|Baby TV|TV|Children
0000,0100,1810:749E|Canal+|Boing Spain|TV|Children
0000,0100,1810:749F|Canal+|Energy|TV|Lifestyle
0000,0100,1810:74A0|Canal+|Barça TV|TV|Sport
0000,0100,1810:74A1|Canal+|Mexico Travel Channel|TV|Travel
0000,0100,1810:74A2|Canal+|MTV Spain|TV|Music
0000,0100,1810:74A3|Canal+|Canal de las Estrellas|TV|Entertainment
0000,0100,1810:74A4|Canal+|Motors TV|TV|Sport
0000,0100,1810:7563|Canal+|Multi-X|TV|Porn
0000,0100,1810:7565|Canal+|Taquilla 5|TV|Pay per View
0000,0100,1810:7566|Canal+|Taquilla 6|TV|Pay per View
0000,0100,1810:7567|Canal+|Taquilla 7|TV|Pay per View
0000,0100,1810:7568|Canal+|Taquilla X|TV|Porn
0000,0100,1810:7569|Canal+|Taquilla X|TV|Porn
0000,0100,1810:756A|Canal+|Taquilla XX Hard|TV|Porn
0000,0100,1810:756B|Canal+|Canal+ Liga 2|TV|Sport
0000,0100,1810:756D|Canal+|MULTIDEP.2||
0000,0100,1810:756E|Canal+|C+LCampeon2||
0000,0100,1810:756F|Canal+|Taquilla 8|TV|Pay per View
0000,0100,1810:7570|Canal+|Canal+ Toros|TV|Sport
0000,0100,1810:7571|Canal+|Multi-X|TV|Porn
0000,0100,1810:7573|Canal+|Multideporte|TV|Sport
0000,0100,1810:7574|Canal+|Multipantalla 6|TV|Sport
0000,0100,1810:7575|Canal+|C+LCAMPEON8||
0000,0100,1810:7576|Canal+|Multideporte|TV|Sport
0000,0100,1810:7577|Canal+|C+LCampeon3||
0000,0100,1810:7578|Canal+|C+LCAMPEON4||
0000,0100,1810:7579|Canal+|C+LCAMPEON5||
0000,0100,1810:757A|Canal+|C+LCAMPEON9||
0000,0100,1810:757B|Canal+|Canal+ Liga Campeones|TV|Sport
0000,0100,1810:757C|Canal+|C+LCampeones||
0000,0100,1810:757D|Canal+|C+LCampeones||
0000,0100,1810:757E|Canal+|C+LCampeon2||
0000,0100,1810:75F9|Canal+|Nitro|TV|Entertainment
0000,0100,1810:75FE|Canal+|Antena Neox|TV|General
0000,0100,1810:75FF|Canal+|Canal Panda|TV|Children
0000,0100,1810:7601|Canal+|Real Madrid TV|TV|Sport
0000,0100,1810:7602|Canal+|Nick Junior Spain|TV|Children
0000,0100,1810:7604|Canal+|Antena 3|TV|General
0000,0100,1810:760E|Canal+|La Siete|TV|General
0000,0100,1810:768E|Canal+|Taquilla 1|TV|Pay per View
0000,0100,1810:768F|Canal+|Taquilla 2|TV|Pay per View
0000,0100,1810:7690|Canal+|Taquilla 3|TV|Pay per View
0000,0100,1810:7691|Canal+|Taquilla 4|TV|Pay per View
0000,0100,1810:7692|Canal+|Multideporte|TV|Sport
0000,0100,1810:7694|Canal+|Multicine|TV|Presentations
0000,0100,1810:7695|Canal+|Taquilla XY|TV|Porn
0000,0100,1810:7696|Canal+|Canal+ Series Spain|TV|Series
0000,0100,1810:769B|Canal+|Multipantalla 4|TV|Pay per View
0000,0100,1810:769C|Canal+|MULTIDEP.5||
0000,0100,1810:769D|Canal+|C+LCAMPEON7||
0000,0100,1810:769E|Canal+|C+LCAMPEON6||
0000,0100,1810:76A2|Canal+|C+ MultiCINE||
0000,0100,1810:76A3|Canal+|C+ MultiDEP||
0000,0100,1810:76C0|Canal+|Canal+ 1|TV|General
0000,0100,1810:76C3|Canal+|Disney Channel Spain|TV|Children
0000,0100,1810:76C4|Canal+|Sportmania|TV|Sport
0000,0100,1810:76C5|Canal+|40 TV|TV|Music
0000,0100,1810:76C7|Canal+|TCM Moderno|TV|Movies
0000,0100,1810:76C8|Canal+|Paramount Comedy Channel Spain|TV|Comedy
0000,0100,1810:76C9|Canal+|Viajar|TV|Travel
0000,0100,1810:76CA|Canal+|Canal+ 2|TV|Movies
0000,0100,1810:76CC|Canal+|Teledeporte|TV|Sport
0000,0100,1810:76CE|Canal+|Canal Cocina|TV|Cooking
0000,0100,1810:7729|Canal+|Disney Cinemagic Spain & Portugal|TV|Entertainment
0000,0100,1810:772A|Canal+|Disney XD Spain|TV|Children
0000,0100,1810:772B|Canal+|Caza y Pesca|TV|Documentaries
0000,0100,1810:772D|Canal+|Biography Channel Spain & Portugal|TV|History
0000,0100,1810:772E|Canal+|Trace Sports|TV|Sport
0000,0100,1810:7730|Canal+|Cosmopolitan TV|TV|Various
0000,0100,1810:7731|Canal+|Canal de Historia|TV|Documentaries
0000,0100,1810:7732|Canal+|TVI Internacional|TV|General
0000,0100,1810:7735|Canal+|CINEMAGIC||
0000,0100,1810:7736|Canal+|D Cine Español|TV|Movies
0000,0100,1810:7738|Canal+|Canal 24 Horas|TV|News
0000,0100,1810:7789|Canal+|Canal+ Golf|TV|Sport
0000,0100,1810:778A|Canal+|Odisea|TV|Documentaries
0000,0100,1810:778B|Canal+|Playboy TV|TV|Erotic
0000,0100,1810:778D|Canal+|National Geographic Spain|TV|Documentaries
0000,0100,1810:778E|Canal+|Canal+ Fútbol|TV|Sport
0000,0100,1810:778F|Canal+|Canal+ Deportes|TV|Sport
0000,0100,1810:7790|Canal+|Calle 13|TV|Series
0000,0100,1810:7792|Canal+|Canal+ Liga|TV|Sport
0000,0100,1810:7793|Canal+|CANAL+ LIGA||
0000,0100,1810:7795|Canal+|Decasa TV|TV|Lifestyle
0000,0100,1810:7796|Canal+|SyFy Universal Spain|TV|Entertainment
0000,0100,1810:7797|Canal+|Sol Música|TV|Music
0000,0100,1810:779D|Canal+|C+ DEPORTES||
0000,0100,1810:77BC|Canal+|Factoria de Ficcion|TV|Series
0000,0100,1810:77BE|Canal+|Clan TVE|TV|Children
0000,0100,1810:77BF|Canal+|La Sexta|TV|General
0000,0100,1810:77C0|Canal+|La 1|TV|General
0000,0100,1810:77C1|Canal+|Canal Hollywood|TV|Movies
0000,0100,1810:77C2|Canal+|La 2|TV|General
0000,0100,1810:77C3|Canal+|Telecinco|TV|General
0000,0100,1810:77C5|Canal+|Canal+ Xtra|TV|General
0000,0100,1810:77C6|Canal+|CANAL+ XTRA||
0000,0100,1810:77C7|Canal+|Cuatro|TV|General
0000,0100,1810:77C9|Canal+|TNT (Spain)|TV|Entertainment
0000,0100,1810:77D8|Canal+|NatGeo Wild Spain|TV|Documentaries
###Nagra 3 only
1810:74CC|Canal+|Canal+ Spain HD|TV|General
1810:74CD|Canal+|SyFy HD Spain|TV|Series
1810:74CE|Canal+|Viajar HD|TV|Travel
1810:74CF|Canal+|Canal+ Xtra HD|TV|General
1810:74D1|Canal+|SYFY HD||
1810:74D3|Canal+|VIAJAR HD||
1810:74D4|Canal+|C+ XTRA HD||
1810:74D5|Canal+|CANAL+1 HD||
1810:74D6|Canal+|Canal+ Deportes 2 HD|TV|Sport
1810:74D7|Canal+|C+ DEP 2 HD||
1810:74D8|Canal+|C+ XTRA HD||
1810:74DA|Canal+|C+ XTRA HD||
1810:74FE|Canal+|Fox HD Spain & Portugal|TV|Entertainment
1810:74FF|Canal+|Canal+ Fútbol HD|TV|Sport
1810:7500|Canal+|Canal+ Acción HD|TV|Movies
1810:7502|Canal+|Canal+ D Cine HD|TV|Movies
1810:7504|Canal+|FOX HD||
1810:7508|Canal+|C+ FÚTBOL HD||
1810:7509|Canal+|C+ ACCIÓN HD||
1810:750B|Canal+|C+ DCINE HD||
1810:750C|Canal+|Canal Hollywood HD|TV|Movies
1810:750D|Canal+|HOLLYWOODHD||
1810:781E|Canal+|Mezzo Live HD|TV|Music
1810:781F|Canal+|Calle 13 HD|TV|Series
1810:7820|Canal+|Disney Cinemagic HD Spain|TV|Children
1810:7821|Canal+|National Geographic Spain HD|TV|Documentaries
1810:7822|Canal+|Canal+ Deportes HD|TV|Sport
1810:7823|Canal+|MEZZO LIVE HD||
1810:7824|Canal+|CALLE 13 HD||
1810:7825|Canal+|CINEMAGIC HD||
1810:7826|Canal+|CINEMAGIC HD||
1810:7827|Canal+|CINEMAGIC HD||
1810:7828|Canal+|C+ DEPORT HD||
1810:7829|Canal+|NAT GEO HD||
1810:782A|Canal+|||
1810:7850|Canal+|AXN Spain HD|TV|Series
1810:7851|Canal+|Canal+ Comedia HD|TV|Movies
1810:7852|Canal+|Canal+ Liga HD|TV|Sport
1810:7853|Canal+|Canal+ Liga 2 HD|TV|Sport
1810:7854|Canal+|Taquilla HD|TV|Pay per View
1810:7855|Canal+|Canal+ 3D Spain|TV|General
1810:7856|Canal+|AXN HD||
1810:7857|Canal+|C+COMEDIA HD||
1810:7858|Canal+|C+ LIGA HD||
1810:7859|Canal+|C+ LIGA HD||
1810:785A|Canal+|C+L.MULTI HD||
1810:785B|Canal+|Canal+ Liga Campeones 2 HD|TV|Sport
1810:785C|Canal+|C+LCAMPEON2||
1810:785D|Canal+|C+LCAMPEON2||
1810:785E|Canal+|Taquilla HD 2|TV|Pay per View
1810:785F|Canal+|C+LCAMPEON3||
1810:7860|Canal+|C+LCAMPEON3||
1810:7861|Canal+|Canal+ Toros HD|TV|Sport
1810:7882|Canal+|Canal+ Series HD Spain|TV|Series
1810:7883|Canal+|TNT HD Spain|TV|Movies
1810:7884|Canal+|NatGeo Wild HD Spain|TV|Documentaries
1810:7885|Canal+|TCM HD||
1810:7886|Canal+|Disney Channel HD Spain|TV|Children
1810:7887|Canal+|C+ SERIES HD||
1810:7888|Canal+|TNT HD||
1810:7889|Canal+|NG WILD HD||
1810:788A|Canal+|TCM HD Spain|TV|Movies
1810:788B|Canal+|DISNEY CH HD||
1810:78B4|Canal+|Canal+ Liga Campeones HD|TV|Sport
1810:78B5|Canal+|Fox Crime HD Spain|TV|Series
1810:78B6|Canal+|Canal+ 2 HD|TV|General
1810:78B7|Canal+|Canal+ Golf HD|TV|Sport
1810:78B8|Canal+|Cosmopolitan HD|TV|Entertainment
1810:78B9|Canal+|C+LCAMPEONES||
1810:78BA|Canal+|FOX CRIME HD||
1810:78BB|Canal+|CANAL+ 2 HD||
1810:78BC|Canal+|C+ GOLF HD||
1810:78BD|Canal+|COSMO HD||
1810:78BE|Canal+|C+LCAMPEONES||
1810:78BF|Canal+|C+LCAMPEONES||
### listed @ other providers too:
0000,0100,0500,0624,0648,0B00,0D05,0D95,0D96,1810,1817,1818,1819:6FF0|MTV Networks|VH1 Europe|TV|TV|Music
0000,0100,0500,0624,0648,0B00,0D05,0D95,0D96,1810,1817,1818,1819:6FF3|MTV Networks|MTV Rocks|TV|TV|Music
0000,0100,0500,1811,1817,1818,1819,1863:2014|CSAT|Mezzo|TV|Music|
```

back to [index](#index)



### Canal Digitaal


Canal Digitaal belongs to the M7 Group, however in the srvid-list the name Canal Digitaal is used and correspondents with the data tarnsmitted by the transponder of the appropiate satellite.
last review: 2014-02-24 by: ni\_hao

```
###
### DVB-S - Canal Digitaal - Astra 19.2E
###
0100:0FA2|Canal Digitaal 19.2E|SBS 6|TV|General
0100:0FA3|Canal Digitaal 19.2E|Net 5|TV|Movies
0100:0FAB|Canal Digitaal 19.2E|Nederland 1|TV|General
0100:0FAC|Canal Digitaal 19.2E|Nederland 2|TV|General
0100:0FAD|Canal Digitaal 19.2E|Nederland 3|TV|General
0100:0FB0|Canal Digitaal 19.2E|BVN (FTA)|TV|General
0100:0FCC|Canal Digitaal 19.2E|RTL 4|TV|General
0100:0FCD|Canal Digitaal 19.2E|RTL 5|TV|General
0100:0FCF|Canal Digitaal 19.2E|RTL 7 Nederland|TV|General
0100:1483|Canal Digitaal 19.2E|Veronica/Disney XD Nederlands|TV|Children
0100:2014|Canal Digitaal 19.2E|Mezzo|TV|Music
0100:219F|Canal Digitaal 19.2E|Nautical Channel|TV|Sport
0100:2525|Canal Digitaal 19.2E|Motors TV|TV|Sport
0100:3252|Canal Digitaal 19.2E|Dorcel TV|TV|Porn
0100:325D|Canal Digitaal 19.2E|Discovery|TV|Documentaries
0100:3201|Canal Digitaal 19.2E|Een|TV|General
0100:3202|Canal Digitaal 19.2E|Canvas|TV|General
0100:51D3|Canal Digitaal 19.2E|MTV Nederland|TV|Music
0100:6FEF|Canal Digitaal 19.2E|MTV Dance|TV|Music
0100:6FF0|Canal Digitaal 19.2E|VH-1 (Video Hits One)|TV|Music
0100:6FF1|Canal Digitaal 19.2E|VH-1 Classic|TV|Music
0100:6FF3|Canal Digitaal 19.2E|MTV Rocks|TV|Music
0100:6FFF|Canal Digitaal 19.2E|MTV Music 24|TV|Music
0100:7007|Canal Digitaal 19.2E|Nickelodeon Nederland|TV|Children
```

back to [index](#index)

### CanalSat (REVIEW NEEDED)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.

last review: 2013-04-17 by: ???

Review needed

```
###
### DVB-S -  Canal+/Canalsat - Astra 19.2E
### update:
###
0000,0100,0500:189D|CanalSat 19.2E|BeIN Sport 1 HD|TV|Sport
0000,0100,0500:189E|CanalSat 19.2E|beIN Sport 2 HD|TV|Sport
0000,0100,0500:189F|CanalSat 19.2E|L Equipe 21|TV|Sport
0000,0100,0500:18B1|CanalSat 19.2E|beIN SPORT1 HD|TV|
0000,0100,0500:18B2|CanalSat 19.2E|beIN SPORT2 HD|TV|
0000,0100,0500:18B3|CanalSat 19.2E|L EQUIPE 21|TV|
0000,0100,0500:1901|CanalSat 19.2E|SyFy Universal France|TV|Series
0000,0100,0500:1902|CanalSat 19.2E|Libido TV|TV|Porn
0000,0100,0500:1903|CanalSat 19.2E|NRJ Paris Sat|TV|Regional
0000,0100,0500:1904|CanalSat 19.2E|M6 Music Hits|TV|Music
0000,0100,0500:1905|CanalSat 19.2E|OFFRES CANAL READY|TV|
0000,0100,0500:1906|CanalSat 19.2E|NRJ Hits|TV|Music
0000,0100,0500:1907|CanalSat 19.2E|French Lover TV|TV|Porn
0000,0100,0500:1908|CanalSat 19.2E|Girondins TV|TV|Sport
0000,0100,0500:1909|CanalSat 19.2E|Teletoon +1|TV|Children
0000,0100,0500:190A|CanalSat 19.2E|Pink TV|TV|Lifestyle
0000,0100,0500:190B|CanalSat 19.2E|13eme Rue|TV|Series
0000,0100,0500:1966|CanalSat 19.2E|Mezzo Live HD|TV|Music
0000,0100,0500:1967|CanalSat 19.2E|M6 Music Hits HD|TV|Music
0000,0100,0500:1968|CanalSat 19.2E|TF6 HD|TV|Series
0000,0100,0500:1969|CanalSat 19.2E|Serie Club HD|TV|Series
0000,0100,0500:196A|CanalSat 19.2E|OCS Max HD|TV|Movies
0000,0100,0500:196B|CanalSat 19.2E|Kombat Sport HD|TV|Sport
0000,0100,0500:1973|CanalSat 19.2E|NatGeo Wild HD France|TV|Documentaries
0000,0100,0500:197A|CanalSat 19.2E|MEZZO LIVE HD|TV|
0000,0100,0500:197B|CanalSat 19.2E|M6 MUSIC HD|TV|
0000,0100,0500:197C|CanalSat 19.2E|TF6 HD|TV|
0000,0100,0500:197D|CanalSat 19.2E|SERIE CLUB HD|TV|
0000,0100,0500:197E|CanalSat 19.2E|OCS MAX HD|TV|
0000,0100,0500:197F|CanalSat 19.2E|KOMBAT SPORT HD|TV|
0000,0100,0500:1987|CanalSat 19.2E|NAT GEO WILD HD|TV|
0000,0100,0500:1989|CanalSat 19.2E| |TV|
0000,0100,0500:19C9|CanalSat 19.2E|13eme Rue HD|TV|Series
0000,0100,0500:19CA|CanalSat 19.2E|Disney Junior HD France|TV|Children
0000,0100,0500:19CB|CanalSat 19.2E|SyFy Universal HD France|TV|Entertainment
0000,0100,0500:19D0|CanalSat 19.2E|Brava HDTV|TV|Music
0000,0100,0500:19D1|CanalSat 19.2E|BRAVA HD TEST2|TV|
0000,0100,0500:19D3|CanalSat 19.2E|BeIN Sport Max 3|TV|Sport
0000,0100,0500:19D4|CanalSat 19.2E|BeIN Sport Max 4|TV|Sport
0000,0100,0500:19D5|CanalSat 19.2E|BeIN Sport Max 5|TV|Sport
0000,0100,0500:19D6|CanalSat 19.2E|BeIN Sport Max 6|TV|Sport
0000,0100,0500:19D7|CanalSat 19.2E|BeIN Sport Max 7|TV|Sport
0000,0100,0500:19D8|CanalSat 19.2E|BeIN Sport Max 8|TV|Sport
0000,0100,0500:19D9|CanalSat 19.2E|BeIN Sport Max 9|TV|Sport
0000,0100,0500:19DA|CanalSat 19.2E|BeIN Sport Max 10|TV|Sport
0000,0100,0500:19DD|CanalSat 19.2E|13EME RUE HD|TV|
0000,0100,0500:19DE|CanalSat 19.2E|DISNEY JUNIOR HD|TV|
0000,0100,0500:19DF|CanalSat 19.2E|SYFY HD|TV|
0000,0100,0500:1AF6|CanalSat 19.2E|beIN Sport 1|TV|Sport
0000,0100,0500:1AF9|CanalSat 19.2E|France 24 (en Français)|TV|
0000,0100,0500:1AFC|CanalSat 19.2E|beIN Sport 2|TV|Sport
0000,0100,0500:1B03|CanalSat 19.2E|TV5MONDE EUROPE|TV|
0000,0100,0500:1B59|CanalSat 19.2E|Montagne TV|TV|Documentaries
0000,0100,0500:1F41|CanalSat 19.2E|MTV Base HD|TV|Music
0000,0100,0500:1F42|CanalSat 19.2E|MTV Pulse HD|TV|Music
0000,0100,0500:1F43|CanalSat 19.2E|MTV Idol HD|TV|Music
0000,0100,0500:1F44|CanalSat 19.2E|MTV HD France|TV|Music
0000,0100,0500:1F45|CanalSat 19.2E|Planete+ Thalassa HD|TV|Documentaries
0000,0100,0500:1F46|CanalSat 19.2E|Campus Bac HD|TV|Cultural
0000,0100,0500:1F4B|CanalSat 19.2E|MTV BASE HD|TV|
0000,0100,0500:1F4C|CanalSat 19.2E|MTV PULSE HD|TV|
0000,0100,0500:1F4D|CanalSat 19.2E|MTV IDOL HD|TV|
0000,0100,0500:1F4E|CanalSat 19.2E|MTV HD|TV|
0000,0100,0500:1F4F|CanalSat 19.2E|PLANETE+ THALASSA HD|TV|
0000,0100,0500:1FA5|CanalSat 19.2E|Cine+ Classic|TV|Movies
0000,0100,0500:1FA6|CanalSat 19.2E|Cine+ Emotion|TV|Movies
0000,0100,0500:1FA7|CanalSat 19.2E|Cine+ Frisson|TV|Movies
0000,0100,0500:1FA8|CanalSat 19.2E|Cine+ Star|TV|Movies
0000,0100,0500:1FA9|CanalSat 19.2E|Disney Channel France|TV|Children
0000,0100,0500:1FAA|CanalSat 19.2E|Jimmy|TV|Series
0000,0100,0500:1FAB|CanalSat 19.2E|MCM|TV|Music
0000,0100,0500:1FAC|CanalSat 19.2E|National Geographic France|TV|Documentaries
0000,0100,0500:1FAD|CanalSat 19.2E|Paris Premiere|TV|General
0000,0100,0500:1FAE|CanalSat 19.2E|TV 5 Monde (France Belgique Suisse)|TV|General
0000,0100,0500:1FAF|CanalSat 19.2E|Ushuaia TV|TV|Documentaries
0000,0100,0500:1FB0|CanalSat 19.2E|Voyage|TV|Travel
0000,0100,0500:2009|CanalSat 19.2E|Canal+|TV|General
0000,0100,0500:200A|CanalSat 19.2E|I-TELE|TV|
0000,0100,0500:200B|CanalSat 19.2E|Canal+ Cinema|TV|Movies
0000,0100,0500:200C|CanalSat 19.2E|CANAL+ SPORT|TV|
0000,0100,0500:200D|CanalSat 19.2E|Cine+ Premier|TV|Movies
0000,0100,0500:200E|CanalSat 19.2E|NRJ 12|TV|
0000,0100,0500:200F|CanalSat 19.2E|LCI|TV|
0000,0100,0500:2010|CanalSat 19.2E|France 3 Sat|TV|General
0000,0100,0500:2011|CanalSat 19.2E|FRANCE 2|TV|
0000,0100,0500:2012|CanalSat 19.2E|Planete+|TV|Documentaries
0000,0100,0500:2013|CanalSat 19.2E|TMC (Tele Monte Carlo)|TV|General
0000,0100,0500:2014|CanalSat 19.2E|Mezzo|TV|Music
0000,0100,0500:201D|CanalSat 19.2E|CANAL+|TV|
0000,0100,0500:201E|CanalSat 19.2E|i-Tele|TV|News
0000,0100,0500:2020|CanalSat 19.2E|Canal+ Sport|TV|General
0000,0100,0500:2021|CanalSat 19.2E| |TV|
0000,0100,0500:2022|CanalSat 19.2E|NRJ 12|TV|Music
0000,0100,0500:2024|CanalSat 19.2E|FRANCE 3|TV|
0000,0100,0500:2025|CanalSat 19.2E|France 2|TV|General
0000,0100,0500:2027|CanalSat 19.2E|TMC|TV|
0000,0100,0500:2028|CanalSat 19.2E|MEZZO.|TV|
0000,0100,0500:2031|CanalSat 19.2E|CANAL+|TV|
0000,0100,0500:206D|CanalSat 19.2E|A VOIR CE SOIR|TV|
0000,0100,0500:206E|CanalSat 19.2E|Cine+ Club|TV|Movies
0000,0100,0500:206F|CanalSat 19.2E|TV Breizh|TV|Entertainment
0000,0100,0500:2070|CanalSat 19.2E|MCM Top|TV|Music
0000,0100,0500:2071|CanalSat 19.2E|Canal+ Decale|TV|General
0000,0100,0500:2072|CanalSat 19.2E|Canal+ Family|TV|Entertainment
0000,0100,0500:2073|CanalSat 19.2E|InfoSport+|TV|Sport
0000,0100,0500:2074|CanalSat 19.2E|June|TV|Entertainment
0000,0100,0500:2075|CanalSat 19.2E|Serie Club|TV|Series
0000,0100,0500:2076|CanalSat 19.2E|Teva|TV|General
0000,0100,0500:2077|CanalSat 19.2E|Planete+ No Limit|TV|Documentaries
0000,0100,0500:2078|CanalSat 19.2E|MCM Pop|TV|Music
0000,0100,0500:20D2|CanalSat 19.2E|Cine+ 1|TV|Pay per View
0000,0100,0500:20D3|CanalSat 19.2E|Cine+ 2|TV|Pay per View
0000,0100,0500:20D4|CanalSat 19.2E|Cine+ 3|TV|Pay per View
0000,0100,0500:20D5|CanalSat 19.2E|Cine+ 4|TV|Pay per View
0000,0100,0500:20D6|CanalSat 19.2E|Cine+ 5|TV|Pay per View
0000,0100,0500:20D7|CanalSat 19.2E|Cine+ 6|TV|Pay per View
0000,0100,0500:20D8|CanalSat 19.2E|Cine+ 7|TV|Pay per View
0000,0100,0500:20D9|CanalSat 19.2E|Cine+ 8|TV|Pay per View
0000,0100,0500:20DB|CanalSat 19.2E|Cine+ 10|TV|Pay per View
0000,0100,0500:20DC|CanalSat 19.2E|Cine+ 8|TV|Pay per View
0000,0100,0500:2135|CanalSat 19.2E|Tele Melody|TV|Music
0000,0100,0500:2136|CanalSat 19.2E|Numero 23|TV|Lifestyle
0000,0100,0500:2138|CanalSat 19.2E|Planete+ Thalassa|TV|Documentaries
0000,0100,0500:2139|CanalSat 19.2E|ESPN Classic Sport France|TV|Sport
0000,0100,0500:213C|CanalSat 19.2E|MCS Bien etre|TV|Lifestyle
0000,0100,0500:2144|CanalSat 19.2E|OMTV (Olympique Marseille)|TV|Sport
0000,0100,0500:2145|CanalSat 19.2E|OLTV (Olympique Lyonnais)|TV|Sport
0000,0100,0500:217C|CanalSat 19.2E|NUMERO 23|TV|
0000,0100,0500:219A|CanalSat 19.2E|Onzeo|TV|Sport
0000,0100,0500:219B|CanalSat 19.2E|Mosaique Canalsat|TV|Various
0000,0100,0500:219C|CanalSat 19.2E|Mosaique Canalsat|TV|Various
0000,0100,0500:219D|CanalSat 19.2E|Mosaique Canalsat|TV|Various
0000,0100,0500:219E|CanalSat 19.2E|OCS Geants|TV|Movies
0000,0100,0500:219F|CanalSat 19.2E|Nautical Channel|TV|Sport
0000,0100,0500:21A2|CanalSat 19.2E|Mosaique Canalsat|TV|Various
0000,0100,0500:21A5|CanalSat 19.2E|Private Spice|TV|Porn
0000,0100,0500:21A6|CanalSat 19.2E|Mosaique Canalsat|TV|Various
0000,0100,0500:21A7|CanalSat 19.2E||TV|
0000,0100,0500:21A9|CanalSat 19.2E|MCS Extreme|TV|Sport
0000,0100,0500:21AC|CanalSat 19.2E|MOSAIQUE C+|TV|
0000,0100,0500:21AD|CanalSat 19.2E|MOSAIQUE C+|TV|
0000,0100,0500:21AE|CanalSat 19.2E|MOSAIQUE|TV|
0000,0100,0500:21AF|CanalSat 19.2E|MOSAIQUE C+|TV|
0000,0100,0500:21B0|CanalSat 19.2E|MOSAIQUE|TV|
0000,0100,0500:21B2|CanalSat 19.2E|TiJi|TV|Children
0000,0100,0500:21C0|CanalSat 19.2E|MOSAIQUE C+|TV|
0000,0100,0500:21C1|CanalSat 19.2E|MOSAIQUE|TV|
0000,0100,0500:21C2|CanalSat 19.2E|MOSA 2|TV|
0000,0100,0500:21C3|CanalSat 19.2E|MOSA 3|TV|
0000,0100,0500:21C4|CanalSat 19.2E|MOSA 4|TV|
0000,0100,0500:21C5|CanalSat 19.2E|MOSA 5|TV|
0000,0100,0500:21FD|CanalSat 19.2E|D8|TV|General
0000,0100,0500:21FE|CanalSat 19.2E|France O|TV|Regional
0000,0100,0500:21FF|CanalSat 19.2E|FRANCE 4|TV|
0000,0100,0500:2200|CanalSat 19.2E|France 5|TV|General
0000,0100,0500:2201|CanalSat 19.2E|SPORT+|TV|
0000,0100,0500:2202|CanalSat 19.2E|M6|TV|General
0000,0100,0500:2203|CanalSat 19.2E|LCP - La Chaine Parlementaire|TV|Politics
0000,0100,0500:2204|CanalSat 19.2E|W9|TV|General
0000,0100,0500:2205|CanalSat 19.2E|Gulli|TV|Children
0000,0100,0500:2206|CanalSat 19.2E|TF 1|TV|General
0000,0100,0500:2207|CanalSat 19.2E|Eurosport France|TV|Sport
0000,0100,0500:2208|CanalSat 19.2E|Arte (France)|TV|Cultural
0000,0100,0500:2211|CanalSat 19.2E|D8|TV|
0000,0100,0500:2212|CanalSat 19.2E|FRANCE O|TV|
0000,0100,0500:2213|CanalSat 19.2E|FRANCE 4|TV|
0000,0100,0500:2214|CanalSat 19.2E|FRANCE 5|TV|
0000,0100,0500:2216|CanalSat 19.2E|M6|TV|
0000,0100,0500:2217|CanalSat 19.2E|LCP|TV|
0000,0100,0500:2218|CanalSat 19.2E|W9|TV|
0000,0100,0500:2219|CanalSat 19.2E|GULLI|TV|
0000,0100,0500:221A|CanalSat 19.2E|TF1|TV|
0000,0100,0500:221C|CanalSat 19.2E|ARTE|TV|
0000,0100,0500:2261|CanalSat 19.2E|Canal+ HD|TV|Sport
0000,0100,0500:2262|CanalSat 19.2E|Canal+ Decale HD|TV|General
0000,0100,0500:2263|CanalSat 19.2E|Canal+ Cinema HD|TV|Movies
0000,0100,0500:2264|CanalSat 19.2E|Canal+ Sport HD|TV|Sport
0000,0100,0500:2265|CanalSat 19.2E|Canal+ Family HD|TV|Entertainment
0000,0100,0500:2267|CanalSat 19.2E|Cine+ Frisson HD|TV|Movies
0000,0100,0500:2270|CanalSat 19.2E|Cine+ Premier HD|TV|Movies
0000,0100,0500:2275|CanalSat 19.2E|CANAL+ HD|TV|
0000,0100,0500:2278|CanalSat 19.2E|CANAL+ SPORT HD|TV|
0000,0100,0500:227B|CanalSat 19.2E|CINE+ FRISSON HD|TV|
0000,0100,0500:227F|CanalSat 19.2E|CANAL+ HD|TV|
0000,0100,0500:2284|CanalSat 19.2E|CINE+ PREMIER HD|TV|
0000,0100,0500:2289|CanalSat 19.2E|CANAL+ HD|TV|
0000,0100,0500:22C5|CanalSat 19.2E|Trace Tropical|TV|Music
0000,0100,0500:22C6|CanalSat 19.2E|La Chaine Meteo|TV|Weather
0000,0100,0500:22C8|CanalSat 19.2E|Disney XD France|TV|Children
0000,0100,0500:22C9|CanalSat 19.2E|Equidia Live|TV|Racing
0000,0100,0500:22CA|CanalSat 19.2E|Disney Channel France +1|TV|Children
0000,0100,0500:22CB|CanalSat 19.2E|Disney Junior France|TV|Children
0000,0100,0500:22CC|CanalSat 19.2E|Disney Cinemagic France|TV|Children
0000,0100,0500:22CD|CanalSat 19.2E|Disney Cinemagic +1 France|TV|Children
0000,0100,0500:22CE|CanalSat 19.2E|Teletoon+|TV|Children
0000,0100,0500:22CF|CanalSat 19.2E|E! Entertainment TV|TV|Lifestyle
0000,0100,0500:2329|CanalSat 19.2E|TF 1|TV|General
0000,0100,0500:232B|CanalSat 19.2E|National Geographic HD France|TV|Documentaries
0000,0100,0500:232F|CanalSat 19.2E|Djazz TV HD|TV|Music
0000,0100,0500:2333|CanalSat 19.2E|Paris Premiere HD|TV|General
0000,0100,0500:2335|CanalSat 19.2E|Eurosport HD|TV|Sport
0000,0100,0500:2337|CanalSat 19.2E|Planete+ HD|TV|Documentaries
0000,0100,0500:2338|CanalSat 19.2E|DISNEY HD|TV|
0000,0100,0500:233D|CanalSat 19.2E|TF1 HD|TV|
0000,0100,0500:233F|CanalSat 19.2E|NATIONAL GEO HD|TV|
0000,0100,0500:2343|CanalSat 19.2E|DJAZZ.TV HD|TV|
0000,0100,0500:2347|CanalSat 19.2E|PARIS PREMIERE HD|TV|
0000,0100,0500:2349|CanalSat 19.2E|EUROSPORT HD|TV|
0000,0100,0500:234B|CanalSat 19.2E|PLANETE+ HD|TV|
0000,0100,0500:234C|CanalSat 19.2E|Disney Channel HD France|TV|Children
0000,0100,0500:2351|CanalSat 19.2E|TF1 HD|TV|
0000,0100,0500:238D|CanalSat 19.2E|GUIDE TV|TV|
0000,0100,0500:2390|CanalSat 19.2E|ENREGISTREMENTS|TV|
0000,0100,0500:2391|CanalSat 19.2E|C+ DEMANDE|TV|
0000,0100,0500:2396|CanalSat 19.2E| |TV|
0000,0100,0500:23A3|CanalSat 19.2E|CSAT DEMANDE|TV|
0000,0100,0500:23AA|CanalSat 19.2E|M6 REPLAY|TV|
0000,0100,0500:23AB|CanalSat 19.2E|CANALPLAY|TV|
0000,0100,0500:23CF|CanalSat 19.2E|SPORT 365|TV|
0000,0100,0500:23D2|CanalSat 19.2E|PASS SERIES|TV|
0000,0100,0500:23D3|CanalSat 19.2E|PASS XXL DORCEL|TV|
0000,0100,0500:23EC|CanalSat 19.2E|CSAT DEMANDE|TV|
0000,0100,0500:23F5|CanalSat 19.2E|CANALPLAY|TV|
0000,0100,0500:23F8|CanalSat 19.2E|EVENEMENT CANALSAT|TV|
0000,0100,0500:23F9|CanalSat 19.2E|Golf+ France|TV|Sport
0000,0100,0500:23FB|CanalSat 19.2E|OCS Novo|TV|Movies
0000,0100,0500:23FC|CanalSat 19.2E|OCS Happy|TV|Movies
0000,0100,0500:23FD|CanalSat 19.2E|Maison+|TV|Documentaries
0000,0100,0500:2400|CanalSat 19.2E|Trace Urban|TV|Music
0000,0100,0500:2401|CanalSat 19.2E|Cine+ Famiz|TV|Movies
0000,0100,0500:2417|CanalSat 19.2E| |TV|
0000,0100,0500:2458|CanalSat 19.2E|Arte HD|TV|Cultural
0000,0100,0500:245A|CanalSat 19.2E|Penthouse  HD|TV|Erotic
0000,0100,0500:245E|CanalSat 19.2E|M6 HD|TV|General
0000,0100,0500:2460|CanalSat 19.2E|W9 HD|TV|General
0000,0100,0500:2461|CanalSat 19.2E|Ushuaia TV HD|TV|Documentaries
0000,0100,0500:2462|CanalSat 19.2E|France 2 HD|TV|General
0000,0100,0500:246C|CanalSat 19.2E|ARTE HD|TV|
0000,0100,0500:246E|CanalSat 19.2E|PENTHOUSE HD|TV|
0000,0100,0500:2472|CanalSat 19.2E|M6 HD|TV|
0000,0100,0500:2474|CanalSat 19.2E|W9 HD|TV|
0000,0100,0500:2475|CanalSat 19.2E|USHUAIA TV HD|TV|
0000,0100,0500:2476|CanalSat 19.2E|FRANCE 2 HD|TV|
0000,0100,0500:2478|CanalSat 19.2E|PENTHOUSE HD|TV|
0000,0100,0500:2480|CanalSat 19.2E|ARTE HD|TV|
0000,0100,0500:2482|CanalSat 19.2E|CINE+ EMOTION HD|TV|
0000,0100,0500:2486|CanalSat 19.2E|M6 HD|TV|
0000,0100,0500:2488|CanalSat 19.2E|W9 HD|TV|
0000,0100,0500:248A|CanalSat 19.2E|FRANCE 2 HD|TV|
0000,0100,0500:2496|CanalSat 19.2E|Cine+ Emotion HD|TV|Movies
0000,0100,0500:24BB|CanalSat 19.2E|Ma Chaine Sport HD|TV|Sport
0000,0100,0500:24BD|CanalSat 19.2E|Non Stop People HD|TV|Entertainment
0000,0100,0500:24BE|CanalSat 19.2E|Eurosport 2 HD|TV|Sport
0000,0100,0500:24BF|CanalSat 19.2E|Discovery Science HD France|TV|Documentaries
0000,0100,0500:24CF|CanalSat 19.2E|MA CHAINE SPORT HD|TV|
0000,0100,0500:24D1|CanalSat 19.2E|NON STOP PEOPLE HD|TV|
0000,0100,0500:24D2|CanalSat 19.2E|EUROSPORT 2 HD|TV|
0000,0100,0500:24D3|CanalSat 19.2E|DISCOVERY SCIENCE HD|TV|
0000,0100,0500:24E1|CanalSat 19.2E|Disney XD HD France|TV|Children
0000,0100,0500:24E2|CanalSat 19.2E|Disney Cinemagic HD|TV|Children
0000,0100,0500:24F5|CanalSat 19.2E|DISNEY XD HD|TV|
0000,0100,0500:24F6|CanalSat 19.2E|DISNEY MAGIC HD|TV|
0000,0100,0500:251D|CanalSat 19.2E|TF 6|TV|General
0000,0100,0500:251E|CanalSat 19.2E|Comedie+|TV|Comedy
0000,0100,0500:251F|CanalSat 19.2E|Eurosport 2 France|TV|Sport
0000,0100,0500:2520|CanalSat 19.2E|Canal+ a la demande|TV|Presentations
0000,0100,0500:2521|CanalSat 19.2E|Seasons|TV|Documentaries
0000,0100,0500:2521|CanalSat 19.2E|Tek TV Shop|TV|Teleshopping
0000,0100,0500:2522|CanalSat 19.2E|OCS Max|TV|Movies
0000,0100,0500:2523|CanalSat 19.2E|Piwi+|TV|Children
0000,0100,0500:2524|CanalSat 19.2E|Extreme Sports|TV|Sport
0000,0100,0500:2525|CanalSat 19.2E|Motors TV|TV|Sport
0000,0100,0500:2526|CanalSat 19.2E|Equidia Life|TV|Lifestyle
0000,0100,0500:2581|CanalSat 19.2E|Histoire|TV|Documentaries
0000,0100,0500:2582|CanalSat 19.2E|OCS Choc|TV|Movies
0000,0100,0500:2583|CanalSat 19.2E|Ma Chaine Sport|TV|Sport
0000,0100,0500:2584|CanalSat 19.2E|M6 Music Black|TV|Music
0000,0100,0500:2585|CanalSat 19.2E|M6 Music Club|TV|Music
0000,0100,0500:2586|CanalSat 19.2E| |TV|
0000,0100,0500:2587|CanalSat 19.2E|Cuisine+|TV|Cooking
0000,0100,0500:2588|CanalSat 19.2E|Planete+ Justice|TV|Documentaries
0000,0100,0500:2589|CanalSat 19.2E|Canal J|TV|Children
0000,0100,0500:258A|CanalSat 19.2E|Discovery Channel France|TV|Documentaries
0000,0100,0500:25E5|CanalSat 19.2E|France 3 Amiens|TV|Regional
0000,0100,0500:25E6|CanalSat 19.2E|France 3 Besancon|TV|Regional
0000,0100,0500:25E7|CanalSat 19.2E|France 3 Bordeaux|TV|Regional
0000,0100,0500:25E8|CanalSat 19.2E|France 3 Nancy|TV|Regional
0000,0100,0500:25E9|CanalSat 19.2E|France 3 Clermont Ferrand|TV|Regional
0000,0100,0500:25EA|CanalSat 19.2E|France 3 Paris Ile-de-France|TV|Regional
0000,0100,0500:25EB|CanalSat 19.2E|France 3 Rennes|TV|Regional
0000,0100,0500:25EC|CanalSat 19.2E|France 3 Rouen|TV|Regional
0000,0100,0500:25ED|CanalSat 19.2E|France 3 Limoges|TV|Regional
0000,0100,0500:25EE|CanalSat 19.2E|France 3 Lyon|TV|Regional
0000,0100,0500:25EF|CanalSat 19.2E|France 3 Marseille|TV|Regional
0000,0100,0500:25F0|CanalSat 19.2E|France 3 Toulouse|TV|Regional
0000,0100,0500:2649|CanalSat 19.2E|France 3 Caen|TV|Regional
0000,0100,0500:264A|CanalSat 19.2E|France 3 Nantes|TV|Regional
0000,0100,0500:264B|CanalSat 19.2E|France 3 Nice|TV|Regional
0000,0100,0500:264C|CanalSat 19.2E|France 3 Orleans|TV|Regional
0000,0100,0500:264D|CanalSat 19.2E|France 3 Dijon|TV|Regional
0000,0100,0500:264E|CanalSat 19.2E|France 3 Poitiers|TV|Regional
0000,0100,0500:264F|CanalSat 19.2E|France 3 Reims|TV|Regional
0000,0100,0500:2650|CanalSat 19.2E|France 3 Grenoble|TV|Regional
0000,0100,0500:2651|CanalSat 19.2E|France 3 Lille|TV|Regional
0000,0100,0500:2652|CanalSat 19.2E|France 3 Strasbourg|TV|Regional
0000,0100,0500:2653|CanalSat 19.2E|France 3 Montpellier|TV|Regional
0000,0100,0500:2654|CanalSat 19.2E|Via Stella|TV|Regional
0000,0100,0500:26AD|CanalSat 19.2E|Discovery HD Showcase|TV|Documentaries
0000,0100,0500:26B0|CanalSat 19.2E|Brava HDTV|TV|Music
0000,0100,0500:26B1|CanalSat 19.2E|TCM HD France|TV|Movies
0000,0100,0500:26B2|CanalSat 19.2E|Teva HD|TV|General
0000,0100,0500:26B9|CanalSat 19.2E|GOLF+ HD|TV|
0000,0100,0500:26C1|CanalSat 19.2E|DISCOVERY HD|TV|
0000,0100,0500:26C4|CanalSat 19.2E|BRAVA HD|TV|
0000,0100,0500:26C5|CanalSat 19.2E|TCM CINEMA HD|TV|
0000,0100,0500:26C6|CanalSat 19.2E|TEVA HD|TV|
0000,0100,0500:26CD|CanalSat 19.2E|Golf+ HD|TV|Sport
0000,0100,0500:272E|CanalSat 19.2E|CNBC Europe|TV|Business
0000,0100,0500:2742|CanalSat 19.2E|BBC World News|TV|News
0000,0100,0500:274E|CanalSat 19.2E|Best Of Shopping|TV|Teleshopping
0000,0100,0500:274F|CanalSat 19.2E|M6 Boutique & Co|TV|Teleshopping
0000,0100,0500:275F|CanalSat 19.2E|RMC Decouverte|TV|Documentaries
0000,0100,0500:2761|CanalSat 19.2E|RMC Decouverte|TV|
0000,0100,0500:2B02|CanalSat 19.2E|Sport 365|TV|Sport
0000,0100,0500:2F58|CanalSat 19.2E|Liberty TV|TV|Travel
0000,0100,0500:2F67|CanalSat 19.2E|TV8 Mont Blanc|TV|Regional
0000,0100,0500:2F68|CanalSat 19.2E|Vivolta|TV|Lifestyle
0000,0100,0500:2F8A|CanalSat 19.2E|BFM TV|TV|News
0000,0100,0500:2F8E|CanalSat 19.2E|D17|TV|Entertainment
0000,0100,0500:2F94|CanalSat 19.2E|BFM Business|TV|Business
0000,0100,0500:2F99|CanalSat 19.2E|Cash TV|TV|Game
0000,0100,0500:3331|CanalSat 19.2E|ESPN America (S)|TV|
0000,0100,0500:3335|CanalSat 19.2E|ESPN America|TV|Sport
0000,0100,0500:427C|CanalSat 19.2E|AB Moteurs|TV|Sport
0000,0100,0500:427D|CanalSat 19.2E|AB 1|TV|Series
0000,0100,0500:427E|CanalSat 19.2E|Animaux|TV|Documentaries
0000,0100,0500:427F|CanalSat 19.2E|Encyclo|TV|Documentaries
0000,0100,0500:4280|CanalSat 19.2E|XXL|TV|Porn
0000,0100,0500:4281|CanalSat 19.2E|Escales|TV|Documentaries
0000,0100,0500:4282|CanalSat 19.2E|Toute lHistoire|TV|Documentaries
0000,0100,0500:4284|CanalSat 19.2E|NT 1|TV|General
0000,0100,0500:4285|CanalSat 19.2E|Dorcel TV|TV|Porn
0000,0100,0500:4286|CanalSat 19.2E|Action|TV|Movies
0000,0100,0500:4287|CanalSat 19.2E|Mangas|TV|Children
0000,0100,0500:4289|CanalSat 19.2E|Cine Polar|TV|Movies
0000,0100,0500:428A|CanalSat 19.2E|Cine FX|TV|Movies
0000,0100,0500:428B|CanalSat 19.2E|RTL 9|TV|General
0000,0100,0500:428D|CanalSat 19.2E|STYLIA|TV|
0000,0100,0500:4290|CanalSat 19.2E|NT1|TV|
0000,0100,0500:6F69|CanalSat 19.2E|Cartoon Network|TV|Children
0000,0100,0500:6F6A|CanalSat 19.2E|CNN International Europe|TV|News
0000,0100,0500:6F6D|CanalSat 19.2E|TCM France|TV|Movies
0000,0100,0500:6F6F|CanalSat 19.2E|Boomerang France|TV|Children
0000,0100,0500:6F70|CanalSat 19.2E|Boing France|TV|Children
0000,0100,0500:6F73|CanalSat 19.2E|Cherie 25|TV|General
0000,0100,0500:6F86|CanalSat 19.2E|Cherie 25|TV|
0000,0100,0500:6F87|CanalSat 19.2E|Cherie 25|TV|
0000,0100,0500:6FB8|CanalSat 19.2E|MTV Live HD|TV|Music
0000,0100,0500:6FB9|CanalSat 19.2E|MTV Live HD|TV|
0000,0100,0500:6FEC|CanalSat 19.2E|MTV France|TV|Music
0000,0100,0500:6FEE|CanalSat 19.2E|MTV Hits|TV|Music
0000,0100,0500:6FF2|CanalSat 19.2E|NICKELODEON France.|TV|
0000,0100,0500:6FF3|CanalSat 19.2E|MTV Rocks|TV|Music
0000,0100,0500:6FF5|CanalSat 19.2E|MTV Base France|TV|Music
0000,0100,0500:6FF7|CanalSat 19.2E|Game One|TV|Game
0000,0100,0500:6FF8|CanalSat 19.2E|MTV Hits.|TV|
0000,0100,0500:6FFC|CanalSat 19.2E|Nickelodeon France|TV|Children
0000,0100,0500:6FFD|CanalSat 19.2E|MTV ROCKS.|TV|
0000,0100,0500:7002|CanalSat 19.2E|MTV Pulse|TV|Music
0000,0100,0500:7003|CanalSat 19.2E|MTV Idol|TV|Music
0000,0100,0500:7005|CanalSat 19.2E|Nick Junior France|TV|Children
```

back to [index](#index)

###

M7 Group

last review: 2014-02-28 by: Humorator

Additional information:

+   some channels also [Astra 23.5](#M7Group235)
+   available via Canal Digitaal and TV Vlaanderen
+   [Sportdigital](#sportdigital) also belongs to 7M Group but listed separately [here](#sportdigital)

```
###
### DVB-S - M7 Group - Astra 19.2E
###
0000,0100,1817:0FA2|M7 Group|SBS6|TV|General|
0000,0100,1817:0FA3|M7 Group|NET5|TV|General|
0000,0100,0500,1817,1818,1819:0FAB|M7 Group|NED1|TV|General|
0000,0100,0500,1817,1818,1819:0FAC|M7 Group|NED2|TV|General|
0000,0100,0500,1817,1818,1819:0FAD|M7 Group|NED3|TV|General|
0000,0100,1817:0FCC|M7 Group|RTL4|TV|General|
0000,0100,1817:0FCD|M7 Group|RTL5|TV|General|
0000,0100,1817:0FCF|M7 Group|RTL7|TV|General|
0000,0100,0500,1811,1817,1818,1819,1863:2014|CSAT|Mezzo|TV|Music|
0000,0100,0500,1817,1818,1819:3201|M7 Group|één|TV|General|
0000,0100,0500,1817,1818,1819:3202|M7 Group|Canvas|TV|General|
0000,0100,0500,1817,1818,1819:3208|M7 Group|KetOp12|TV|General|
0000,0100,0500,1818,1819:320A|M7 Group|VTM|TV|General|
0000,0100,0500,1818,1819:320C|M7 Group|2BE|TV|General|
0000,0100,0500,1818,1819:320E|M7 Group|Vier|TV|General|
0000,0100,0500,1818,1819:3214|M7 Group|Vier|TV|General|
0000,0100,0500,1817,1818:325D|M7 Group|Discovery Channel|TV|Documentaries|
### Radio
0000,0100,0500,1817,1818:14A2|M7 Group|Radio 2|Radio|General
0000,0100,0500,1817,1818:14A3|M7 Group|3FM|Radio|General
0000,0100,0500,1817,1818:14A4|M7 Group|Radio 4|Radio|General
0000,0100,0500,1817,1818,1819:31EC|M7 Group|MNM|Radio|General
0000,0100,0500,1817,1818,1819:31ED|M7 Group|Studio Brussel|Radio|General
0000,0100,0500,1817,1818,1819:31EE|M7 Group|Klara|Radio|Classic
```

back to [index](#top)

### MTV Unlimited

last review: 2014-01-27 by: Humorator

Additional information:

+   Channels are provided by other Packages too
+   just copy the lines once if you have other providers with MTV too

```
###
### DVB-S - MTV Unlimited - Astra 19.2E
###
0000,0100,0500,0648,0B00,0D95,1817,1818,1819:6FEE|MTV Networks|MTV Hits|TV|Music
0000,0100,0500,0624,0648,0B00,0D95,1817,1818,1819:6FEF|MTV Networks|MTV Dance|TV|Music
0000,0100,0500,0624,0648,0B00,0D95,0D96,1810,1817,1818,1819:6FF0|MTV Networks|VH1 Europe|TV|TV|Music
0000,0100,0500,0624,0B00,0D96,1817,1818,1819:6FF1|MTV Networks|VH1 Classic|TV|Music
0000,0100,0500,0624,0648,0B00,0D95,0D96,1810,1817,1818,1819:6FF3|MTV Networks|MTV Rocks|TV|TV|Music
0000,0100,0500,0648,0B00,0D95,1817,1818,1819:6FFF|MTV Networks|MTV Music 24|TV|TV|Music
```

back to [index](#index)

### Orange France (REVIEW NEEDED)

last review: ??? by: ???

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
###
### DVB-S - Orange France - Astra 19.2E
###
0500:1908|Orange France|Girondins TV
0500:1f44|Orange France|NRJ 12
0500:1f46|Orange France|Jimmy
0500:1f49|Orange France|Sport +
0500:1f4a|Orange France|i-T?l?
0500:1f55|Orange France|I>TELE
0500:1f56|Orange France|NRJ 12
0500:209f|Orange France|Cinecinema Club
0500:20a0|Orange France|MCM
0500:20a4|Orange France|W9
0500:20a6|Orange France|Virgin 17
0500:20ae|Orange France|TF 1
0500:20af|Orange France|M6
0500:20b3|Orange France|TF1
0500:20b4|Orange France|M6 6
0500:20b5|Orange France|W9 7
0500:2139|Orange France|ESPN Classic Sport France
0500:2144|Orange France|OMTV (Olympique Marseille)
0500:2145|Orange France|OLTV (Olympique Lyonnais)
0500:21a5|Orange France|Private Spice
0500:2205|Orange France|Cinecinema Classic
0500:2206|Orange France|Trace TV
0500:2261|Orange France|France 2
0500:2262|Orange France|France 3 Sat
0500:2263|Orange France|France 4
0500:2266|Orange France|France 5
0500:2267|Orange France|France O
0500:2268|Orange France|Gulli
0500:2275|Orange France|FRANCE 2 9
0500:2276|Orange France|FRANCE 3
0500:2277|Orange France|FRANCE 4 10
0500:2278|Orange France|FRANCE 5 11
0500:2279|Orange France|GULLI 12
0500:22cf|Orange France|E! Entertainment TV
0500:24bd|Orange France|Cinecinema Star
0500:24be|Orange France|T?l?toon
0500:24c1|Orange France|Pink TV
0500:2523|Orange France|Piwi
0500:2525|Orange France|Motors TV
0500:2afb|Orange France|Orange Cin? Happy
0500:2afc|Orange France|Orange Cin? Choc
0500:2afd|Orange France|Orange Cin? Novo
0500:2afe|Orange France|Orange Cin? G?ants
0500:2aff|Orange France|Boing
0500:2b00|Orange France|Orange Sport Info
0500:2b01|Orange France|KidsCo
0500:2b16|Orange France|Orange Sport HD
0500:2b17|Orange France|Orange Cin? Max HD
0500:2f84|Orange France|France 4 3
0500:2f85|Orange France|Virgin 17 4
0500:2f86|Orange France|Gulli 5
0500:427c|Orange France|AB Moteurs
0500:427d|Orange France|AB 1
0500:427e|Orange France|Animaux
0500:427f|Orange France|Encyclopedia
0500:4281|Orange France|Escales
0500:4282|Orange France|Toute l´Histoire
0500:4284|Orange France|NT 1
0500:4285|Orange France|Dorcel TV
0500:4286|Orange France|Action
0500:4287|Orange France|Mangas
0500:4289|Orange France|Cin? Polar
0500:428a|Orange France|Ciné FX
0500:428b|Orange France|RTL 9
0500:428c|Orange France|Chasse et P?che
0500:4290|Orange France|NT1
0500:429e|Orange France|XXL
0500:42a3|Orange France|Dorcel TV 2
0500:6f6d|Orange France|TCM France
0500:6f6f|Orange France|Boomerang France
0500:6ff7|Orange France|Game One
```

back to [index](#index)

###

ORF Digital

last review: 2022-04-23 by: Darksniper

Additional information:

+   CAID 0D05 is almost shut down: xx.arcom-sat.at/index.php/news-events/20-achtung-orf-digital-cryptoworks-karten-abschaltung.html
+   New Generation ICE CAIDS 0650 (Irdeto-Mode) and 0D98 (Crypto-Mode) added
+   following is only possible for Austrian clients (GIS must be payed)
    +   ORF Digital can also be booked on SKY AT V13/V14
    +   [Plus Austria](#austriasat) can be booked on ORF-ICE smartcard: just copy the lines you´ll find [here](#austriasat)
    +   [HD Austria](#austriasathd) booked on an ORF-ICE has pairing and just works @official hardware

```
###
### DVB-S - ORF - Astra 19.2E
###

0650,0648,0D98,098C,09C4:32C9|ORF Digital|ORF1
0650,0648,0D98,098C,09C4:132F|ORF Digital|ORF1 HD
0650,0648,0D98,098C,09C4:32CA|ORF Digital|ORF2
0650,0648,0D98,098C,09C4:32CB|ORF Digital|ORF2 Wien
0650,0648,0D98,098C,09C4:1330|ORF Digital|ORF2 Wien HD
0650,0648,0D98,098C,09C4:32CC|ORF Digital|ORF2 Niederösterreich
0650,0648,0D98,098C,09C4:1334|ORF Digital|ORF2 Niederösterreich HD
0650,0648,0D98,098C,09C4:32CD|ORF Digital|ORF2 Burgenland
0650,0648,0D98,098C,09C4:33F7|ORF Digital|ORF2 Burgenland HD
0650,0648,0D98,098C,09C4:32CE|ORF Digital|ORF2 Oberösterreich
0650,0648,0D98,098C,09C4:33F8|ORF Digital|ORF2 Oberösterreich HD
0650,0648,0D98,098C,09C4:32CF|ORF Digital|ORF2 Salzburg
0650,0648,0D98,098C,09C4:33F9|ORF Digital|ORF2 Salzburg HD
0650,0648,0D98,098C,09C4:32D0|ORF Digital|ORF2 Tirol
0650,0648,0D98,098C,09C4:33FA|ORF Digital|ORF2 Tirol HD
0650,0648,0D98,098C,09C4:32D1|ORF Digital|ORF2 Vorarlberg
0650,0648,0D98,098C,09C4:33FB|ORF Digital|ORF2 Vorarlberg HD
0650,0648,0D98,098C,09C4:32D2|ORF Digital|ORF2 Steiermark
0650,0648,0D98,098C,09C4:33F5|ORF Digital|ORF2 Steiermark HD
0650,0648,0D98,098C,09C4:32D3|ORF Digital|ORF2 Kärnten
0650,0648,0D98,098C,09C4:33F6|ORF Digital|ORF2 Kärnten HD
0650,0648,0D98,098C,09C4:332D|ORF Digital|ORF III
0650,0648,0D98,098C,09C4:33FC|ORF Digital|ORF III HD
0650,0648,0D98,098C,09C4:33A5|ORF Digital|ORF SPORT+
0650,0648,0D98,098C,09C4:33FD|ORF Digital|ORF Sport+ HD
0650,0648,0D98,098C,09C4:32D4|ORF Digital|ATV
0650,0648,0D98,098C,09C4:33AC|ORF Digital|ATV HD
0650,0648,0D98,098C,09C4:33A7|ORF Digital|ATV2
0650,0648,0D98,098C,09C4:4E27|ORF Digital|PULS 4 Austria
0650,0648,0D98,098C,09C4:3337|ORF Digital|ServusTV Oesterreich
0650,0648,0D98,098C,09C4:1331|ORF Digital|ServusTV HD Oesterreich
0650,0648,0D98,098C,09C4:14B8|ORF Digital|PULS 24 HD
0650,0648,0D98,098C,09C4:3402|ORF Digital|oe24.TV HD
```

back to [index](#index)

###

SKY AT/DE

last review: 2022-04-23 by: Darksniper

Additional information:

+   CAID´s for A02,V1x,V23,D0x,G0x,management (0000)
+   some programms are not available in german cable but listed below with cable CAID

for Austrian subscribers only:

+   [ORF Digital](#orf) is possible on A02,S02,V1x cards, lines can be found [here](#orf)
+   [HD Austria](#austriasathd) is possible on V1x cards, lines can be found [here](#austriasathd)

for German subscribers only:

+   [Astra HD+](#astrahdplus) is possible on V1x cards, lines can be found [here](#astrahdplus)

[Sportdigital](#sportdigital)

+   [Sportdigital](#sportdigital) can be booked extra extra (not included standard!), line can be found [here](#sportdigital)

ATTENTION: lines only needed once

+   some channels (e.g. AXN, Animax, etc) are available via other providers too you just need the line once!

```
###
### DVB-S/C - Sky Deutschland - Astra 19.2E & German Cable
###

### Sky Welt
0000,098C,09AF,09C4,09C7,1722,1834:000C|SKY|NatGeo Wild|TV|Documentaries
0000,098C,09AF,09C4,09C7,1722,1834:000D|SKY|National Geographic|TV|Documentaries
0000,098C,09AF,09C4,09C7,1722,1834:000E|SKY|Discovery Channel|TV|Documentaries
0000,098C,09AF,09C4,09C7,1722,1834:0010|SKY|Fox Serie|TV|Series
0000,098C,09AF,09C4,09C7,1722,1834:0011|SKY|Sky Sport News|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0013|SKY|Junior|TV|Children
0000,098C,09AF,09C4,09C7,1722,1834:0015|SKY|Beate-Uhse.TV|TV|Erotic
0000,098C,09AF,09C4,09C7,1722,1834:0016|SKY|Heimatkanal|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0017|SKY|Sky Krimi|TV|Series
0000,098C,09AF,09C4,09C7,1722,1834:0018|SKY|Classica|TV|Music
0000,098C,09AF,09C4,09C7,1722,1834:001A|SKY|Disney Junior|TV|Children
0000,098C,09AF,09C4,09C7,1722,1834:001B|SKY|RTL Crime|TV|Series
0000,098C,09AF,09C4,09C7,1722,1834:001C|SKY|Disney XD|TV|Children
0000,098C,09AF,09C4,09C7,1722,1834:001D|SKY|RTL Passion|TV|Series
0000,098C,09AF,09C4,09C7,1722,1834:0024|SKY|Syfy|TV|Series
0000,098C,09AF,09C4,09C7,1722,1834:002A|SKY|13th Street|TV|Entertainment
0000,098C,09AF,09C4,09C7,1722,1834:0032|SKY|TNT Serie|TV|Series
0000,098C,09AF,09C4,09C7,1722,1834:0034|SKY|Spiegel Geschichte|TV|Documentaries
0000,098C,09AF,09C4,09C7,1722,1834:00A8|SKY|Motorvision TV|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0206|SKY|Goldstar TV|TV|Music
0000,098C,09AF,09C4,09C7,1722,1834:0191|Sky|Jukebox TV|TV|Music

### Sky Welt HD
0000,098C,09AF,09C4,09C7,1722,1834:00F2|SKY|Sky Sport News HD (alt)|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0065|SKY|Universal HD|Movies
0000,098C,09AF,09C4,09C7,1722,1834:006A|SKY|Pro7 FUN HD|Series
0000,098C,09AF,09C4,09C7,1722,1834:006C|SKY|Sky Sport News HD|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0070|SKY|NatGeo HD|TV|Documentaries
0000,098C,09AF,09C4,09C7,1722,1834:0071|SKY|History HD|TV|Documentaries
0000,098C,09AF,09C4,09C7,1722,1834:0076|SKY|Nat Geo Wild HD|TV|Documentaries
0000,098C,09AF,09C4,09C7,1722,1834:007B|SKY|TNT Serie HD|TV|Series
0000,098C,09AF,09C4,09C7,1722,1834:007C|SKY|FOX HD|TV|Series
0000,098C,09AF,09C4,09C7,1722,1834:007D|SKY|AXN HD|TV|Series
0000,098C,09AF,09C4,09C7,1722,1834:007E|SKY|Syfy HD|TV|Series
0000,098C,09AF,09C4,09C7,1722,1834:007F|SKY|13th Street HD|TV|Series
0000,098C,09AF,09C4,09C7,1722,1834:0080|SKY|E! ENTERTAINMENT HD|TV|Lifestyle
0000,098C,09AF,09C4,09C7,1722,1834:0082|SKY|Discovery HD|TV|Documentaries
0000,098C,09AF,09C4,09C7,1722,1834:0084|SKY|Eurosport HD|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0088|SKY|TNT Glitz HD|TV|Entertainment
0000,098C,09AF,09C4,09C7,1722,1834:0089|SKY|Spiegel Geschichte HD|TV|Documentaries
0000,098C,09AF,09C4,09C7,1722,1834:008A|SKY|Disney Junior HD|TV|Children
0000,098C,09AF,09C4,09C7,1722,1834:008C|SKY|RTL Crime HD|TV|Movies

### Sky Welt extra (DVB-S only)
0000,09AF,098C,09C4:0021|SKY|Kinowelt TV|TV|Movies
0000,09AF,098C,09C4:0023|SKY|TNT Film (TCM)|TV|Movies
0000,09AF,098C,09C4:0026|SKY|Romance TV|TV|Movies
0000,09AF,098C,09C4:0027|SKY|Cartoon Network (S)|TV|Children
0000,09AF,098C,09C4:0038|SKY|Boomerang|TV|Children
0000,09AF,098C,09C4:0039|SKY|A&E|TV|Documentaries
0000,09AF,098C,09C4:700A|MTV Networks|Nicktoons (S)|TV|Children
### Sky Welt extra/diverse(Einträge nur einmal nötig)
0000,0648,0D95,09C4,09AF,098C:0025|SKY|AXN|TV|Series
0000,0100,0648,098C,09C4,09AF,0D95,1817:0FDA|M7 Group|Animax|TV|Children
0000,0100,0648,098C,09C4,09AF,0D95,1817:1485|M7 Group|Animax|TV|Children
0000,0648,0D95,09C4,09AF,098C:2EFE|RTL|RTL Living|TV|Lifestyle
0000,0648,0D95,09C4,09AF,098C:125D|ProSiebenSat.1|Sat.1 emotions|TV|Entertainment
0000,0648,0D95,09C4,09AF,098C:4462|ProSiebenSat.1|kabel eins classics|TV|Movies

### Sky Film
0000,098C,09AF,09C4,09C7,1722,1834:0008|SKY|Sky Comedy|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0009|SKY|Sky Action|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:000A|SKY|Sky Cinema|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:000B|SKY|Sky Cinema +1|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0014|SKY|Sky Emotion|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0019|SKY|Disney Cinemagic|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0022|SKY|Sky Atlantic|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0029|SKY|Sky Hits|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:002B|SKY|Sky Cinema +24|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0203|SKY|MGM|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0204|SKY|Sky Nostalgie|TV|Movies

### Sky Film HD
0000,098C,09AF,09C4,09C7,1722,1834:006B|SKY|Sky Hits HD|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:006E|SKY|Sky Atlantic HD|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:006F|SKY|Disney Cinemagic HD|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0073|SKY|MGM HD|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0074|SKY|Sky Action HD|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0083|SKY|Sky Cinema HD|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0086|SKY|Sky Cinema +1 HD|TV|Movies
0000,098C,09AF,09C4,09C7,1722,1834:0087|SKY|Sky Cinema +24 HD|TV|Movies

### Sky Sport SD
0000,098C,09AF,09C4,09C7,1722,1834:001E|SKY|Sky Sport Austria|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:00DD|SKY|Sky Sport 1|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:00DE|SKY|Sky Sport 2|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:00FD|SKY|Sky Sport 11|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0107|SKY|Sky Sport 3|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0111|SKY|Sky Sport 4 /F1Cockpit|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:011B|SKY|Sky Sport 5 /F1Daten|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0125|SKY|Sky Sport 6 /F1Highlights|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:012F|SKY|Sky Sport 7 /F1Multisignal|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0139|SKY|Sky Sport 8|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0143|SKY|Sky Sport 9|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:014D|SKY|Sky Sport 10|data|Sport

### Sky Sport HD
0000,098C,09AF,09C4,09C7,1722,1834:006D|SKY|Eurosport 2 HD|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0072|SKY|Sky Sport HD 2|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0077|SKY|Sport1 US HD|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:007A|SKY|Sport1+ HD|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0081|SKY|Sky Sport HD 1|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0102|SKY|Sky Sport HD 11|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:010C|SKY|Sky Sport HD 3|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0116|SKY|Sky Sport HD 4 /F1Cockpit|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0120|SKY|Sky Sport HD 5 /F1Daten|TV|Sky Sport
0000,098C,09AF,09C4,09C7,1722,1834:012A|SKY|Sky Sport HD 6 /F1Highlights|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0134|SKY|Sky Sport HD 7 /F1Multisignal|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0135|SKY|Sport1 US HD 1|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:013E|SKY|Sky Sport HD 8|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0148|SKY|Sky Sport HD 9|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0152|SKY|Sky Sport HD 10|TV|Sport
### Eurosport360 HD
0000,098C,09AF,09C4,09C7,1722,1834:0104|SKY|Eurosport360 HD 9|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:010E|SKY|Eurosport360 HD 1|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0118|SKY|Eurosport360 HD 2|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0122|SKY|Eurosport360 HD 3|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:012C|SKY|Eurosport360 HD 4|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0136|SKY|Eurosport360 HD 5|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0140|SKY|Eurosport360 HD 6|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:014A|SKY|Eurosport360 HD 7|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0154|SKY|Eurosport360 HD 8|TV|Sport

### Sky Bundesliga
0000,098C,09AF,09C4,09C7,1722,1834:00DF|SKY|Sky Bundesliga 1|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:00FC|SKY|Sky Bundesliga 10|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0106|SKY|Sky Bundesliga 2|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0110|SKY|Sky Bundesliga 3|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:011A|SKY|Sky Bundesliga 4|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0124|SKY|Sky Bundesliga 5|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:012E|SKY|Sky Bundesliga 6|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0138|SKY|Sky Bundesliga 7|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0142|SKY|Sky Bundesliga 8|data|Sport
0000,098C,09AF,09C4,09C7,1722,1834:014C|SKY|Sky Bundesliga 9|data|Sport

### Sky Bundesliga HD
0000,098C,09AF,09C4,09C7,1722,1834:0066|SKY|Sky HD FanZone|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0069|SKY|Sky Bundesliga HD 1|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0101|SKY|Sky Bundesliga HD 10|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:010B|SKY|Sky Bundesliga HD 2|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0115|SKY|Sky Bundesliga HD 3|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:011F|SKY|Sky Bundesliga HD 4|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0129|SKY|Sky Bundesliga HD 5|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0133|SKY|Sky Bundesliga HD 6|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:013D|SKY|Sky Bundesliga HD 7|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0147|SKY|Sky Bundesliga HD 8|TV|Sport
0000,098C,09AF,09C4,09C7,1722,1834:0151|SKY|Sky Bundesliga HD 9|TV|Sport

### Sky Select
FFFE:0012|SKY|Sky Select Info|TV|Pay-per-view
0000,098C,09AF,09C4,09C7,1722,1834:0078|SKY|Sky Select HD|TV|Pay-per-view
0000,098C,09AF,09C4,09C7,1722,1834:00FB|SKY|Sky Select 1|TV|Pay-per-view
0000,098C,09AF,09C4,09C7,1722,1834:00FE|SKY|Sky Select Event A|data|Pay-per-view
0000,098C,09AF,09C4,09C7,1722,1834:0105|SKY|Sky Select 2|data|Pay-per-view
0000,098C,09AF,09C4,09C7,1722,1834:010F|SKY|Sky Select 3|data|Pay-per-view
0000,098C,09AF,09C4,09C7,1722,1834:0119|SKY|Sky Select 4|data|Pay-per-view
0000,098C,09AF,09C4,09C7,1722,1834:0123|SKY|Sky Select 5|data|Pay-per-view
0000,098C,09AF,09C4,09C7,1722,1834:012D|SKY|Sky Select 6|data|Pay-per-view
0000,098C,09AF,09C4,09C7,1722,1834:0137|SKY|Sky Select 7|data|Pay-per-view
0000,098C,09AF,09C4,09C7,1722,1834:0141|SKY|Sky Select 8|data|Pay-per-view
0000,098C,09AF,09C4,09C7,1722,1834:014B|SKY|Sky Select 9|data|Pay-per-view
0000,098C,09AF,09C4,09C7,1722,1834:014E|SKY|Sky Select Event B|data|Pay-per-view

### Sky Blue Movie
0000,1722,1834,1836,09AF,098C,09C4,09C7:0079|SKY|Blue Movie Nights HD|TV|Pay-per-view
0000,1722,1834,1836,09AF,098C,09C4,09C7:0159|SKY|Blue Movie 1|data|Pay-per-view
0000,1722,1834,1836,09AF,098C,09C4,09C7:0163|SKY|Blue Movie 2|data|Pay-per-view
0000,1722,1834,1836,09AF,098C,09C4,09C7:016D|SKY|Blue Movie 3|data|Pay-per-view
0000,1722,1834,1836,09AF,098C,09C4,09C7:0201|SKY|Blue Movie Info|TV|Pay-per-view

### Sky 3D
0000,09C4,098C:0075|SKY|Sky 3D|TV|Entertainment

### Sky sonstige nur KabelBW
098E:56E1|SKY|Sky 3D|TV|Entertainment

Sky AT & DE (2022)
09C4,098C,098D:007C|Sky|Sky Replay HD
09C4,098C,098D:008C|Sky|Warner TV Film HD
09C4,098C,098D:007B|Sky|Warner TV Serie HD
09C4,098C,098D:0088|Sky|Warner TV Comedy HD
09C4,098C,098D:007F|Sky|13th Street HD
09C4,098C,098D:007E|Sky|SYFY HD
09C4,098C,098D:0196|Sky|Kinowelt TV
09C4,098C,098D:0206|Sky|Romance TV
09C4,098C,098D:0016|Sky|Heimatkanal
09C4,098C,098D:0080|Sky|E! Entertainm. HD
09C4,098C,098D:0065|Sky|Universal TV HD
09C4,098C,098D:001B|Sky|Nicktoons
09C4,098C,098D:6FFB|Sky|Nick.Jr.
09C4,098C,098D:001C|Sky|Boomerang
09C4,098C,098D:0194|Sky|Cartoon Network
09C4,098C,098D:0013|Sky|Junior
09C4,098C,098D:0017|Sky|Sky Krimi HD
09C4,098C,098D:006E|Sky|Sky Atlantic HD
09C4,098C,098D:0093|Sky|Sky One HD
09C4,098C,098D:0074|Sky|Sky Cinema Action HD
09C4,098C,098D:006F|Sky|Sky Cinema Special HD
09C4,098C,098D:006B|Sky|Sky Cinema Best Of HD
09C4,098C,098D:0083|Sky|Sky Cinema Premieren HD
09C4,098C,098D:0087|Sky|Sky Cinema Premieren +24 HD
09C4,098C,098D:008B|Sky|Sky Cinema Family HD
09C4,098C,098D:0008|Sky|Sky Cinema Fun
09C4,098C,098D:000B|Sky|Sky Cinema Thriller HD
09C4,098C,098D:0204|Sky|Sky Cinema Classics
09C4,098C,098D:006C|Sky|Sky Sport News HD
09C4,098C,098D:008F|Sky|Sky Sport Austria 1 HD
09C4,098C,098D:0149|Sky|Sky Sport Austria 2 HD
09C4,098C,098D:0153|Sky|Sky Sport Austria 3 HD
09C4,098C,098D:0103|Sky|Sky Sport Austria 4 HD
09C4,098C,098D:0146|Sky|Sky Sport Austria 5 HD
09C4,098C,098D:0156|Sky|Sky Sport Austria 6 HD
09C4,098C,098D:0105|Sky|Sky Sport Austria 7 HD
09C4,098C,098D:0011|Sky|Sky Sport F1 HD
09C4,098C,098D:0081|Sky|Sky Sport 1 HD
09C4,098C,098D:0072|Sky|Sky Sport 2 HD
09C4,098C,098D:010C|Sky|Sky Sport 3 HD
09C4,098C,098D:0116|Sky|Sky Sport 4 HD
09C4,098C,098D:0120|Sky|Sky Sport 5 HD
09C4,098C,098D:012A|Sky|Sky Sport 6 HD
09C4,098C,098D:0134|Sky|Sky Sport 7 HD
09C4,098C,098D:013E|Sky|Sky Sport 8 HD
09C4,098C,098D:0148|Sky|Sky Sport 9 HD
09C4,098C,098D:0152|Sky|Sky Sport 10 HD
09C4,098C,098D:0102|Sky|Sky Sport 11 HD
09C4,098C,098D:0229|Sky|Sky Sport UHD
09C4,098C,098D:0069|Sky|Sky Sport Bundesliga 1 HD
09C4,098C,098D:010B|Sky|Sky Sport Bundesliga 2 HD
09C4,098C,098D:0115|Sky|Sky Sport Bundesliga 3 HD
09C4,098C,098D:011F|Sky|Sky Sport Bundesliga 4 HD
09C4,098C,098D:0129|Sky|Sky Sport Bundesliga 5 HD
09C4,098C,098D:0133|Sky|Sky Sport Bundesliga 6 HD
09C4,098C,098D:013D|Sky|Sky Sport Bundesliga 7 HD
09C4,098C,098D:0147|Sky|Sky Sport Bundesliga 8 HD
09C4,098C,098D:0151|Sky|Sky Sport Bundesliga 9 HD
09C4,098C,098D:0101|Sky|Sky Sport Bundesliga 10 HD
09C4,098C,098D:0228|Sky|Sky Sport Bundesliga UHD
09C4,098C,098D:0084|Sky|DAZN 1 HD
09C4,098C,098D:007A|Sky|DAZN 2 HD
09C4,098C,098D:006D|Sky|Eurosport 2 HD
09C4,098C,098D:010E|Sky|Eurosport360HD 1
09C4,098C,098D:0118|Sky|Eurosport360HD 2
09C4,098C,098D:0122|Sky|Eurosport360HD 3
09C4,098C,098D:012C|Sky|Eurosport360HD 4
09C4,098C,098D:0136|Sky|Eurosport360HD 5
09C4,098C,098D:0140|Sky|Eurosport360HD 6
09C4,098C,098D:014A|Sky|Eurosport360HD 7
09C4,098C,098D:0154|Sky|Eurosport360HD 8
09C4,098C,098D:0104|Sky|Eurosport360HD 9
09C4,098C,098D:0191|Sky|Jukebox
09C4,098C,098D:0018|Sky|Classica
09C4,098C,098D:00A8|Sky|Motorvision TV
09C4,098C,098D:0192|Sky|Crime + Investigation
09C4,098C,098D:0031|Sky|Spiegel TV Wissen
09C4,098C,098D:0089|Sky|Spiegel Geschichte HD
09C4,098C,098D:0082|Sky|Discovery HD
09C4,098C,098D:0071|Sky|History Channel HD
09C4,098C,098D:0070|Sky|NatGeo HD
09C4,098C,098D:0076|Sky|Nat Geo Wild HD
09C4,098C,098D:1198|Sky|WAIDWERK
09C4,098C,098D:0085|Sky|Beate Uhse HD
09C4,098C,098D:1195|Sky|SPORT1+
09C4,098C,098D:1196|Sky|eSPORTS1
09C4,098C,098D:1197|Sky|EDGEsport
09C4,098C,098D:0010|Sky|Sky Documentaries HD
09C4,098C,098D:000F|Sky|Sky Nature HD
09C4,098C,098D:000E|Sky|Sky Comedy HD
09C4,098C,098D:000D|Sky|Sky Crime HD

```


back to [index](#index)

### Skylink

Please copy the existing [Skylink](#skylink) entries you´ll find [here](#skylink) for administrational reasons just listed once!

back to [index](#index)

###

Sportdigital

last review: 2014-01-27 by: Humorator

Additional information:

+   Sportdigital is included by [Plus Austria](#austriasat)
+   Sportdigital can be booked extra via [Sky AT/DE](#skyatde)
+   Sportdigital is included by other providers too

```
###
### DVB-S - Sportdigital - Astra 19.2E
###
0000,0100,0648,098C,09C4,0D95,1817,1833:325F|M7 Group|sportdigital|TV|Sport
```

back to [index](#index)

### SRG/SSR - Schweizer Fernsehen

last review: 2022-04-23 by: Darksniper

```
###
### DVB-S - SRG/SSR - Astra 19.2E
###
#SRG/SSR

#   SRF - Schweizer Radio und Fernsehen
#   RTS - Radio Télévision Suisse
#   RSI - Radiotelevisione svizzera

0500:4336|SRF- Schweizer Radio und Fernsehen|SRF info HD
0500:4331|SRF- Schweizer Radio und Fernsehen|SRF 1 HD
0500:4332|SRF- Schweizer Radio und Fernsehen|SRF zwei HD
0500:1260|SRF- Schweizer Radio und Fernsehen|3+ HD
0500:4334|RTS- Radio Télévision Suisse|RTS Deux HD
0500:4333|RTS- Radio Télévision Suisse|RTS Un HD
0500:4337|RSI- Radiotelevisione svizzera|RSI LA 1 HD
0500:4338|RSI- Radiotelevisione svizzera|RSI LA 2 HD
```

back to [index](#index)

### TivuSat

last review: 2014-01-24 by: Humorator

```
###
### DVB-S - TivuSat - Astra 19.2E
### update: 2014-01-16
###
183D:1072|Telespazio|Rai HD|TV|Tivusat
183D:1073|Telespazio|Rai 2 HD|TV|Tivusat
183D:1074|Telespazio|Rai 3 HD|TV|Tivusat
```

back to [index](#index)

### TNTSat

last review: 2013-10-16 by: Humorator

```
###
### DVB-S - TNTSAT France - Astra 19.2E
###
0500:189F|TNTsat|L'Équipe 21|TV|
0500:18B3|TNTsat|L'Équipe 21|TV|
0500:200E|TNTsat|NRJ 12|TV|
0500:2010|TNTsat|France 3|TV|
0500:2011|TNTsat|France 2|TV|
0500:2013|TNTsat|TMC (Tele Monte Carlo)|TV|
0500:2022|TNTsat|NRJ 12|TV|
0500:2024|TNTsat|France 3|TV|
0500:2025|TNTsat|France 2|TV|
0500:2027|TNTsat|TMC (Tele Monte Carlo)|TV|
0500:2136|TNTsat|Numéro 23|TV|
0500:217C|TNTsat|Numéro 23|TV|
0500:21FD|TNTsat|D8|TV|
0500:21FE|TNTsat|France Ô|TV|
0500:21FF|TNTsat|France 4|TV|
0500:2200|TNTsat|France 5|TV|
0500:2202|TNTsat|M6|TV|
0500:2204|TNTsat|W9|TV|
0500:2205|TNTsat|Gulli|TV|
0500:2206|TNTsat|TF1|TV|
0500:2211|TNTsat|D8|TV|
0500:2212|TNTsat|France Ô|TV|
0500:2213|TNTsat|France 4|TV|
0500:2214|TNTsat|France 5|TV|
0500:2216|TNTsat|M6|TV|
0500:2218|TNTsat|W9|TV|
0500:2219|TNTsat|Gulli|TV|
0500:221A|TNTsat|TF1|TV|
0500:2329|TNTsat|TF1 HD|TV|
0500:233D|TNTsat|TF1 HD|TV|
0500:2351|TNTsat|TF1 HD|TV|
0500:2458|TNTsat|Arte HD|TV|
0500:245E|TNTsat|M6 HD|TV|
0500:2462|TNTsat|France 2 HD|TV|
0500:246C|TNTsat|ARTE HD|TV|
0500:2472|TNTsat|M6 HD|TV|
0500:2476|TNTsat|France 2 HD|TV|
0500:2480|TNTsat|ARTE HD|TV|
0500:2486|TNTsat|M6 HD|TV|
0500:248A|TNTsat|France 2 HD|TV|
0500:25E5|TNTsat|France 3 Picardie|TV|Regional
0500:25E6|TNTsat|France 3 Franche Comté|TV|Regional
0500:25E7|TNTsat|France 3 Aquitaine|TV|Regional
0500:25E8|TNTsat|France 3 Lorraine|TV|Regional
0500:25E9|TNTsat|France 3 Auvergne|TV|Regional
0500:25EA|TNTsat|France 3 Paris Ile-de-France|TV|Regional
0500:25EB|TNTsat|France 3 Bretagne|TV|Regional
0500:25EC|TNTsat|France 3 Haute Normandie|TV|Regional
0500:25ED|TNTsat|France 3 Limousin|TV|Regional
0500:25EE|TNTsat|France 3 Rhône Alpes|TV|Regional
0500:25EF|TNTsat|France 3 Prov Alpes|TV|Regional
0500:25F0|TNTsat|France 3 Midi Pyrénées|TV|Regional
0500:2649|TNTsat|France 3 Basse Normandie|TV|Regional
0500:264A|TNTsat|France 3 Pays de Loire|TV|Regional
0500:264B|TNTsat|France 3 Côte d’Azur|TV|Regional
0500:264C|TNTsat|France 3 Centre|TV|Regional
0500:264D|TNTsat|France 3 Bourgogne|TV|Regional
0500:264E|TNTsat|France 3 Poitou Charentes|TV|Regional
0500:264F|TNTsat|France 3 Champagne Ardenne|TV|Regional
0500:2650|TNTsat|France 3 Alpes|TV|Regional
0500:2651|TNTsat|France 3 Nord PDC|TV|Regional
0500:2652|TNTsat|France 3 Alsace|TV|Regional
0500:2653|TNTsat|France 3 Languedoc Roussillon|TV|Regional
0500:2654|TNTsat|France 3 Corse Via Stella|TV|Regional
0500:4284|TNTsat|NT 1|TV|
0500:4290|TNTsat|NT 1|TV|
0500:6F73|TNTsat|Chérie 25|TV|
0500:6F86|TNTsat|Chérie 25|TV|
0500:6F87|TNTsat|Chérie 25|TV|
```

back to [index](#index)

### TV Vlaanderen


TV Vlaanderen belongs to the M7 Group Please copy the existing [M7 Group](#M7Group192) entries you´ll find [here](#M7Group)
for administrational reasons just listed once!

More Information:
[Cards List](http://www.streamboard.tv/oscam/wiki/CardsList/) Seca Cards -> M7 Group SA
[http://www.streamboard.tv/wbb2/thread.php?threadid=34939](http://www.streamboard.tv/wbb2/thread.php?threadid=34939)

back to [index](#top)

### FTA - Free to air

#### ARD Digital

last review: 2014-02-03 by: Humorator

Additional information:

+   All channels are free to air (FTA)

```
###
### DVB-S - ARD Digital (all FTA) - Astra 19.2E
###
FFFE:283D|ARD Digital|Das Erste HD|TV|General
FFFE:283E|ARD Digital|Arte HD|TV|Cultural
FFFE:283F|ARD Digital|SWR BW HD|TV|Regional
FFFE:2840|ARD Digital|SWR RP HD|TV|Regional
FFFE:2855|ARD Digital|BR Süd HD|TV|Regional
FFFE:2856|ARD Digital|BR Nord HD|TV|Regional
FFFE:2857|ARD Digital|NDR Niedersachsen HD|TV|Regional
FFFE:2858|ARD Digital|NDR Mecklenburg-Vorpommern HD|TV|Regional
FFFE:2859|ARD Digital|NDR Hamburg HD|TV|Regional
FFFE:285A|ARD Digital|NDR Schleswig Holstein HD|TV|Regional
FFFE:285B|ARD Digital|Phoenix HD|TV|News
FFFE:286E|ARD Digital|rbb Brandenburg HD|TV|Regional
FFFE:286F|ARD Digital|rbb Berlin HD|TV|Regional
FFFE:2870|ARD Digital|MDR Sachsen HD|TV|Regional
FFFE:2871|ARD Digital|MDR S-Anhalt HD|TV|Regional
FFFE:2872|ARD Digital|MDR Thüringen HD|TV|Regional
FFFE:2873|ARD Digital|hr HD|TV|Regional
FFFE:2887|ARD Digital|Tagesschau 24 HD|TV|News
FFFE:2888|ARD Digital|Eins Festival HD|TV|General
FFFE:2889|ARD Digital|Eins Plus HD|TV|General
FFFE:6DCA|ARD Digital|Das Erste|TV|General
FFFE:6DCB|ARD Digital|BR Süd|TV|Regional
FFFE:6DCC|ARD Digital|HR|TV|Regional
FFFE:6DCE|ARD Digital|BR Nord|TV|Regional
FFFE:6DCF|ARD Digital|WDR Köln|TV|Regional
FFFE:6DD1|ARD Digital|SWR Baden-Würtemberg|TV|Regional
FFFE:6E2D|ARD Digital|RBB Brandenburg|TV|Regional
FFFE:6E2E|ARD Digital|RBB Berlin|TV|Regional
FFFE:6E3D|ARD Digital|ARD-TEST-1|TV|
FFFE:6E40|ARD Digital|NDR|TV|Regional
FFFE:6E41|ARD Digital|NDR Hamburg|TV|Regional
FFFE:6E42|ARD Digital|NDR Niedersachsen|TV|Regional
FFFE:6E43|ARD Digital|NDR Schleswig Holstein|TV|Regional
FFFE:6E44|ARD Digital|MDR Sachsen|TV|Regional
FFFE:6E45|ARD Digital|MDR Sachsen-Anhalt|TV|Regional
FFFE:6E46|ARD Digital|MDR Thüringen|TV|Regional
FFFE:6E47|ARD Digital|SWR RP|TV|Regional
FFFE:6E5A|ARD Digital|ARD-Data-1||
FFFE:6E92|ARD Digital|WDR Studio Bielefeld|TV|Regional
FFFE:6E93|ARD Digital|WDR Studio Dortmund|TV|Regional
FFFE:6E94|ARD Digital|WDR Studio Düsseldorf|TV|Regional
FFFE:6E95|ARD Digital|WDR Studio Essen|TV|Regional
FFFE:6E96|ARD Digital|WDR Studio Münster|TV|Regional
FFFE:6E97|ARD Digital|WDR Studio Siegen|TV|Regional
FFFE:6EA5|ARD Digital|WDR HD Köln|TV|Regional
FFFE:6EA6|ARD Digital|WDR HD Bielefeld|TV|Regional
FFFE:6EA7|ARD Digital|WDR HD Dortmund|TV|Regional
FFFE:6EA8|ARD Digital|WDR HD Düsseldorf|TV|Regional
FFFE:6EA9|ARD Digital|WDR HD Essen|TV|Regional
FFFE:6EAA|ARD Digital|WDR HD Münster|TV|Regional
FFFE:6EAB|ARD Digital|WDR HD Siegen|TV|Regional
FFFE:6EE1|ARD Digital|Radio Bremen TV|TV|Regional
FFFE:6EEB|ARD Digital|WDR Test A||
FFFE:6EEC|ARD Digital|Einsfestival HD (old)||
FFFE:6F46|ARD Digital|SR|TV|Regional
FFFE:6F47|ARD Digital|BR Alpha|TV|Cultural
FFFE:6F76|ARD Digital|WDR Studio Aachen|TV|Regional
FFFE:6F77|ARD Digital|WDR Studio Wuppertal|TV|Regional
FFFE:6F78|ARD Digital|WDR Studio Bonn|TV|Regional
FFFE:6F79|ARD Digital|WDR Studio Duisburg|TV|Regional
FFFE:6F80|ARD Digital|WDR HD Aachen|TV|Regional
FFFE:6F81|ARD Digital|WDR HD Wuppertal|TV|Regional
FFFE:6F82|ARD Digital|WDR HD Bonn|TV|Regional
FFFE:6F83|ARD Digital|WDR HD Duisburg|TV|Regional
FFFE:7031|ARD Digital|Tagesschau 24|TV|News
FFFE:7032|ARD Digital|Eins Festival|TV|General
FFFE:7033|ARD Digital|Eins Plus|TV|General
FFFE:7034|ARD Digital|Arte (Germany)|TV|Cultural
FFFE:7035|ARD Digital|Phoenix|TV|News
FFFE:7036|ARD Digital|Test-R||
###
### Radio
###
FFFE:6EF0|ARD Digital|Bayern 1|Radio|
FFFE:6EF1|ARD Digital|Bayern 2|Radio|
FFFE:6EF2|ARD Digital|Bayern 3|Radio|
FFFE:6EF3|ARD Digital|BR-KLASSIK|Radio|
FFFE:6EF4|ARD Digital|B5 aktuell|Radio|
FFFE:6EF5|ARD Digital|BAYERN plus|Radio|
FFFE:6EF6|ARD Digital|PULS|Radio|
FFFE:6EF8|ARD Digital|B5 plus|Radio|
FFFE:6F03|ARD Digital|hr1|Radio|
FFFE:6F04|ARD Digital|hr2|Radio|
FFFE:6F05|ARD Digital|hr3|Radio|
FFFE:6F06|ARD Digital|hr4|Radio|
FFFE:6F07|ARD Digital|YOU FM|Radio|
FFFE:6F08|ARD Digital|hr-iNFO|Radio|
FFFE:6F0C|ARD Digital|MDR1 SACHSEN|Radio|
FFFE:6F0D|ARD Digital|MDR S-ANHALT|Radio|
FFFE:6F0E|ARD Digital|MDR THÜRINGEN|Radio|
FFFE:6F0F|ARD Digital|MDR FIGARO|Radio|
FFFE:6F10|ARD Digital|MDR JUMP|Radio|
FFFE:6F11|ARD Digital|MDR SPUTNIK|Radio|
FFFE:6F12|ARD Digital|MDR INFO|Radio|
FFFE:6F13|ARD Digital|MDR KLASSIK|Radio|
FFFE:6F15|ARD Digital|NDR 2|Radio|
FFFE:6F16|ARD Digital|NDR Kultur|Radio|
FFFE:6F17|ARD Digital|NDR Info|Radio|
FFFE:6F18|ARD Digital|N-JOY|Radio|
FFFE:6F19|ARD Digital|NDR 90,3|Radio|
FFFE:6F1A|ARD Digital|NDR1WelleNord|Radio|
FFFE:6F1B|ARD Digital|NDR 1 Radio MV|Radio|
FFFE:6F1C|ARD Digital|NDR 1 Nieders.|Radio|
FFFE:6F1D|ARD Digital|NDR Info Spez.|Radio|
FFFE:6F1E|ARD Digital|NDR Blue|Radio|
FFFE:6F20|ARD Digital|Bremen Eins|Radio|
FFFE:6F21|ARD Digital|Nordwestradio|Radio|
FFFE:6F22|ARD Digital|Bremen Vier|Radio|
FFFE:6F24|ARD Digital|InfoRadio|Radio|
FFFE:6F25|ARD Digital|kulturradio|Radio|
FFFE:6F26|ARD Digital|Antenne Brandenburg|Radio|
FFFE:6F27|ARD Digital|radioBERLIN 88,8|Radio|
FFFE:6F28|ARD Digital|radioeins|Radio|
FFFE:6F29|ARD Digital|Fritz|Radio|
FFFE:6F2D|ARD Digital|SR 1 Europawelle|Radio|
FFFE:6F2E|ARD Digital|SR 2 KulturRadio|Radio|
FFFE:6F2F|ARD Digital|SR 3 Saarlandwelle|Radio|
FFFE:6F31|ARD Digital|SWR1 BW|Radio|
FFFE:6F32|ARD Digital|SWR1 RP|Radio|
FFFE:6F33|ARD Digital|SWR2|Radio|
FFFE:6F34|ARD Digital|SWR3|Radio|
FFFE:6F35|ARD Digital|SWR4 BW|Radio|
FFFE:6F36|ARD Digital|SWR4 RP|Radio|
FFFE:6F37|ARD Digital|DASDING|Radio|
FFFE:6F38|ARD Digital|SWRinfo|Radio|
FFFE:6F3B|ARD Digital|1LIVE|Radio|
FFFE:6F3C|ARD Digital|WDR 2|Radio|
FFFE:6F3D|ARD Digital|WDR 3|Radio|
FFFE:6F3E|ARD Digital|WDR 4|Radio|
FFFE:6F3F|ARD Digital|WDR 5|Radio|
FFFE:6F40|ARD Digital|WDR Funkhaus Europa|Radio|
FFFE:6F41|ARD Digital|1LIVE diggi|Radio|
FFFE:6F42|ARD Digital|KIRAKA|Radio|
FFFE:6F43|ARD Digital|WDR Event|Radio|
```

back to [index](#index)

#### Canal+

last review: 2014-02-03 by: Humorator

```
###
### DVB-S - Canal+ (Free to air) - Astra 19.2E
###
FFFE:272E|FTA|CNBC Europe|TV|Business
FFFE:6F6A|FTA|CNN International Europe|TV|News
FFFE:749D|Canal+|LTC - La Tienda en Casa|TV|Teleshopping
FFFE:750A|Canal+|||
FFFE:7562|Canal+|Multi-X|TV|Info
FFFE:756C|Canal+|MULTIDEP.1||
FFFE:7572|Canal+|Multi-X|TV|Info
FFFE:75A9|Canal+|CANAL+ GUÍA||
FFFE:75AB|Canal+|||
FFFE:75B0|Canal+|C+ TAQUILLA||
FFFE:75C6|Canal+|C+ PORTADA||
FFFE:75C7|Canal+|||
FFFE:75CA|Canal+|||
FFFE:75CC|Canal+|||
FFFE:75CE|Canal+|||
FFFE:75DD|Canal+|TEST TÉCNICO||
FFFE:75DE|Canal+|TEST_CSD1||
FFFE:75DF|Canal+|TEST_CSD2||
FFFE:75E0|Canal+|TEST_CSD3||
FFFE:75E1|Canal+|TEST_CSD4||
FFFE:75E2|Canal+|TEST_CSD5||
FFFE:75EF|Canal+|||
FFFE:75FB|Canal+|Canal+ Yomvi|TV|General
FFFE:75FC|Canal+|||
FFFE:7693|Canal+|TAQUILLA X||
FFFE:7697|Canal+|TAQUILLA X||
FFFE:778C|Canal+|||
```

back to [index](#index)

#### M7 Group

last review: 2014-02-03 by: Humorator

Additional information:

+   All channels are free to air (FTA)

```
###
### DVB-S - M7 Group (all FTA) - Astra 19.2E
###
FFFE:0FB0|M7Group|BVN|TV|General
```

back to [index](#index)

#### MTV Networks

last review: 2014-02-03 by: Humorator

Additional information:

+   All channels are free to air (FTA)

```
###
### DVB-S - MTV Networks FTA - Astra 19.2E
###
FFFE:003C|MTV Networks|VIVA AT|TV|Entertainment
FFFE:003D|MTV Networks|Nick/CC AT|TV|Children/Comedy
FFFE:6FEA|MTV Networks|Data_System_TR_66|TV|
FFFE:6FFA|MTV Networks|VH1.(old)|TV|
FFFE:6FFB|MTV Networks|VH1 Classic.(old)|TV|
FFFE:6FFE|MTV Networks|DATA SYSTEM TR 78|TV|
FFFE:7004|MTV Networks|VIVA|TV|Entertainment
FFFE:7008|MTV Networks|Nick/CC Germany|TV|Children/Comedy
```

back to [index](#index)

#### ZDF Vision

last review: 2014-02-03 by: Humorator

Additional information:

+   All channels are free to air (FTA)

```
###
### DVB-S - ZDF Vision (all FTA) - Astra 19.2E
###
FFFE:2B66|ZDF Vision|ZDF HD|TV|News
FFFE:2B7A|ZDF Vision|ZDF_neo HD|TV|News
FFFE:2B84|ZDF Vision|ZDF Kultur HD|TV|Cultural
FFFE:2B8E|ZDF Vision|3sat HD|TV|News
FFFE:2B98|ZDF Vision|KiKa HD|TV|Children
FFFE:2BA2|ZDF Vision|ZDFinfo HD|TV|News
FFFE:6D66|ZDF Vision|ZDF|TV|News
FFFE:6D67|ZDF Vision|3sat|TV|News
FFFE:6D68|ZDF Vision|KIKA|TV|Children
FFFE:6D6B|ZDF Vision|ZDF Infokanal|TV|Documentaries
FFFE:6D6E|ZDF Vision|ZDF_neo|TV|News
FFFE:6D70|ZDF Vision|ZDF Kultur|TV|Cultural
###
### Radio
###
FFFE:6D6C|ZDF Vision|DKULTUR|Radio|
FFFE:6D6D|ZDF Vision|DLF|Radio|
FFFE:6D6F|ZDF Vision|DRadio DokDeb|Radio|
FFFE:6D71|ZDF Vision|DRadio Wissen|Radio|
```

back to [index](#index)

#### Unsorted

last review: 2014-02-03 by: Humorator

Additional information:

+   Some Caids from "Pay per View"-Channels are also listed by providers

```
###
### DVB-S - Free to air (FTA) - Astra 19.2E
###
FFFE:0020|FTA|Sonnenklar TV|TV|Shopping
FFFE:0028|FTA|HSE24|TV|Shopping
FFFE:002E|FTA|mediasparTV Homeshopping|TV|Shopping
FFFE:002F|FTA|REGIO TV|TV|Regional
FFFE:0030|FTA|ERF 1|TV|Religious
FFFE:0033|FTA|TELE 5|TV|General
FFFE:0035|FTA|N24 Austria|TV|News
FFFE:0036|FTA|Beauty TV|TV|Shopping
FFFE:003E|FTA|EWTN katholisches TV|TV|Religious
FFFE:003F|FTA|DMAX|TV|Documentaries
FFFE:0040|FTA|QVC BEAUTY&STYLE|TV|Shopping
FFFE:0041|FTA|DELUXE MUSIC|TV|Documentaries
FFFE:0046|FTA|BB-MV Lokal-TV|TV|Regional
FFFE:0047|FTA|HOPE Channel deutsch|TV|Religious
FFFE:004A|FTA|joiz|TV|Music
FFFE:004C|FTA|EBRU TV|TV|Documentaries
FFFE:004D|FTA|HSE24 TREND|TV|Shopping
FFFE:0202|FTA|JML Shop|TV|Shopping
FFFE:0293|FTA|collection|TV|Documentaries
FFFE:0295|FTA|AstroTV|TV|Shopping
FFFE:0296|FTA|1-2-3.tv|TV|Shopping
FFFE:02FC|FTA|ANIXE SD|TV|General
FFFE:02FD|FTA|mediasparTV 2|TV|Shopping
FFFE:0300|FTA|RNF|TV|Regional
FFFE:0301|FTA|Channel21|TV|Shopping
FFFE:0304|FTA|iM1|TV|Music
FFFE:0306|FTA|GOD Channel|TV|Religious
FFFE:0307|FTA|MediaShop- Meine Einkaufswelt|TV|Shopping
FFFE:0308|FTA|SIXX|TV|General
FFFE:0381|FTA|e8 television|TV|Shopping
FFFE:0382|FTA|MediaShop- Neuheiten|TV|Shopping
FFFE:0383|FTA|meinTVshop|TV|Shopping
FFFE:0384|FTA|SPORT1|TV|Sport
FFFE:0701|FTA|Disney Channel|TV|General
FFFE:0702|FTA|QVC|TV|Shopping
FFFE:0D42|FTA|QVC PLUS|TV|Shopping
FFFE:0FB0|M7Group|BVN|TV|General
FFFE:10CD|FTA|FASHIONTV|TV|Documentaries
FFFE:10D6|FTA|TV TRWAM|TV|Religious
FFFE:1130|FTA|SES|TV|Presentations
FFFE:1195|FTA|TVE INTERNACIONAL EUROPA|TV|News
FFFE:1196|FTA|CANAL 24 HORAS|TV|News
FFFE:11F8|FTA|a.tv|TV|Regional
FFFE:11F9|FTA|Franken Fernsehen|TV|Regional
FFFE:11FA|FTA|intv|TV|Regional
FFFE:11FB|FTA|Ulm-Allgäu|TV|Regional
FFFE:11FC|FTA|münchen.tv|TV|Regional
FFFE:11FD|FTA|rfo Regional Oberbayern|TV|Regional
FFFE:11FE|FTA|Mainfranken|TV|Regional
FFFE:11FF|FTA|TV Oberfranken|TV|Regional
FFFE:1200|FTA|TVA-OTV|TV|Regional
FFFE:1201|FTA|Niederbayern|TV|Regional
FFFE:1252|FTA|Lokal TV Portal|TV|Regional
FFFE:125F|FTA|ManouLenz.tv|TV|Shopping
FFFE:1263|FTA|Fashion One|TV|Documentaries
FFFE:1268|FTA|SOPHIA TV|TV|Religious
FFFE:1269|FTA|DIE NEUE ZEIT TV|TV|Religious
FFFE:128E|FTA|Date1TV|TV|Erotic
FFFE:1292|FTA|.6live|TV|Erotic
FFFE:1293|FTA|Amore TV|TV|Erotic
FFFE:1297|FTA|Verliebt TV|TV|Erotic
FFFE:129B|FTA|Telefonchat TV|TV|Erotic
FFFE:129E|FTA|Beate Uhse Sexy Sat|TV|Erotic
FFFE:12A0|FTA|Singletreff TV|TV|Erotic
FFFE:12A3|FTA|GayBoys LIVE|TV|Erotic
FFFE:1331|FTA|ServusTV HD Oesterreich|TV|General
FFFE:1332|FTA|ServusTV HD Deutschland|TV|General
FFFE:13EC|FTA|3D Tile Format|TV|Erotic
FFFE:13ED|FTA|ASTRA 3D demo|TV|Presentations
FFFE:13F8|FTA|HOLIDAY|TV|Shopping
FFFE:13F9|FTA|TRT Turk|TV|General
FFFE:13FF|FTA|ALICE|TV|Cultural
FFFE:1465|FTA|SES|TV|Presentations
FFFE:146E|FTA|RTS SAT|TV|General
FFFE:1518|FTA|sonnenklar.TV HD|TV|Shopping
FFFE:151B|FTA|Juwelo HD|TV|Shopping
FFFE:151C|FTA|pearl.tv HD|TV|Shopping
FFFE:1523|FTA|TecTime TV-Zeit für Technik|TV|Technology
FFFE:157D|FTA|HSE24 EXTRA HD|TV|Shopping
FFFE:157E|FTA|1-2-3.tv HD|TV|Shopping
FFFE:1580|FTA|QVC PLUS HD|TV|Shopping
FFFE:18ED|FTA|RT HD|TV|News
FFFE:18EE|FTA|RT Esp HD|TV|News
FFFE:18F8|FTA|RT Esp HD|TV|News
FFFE:1905|FTA|OFFRES CANAL READY|TV|Presentations
FFFE:1AF8|FTA|Russia Today|TV|News
FFFE:1AF9|FTA|France 24 (en Français)|TV|News
FFFE:1AFA|FTA|France 24 (in English)|TV|News
FFFE:1AFE|FTA|France 24 (in Arabic)|TV|News
FFFE:1B00|FTA|CCTV9 Documentary|TV|Documentaries
FFFE:1B01|FTA|CCTV F|TV|General
FFFE:1B02|FTA|CCTV NEWS|TV|News
FFFE:1B03|FTA|TV5MONDE EUROPE|TV|General
FFFE:1B60|FTA|Cubavision Internacional|TV|News
FFFE:1B61|FTA|Al Jazeera Channel|TV|News
FFFE:1B62|FTA|REDERECORD|TV|General
FFFE:1B63|FTA|ARIRANG TV|TV|General
FFFE:1B64|FTA|Al Jazeera English|TV|News
FFFE:1B65|FTA|RT Esp|TV|News
FFFE:1B66|FTA|NHK World TV|TV|General
FFFE:1BBE|FTA|TVP INFO|TV|News
FFFE:1BC0|FTA|TVP Polonia|TV|General
FFFE:1BC1|FTA|TVP Historia|TV|Documentaries
FFFE:1BC2|FTA|TVP Culturala|TV|Cultural
FFFE:1C7A|FTA|Sky News Int.|TV|News
FFFE:1FAE|FTA|TV5MONDE|TV|Documentaries
FFFE:200A|FTA|I>TELE|TV|Spielfilme
FFFE:200C|FTA|CANAL+ SPORT|TV|Sport
FFFE:201E|FTA|I>TELE|TV|Music
FFFE:2020|FTA|CANAL+ SPORT|TV|Sport
FFFE:20D9|FTA|A LA CARTE|TV|Pay per View
FFFE:20DA|FTA|A LA CARTE|TV|Pay per View
FFFE:219B|FTA|MOSAIQUE|TV|Presentations
FFFE:219C|FTA|MOSA 2|TV|Presentations
FFFE:219D|FTA|MOSA 3|TV|Presentations
FFFE:21A2|FTA|MOSA 5|TV|Presentations
FFFE:21A6|FTA|MOSA 4|TV|Presentations
FFFE:21AE|FTA|MOSAIQUE|TV|Presentations
FFFE:21B0|FTA|MOSAIQUE|TV|Presentations
FFFE:21C1|FTA|MOSAIQUE|TV|Presentations
FFFE:2203|FTA|LCP|TV|News
FFFE:2208|FTA|ARTE|TV|Cultural
FFFE:2217|FTA|LCP|TV|News
FFFE:221C|FTA|ARTE|TV|Cultural
FFFE:23BC|FTA|CANALPLAY VOD|TV|Presentations
FFFE:23BC|FTA|CANALPLAY VOD|TV|Presentations
FFFE:23F5|FTA|CANALPLAY VOD|TV|Presentations
FFFE:2520|FTA|A LA DEMANDE|TV|Pay per View
FFFE:272E|FTA|CNBC Europe|TV|News
FFFE:2742|FTA|BBC World|TV|News
FFFE:274E|FTA|Best of shopping|TV|Shopping
FFFE:274F|FTA|M6 BOUTIQUE LA CHAINE|TV|Shopping
FFFE:2753|FTA|Bloomberg Europe TV|TV|Buisness
FFFE:2760|FTA|Sonlife Broadcasting Network|TV|Religious
FFFE:2762|FTA|Algerie 3|TV|Cultural
FFFE:2763|FTA|Canal Algerie|TV|General
FFFE:285B|FTA|PHOENIX HD|TV|News
FFFE:2EE3|FTA|RTL Television|TV|General
FFFE:2EE4|FTA|RTL Regional NRW|TV|Regional
FFFE:2EE5|FTA|RTL HB NDS|TV|Regional
FFFE:2EE6|FTA|RTL FS|TV|Regional
FFFE:2EF4|FTA|RTL2|TV|General
FFFE:2F08|FTA|SUPER RTL|TV|Children
FFFE:2F09|FTA|SUPER RTL CH|TV|General
FFFE:2F1C|FTA|VOX|TV|General
FFFE:2F1D|FTA|RTLNITRO|TV|General
FFFE:2F30|FTA|Channel 21|TV|Shopping
FFFE:2F3A|FTA|n-tv|TV|News
FFFE:2F3F|FTA|Channel 21 old|TV|Shopping
FFFE:2F44|FTA|QVC Deutschland|TV|Shopping
FFFE:2F5A|FTA|Bibel TV|TV|Religious
FFFE:2F5B|FTA|eUrotic|TV|Erotic
FFFE:2F67|FTA|TV8 Mont Blanc|TV|Regional
FFFE:2F8A|FTA|BFM TV|TV|News
FFFE:2F8B|FTA|BFM TV|TV|News
FFFE:2F8E|FTA|D17|TV|Music
FFFE:2F8F|FTA|D17|TV|Music
FFFE:2F94|FTA|BFM Business|TV|Buisness
FFFE:2F99|FTA|CashTV|TV|Presentations
FFFE:3070|FTA|RTL 2 CH|TV|General
FFFE:3138|FTA|Juwelo pur|TV|Shopping
FFFE:3139|FTA|K-TV|TV|Religious
FFFE:313C|FTA|Deutsches Music Fernsehen|TV|Music
FFFE:313E|FTA|Lustkanal.TV|TV|Erotic
FFFE:313F|FTA|MB SmartCast Test 2|TV|Presentations
FFFE:3144|FTA|Erotik 24|TV|Erotic
FFFE:3146|FTA|rhein main tv|TV|Regional
FFFE:3147|FTA|Deutsche Girls 2|TV|Erotic
FFFE:3148|FTA|Juwelo TV|TV|Shopping
FFFE:314A|FTA|Dreamgirls.TV|TV|Erotic
FFFE:314B|FTA|Erotik Sat|TV|Erotic
FFFE:314C|FTA|123Damenwahl|TV|Erotic
FFFE:314E|FTA|Maennersache TV|TV|Erotic
FFFE:314F|FTA|Date Line|TV|Erotic
FFFE:3150|FTA|Fotohandy|TV|Erotic
FFFE:3151|FTA|Mobile Sex|TV|Erotic
FFFE:3152|FTA|SEX-Kontakte|TV|Erotic
FFFE:3153|FTA|Kamasutra TV|TV|Erotic
FFFE:3154|FTA|Teledate TV|TV|Erotic
FFFE:3155|FTA|Traumgirls.TV|TV|Erotic
FFFE:3156|FTA|Das Erotische TV|TV|Erotic
FFFE:3159|FTA|Shop24Direct|TV|Shopping
FFFE:315A|FTA|MagicStar Digitalradio Promo|TV|Music
FFFE:315B|FTA|Babestation24|TV|Erotik
FFFE:315C|FTA|Fundorado TV|TV|Erotik
FFFE:315F|FTA|EROTIKA TV - NEU!|TV|Erotic
FFFE:3160|FTA|BunnyClub24|TV|Erotic
FFFE:3161|FTA|Clipmobile|TV|Erotic
FFFE:3162|FTA|MB SmartCast Test 1|TV|
FFFE:3163|FTA|old - SUCHLAUF STARTEN|TV|
FFFE:32D5|FTA|HITRADIO OE3|TV|Music
FFFE:32D6|FTA|ORF2E|TV|General
FFFE:32DA|FTA|Folx TV|TV|Music
FFFE:32DB|FTA|RiC|TV|Children
FFFE:332E|FTA|GoTV|TV|Music
FFFE:332F|FTA|Welt der Wunder|TV|Documentaries
FFFE:3330|FTA|LT1-OOE|TV|Regional
FFFE:3332|FTA|sixx Austria|TV|General
FFFE:3333|FTA|Visit-X.TV|TV|Erotik
FFFE:3336|FTA|ServusTV Deutschland|TV|General
FFFE:3337|FTA|ServusTV Oesterreich|TV|General
FFFE:3339|FTA|L-TV/TVM|TV|Regional
FFFE:3355|FTA|BTV|TV|Regional
FFFE:33A6|FTA|VolksMusic|TV|Music
FFFE:33A8|FTA|Bibel TV HD|TV|Religious
FFFE:33A9|FTA|Schau TV|TV|Entertainment
FFFE:33AA|FTA|Starparadies AT|TV|Shopping
FFFE:33AB|FTA|DAF Neu|TV|Buisness
FFFE:33AD|FTA|MELODIE TV|TV|Music
FFFE:445C|FTA|SAT.1|TV|General
FFFE:445D|FTA|ProSieben|TV|General
FFFE:445E|FTA|kabel eins|TV|General
FFFE:445F|FTA|N24|TV|News
FFFE:4460|FTA|SAT.1 Gold|TV|General
FFFE:4461|FTA|ProSieben MAXX|TV|General
FFFE:4463|FTA|SAT.1 Bayern|TV|Regional
FFFE:4464|FTA|SAT.1 NRW|TV|Regional
FFFE:4E21|FTA|ProSieben Schweiz|TV|General
FFFE:4E22|FTA|ProSieben Austria|TV|General
FFFE:4E23|FTA|Kabel 1 Schweiz|TV|General
FFFE:4E24|FTA|Kabel 1 Austria|TV|General
FFFE:4E25|FTA|SAT.1 A|TV|General
FFFE:4E26|FTA|SAT.1 CH|TV|General
FFFE:4E28|FTA|SAT.1 HH/SH|TV|Regional
FFFE:4E29|FTA|SAT.1 NS/Bremen|TV|Regional
FFFE:4E2A|FTA|SAT.1 RhlPf/Hessen|TV|Regional
FFFE:526C|FTA|ANIXE HD|TV|Children
FFFE:526F|FTA|QVC HD|TV|Shopping
FFFE:5270|FTA|HSE24 HD|TV|Shopping
FFFE:6F6A|FTA|CNN Int.|TV|News
FFFE:7080|FTA|RTL Austria|TV|General
FFFE:7085|FTA|VOX Austria|TV|General
FFFE:708A|FTA|RTL2 Austria|TV|General
FFFE:708F|FTA|SUPER RTL A|TV|Children
FFFE:7094|FTA|VOX CH|TV|General
FFFE:7099|FTA|RTL CH|TV|General
FFFE:749D|FTA|LTC|TV|Shopping
FFFE:7562|FTA|C+ MULTI-X|TV|Pay per View
FFFE:7596|FTA|C+ RADIOS|TV|Music
FFFE:759C|FTA|C+ PORTADA|TV|Pay per View
FFFE:75A9|FTA|CANAL+ GUÍA|TV|Erotic
FFFE:75B0|FTA|C+ TAQUILLA|TV|Presentations
FFFE:75B1|FTA|Bar+|TV|Presentations
FFFE:75B2|FTA|C+ TAQUILLA|TV|Pay per View
FFFE:75C6|FTA|C+ PORTADA|TV|Erotic
FFFE:75D9|FTA|CONTRATO|TV|Presentations
FFFE:75DF|FTA|TEST_CSD2|TV|Presentations
FFFE:75E1|FTA|TEST_CSD4|TV|Presentations
FFFE:75E2|FTA|TEST_CSD5|TV|Presentations
FFFE:75FB|FTA|YOMVI|TV|Pay per View
FFFE:79E0|FTA|Eurosport Deutschland|TV|Sport
FFFE:79EA|FTA|HSE24 extra|TV|Shopping
FFFE:79F4|FTA|EuroNews|TV|News
FFFE:7A44|FTA|ANDALUCIA TV|TV|Regional
FFFE:7A48|FTA|TELESUR|TV|Regional
FFFE:7A49|FTA|TBN Enlace|TV|Religious
FFFE:7A4A|FTA|TVGA|TV|Regional
FFFE:7A4B|FTA|I24 NEWS|TV|News
FFFE:7A4C|FTA|Sexysat|TV|Erotik
FFFE:7D00|FTA|TWOJ|TV|Documentaries
```

back to [index](#index)

## **Astra 23.5E**

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


### Canal Digitaal


Although Canal Digitaal belongs to the M7 Group, in the srvid-list the name Canal Digitaal is used and correspondents with the data tarnsmitted by the transponder of the appropiate satellite.
last review: 2014-02-24 by: ni\_hao

```
###
### DVB-S - Canal Digitaal - Astra 23.5E
###
0000,0100:02C5|Canal Digitaal 23.5E|NG Wild DUT HD|TV|Documentaries|
0000,0100:02DA|Canal Digitaal 23.5E|iConcerts|TV|Music
0000,0100:02DC|Canal Digitaal 23.5E|Brava HDTV|TV|Music
0000,0100:177A|Canal Digitaal 23.5°E|Politiek24|TV|
0000,0100:177F|Canal Digitaal 23.5°E|Canal Digitaal 23.5°E|TV|Documentaries|
0000,0100:1784|Canal Digitaal 23.5°E| Zappelin/Zapp24
0000,0100:1789|Canal Digitaal 23.5°E|Humor 24/Nost.Net|TV|
0000,0100:178E|Canal Digitaal 23.5°E|FOX|TV|Sport|
0000,0100:1793|Canal Digitaal 23.5°E|Boomerang|TV|Children|
0000,0100:1798|Canal Digitaal 23.5°E|Animal Planet|TV|Documentaries|
0000,0100:179D|Canal Digitaal 23.5°E|Investigation Discovery|TV|Crime|
0000,0100:17AC|Canal Digitaal 23.5°E|BiB|TV|Lifestyle|
0000,0100:17B1|Canal Digitaal 23.5°E|Disney Channel|TV|Kids|
0000,0100:17B2|Canal Digitaal 23.5°E|HBO HD|TV|Film|
0000,0100:17B3|Canal Digitaal 23.5°E|HBO 2|TV|Film|
0000,0100:17B4|Canal Digitaal 23.5°E|HBO 3|TV|Film|
0000,0100:17B8|Canal Digitaal 23.5°E|Brazzers.tv|TV|Porn|
0000,0100:17C0|Canal Digitaal 23.5°E|NED1 HD|TV|General|
0000,0100:17CA|Canal Digitaal 23.5°E|SBS6 HD|TV|General|
0000,0100:17CC|Canal Digitaal 23.5°E|FOX Sports EDL 1 HD|TV|Sport|
0000,0100:17D5|Canal Digitaal 23.5°E|Unitel Classica HD|TV|Music|
0000,0100:1B62|Canal Digitaal 23.5°E|Discovery HD showcase|TV|Documentaries|
0000,0100:1B6C|Canal Digitaal 23.5°E|RTL4 HD|TV|General|
0000,0100:1B6F|Canal Digitaal 23.5°E|RTL5 HD|TV|General|
0000,0100:1B73|Canal Digitaal 23.5°E|RTL7 HD|TV|General|
0000,0100:1B76|Canal Digitaal 23.5°E|VTM HD|TV|General|
0000,0100:1B7C|Canal Digitaal 23.5°E|RTL8 HD|TV|General|
0000,0100:1B80|Canal Digitaal 23.5°E|Viasat HD|TV|
0000,0100:1B82|Canal Digitaal 23.5°E|RTL lounge|TV|
0000,0100:1B8C|Canal Digitaal 23.5°E|Crime & Investigation|TV|Crime|
0000,0100:1B8E|Canal Digitaal 23.5°E|SyFy|TV|SciFy|
0000,0100:5142|Canal Digitaal 23.5°E|L1MBURG|TV|News|
0000,0100:5144|Canal Digitaal 23.5°E|TV West|TV|News|
0000,0100:5146|Canal Digitaal 23.5°E|AT5|TV|News|
0000,0100:5148|Canal Digitaal 23.5°E|Omrop Fryslan Televisie|TV|News|
0000,0100:514A|Canal Digitaal 23.5°E|TV Noord|TV|News|
0000,0100:514C|Canal Digitaal 23.5°E|TV Drenthe|TV|News|
0000,0100:5150|Canal Digitaal 23.5°E|TV Gelderland|TV|News|
0000,0100:5152|Canal Digitaal 23.5°E|Omroep Zeeland Televisie|TV|News|
0000,0100:5154|Canal Digitaal 23.5°E|Omroep Brabant Televisie|TV|News|
0000,0100:514E|Canal Digitaal 23.5°E|TV Oost|TV|News|
0000,0100:515A|Canal Digitaal 23.5°E|ComedyCentral/Kindernet|TV|Kids|
0000,0100:515E|Canal Digitaal 23.5°E|Hustler HD|TV|Porn|
0000,0100:51AE|Canal Digitaal 23.5°E|Film1 Comedy & Kids|TV|Film|
0000,0100:51B3|Canal Digitaal 23.5°E|Film1 Sundance|TV|Film|
0000,0100:51B8|Canal Digitaal 23.5°E|Film1 Action|TV|Film|
0000,0100:51BD|Canal Digitaal 23.5°E|Sport1 Voetbal|TV|Sport|
0000,0100:51C2|Canal Digitaal 23.5°E|Sport1 Golf|TV|Sport|
0000,0100:51C7|Canal Digitaal 23.5°E|FOX Sports EDL 3|TV|Sport|
0000,0100:51CC|Canal Digitaal 23.5°E|Cartoon|TV|Animation|
0000,0100:51D1|Canal Digitaal 23.5°E|Extreme Sports|TV|Sport|
0000,0100:51D3|Canal Digitaal 23.5°E|MTV NL|TV|Music|
0000,0100:51D4|Canal Digitaal 23.5°E|TV Oranje|TV|Music|
0000,0100:51D5|Canal Digitaal 23.5°E|TLC|TV|Lifestyle
0000,0100:51DB|Canal Digitaal 23.5°E|Film1 Premiere HD|TV|Film|
0000,0100:51E0|Canal Digitaal 23.5°E|Sport1 SELECT HD|TV|Sport|
0000,0100:51E5|Canal Digitaal 23.5°E|NGC HD|TV|Documentaries|
0000,0100:51E6|Canal Digitaal 23.5°E|13th Street|TV|Series|
0000,0100:5214|Canal Digitaal 23.5°E|AT5|TV|News|
0000,0100:521C|Canal Digitaal 23.5°E|NET5 HD|TV|General|
0000,0100:5221|Canal Digitaal 23.5°E|een HD|TV|General|
0000,0100:5225|Canal Digitaal 23.5°E|NED1 HD|TV|General|
0000,0100:5226|Canal Digitaal 23.5°E|Canvas HD|TV|General|
0000,0100:522B|Canal Digitaal 23.5°E|Veronica/DisneyXD HD|TV|General|
0000,0100:5230|Canal Digitaal 23.5°E|NED3 HD|TV|General|
0000,0100:5235|Canal Digitaal 23.5°E|FOX Sports 2 HD int|TV|Sport|
0000,0100:5276|Canal Digitaal 23.5°E|JIM|TV|Music|
0000,0100:527C|Canal Digitaal 23.5°E|VTMKazoom/Kanaal Z|TV|Kids|
0000,0100:5280|Canal Digitaal 23.5°E|Vitaya|TV|Lifestyle|
0000,0100:5282|Canal Digitaal 23.5°E|Acht|TV|General|
0000,0100:5284|Canal Digitaal 23.5°E|Man-X|TV|Porn|
```

back to [index](#index)

###

M7 Group

last review: 2014-01-28 by: Jan Gruuthuse

Additional information:

+   some channels also on Astra 19.2 [Astra 19.2](#M7Group192)
+   available via Canal Digitaal and TV Vlaanderen

```
###
### DVB-S - M7 Group - Astra 23.5E
###
0000,0100,1817,1819:177A|M7 Group 23.5°E|Politiek/Best24|TV|
0000,0100,1817:177F|M7 Group 23.5°E|M7 Group 23.5°E|TV|Documentaries|
0000,0100,1817:1784|M7 Group 23.5°E| Zappelin/Zapp2
0000,0100,0500,1817,1818:1789|M7 Group 23.5°E|Humor 24/Nost.Net|TV|
0000,0100,1817:178E|M7 Group 23.5°E|FOX Channel|TV|Sport|
0000,0100,0500,1817,1818:1793|M7 Group 23.5°E|Boomerang|TV|Children|
0000,0100,0500,1817,1818:1798|M7 Group 23.5°E|Animal Planet|TV|Documentaries|
0000,0100,0500,1817,1818:179D|M7 Group 23.5°E|Investigation Discovery|TV|Crime|
0000,0100,0500,1817,1818:17AC|M7 Group 23.5°E|BiB|TV|Lifestyle|
0000,0100,0500,1818,1819:17A7|M7 Group 23.5°E|TVL/ATV/TV Oost|TV|News|
0000,0100,0500,1817,1818:17B1|M7 Group 23.5°E|Disney Channel|TV|Kids|
0000,0100,1817:17B2|M7 Group 23.5°E|HBO HD|TV|Film|
0000,0100,1817:17B3|M7 Group 23.5°E|HBO 2|TV|Film|
0000,0100,1817:17B4|M7 Group 23.5°E|HBO 3|TV|Film|
0000,0100,0500,1817,1818,1819:17B8|M7 Group 23.5°E|Brazzers.tv|TV|Porn|
0000,0100,0500,1817,1818:17C0|M7 Group 23.5°E|NED1 HD|TV|General|
0000,0100,1817:17CA|M7 Group 23.5°E|SBS6 HD|TV|General|
0000,0100,1817:17CC|M7 Group 23.5°E|FOX Sports EDL 1 HD|TV|Sport|
0000,0100,0500,0624,0D96,1818,1837:17D5|M7 Group 23.5°E|Unitel Classica HD|TV|Music|
0000,0100,0500,0624,0D96,1817,1818:1B62|M7 Group 23.5°E|Discovery HD showcase|TV|Documentaries|
0000,0100,1817:1B6C|M7 Group 23.5°E|RTL4 HD|TV|General|
0000,0100,1817:1B6F|M7 Group 23.5°E|RTL5 HD|TV|General|
0000,0100,0500,0624,0D96,1817,1818:1B71|M7 Group 23.5°E|Brava HDTV|TV|Classic|
0000,0100,1817:1B73|M7 Group 23.5°E|RTL7 HD|TV|General|
0000,0100,0500,1818:1B76|M7 Group 23.5°E|VTM HD|TV|General|
0000,0100,1817:1B7C|M7 Group 23.5°E|RTL8 HD|TV|General|
0000,0100,0624,0D96,1817:1B80|M7 Group 23.5°E|Viasat HD|TV|
0000,0100,1817:1B82|M7 Group 23.5°E|RTL lounge|TV|
0000,0100,1817:5142|M7 Group 23.5°E|L1MBURG|TV|News|
0000,0100,1817:5144|M7 Group 23.5°E|TV West|TV|News|
0000,0100,1817:5146|M7 Group 23.5°E|AT5|TV|News|
FFFE:5148|M7 Group 23.5°E|Omrop Fryslan Televisie|TV|News|
FFFE:514A|M7 Group 23.5°E|TV Noord|TV|News|
FFFE:514C|M7 Group 23.5°E|TV Drenthe|TV|News|
FFFE:5150|M7 Group 23.5°E|TV Gelderland|TV|News|
FFFE:5152|M7 Group 23.5°E|Omroep Zeeland Televisie|TV|News|
0000,0100,1817:5154|M7 Group 23.5°E|Omroep Brabant Televisie|TV|News|
FFFE:514E|M7 Group 23.5°E|TV Oost|TV|News|
0000,0100,0500,1817,1818:5156|M7 Group 23.5°E|SyFy|TV|SciFy|
0000,0100,0500,1817,1818:5157|M7 Group 23.5°E|iConcerts|TV|Music|
0000,0100,1817:515A|M7 Group 23.5°E|ComedyCentral/Kindernet|TV|Kids|
0000,0100,0500,1817,1818:515B|M7 Group 23.5°E|Crime Inv|TV|Crime|
0000,0100,0500,1817,1818:515E|M7 Group 23.5°E|Hustler HD|TV|Porn|
0000,0100,1817:51AE|M7 Group 23.5°E|Film1 Comedy & Kids|TV|Film|
0000,0100,1817:51B3|M7 Group 23.5°E|Film1 Sundance|TV|Film|
0000,0100,1817:51B8|M7 Group 23.5°E|Film1 Action|TV|Film|
0000,0100,1817:51BD|M7 Group 23.5°E|Sport1 Voetbal|TV|Sport|
0000,0100,1817:51C2|M7 Group 23.5°E|Sport1 Golf|TV|Sport|
0000,0100,1817,1818:51C7|M7 Group 23.5°E|FOX Sports EDL 3|TV|Sport|
0000,0100,0500,1817,1818:51CC|M7 Group 23.5°E|Cartoon|TV|Animation|
0000,0100,0500,1817,1818:51D1|M7 Group 23.5°E|Extreme Sports|TV|Sport|
0000,0100,0500,1817,1818:51D3|M7 Group 23.5°E|MTV NL|TV|Music|
0000,0100,0500,1817,1818:51D4|M7 Group 23.5°E|TV Oranje|TV|Music|
0000,0100,1817:51D5|M7 Group 23.5°E|TLC|TV|Lifestyle
0000,0100,1817:51DB|M7 Group 23.5°E|Film1 Premiere HD|TV|Film|
0000,0100,1817:51E0|M7 Group 23.5°E|Sport1 SELECT HD|TV|Sport|
0000,0100,0500,1817,1818:51E5|M7 Group 23.5°E|NGC HD|TV|Documentaries|
0000,0100,0500,1817,1818:51E6|M7 Group 23.5°E|13th Street|TV|Series|
0000,0100,1817:5214|M7 Group 23.5°E|AT5|TV|News|
0000,0100,1817:521C|M7 Group 23.5°E|NET5 HD|TV|General|
0000,0100,0500,1817,1818,1819:5221|M7 Group 23.5°E|een HD|TV|General|
0000,0100,0500,1817,1818:5225|M7 Group 23.5°E|NED1 HD|TV|General|
0000,0500,1817,1818,1819:5226|M7 Group 23.5°E|Canvas HD|TV|General|
0000,0500,1817,1818:522B|M7 Group 23.5°E|Veronica/DisneyXD HD|TV|General|
0000,0100,0500,1817,1818:5230|M7 Group 23.5°E|NED3 HD|TV|General|
0000,0100,1817:5235|M7 Group 23.5°E|FOX Sports 2 HD int|TV|Sport|
0000,0100,0500,1818,1819:5276|M7 Group 23.5°E|JIM|TV|Music|
0000,0100,0500,1818,1819:527C|M7 Group 23.5°E|VTMKazoom/Kanaal Z|TV|Kids|
0000,0100,0500,1818,1819:5280|M7 Group 23.5°E|Vitaya|TV|Lifestyle|
0000,0100,0500,1818,1819:5282|M7 Group 23.5°E|Acht|TV|General|
0000,0100,0500,0624,0D96,1817,1818,1819:5284|M7 Group 23.5°E|Man-X|TV|Porn|
```

back to [index](#index)

### SatBG (SkyLink)

last review: 2014-01-16 by: Gorgone

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
###
### DVB-S - SkyLink - Astra 23,5E
###
0B00:36E2|SkyLink|FightBOX TV
0B00:36E3|SkyLink|DocuBox HD
0B00:36E4|SkyLink|EroX
0B00:36E5|SkyLink|FASHIONBOX
0B00:36E6|SkyLink|360TUNEBOX
0B00:36E7|SkyLink|EroXXX
```

back to [index](#index)

###

Skylink

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.

last review: 2013-12-05 by: ???

Review needed vor Dorcel/Hustler CAIDS -> Astra 19.2

```
###
### DVB-S - Skylink - Astra 19.2E & 23.5E
###
0000,0624,0D96:1F43|Skylink|Skylink - CT 1|TV|
0000,0624,0D96:3700|Skylink|Skylink - CT HD|TV|
0000,0624,0D96:1F44|Skylink|Skylink - CT 2|TV|
0000,0624,0D96:1F49|Skylink|Skylink - CT:D/CT art|TV|
0000,0624,0D96:3352|Skylink|Skylink - Nova|TV|
0000,0624,0D96:13A6|Skylink|Skylink - Nova HD|TV|
0000,0624,0D96:36F9|Skylink|Skylink - Nova Cinema|TV|
0000,0624,0D96:36F8|Skylink|Skylink - FANDA|TV|
0000,0624,0D96:333D|Skylink|Skylink - TELKA|TV|
0000,0624,0D96:333E|Skylink|Skylink - SMICHOV|TV|
0000,0624,0D96:1F42|Skylink|Skylink - Prima|TV|
0000,0624,0D96:13A8|Skylink|Skylink - Prima HD|TV|
0000,0624,0D96:3351|Skylink|Skylink - Prima COOL|TV|
0000,0624,0D96:3355|Skylink|Skylink - Prima Love|TV|
0000,0624,0D96:3353|Skylink|Skylink - Prima ZOOM|TV|
### FTA channel 0000,0624,0D96:1451|Skylink|Skylink - Ocko TV|TV|
0000,0624,0D96:1F47|Skylink|Skylink - CT sport|TV|
0000,0624,0D96:13AF|Skylink|Skylink - CT sport HD|TV|
### FTA channel 0000,0624,0D96:1F46|Skylink|Skylink - CT 24|TV|
0000,0624,0D96:13D3|Skylink|Skylink - TV Barrandov|TV|
### FTA channel 0000,0624,0D96:1F48|Skylink|Skylink - Noe TV|TV|
0000,0624,0D96:13F1|Skylink|Skylink - STV1|TV|
0000,0624,0D96:13F2|Skylink|Skylink - STV2|TV|
0000,0624,0D96:13EF|Skylink|Skylink - Markiza|TV|
0000,0624,0D96:13B4|Skylink|Skylink - Markiza HD|TV|
0000,0624,0D96:13F0|Skylink|Skylink - DOMA|TV|
0000,0624,0D96:13ED|Skylink|Skylink - TV JOJ|TV|
0000,0624,0D96:13EE|Skylink|Skylink - JOJ PLUS|TV|
0000,0624,0D96:13F4|Skylink|Skylink - DAJTO|TV|
0000,0624,0D96:13D8|Skylink|Skylink - FOOR|TV|
0000,0624,0D96:1452|Skylink|Skylink - WAU|TV|
### FTA channel 0000,0624,0D96:13F3|Skylink|Skylink - TA3|TV|
### FTA channel 0000,0624,0D96:1453|Skylink|Skylink - regionalnitelevize.cz|TV|
### FTA channel 0000,0624,0D96:13D5|Skylink|Skylink - POHODA|TV|
### FTA channel 0000,0624,0D96:13D9|Skylink|Skylink - SLAGR TV|TV|
0000,0624,0D96:36E5|Skylink|Skylink - FASHIONBOX|TV|
0000,0624,0D96:36F7|Skylink|Skylink - Nova Sport|TV|
0000,0624,0D96:13A7|Skylink|Skylink - Nova Sport HD|TV|
0000,0624,0D96:3331|Skylink|Skylink - Eurosport CZ|TV|
0000,0624,0D96:13A9|Skylink|Skylink - Eurosport HD|TV|
0000,0624,0D96:3360|Skylink|Skylink - Eurosport 2|TV|
0000,0624,0D96:13B1|Skylink|Skylink - Eurosport 2 HD|TV|
0000,0624,0D96:334D|Skylink|Skylink - Sport 1|TV|
0000,0624,0D96:13AD|Skylink|Skylink - Sport 2|TV|
0000,0624,0D96:332D|Skylink|Skylink - Sport 5|TV|
0000,0624,0D96:13B2|Skylink|Skylink - Slovak Sport|TV|
0000,0624,0D96:36E2|Skylink|Skylink - FightBOX|TV|
0000,0624,0D96:13AC|Skylink|Skylink - Golf Channel|TV|
0000,0624,0D96:17D7|Skylink|Skylink - AutoMotoSport HD|TV|
0000,0624,0D96:3330|Skylink|Skylink - HBO|TV|
0000,0624,0D96:13B7|Skylink|Skylink - HBO HD|TV|
0000,0624,0D96:3335|Skylink|Skylink - HBO 2|TV|
0000,0624,0D96:13AB|Skylink|Skylink - HBO Comedy|TV|
0000,0624,0D96:3339|Skylink|Skylink - Cinemax|TV|
0000,0624,0D96:13B9|Skylink|Skylink - AXN|TV|
0000,0624,0D96:334A|Skylink|Skylink - Filmbox|TV|
0000,0624,0D96:13B3|Skylink|Skylink - Filmbox HD|TV|
0000,0624,0D96:334B|Skylink|Skylink - Filmbox Plus|TV|
0000,0624,0D96:13BA|Skylink|Skylink - Filmbox Family|TV|
0000,0624,0D96:13BB|Skylink|Skylink - Filmbox Extra 1|TV|
0000,0624,0D96:13C6|Skylink|Skylink - Film Europe|TV|
0000,0624,0D96:332E|Skylink|Skylink - Film+|TV|
0000,0624,0D96:02D8|Skylink|Skylink - Universal Channel|TV|
0000,0624,0D96:13CF|Skylink|Skylink - MGM|TV|
0000,0624,0D96:333B|Skylink|Skylink - HOROR CHANNEL|TV|
0000,0624,0D96:13C2|Skylink|Skylink - Kino CS|TV|
0000,0624,0D96:332C|Skylink|Skylink - CS Film/CS Mini|TV|
0000,0624,0D96:3336|Skylink|Skylink - Disney Channel|TV|
0000,0624,0D96:334C|Skylink|Skylink - JIM JAM|TV|
0000,0624,0D96:3337|Skylink|Skylink - Minimax|TV|
0000,0624,0D96:13BD|Skylink|Skylink - Nickelodeon CZ|TV|
0000,0624,0D96:13D6|Skylink|Skylink - duck TV|TV|
0000,0624,0D96:13B5|Skylink|Skylink - Spektrum HD|TV|
0000,0624,0D96:3333|Skylink|Skylink - Discovery|TV|
0000,0624,0D96:1B63|Skylink|Skylink - Discovery HD CZ|TV|
0000,0624,0D96:13DA|Skylink|Skylink - Viasat Explorer/Spice|TV|
0000,0624,0D96:13DC|Skylink|Skylink - Viasat Nature|TV|
0000,0624,0D96:13DB|Skylink|Skylink - Viasat History|TV|
0000,0624,0D96:1B80|Skylink|Skylink - Viasat HD|TV|
0000,0624,0D96:13AA|Skylink|Skylink - History HD|TV|
0000,0624,0D96:13B8|Skylink|Skylink - Travel Channel HD CE|TV|
0000,0624,0D96:13B6|Skylink|Skylink - Doku CS|TV|
0000,0624,0D96:36E3|Skylink|Skylink - DocuBOX|TV|
0000,0624,0D96:13DD|Skylink|Skylink - NGC|TV|
0000,0624,0D96:15ED|Skylink|Skylink - Nat Geo HD CZ|TV|
0000,0624,0D96:13D0|Skylink|Skylink - NG Wild|TV|
0000,0624,0D96:15EB|Skylink|Skylink - NG Wild HD CZ|TV|
0000,0624,0D96:13AE|Skylink|Skylink - TV Paprika|TV|
0000,0624,0D96:515C|Skylink|Skylink - Crime Investigation CZ|TV|
0000,0624,0D96:3334|Skylink|Skylink - Fishing & Hunting|TV|
0000,0624,0D96:3354|Skylink|Skylink - MTV CZ|TV|
0000,0624,0D96:6FEF|Skylink|Skylink - MTV Dance|TV|
0000,0624,0D96:6FF3|Skylink|Skylink - MTV ROCKS|TV|
0000,0624,0D96:6FF0|Skylink|Skylink - VH1|TV|
0000,0624,0D96:6FF1|Skylink|Skylink - VH1 Classic|TV|
0000,0624,0D96:13BC|Skylink|Skylink - Retro Music TV|TV|
0000,0624,0D96:13C3|Skylink|Skylink - Muzika CS|TV|
0000,0624,0D96:1B72|Skylink|Skylink - Brava HDTV CZ|TV|
0000,0624,0D96:17D5|Skylink|Skylink - UNITEL CLASSICA|TV|
0000,0624,0D96:5158|Skylink|Skylink - iConcerts CZ|TV|
0000,0624,0D96:36E6|Skylink|Skylink - 360TUNEBOX|TV|
0000,0624,0D96:333F|Skylink|Skylink - Leo TV|TV|
0000,0624,0D96:17B9|Skylink|Skylink - Private Spice CZ|TV|
0000,0624,0D96:3254|Skylink|Skylink - Hustler TV CZ|TV|
0000,0624,0D96:515F|Skylink|Skylink - Hustler HD CZ|TV|
0000,0624,0D96:36E4|Skylink|Skylink - EroX|TV|
0000,0624,0D96:36E7|Skylink|Skylink - EroXXX|TV|
```

back to [index](#index)

### TV Vlaanderen


TV Vlaanderen belongs to the M7 Group Please copy the existing [M7 Group](#M7Group235) entries you´ll find [here](#M7Group)
for administrational reasons just listed once!

More Information:
[Cards List](http://www.streamboard.tv/oscam/wiki/CardsList/) Seca Cards -> M7 Group SA
[http://www.streamboard.tv/wbb2/thread.php?threadid=34939](http://www.streamboard.tv/wbb2/thread.php?threadid=34939)

back to [index](#index)

## **Astra 28.2E**

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


### SkyUK (REVIEW NEEDED)

last review: ??? by: ???

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
###
### DVB-S - SkyUK - Astra 28.2E
###
0963,0961:0C1D|SkyUK|Astra Vision
0963,0961:0ED9|SkyUK|HD Retail Info
0963,0961:0EDA|SkyUK|Sky Sports HD1
0963,0961:0EDB|SkyUK|Discovery HD
0963,0961:0EDC|SkyUK|Eurosport HD
0963,0961:0EDE|SkyUK|MTVN HD
0963,0961:0EE5|SkyUK|Sky RealLive HD
0963,0961:0EE6|SkyUK|Sky Action HD
0963,0961:0EE7|SkyUK|Sky MdnGrts HD
0963,0961:0EE8|SkyUK|Sky Drama HD
0963,0961:0EE9|SkyUK|Sky ScFi/Hor HD
0963,0961:0EEA|SkyUK|Sky Family HD
0963,0961:0EEB|SkyUK|Sky Comedy HD
0963,0961:0EED|SkyUK|Sky Premiere HD
0963,0961:0EEE|SkyUK|Sky Sports HD3
0963,0961:0EEF|SkyUK|FX HD
0963,0961:0EF0|SkyUK|Sky Sports HD3
0963,0961:0EF7|SkyUK|Nat Geo HD
0963,0961:0EF9|SkyUK|Sky Screen 1HD
0963,0961:0F15|SkyUK|Sky1 HD
0963,0961:0F16|SkyUK|Sky Screen 2HD
0963,0961:0F17|SkyUK|Sky Arts 1 HD
0963,0961:0F18|SkyUK|Sky Arts 2 HD
0963,0961:0F21|SkyUK|Disney Cine HD
0963,0961:0F22|SkyUK|SCI FI HD
0963,0961:0F23|SkyUK|Channel 4 HD
0963,0961:0F25|SkyUK|Sky Sports HD1
0963,0961:0F26|SkyUK|Sky Sports HD2
0963,0961:0F29|SkyUK|Sky Sports HD2
0963,0961:0F2D|SkyUK|NatGeoWild HD
0963,0961:0F2E|SkyUK|History HD
0963,0961:0F2F|SkyUK|Bio.HD
0963,0961:0F30|SkyUK|Crime HD
0963,0961:0F41|SkyUK|Sky Real Lives +1
0961:0FD1|SkyUK|Hip Hop EPG UK
0961:0FFA|SkyUK|Music Choice
0961:0FFB|SkyUK|Music Choice
0961:101E|SkyUK|Hustler TV UK
0961:1020|SkyUK|Playboy / Adult
0961:1023|SkyUK|Playboy
0961:1024|SkyUK|Spice
0961:1025|SkyUK|100% Babes
0961:1027|SkyUK|Amateur Babes
0961:1028|SkyUK|Fantasy 1
0961:1029|SkyUK|Viewers'Wives
0961:102E|SkyUK|trade.tv
0961:1034|SkyUK|Anytime
0963,0961:1070|SkyUK|Sky Sports 2 Ireland
0963,0961:1076|SkyUK|Sky Sports 1
0963,0961:1078|SkyUK|Sky Sports 1
0963,0961:107B|SkyUK|Sky Sports 3
0963,0961:107D|SkyUK|Sky Sports 1
0963,0961:107E|SkyUK|Sky Sports 2
0963,0961:10CE|SkyUK|Sky Action
0963,0961:10CF|SkyUK|Sky Comedy
0963,0961:10D0|SkyUK|Sky ScFi/Horror
0963,0961:10D1|SkyUK|Sky Classics
0963,0961:10D2|SkyUK|Sky Indie
0963,0961:1133|SkyUK|Sky Family
0963,0961:1139|SkyUK|Realmadrid TV
0963,0961:113A|SkyUK|TV5
0963,0961:119F|SkyUK|Sky Sports 3
0963,0961:11A1|SkyUK|Sky Sports 3
0963,0961:11FA|SkyUK|Sky Screen 1
0963,0961:11FC|SkyUK|Sky Arts 1
0963,0961:11FE|SkyUK|Retail Info
0963,0961:11FF|SkyUK|National Geographic
0963,0961:1200|SkyUK|National Geographic +1
0963,0961:1202|SkyUK|Sky Spts Xtra
0963,0961:1203|SkyUK|Sky Sports 1
0963,0961:1205|SkyUK|Sky Sports 3 for pubs
0963,0961:120F|SkyUK|yd2oe6
0963,0961:1210|SkyUK|yd1oe6
0961:122A|SkyUK|Sky Mdn Greats
0963,0961:122B|SkyUK|Sky Screen 2
0963,0961:122C|SkyUK|Sky Prem +1
0963,0961:122D|SkyUK|History
0963,0961:122F|SkyUK|Bio
0963,0961:1233|SkyUK|Sky Premiere
0963,0961:125D|SkyUK|Sky1
0961:125E|SkyUK|Unnamed service
0963,0961:125F|SkyUK|Sky1
0963,0961:1261|SkyUK|Sky1
0961:12C4|SkyUK|Kerrang !
0961:12CA|SkyUK|Unnamed service
0961:12CB|SkyUK|Unnamed service
0961:12CC|SkyUK|Unnamed service
0961:12CD|SkyUK|Unnamed service
0963,0961:12FC|SkyUK|ShortsTV
0961:131F|SkyUK|STAR Plus
0961:1320|SkyUK|STAR News
0963,0961:132B|SkyUK|Sky Spts News
0963,0961:132C|SkyUK|SP News
0963,0961:132D|SkyUK|Sky Spts News
0963,0961:132E|SkyUK|Sky Spts News
0963,0961:1332|SkyUK|Sky Sports 1
0963,0961:138B|SkyUK|History +1
0963,0961:138D|SkyUK|Sky Real Lives
0963,0961:1391|SkyUK|Eurosport 2 UK
0961:1392|SkyUK|Hallmark
0963,0961:139D|SkyUK|NDTV 24x7
0963,0961:13A1|SkyUK|Current TV
0963,0961:13EF|SkyUK|Sky3
0963,0961:13F0|SkyUK|Sky2
0963,0961:13F2|SkyUK|1387
0963,0961:1456|SkyUK|The Box
0963,0961:14BC|SkyUK|S1Test
0963,0961:1519|SkyUK|Sky Spts Xtra
0963,0961:151C|SkyUK|Sky Spts Xtra
0963,0961:1537|SkyUK|Comedy CtralX
0963,0961:153A|SkyUK|Sky Spts Xtra
0963,0961:157E|SkyUK|Sky Drama
0961:157F|SkyUK|Sky Sports 2
0963,0961:1580|SkyUK|Retail Info
0961:1582|SkyUK|Kiss
0961:1583|SkyUK|Magic UK
0961:1585|SkyUK|Jetix UK +1
0963,0961:158B|SkyUK|FX
0963,0961:1591|SkyUK|Cartoonito
0963,0961:1592|SkyUK|TCM 2 UK
0961:15E1|SkyUK|Nick Replay
0961:15E2|SkyUK|Nickelodeon
0961:15E3|SkyUK|Nick Test
0961:15E4|SkyUK|Nicktoons
0961:15E5|SkyUK|Nick Jr.
0963,0961:15E6|SkyUK|Nick Jr Test
0963,0961:1647|SkyUK|National Geographic Wild
0963,0961:164E|SkyUK|Eurosport UK
0963,0961:1652|SkyUK|TCM UK
0963,0961:168A|SkyUK|E! Entertainment TV
0963,0961:16A9|SkyUK|1871
0963,0961:16AC|SkyUK|Q
0963,0961:170E|SkyUK|ISM Test1 v5
0963,0961:170F|SkyUK|HSSNR
0963,0961:1710|SkyUK|Comedy Central
0963,0961:1771|SkyUK|Living
0963,0961:1772|SkyUK|Challenge
0963,0961:1773|SkyUK|Living +2
0963,0961:1774|SkyUK|Bravo
0963,0961:1775|SkyUK|Living +1
0963,0961:1776|SkyUK|Bravo+1
0963,0961:1777|SkyUK|Living2
0961:177B|SkyUK|Living +
0963,0961:177C|SkyUK|Challenge+
0961:177D|SkyUK|Trouble+
0963,0961:177E|SkyUK|Bravo+
0963,0961:1788|SkyUK|Bravo~
0961:1795|SkyUK|Test~~
0963,0961:17D7|SkyUK|6103
0963,0961:1839|SkyUK|Discovery
0963,0961:183A|SkyUK|Animal Planet
0963,0961:183B|SkyUK|Discovery Real Time
0963,0961:183C|SkyUK|Discovery +1
0963,0961:183D|SkyUK|Travel & Living
0963,0961:183E|SkyUK|Disc.Science
0963,0961:183F|SkyUK|Disc.Knowldge
0963,0961:1840|SkyUK|Home & Health
0963,0961:1841|SkyUK|Disc.Turbo
0963,0961:1842|SkyUK|Home & Health+
0963,0961:1965|SkyUK|Home
0963,0961:1966|SkyUK|Eden
0963,0961:1968|SkyUK|G.O.L.D
0963,0961:1969|SkyUK|YeSTERDAY
0963,0961:196A|SkyUK|Dave
0963,0961:196B|SkyUK|UKTV Food +1
0963,0961:196C|SkyUK|UKTV Food
0963,0961:1970|SkyUK|Uktv Docs~
0963,0961:1976|SkyUK|UK Food~
0963,0961:1978|SkyUK|Watch
0963,0961:1979|SkyUK|Alibi
0963,0961:197A|SkyUK|UK SG~
0963,0961:1B59|SkyUK|MTV One
0963,0961:1B5A|SkyUK|VH1 UK
0963,0961:1B5B|SkyUK|MTV Two
0963,0961:1B5D|SkyUK|MTV One +1
0963,0961:1B5E|SkyUK|MTV Hits
0963,0961:1B5F|SkyUK|MTV Base
0963,0961:1B60|SkyUK|VH1 Classic UK
0963,0961:1B61|SkyUK|TMF
0963,0961:1B62|SkyUK|MTV One
0963,0961:1B64|SkyUK|MTV ?
0963,0961:1B66|SkyUK|MTV Dance
0963,0961:1B6D|SkyUK|MTV Trax
0963,0961:1B81|SkyUK|Mti
0963,0961:1BBC|SkyUK|Cartoon Network
0963,0961:1BBD|SkyUK|Boomerang +1
0963,0961:1BBE|SkyUK|Boomerang
0963,0961:1BBF|SkyUK|CN Too
0963,0961:1BC4|SkyUK|Toonamil
0963,0961:1BC5|SkyUK|Cartoon I
0961:1C02|SkyUK|Unnamed service
0963,0961:1CA2|SkyUK|B4U Movies
0963,0961:1CFC|SkyUK|Sony TV Asia
0963,0961:1D06|SkyUK|MAX
0963,0961:1DB0|SkyUK|Home +1
0963,0961:1DB1|SkyUK|7601
0963,0961:1DB5|SkyUK|G.O.L.D. +1
0963,0961:1DB6|SkyUK|Uktv Gold+1~
0961:1DBB|SkyUK|Blighty
0963,0961:1DBF|SkyUK|Watch +1
0963,0961:1DC4|SkyUK|UKTV Gardens
0963,0961:1DC5|SkyUK|UKTV Docs+1~
0963,0961:1DC8|SkyUK|Dave ja vu
0963,0961:1DC9|SkyUK|UKTV G2+1.
0963,0961:1DCA|SkyUK|UKTV Food +1
0963,0961:1DCE|SkyUK|Alibi +1
0963,0961:1E0A|SkyUK|7360
0963,0961:1E14|SkyUK|Five
0961:1E15|SkyUK|Five
0963,0961:1E16|SkyUK|Five
0963,0961:1E17|SkyUK|Five
0963,0961:1E1E|SkyUK|Five USA
0963,0961:1E1F|SkyUK|Five USA +1
0963,0961:1E23|SkyUK|Fiver
0963,0961:1E24|SkyUK|Fiver +1
0961:2328|SkyUK|DCT (t51)
0963,0961:2329|SkyUK|Disney Channel
0963,0961:232A|SkyUK|Disney Cine
0963,0961:232B|SkyUK|Disney Cine +1
0963,0961:232C|SkyUK|Play Disney
0963,0961:232F|SkyUK|Disney Channel +1
0963,0961:2332|SkyUK|Play Disney +
0963,0961:2457|SkyUK|Pub Channel
0961:2461|SkyUK|Sky Travel
0963,0961:2462|SkyUK|Sky Sports 2 for pubs
0963,0961:2463|SkyUK|At The Races
0963,0961:2464|SkyUK|ISM Sky1 v6
0963,0961:2465|SkyUK|ISM Sports 1 v6
0963,0961:247C|SkyUK|SkyPoker.com
0963,0961:247D|SkyUK|Sky Vegas
0961:247E|SkyUK|Sky Arts 2
0963,0961:2481|SkyUK|1429
0963,0961:2482|SkyUK|Chelsea TV
0963,0961:2484|SkyUK|Crime
0961:2485|SkyUK|4Music
0963,0961:2486|SkyUK|Jetix UK
0963,0961:2487|SkyUK|FX +
0963,0961:2494|SkyUK|At The Races
0963,0961:2581|SkyUK|RTE One
0963,0961:2582|SkyUK|RTE Two
0963,0961:2583|SkyUK|TG4
0963,0961:2585|SkyUK|TV3
0961:2586|SkyUK|DW-TV (Deutsche Welle)
0961:2587|SkyUK|TVEi
0963,0961:2797|SkyUK|Men & Motors
0961:2DF8|SkyUK|AH TV
0963,0961:2EE5|SkyUK|Big Brother Feed
0963,0961:2EFE|SkyUK|More 4
0963,0961:2F03|SkyUK|Channel 4
0963,0961:2F08|SkyUK|Channel 4 +1
0963,0961:2F0D|SkyUK|E4 +1
0963,0961:2F12|SkyUK|E4
0963,0961:2F44|SkyUK|ITV1 Mer SE
0963,0961:2F45|SkyUK|ITV1 Mer N
0963,0961:2F4E|SkyUK|ITV1 Anglia W
0963,0961:2F58|SkyUK|ITV1 Yorks E
0963,0961:2F62|SkyUK|ITV1 TT S
0963,0961:2F6C|SkyUK|ITV1 Central SW
0963,0961:2FA7|SkyUK|12199
0961:C350|SkyUK|Smash Hits !
0963,0961:C355|SkyUK|1356
0961:C357|SkyUK|Fox News
0963,0961:C481|SkyUK|Comedy Central
0961:C49B|SkyUK|Over 18 TV
0961:C49F|SkyUK|Eden +1
0963,0961:C4AE|SkyUK|Extreme Sports
0963,0961:C4E5|SkyUK|GEO News
0963,0961:C4EF|SkyUK|Ary Digital
0961:C4F4|SkyUK|Comedy Ctrl+1
0963,0961:C5A8|SkyUK|Racing UK
0961:C5AD|SkyUK|Racing World
0961:C5B2|SkyUK|Setanta Ireland
0961:C5B7|SkyUK|Setanta Sports
0963,0961:C5BC|SkyUK|ESPN America
0963,0961:C5C1|SkyUK|Liverpool FCTV
0961:C5C6|SkyUK|Arsenal TV
0963,0961:C6B2|SkyUK|Abu Dhabi TV
0961:C74D|SkyUK|ESPN Classic
0963,0961:C757|SkyUK|South For You
0963,0961:C7A3|SkyUK|Al Jazeera Eng
0963,0961:C7A6|SkyUK|Hallmark +1
0963,0961:C7A8|SkyUK|Hollywood TV
0963,0961:C7C9|SkyUK|Baby TV
0961:CB26|SkyUK|DMAX +1
0961:CB2C|SkyUK|SportxxxWives
0963,0961:CB2F|SkyUK|Just4us
0963,0961:CB30|SkyUK|The Other Side
0963,0961:CB48|SkyUK|SportxxxGirls
0961:CB5C|SkyUK|Disc.Know.+1
0963,0961:CB84|SkyUK|DMAX
0963,0961:CB87|SkyUK|3e
0961:CB8B|SkyUK|SportxxxBabes
0963,0961:CB8C|SkyUK|STAR One
0961:CB8F|SkyUK|CNBC
0963,0961:CB90|SkyUK|Africa Channel
0963,0961:CB91|SkyUK|STAR Gold
0961:CB9A|SkyUK|HBW TV
0961:CBB7|SkyUK|You TV2
0961:CBBD|SkyUK|Quiz Tv
0963,0961:CBBF|SkyUK|AAJ TAK
0963,0961:CBC4|SkyUK|Audi Channel
0963,0961:CBC9|SkyUK|Crime +1
0963,0961:CC06|SkyUK|Living2 +1
0963,0961:CC07|SkyUK|Virgin 1
0963,0961:CC08|SkyUK|Challenge+1
0963,0961:CC09|SkyUK|Bravo 2
0963,0961:CC0A|SkyUK|Living
0963,0961:CC0B|SkyUK|Virgin 1+1
0963,0961:CCB0|SkyUK|Investigation
0963,0961:CD14|SkyUK|GEO UK
0963,0961:CD19|SkyUK|AAG
0963,0961:CD32|SkyUK|Diva TV
0963,0961:CD37|SkyUK|ARY QTV
0961:CD41|SkyUK|Screenshop2
0961:CF77|SkyUK|AIT Movistar
0963,0961:CF79|SkyUK|Sahara One
0963,0961:CF7B|SkyUK|SAB TV
0963,0961:CFD5|SkyUK|Disc.Sci +1
0961:CFDA|SkyUK|Blue Kiss TV
0961:CFEE|SkyUK|Discovery Shed
0961:D007|SkyUK|LA Babes
0961:D00C|SkyUK|Animal Plnt +1
0961:D016|SkyUK|Disc.RT +1
0963,0961:D025|SkyUK|Nick Jr.2
0963,0961:D039|SkyUK|Aastha TV International
0961:D03E|SkyUK|NigeriaMovies
0961:D048|SkyUK|XPLICIT XXX
0961:D04D|SkyUK|YeSTERDAY +1
0963,0961:D057|SkyUK|Motors TV
0961:D05C|SkyUK|WWS
0963,0961:D061|SkyUK|MUTV
0963,0961:D0FC|SkyUK|Movies 24
0963,0961:D101|SkyUK|Movies 24+
0963,0961:D106|SkyUK|ARY Oneworld
0961:D156|SkyUK|psdtt
0961:D157|SkyUK|Spice Extreme from 21h CET
0963,0961:D158|SkyUK|Climax3 -1 From 22h CET
0963,0961:D159|SkyUK|Climax3 -2 From 21h CET
0963,0961:D15A|SkyUK|Climax3 -3 From 21h CET
0963,0961:D15B|SkyUK|Adult Channel from 21h CET
0963,0961:D15C|SkyUK|Playboy TV from 21h CET
0963,0961:D15D|SkyUK|Paul Raymondtv
0961:D2F0|SkyUK|Setanta Golf
0961:D2F1|SkyUK|Setanta Sports 1
0961:D2F2|SkyUK|Setanta Sports 2
0961:D2F3|SkyUK|Rangers TV
0961:D2F4|SkyUK|Celtic TV
0961:D2F5|SkyUK|Setanta News
0961:D2F6|SkyUK|Setanta Sports 1
0961:D2F7|SkyUK|Arsenal Replay
0963,0961:D2F9|SkyUK|Diva TV +1
0961:D2FA|SkyUK|Setanta Golf
0963,0961:D2FB|SkyUK|Sci-Fi+1
0961:D2FC|SkyUK|Setanta Sports 2
0961:D2FD|SkyUK|Rangers TV
0961:D2FE|SkyUK|Celtic TV
0963,0961:D2FF|SkyUK|Sci-Fi
0963,0961:D325|SkyUK|ATN
0961:D359|SkyUK|Real Estate +1
0963,0961:D35B|SkyUK|BabyFirst
0961:D3BE|SkyUK|Luxe TV HD
0961:D41C|SkyUK|DMAX +1.5
0963,0961:D421|SkyUK|Military
0963,0961:D426|SkyUK|Nickelodeon
0961:D42B|SkyUK|DMAX +2
0963,0961:D43F|SkyUK|The Style Ntwk
0963,0961:D444|SkyUK|Comedy Ctrl+1
0961:D44A|SkyUK|1896
0963,0961:D453|SkyUK|Nick Jr
0963,0961:D6DB|SkyUK|Nollywood
0963,0961:D749|SkyUK|AIT Int'l
0963,0961:D7A1|SkyUK|House of Fun
0961:D7A5|SkyUK|AT
0963,0961:D7AB|SkyUK|Comedy CtlX +1
0963,0961:D7BF|SkyUK|Television X
0963,0961:D7C0|SkyUK|TVX Amateur
0963,0961:D7C1|SkyUK|TVX FFWD
0963,0961:D7C2|SkyUK|TVX Brits
0963,0961:D7C3|SkyUK|redhot amateur
0963,0961:D7C4|SkyUK|redhot 40+
0961:D7C5|SkyUK|Pulse +45mins
0963,0961:D7C6|SkyUK|redhot fetish
0963,0961:D7C7|SkyUK|redhot girl girl
0963,0961:D7C8|SkyUK|redhot dd
0961:D7C9|SkyUK|Pulse +30mins
0961:D7CA|SkyUK|redhot just 18
0963,0961:D7CB|SkyUK|Gay TV UK
0961:D7CC|SkyUK|G2 Family
0963,0961:D7D3|SkyUK|NickToonsters
0963,0961:D804|SkyUK|Zee TV
0961:D809|SkyUK|Zee Cinema
0961:D813|SkyUK|Zee Punjabi
0961:D818|SkyUK|Zee Gujarati
0961:D81A|SkyUK|Jaagran
0963,0961:D83B|SkyUK|Rush HD
0963:0F27|SkyUK|SBO HD1
0963:0EE3|SkyUK|SBO HD2
0963:0F5C|SkyUK|ITV2 HD
0963:0F5D|SkyUK|ITV3 HD
0963:0F5E|SkyUK|ITV4 HD
0963:0F1E|SkyUK|Disney XD HD
0963:0F1D|SkyUK|Nickelodeon HD
0963:0F1C|SkyUK|Eden HD
0963:0F12|SkyUK|Channel 5 HD
0963:0F1B|SkyUK|Good Food HD
0963:0F1A|SkyUK|Sky Living HD
0963:0F24|SkyUK|E4 HD
0963:0EF8|SkyUK|Nat Geo HD
0963:0F0D|SkyUK|Sky Atlantic HD
0963:0EE4|SkyUK|Sky Classics HD
0963:0F28|SkyUK|Universal HD
0963:0F10|SkyUK|Comedy Central HD
0963:0EDF|SkyUK|MGM HD
0963:0EEC|SkyUK|Sky Indie HD
0963:0F0A|SkyUK|Sky News HD
0963:C4DB|SkyUK|Rush HD
0963:0F13|SkyUK|Sky Sp News HD
0963:0F09|SkyUK|Sky Sp News HD
0963:0EF2|SkyUK|Sky Sports HD4
0963:0EF3|SkyUK|Sky Sports HD4
0963:0F02|SkyUK|ESPN HD
0963:0F01|SkyUK|ESPN HD
0963:0F11|SkyUK|ESPN America HD
0963:0F0E|SkyUK|Sky 3D HD
0963:0516|SkyUK|Sky 3D HD
0963:0F0C|SkyUK|ITV1 HD
0963:0F0F|SkyUK|3855
0963:1091|SkyUK|ESPN
0963:1134|SkyUK|Sky Premiere
0963:1135|SkyUK|Sky Prem+1
0963:1136|SkyUK|Sky Thriller
0963:1220|SkyUK|Nat Geo
0963:1221|SkyUK|Nat Geo+1hr
0963:1222|SkyUK|Nat Geo Wild
0963:1223|SkyUK|FOX News
0963:1224|SkyUK|ESPN
0963:1268|SkyUK|Sky Atlantic
0963:13F3|SkyUK|Sky3+1
0963:151A|SkyUK|FX+2
0963:1581|SkyUK|Sky Sports 2
0963:1586|SkyUK|Disney XD+1
0963:15B8|SkyUK|Nickelodeon
0963:15B9|SkyUK|Nick Replay
0963:15BA|SkyUK|Nicktoons
0963:15BB|SkyUK|Nick Jr.
0963:1A94|SkyUK|Disney XD
0963:1612|SkyUK|Sky Mdn Greats
0963:1778|SkyUK|Channel One
0963:1843|SkyUK|Quest
0963:18AE|SkyUK|CBeebies
0963:1CA3|SkyUK|B4U Music
0963:1D1A|SkyUK|ITV1 Central S
0963:1D1B|SkyUK|ITV1 Central E
0963:1D38|SkyUK|ITV1 HD
0963:1DBA|SkyUK|Eden +1
0963:1DE2|SkyUK|YeSTERDAY +1
0963:232E|SkyUK|9006
0963:233E|SkyUK|Arsenal TV
0963:270F|SkyUK|10135
0963:2EE0|SkyUK|4Music
0963:2EEA|SkyUK|Kiss
0963:2EEF|SkyUK|Kerrang!
0963:2EF4|SkyUK|Smash Hits !
0963:2F23|SkyUK|Channel 4 HD
0963:C47C|SkyUK|Comedy Ctrl+1
0963:C4EB|SkyUK|AVAGO (cable)
0963:C50E|SkyUK|Ava Test
0963:C51C|SkyUK|Zee TV
0963:C521|SkyUK|Zee Cinema
0963:C526|SkyUK|Zing
0963:C52B|SkyUK|Zee Punjabi
0963:C530|SkyUK|Zee Cafe
0963:C5D0|SkyUK|Q
0963:C5D5|SkyUK|Magic UK
0963:C5DA|SkyUK|ESPN
0963:C7A7|SkyUK|Setanta Ireland
0963:C7A9|SkyUK|Premier Sports
0963:C7AC|SkyUK|51116
0963:CB2E|SkyUK|Cinemoi movies
0963:CB52|SkyUK|Northern Birds
0963:CBA6|SkyUK|52134
0963:CBA7|SkyUK|52135
0963:CC6A|SkyUK|Tiny Pop
0963:CC79|SkyUK|Tiny Pop +1
0963:CC83|SkyUK|The Vault
0963:CCB5|SkyUK|Animal Plnt +1
0963:CCBA|SkyUK|Disc.Sci +1
0963:CCBF|SkyUK|DMAX
0963:CCC4|SkyUK|DMAX +1
0963:CCC9|SkyUK|DMAX +2
0963:CCCE|SkyUK|Quest+1
0963:CCD3|SkyUK|Disc.History+1
0963:CCD8|SkyUK|Discovery Shed
0963:CCDD|SkyUK|Disc.RT +1
0963:CCE2|SkyUK|Home&Health+
0963:CD23|SkyUK|Max
0963:CD28|SkyUK|COLORS
0963:CD2D|SkyUK|52525 OBETV
0963:CF97|SkyUK|53143
0963:CF99|SkyUK|53145
0963:CFD0|SkyUK|E! Entertainm
0963:CFDF|SkyUK|Bangla TV
0963:D02F|SkyUK|LiveXXXBabes
0963:D031|SkyUK|Essex Babes
0963:D337|SkyUK|Blue Kiss TV
0963:D356|SkyUK|Travel Channel
0963:D430|SkyUK|STAR News
0963:D45D|SkyUK|54365
0963:D6EE|SkyUK|AHLEBAIT TV TV
0963:D7A7|SkyUK|Babestation
0963:D7AA|SkyUK|STAR One
0963:D7AC|SkyUK|Babeworld.tv
0963:D7BC|SkyUK|Ahlulbayt TV
0963:D7E6|SkyUK|Universal
0963,0961:2460|SkyUK|SkyRealLives 2
0961:D80E|SkyUK|Zee Music
0963:2477|SkyUK|8N2
```

back to [index](#index)

## **Eutelsat 5.0W**

### Bis.TV (REVIEW NEEDED)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.

last review: 2013-04-09 by: ???

```
###
### DVB-S - Bis.TV - Eutelsat 5.0W
###
0500:0066|FRANSAT|RTL9 BIS|TV|BIS.TV
0500:0067|FRANSAT|Offre BIS.TV|TV|BIS.TV
0500:00C8|FRANSAT|BFM Business|TV|BIS.TV
0500:00C9|FRANSAT|RTL9|TV|BIS.TV
0500:00CA|FRANSAT|MANGAS|TV|BIS.TV
0500:00CB|FRANSAT|AB 1|TV|BIS.TV
0500:00CC|FRANSAT|AB MOTEURS|TV|BIS.TV
0500:00CE|FRANSAT|GAME ONE|TV|BIS.TV
0500:00CF|FRANSAT|ESCALES|TV|BIS.TV
0500:00D0|FRANSAT|ANIMAUX|TV|BIS.TV
0500:00D1|FRANSAT|ENCYCLO|TV|BIS.TV
0500:00D2|FRANSAT|TOUTE L'HISTOIRE|TV|BIS.TV
0500:00D3|FRANSAT|CHASSE ET PECHE|TV|BIS.TV
0500:00D4|FRANSAT|ACTION|TV|BIS.TV
0500:00D6|FRANSAT|CINE FX|TV|BIS.TV
0500:00D7|FRANSAT|CINE POLAR|TV|BIS.TV
0500:00D8|FRANSAT|XXL|TV|BIS.TV
0500:00D9|FRANSAT|DORCEL TV|TV|BIS.TV
0500:00DA|FRANSAT|TV5 Monde FBS|TV|BIS.TV
0500:00DB|FRANSAT|TEVA|TV|BIS.TV
0500:00DC|FRANSAT|EQUIDIA|TV|BIS.TV
0500:0101|FRANSAT|France 2|TV|BIS.TV
0500:0104|FRANSAT|France 5|TV|BIS.TV
0500:0105|FRANSAT|France Ô|TV|BIS.TV
0500:0106|FRANSAT|LCP|TV|BIS.TV
0500:0110|FRANSAT|France 3|TV|BIS.TV
0500:012D|FRANSAT|TF1|TV|BIS.TV
0500:0130|FRANSAT|CANAL +|TV|BIS.TV
0500:0132|FRANSAT|M6|TV|BIS.TV
0500:0134|FRANSAT|D8|TV|BIS.TV
0500:0135|FRANSAT|W9|TV|BIS.TV
0500:0136|FRANSAT|TMC|TV|BIS.TV
0500:0137|FRANSAT|NT1|TV|BIS.TV
0500:0138|FRANSAT|NRJ12|TV|BIS.TV
0500:013A|FRANSAT|France 4|TV|BIS.TV
0500:013C|FRANSAT|i>TELE|TV|BIS.TV
0500:013D|FRANSAT|D17|TV|BIS.TV
0500:013E|FRANSAT|Gulli|TV|BIS.TV
0500:013F|FRANSAT|ARTE|TV|BIS.TV
0500:0191|FRANSAT|TF1 HD|TV|BIS.TV
0500:0192|FRANSAT|FRANCE 2 HD|TV|BIS.TV
0500:0193|FRANSAT|M6 HD|TV|BIS.TV
0500:0194|FRANSAT|ARTE HD|TV|BIS.TV
0500:019A|FRANSAT|BeIN Sport1 HD|TV|BIS.TV
0500:019B|FRANSAT|BeIN Sport2 HD|TV|BIS.TV
0500:019D|FRANSAT|BeIN Sport1 HD|TV|BIS.TV
0500:019E|FRANSAT|BeIN Sport2 HD|TV|BIS.TV
0500:01FB|FRANSAT|FRANSAT INFO|TV|BIS.TV
0500:01FC|FRANSAT|BeIN Sport1 SD|TV|BIS.TV
0500:01FD|FRANSAT|BeIN Sport2 SD|TV|BIS.TV
0500:01FE|FRANSAT|BeIN Sport1 SD|TV|BIS.TV
0500:01FF|FRANSAT|BeIN Sport2 SD|TV|BIS.TV
0500:0200|FRANSAT|BeIN Sport Actu|TV|BIS.TV
0500:0259|FRANSAT|TV5 Monde FBS|TV|BIS.TV
0500:025A|FRANSAT|La Chaine Theatres|TV|BIS.TV
0500:0B80|FRANSAT|Gong Base|TV|BIS.TV
0500:0B82|FRANSAT|Mirabelle TV|TV|BIS.TV
0500:0B83|FRANSAT|Vosges TV|TV|BIS.TV
0500:0B84|FRANSAT|TeleGrenoble Isere|TV|BIS.TV
0500:0B85|FRANSAT|KTO|TV|BIS.TV
0500:0B86|FRANSAT|TLP Manosque|TV|BIS.TV
0500:0B89|FRANSAT|TV8 MONT BLANC|TV|BIS.TV
0500:0BB8|FRANSAT|HD1|TV|BIS.TV
0500:0BB9|FRANSAT|L'Equipe 21|TV|BIS.TV
0500:0BBA|FRANSAT|6ter|TV|BIS.TV
0500:0BBC|FRANSAT|RMC Decouverte|TV|BIS.TV
0500:0BBD|FRANSAT|Cherie 25|TV|BIS.TV
0500:1000|FRANSAT|France 3 National|TV|BIS.TV
0500:1001|FRANSAT|France 3 Amiens|TV|BIS.TV
0500:1002|FRANSAT|France 3 Besancon|TV|BIS.TV
0500:1003|FRANSAT|France 3 Bordeaux|TV|BIS.TV
0500:1004|FRANSAT|France 3 Caen|TV|BIS.TV
0500:1005|FRANSAT|France 3 Clermont-Ferrand|TV|BIS.TV
0500:1006|FRANSAT|France 3 Dijon|TV|BIS.TV
0500:1007|FRANSAT|France 3 Grenoble|TV|BIS.TV
0500:1008|FRANSAT|France 3 Lille|TV|BIS.TV
0500:1009|FRANSAT|France 3 Limoges|TV|BIS.TV
0500:1010|FRANSAT|France 3 Lyon|TV|BIS.TV
0500:1011|FRANSAT|France 3 Marseille|TV|BIS.TV
0500:1012|FRANSAT|France 3 Montpellier|TV|BIS.TV
0500:1013|FRANSAT|France 3 Nancy|TV|BIS.TV
0500:1014|FRANSAT|France 3 Nantes|TV|BIS.TV
0500:1015|FRANSAT|France 3 Nice|TV|BIS.TV
0500:1016|FRANSAT|France 3 Orleans|TV|BIS.TV
0500:1017|FRANSAT|France 3 Paris|TV|BIS.TV
0500:1018|FRANSAT|France 3 Poitiers|TV|BIS.TV
0500:1019|FRANSAT|France 3 Reims|TV|BIS.TV
0500:1020|FRANSAT|France 3 Rennes|TV|BIS.TV
0500:1021|FRANSAT|France 3 Rouen|TV|BIS.TV
0500:1022|FRANSAT|France 3 Strasbourg|TV|BIS.TV
0500:1023|FRANSAT|France 3 Toulouse|TV|BIS.TV
0500:1024|FRANSAT|France 3 Via Stella|TV|BIS.TV
```

back to [index](#index)

## **Eutelsat 9.0E**

###

Kabelkiosk (REVIEW NEEDED)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.

last review: 2012-06-26 by: ???

Additional Information:

+   also available via DVB-C in some regions in Germany

```
###
### DVB-S/DVB-C - Kabelkiosk - Eutelsat 9.0E & German Cable
###
09AF,0B00:026E|Kabelkiosk|Trace Tropical
09AF,0B00:0A5A|Kabelkiosk|EuroNews Spanish
09AF,0B00:0A8C|Kabelkiosk|EuroNews Russia
09AF,0B00:0A96|Kabelkiosk|EuroNews Portuguese
09AF,0B00:0AB4|Kabelkiosk|EuroNews German
09AF.0B00:0AA0|Kabelkiosk|EuroNews French
09AF,0B00:0AAA|Kabelkiosk|EuroNews English
09AF,0B00:4EF3|Kabelkiosk|Discovery Channel
09AF,0B00:0BB8|Kabelkiosk|BonGusto
09AF,0B00:026F|Kabelkiosk|Animal Planet
09AF,0B00:39DE|Kabelkiosk|RTVi Nashe Kino
09AF,0B00:39DC|Kabelkiosk|RTVi Europe
09AF,0B00:39DD|Kabelkiosk|RTVi Detskii Mir-Teleklub
09AF,0B00:00CC|Kabelkiosk|Channel 21
09AF,0B00:4EF0|Kabelkiosk|MTV Germany
09AF,0B00:00D5|Kabelkiosk|Comedy Central Germany
09AF,0B00:00D5|Kabelkiosk|Nick Germany
09AF,0B00:00D8|Kabelkiosk|VIVA
09AF,0B00:00D9|Kabelkiosk|Sixx
09AF,0B00:00DA|Kabelkiosk|HSE24
09AF,0B00:00DB|Kabelkiosk|Russia Today
09AF,0B00:00DD|Kabelkiosk|1-2-3.tv
09AF,0B00:00DE|Kabelkiosk|iMusic 1
09AF,0B00:00DF|Kabelkiosk|Yavido Clips
09AF,0B00:00E0|Kabelkiosk|CNN International Europe
09AF,0B00:00E1|Kabelkiosk|CNBC Europe
09AF,0B00:00E2|Kabelkiosk|DMAX
09AF,0B00:00E3|Kabelkiosk|Das Vierte
09AF,0B00:00C9|Kabelkiosk|RTL Television
09AF,0B00:00CA|Kabelkiosk|RTL 2
09AF,0B00:00CB|Kabelkiosk|Super RTL
09AF,0B00:00CD|Kabelkiosk|VOX
09AF,0B00:00CE|Kabelkiosk|n-tv
09AF,0B00:00CF|Kabelkiosk|ProSieben
09AF,0B00:00D0|Kabelkiosk|Sat 1
09AF,0B00:00D1|Kabelkiosk|Kabel 1
09AF,0B00:00D2|Kabelkiosk|N24
09AF,0B00:01A0|Kabelkiosk|Sixx HD
09AF,0B00:0191|Kabelkiosk|BBC World News
09AF,0B00:0192|Kabelkiosk|Bloomberg Europe
09AF,0B00:0193|Kabelkiosk|TV5 Monde Europe
09AF,0B00:0194|Kabelkiosk|Tele 5
09AF,0B00:0195|Kabelkiosk|QVC Germany
09AF,0B00:0198|Kabelkiosk|Luxe TV
09AF,0B00:0199|Kabelkiosk|Deluxe Music
09AF,0B00:019A|Kabelkiosk|TV Gusto
09AF,0B00:019B|Kabelkiosk|Sport 1
09AF,0B00:019C|Kabelkiosk|Deutsches Musik Fernsehn
09AF,0B00:019D|Kabelkiosk|Poker Channel
09AF,0B00:019E|Kabelkiosk|Uprom TV
09AF,0B00:019F|Kabelkiosk|Bibel TV
09AF,0B00:0802|Kabelkiosk|Pink Plus
09AF,0B00:09C4|Kabelkiosk|Euro Star
09AF,0B00:09F6|Kabelkiosk|RTR Planeta
09AF,0B00:0A28|Kabelkiosk|EuroNews Italy
09AF,0B00:0ABE|Kabelkiosk|Body In Balance
09AF,0B00:0B22|Kabelkiosk|ORT International
09AF,0B00:0B54|Kabelkiosk|Lig TV
09AF,0B00:0B86|Kabelkiosk|Kinowelt TV
09AF,0B00:0BEA|Kabelkiosk|Animax Deutschland
09AF,0B00:012D|Kabelkiosk|RTL Television HD
09AF,0B00:012E|Kabelkiosk|VOX HD
09AF,0B00:012F|Kabelkiosk|Sat. 1 HD
09AF,0B00:0130|Kabelkiosk|Prosieben HD
09AF,0B00:0131|Kabelkiosk|Kabel Eins HD
09AF,0B00:0132|Kabelkiosk|unnamed channel
09AF,0B00:0133|Kabelkiosk|TVE International
09AF,0B00:0134|Kabelkiosk|unnamed channel
09AF,0B00:0135|Kabelkiosk|Poker Channel
09AF,0B00:041A|Kabelkiosk|Show Türk
09AF,0B00:044C|Kabelkiosk|Fox Turk
09AF,0B00:047E|Kabelkiosk|Kanal 7 International
09AF,0B00:04B0|Kabelkiosk|Euro D
09AF,0B00:04E2|Kabelkiosk|ATV Avrupa
09AF,0B00:0514|Kabelkiosk|Rai Uno
09AF,0B00:0546|Kabelkiosk|Mediaset Italia
09AF,0B00:0578|Kabelkiosk|Rai Tre
09AF,0B00:05DC|Kabelkiosk|TV Polonia
09AF,0B00:060E|Kabelkiosk|TRT International
09AF,0B00:0640|Kabelkiosk|Türkmax
09AF,0B00:0265|Kabelkiosk|C-Music
09AF,0B00:0266|Kabelkiosk|Lust Pur
09AF,0B00:0267|Kabelkiosk|Hustler TV
09AF,0B00:0268|Kabelkiosk|Spiegel TV Wissen|TV
09AF,0B00:0269|Kabelkiosk|ESPN Classic Sport Europe
09AF,0B00:026B|Kabelkiosk|Travel Channel
09AF,0B00:026C|Kabelkiosk|TVN International Europe
09AF,0B00:026D|Kabelkiosk|Auto Motor Sport Channel
09AF,0B00:4E85|Kabelkiosk|13th Street
09AF,0B00:4E86|Kabelkiosk|Sci-Fi Deutschland
09AF,0B00:4E8B|Kabelkiosk|National Geographic Germany
09AF,0B00:4E8C|Kabelkiosk|AXN Deutschland
09AF,0B00:4E8F|Kabelkiosk|Silverline
09AF,0B00:4E91|Kabelkiosk|Boomerang
09AF,0B00:4E92|Kabelkiosk|Dt. Wetterfernsehen
09AF,0B00:0DB2|Kabelkiosk|Duck TV HD
09AF,0B00:00DC|Kabelkiosk|Eurosport Germany
09AF,0B00:4EF6|Kabelkiosk|FOX HD
09AF,0B00:00E4|Kabelkiosk|HSE24 extra
09AF,0B00:4E95|Kabelkiosk|Fuel TV
09AF,0B00:4E96|Kabelkiosk|History Channel Germany
09AF,0B00:4E97|Kabelkiosk|TNT Film
09AF,0B00:4E98|Kabelkiosk|Cartoon Network Germany
09AF,0B00:4E99|Kabelkiosk|Biography Channel Germany
09AF,0B00:4EE9|Kabelkiosk|Your Family
09AF,0B00:4EEA|Kabelkiosk|Romance TV
09AF,0B00:4EEC|Kabelkiosk|BBC Entertainment
09AF,0B00:4EED|Kabelkiosk|E! Germany
09AF,0B00:4EEF|Kabelkiosk|Sportdigital.tv
09AF,0B00:4EF2|Kabelkiosk|Gute Laune TV
09AF,0B00:4EF4|Kabelkiosk|Nick Junior
09AF,0B00:4EF5|Kabelkiosk|VH-1 Classic
09AF,0B00:4EFB|Kabelkiosk|Volksmusik TV
09AF,0B00:0802|Kabelkiosk|Pink Plus
09AF,0B00:09C4|Kabelkiosk|Euro Star
09AF,0B00:09F6|Kabelkiosk|RTR Planeta
09AF,0B00:0A28|Kabelkiosk|EuroNews
09AF,0B00:0ABE|Kabelkiosk|Body In Balance
09AF,0B00:0B22|Kabelkiosk|Channel One Russia
09AF,0B00:0B54|Kabelkiosk|Lig TV
09AF,0B00:0B86|Kabelkiosk|Kinowelt TV
09AF,0B00:0BEA|Kabelkiosk|Animax Deutschland
09AF,0B00:041A|Kabelkiosk|Show TV
09AF,0B00:044C|Kabelkiosk|NTV Avrupa
09AF,0B00:047E|Kabelkiosk|Kanal 7 International
09AF,0B00:04B0|Kabelkiosk|Euro D
09AF,0B00:04E2|Kabelkiosk|ATV Avrupa
09AF,0B00:0514|Kabelkiosk|Rai Uno
09AF,0B00:0546|Kabelkiosk|Rai Due
09AF,0B00:0578|Kabelkiosk|Rai Tre
09AF,0B00:05DC|Kabelkiosk|TV Polonia
09AF,0B00:060E|Kabelkiosk|TRT International
09AF,0B00:0640|Kabelkiosk|Türkmax
09AF,0B00:4E85|Kabelkiosk|13th Street
09AF,0B00:4E86|Kabelkiosk|Sci-Fi Deutschland
09AF,0B00:4E8B|Kabelkiosk|National Geographic Germany
09AF,0B00:4E8C|Kabelkiosk|AXN Deutschland
09AF,0B00:4E8F|Kabelkiosk|Silverline
09AF,0B00:4E91|Kabelkiosk|Boomerang
09AF,0B00:4E95|Kabelkiosk|ESPN America
09AF,0B00:4E96|Kabelkiosk|History Channel Germany
09AF,0B00:4E97|Kabelkiosk|TCM Germany
09AF,0B00:4E98|Kabelkiosk|Cartoon Network Germany
09AF,0B00:4E99|Kabelkiosk|Biography Channel Germany [
09AF,0B00:4EE9|Kabelkiosk|Your Family
09AF,0B00:4EEA|Kabelkiosk|Romance TV
09AF,0B00:4EEB|Kabelkiosk|RTV International
09AF,0B00:4EEC|Kabelkiosk|BBC Prime
09AF,0B00:4EED|Kabelkiosk|E! Polska
09AF,0B00:4EEF|Kabelkiosk|Sportdigital.tv
09AF,0B00:0265|Kabelkiosk|Adult Channel
09AF,0B00:0266|Kabelkiosk|Lust Pur
09AF,0B00:0267|Kabelkiosk|Hustler TV
09AF,0B00:0269|Kabelkiosk|ESPN Classic Sport Europe
09AF,0B00:026B|Kabelkiosk|Travel Channel
09AF,0B00:026D|Kabelkiosk|A. -
```

back to [index](#index)

## **Hispasat 30.0W**

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


### Zon (TVcabo)

last review: 2014-03-10 by: Humorator

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
###
### DVB-S - Zon (TVcabo) Portugal - Hispasat 30.0W
###
1802:0042|Zon|Caza y Pesca
1802:0064|Zon|24 HORAS
1802:0065|Zon|RTP Informação
1802:0067|Zon|RTP Açores
1802:0068|Zon|RTP Madeira
1802:0069|Zon|Benfica TV 1
1802:006a|Zon|BTV 2
1802:00e7|Zon|SIC Mulher
1802:00e8|Zon|TLC
1802:00e9|Zon|FOX Movies
1802:00ea|Zon|Eurosport News
1802:00eb|Zon|The Biography Channel
1802:00ec|Zon|Motors TV
1802:00ed|Zon|VH1
1802:00ee|Zon|Mezzo
1802:00ef|Zon|TVE Internacional
1802:00f0|Zon|Biggs
1802:00f1|Zon|TVE 24h
1802:00f2|Zon|CNN
1802:00f3|Zon|SKY News
1802:00f4|Zon|BBC World News
1802:00f5|Zon|EuroNews
1802:00f6|Zon|France 24
1802:00f7|Zon|Sport TV Golfe
1802:00f8|Zon|Toros TV
1802:00f9|Zon|Hot
1802:00fa|Zon|Disney Junior
1802:012d|Zon|Sport TV 2
1802:0130|Zon|Globo
1802:0131|Zon|TVI 24
1802:0132|Zon|Sport TV 3
1802:0134|Zon|Record Internacional
1802:0135|Zon|Sport TV Live
1802:0138|Zon|Eurosport
1802:0139|Zon|Canal Hollywood Portugal
1802:013b|Zon|MTV Portugal
1802:013c|Zon|Canal de Historia
1802:013d|Zon|Discovery Channel Spain & Portugal
1802:013e|Zon|Odisseia
1802:015f|Zon|NatGeo Wild
1802:0160|Zon|SIC Radical
1802:0161|Zon|Porto Canal
1802:0163|Zon|RTP Memoria
1802:0165|Zon|Fuel TV
1802:0167|Zon|E! Entertainment TV
1802:0168|Zon|CBS Reality
1802:0169|Zon|Fashion TV
1802:016a|Zon|RTP Africa
1802:016b|Zon|Bloomberg Europe
1802:016e|Zon|TV Galicia
1802:016f|Zon|PFC
1802:0171|Zon|Playboy TV
1802:0172|Zon|Eurosport 2
1802:0191|Zon|AXN Black HD
1802:0192|Zon|24 Kitchen HD
1802:0193|Zon|FOX Crime Portugal HD
1802:0195|Zon|Travel Channel HD
1802:0196|Zon|AXN White HD
1802:0199|Zon|Eurosport HD
1802:019a|Zon|Fox Life HD Spain & Portugal
1802:01c3|Zon|Sport TV 1 HD
1802:01c4|Zon|Sport TV 2 HD
1802:01c5|Zon|Sport TV Live HD
1802:01c6|Zon|National Geographic HD UK
1802:01c7|Zon|AXN HD
1802:01c8|Zon|FOX HD
1802:01c9|Zon|BTV 2 HD
1802:01f5|Zon|AR TV
1802:01f8|Zon|MCM TOP
1802:01fa|Zon|BBC Entertainment
1802:0201|Zon|Canção Nova
1802:0202|Zon|VH1 Classic
1802:02c4|Zon|Canal Panda
1802:0321|Zon|SIC Noticias
1802:0324|Zon|TVCine 4 HD
1802:0327|Zon|Discovery HD Showcase
1802:0328|Zon|Nickelodeon Portugal
1802:0329|Zon|NBA TV
1802:032a|Zon|WooHoo
1802:032b|Zon|RTP 1
1802:032c|Zon|RTP 2
1802:032d|Zon|SIC
1802:032e|Zon|TVI
1802:032f|Zon|Caça & Pesca
1802:0330|Zon|TVI
1802:0331|Zon|BabyFirst
1802:0366|Zon|Sport TV
1802:0384|Zon|Disney Channel Portugal
1802:03b0|Zon|MOV HD
1802:03b2|Zon|ETV HD
1802:03b3|Zon|TVCine HD
1802:0517|Zon|SIC Caras  Starting on December 6th.
1802:0518|Zon|Cartoon Network
1802:051c|Zon|Nautical Channel
1802:0522|Zon|CNBC Europe
1802:0526|Zon|TV Globo Portugal
1802:057f|Zon|Benfica TV 2 HD
1802:0642|Zon|TVCine 3 HD
1802:0649|Zon|TV Séries HD
1802:064a|Zon|TVCine 2 HD
1802:0bbf|Zon|Caça & Pesca
1802:0bc0|Zon|Canal 24 Horas
1802:0bc3|Zon|NHK World TV
```

back to [index](#index)

## **Hotbird 13.0E**

### Bis.TV (REVIEW NEEDED)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.

last review: 2013-02-18 by: ???

```
###
### DVB-S - Bis.TV - Hotbird 13.0E
###
0500:012D|FRANSAT|TF1 HD|TV|HD
0500:012E|FRANSAT|France 2 HD|TV|HD
0500:012F|FRANSAT|France 3 HD|TV|HD
0500:0131|FRANSAT|France 5|TV|
0500:0132|FRANSAT|M6 HD|TV|HD
0500:0134|FRANSAT|D8|TV
0500:0135|FRANSAT|W9|TV
0500:0136|FRANSAT|Tele Monte Carlo|TV|
0500:0137|FRANSAT|NT1|TV|
0500:0138|FRANSAT|NRJ 12|TV|
0500:0139|FRANSAT|LCP - La Chaine Parlementaire|TV|
0500:013A|FRANSAT|France 4|TV|
0500:019A|FRANSAT|BeIN Sport 1 HD|TV|HD
0500:019B|FRANSAT|BeIN Sport 2 HD|TV|HD
0500:01A1|FRANSAT|D17|TV|
0500:01A2|FRANSAT|Gulli|TV|
0500:01A3|FRANSAT|France O|TV|
0500:01C3|FRANSAT|RTL9|TV|
0500:01C4|FRANSAT|AB1|TV|
0500:01C5|FRANSAT|AB Moteurs|TV|
0500:01C6|FRANSAT|Animaux|TV|
0500:01C7|FRANSAT|Chasse et Peche|TV|
0500:01C8|FRANSAT|Cine FX|TV|
0500:01C9|FRANSAT|Cine Polar|TV|
0500:01CA|FRANSAT|Escales|TV|
0500:01CB|FRANSAT|Toute l'Histoire|TV|
0500:01CD|FRANSAT|Action|TV|
0500:01CE|FRANSAT|Mangas|TV|
0500:01CF|FRANSAT|Encyclo|TV|
0500:01D1|FRANSAT|Lucky Jack|TV|
0500:01D2|FRANSAT|Téva|TV|Entertainment|
0500:01D4|FRANSAT|XXL|TV|
0500:01D5|FRANSAT|XXL PL|TV|
0500:01F7|FRANSAT|M6|TV|
0500:01F8|FRANSAT|Game One|TV
0500:364C|FRANSAT|Dorcel TV|TV|
0500:445E|FRANSAT|Golf Channel France|TV|
0500:4460|FRANSAT|Stylia|TV|
0500:446A|FRANSAT|Equidia Live|TV|
```

back to [index](#index)

### Cyfra +(REVIEW NEEDED)

last review: ??? by: ???

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
###
### DVB-S - Cyfra+ - Hotbird 13.0E
###
0100:0e06|Cyfra +|BBC HD
0100:3B63|Cyfra +|Eurosport 2 HD
0100:3B65|Cyfra +|NatGeo Wild HD
0100:3B66|Cyfra +|Animal Planet HD
0100:3B67|Cyfra +|Cinemax HD Eastern Europe
0100:0001|Cyfra +|MTVNHD
0100:0002|Cyfra +|MTV Polska
0100:0004|Cyfra +|VH-1 Polska
0100:0016|Cyfra +|MTV Polska.
0100:0018|Cyfra +|VH1 Polska.
1803,0100:1149|Cyfra +|CANAL+ 3D
1803,0100:32DD|Cyfra +|CANAL+ FILM HD
1803,0100:32DC|Cyfra +|CANAL+ HD
1803,0100:32DE|Cyfra +|CANAL+ SPORT HD
1803,0100:32E1|Cyfra +|FILMBOX HD
1803,0100:3D63|Cyfra +|HBO COMEDY HD
1803,0100:32DF|Cyfra +|NATGEO HD
1803,0100:32E2|Cyfra +|TVP HD
1803,0100:3315|Cyfra +|ESP HD
1803,0100:3310|Cyfra +|SP HD Bulgaria
1803,0100:330A|Cyfra +|ESP HD Czech
1803,0100:3309|Cyfra +|ESP HD Dutch
1803,0100:3313|Cyfra +|ESP HD ECH
1803,0100:330B|Cyfra +|ESP HD German
1803,0100:3317|Cyfra +|ESP HD Greek
1803,0100:330F|Cyfra +|ESP HD Hungarian
1803,0100:3305|Cyfra +|ESP HD Intl
1803,0100:3311|Cyfra +|ESP HD Italy
1803,0100:330E|Cyfra +|ESP HD Polish
1803,0100:330D|Cyfra +|ESP HD Portuguese
1803,0100:3312|Cyfra +|ESP HD Romania
1803,0100:3308|Cyfra +|ESP HD Russian
1803,0100:3316|Cyfra +|ESP HD Serbia
1803,0100:3314|Cyfra +|ESP HD Spain
1803,0100:3307|Cyfra +|ESP HD Turk
1803,0100:331A|Cyfra +|EUROSPORT HD
1803,0100:3319|Cyfra +|EUROSPORT HD
1803,0100:3318|Cyfra +|EUROSPORT HD PL
1803,0100:12E1|Cyfra +|.CANAL+ FILM
1803,0100:12E3|Cyfra +|CANAL+
1803,0100:12E4|Cyfra +|CANAL+ FILM
1803,0100:12E5|Cyfra +|CANAL+ SPORT
1803,0100:1147|Cyfra +|CANAL+ Sport 2
1803,0100:114E|Cyfra +|13TH STREET
1803,0100:1134|Cyfra +|4fun.TV
1803,0100:13F4|Cyfra +|5108
1803,0100:12C5|Cyfra +|ALE KINO
1803,0100:1402|Cyfra +|ANIMAL PLANET
1803,0100:12C1|Cyfra +|CANAL+
1803,0100:12C2|Cyfra +|CANAL+ FILM
1803,0100:113E|Cyfra +|CANAL+ GOL
1803,0100:12C9|Cyfra +|CANAL+ SPORT
1803,0100:113D|Cyfra +|CANAL+Sport 2
1803,0100:13F7|Cyfra +|CINEMAX
1803,0100:1406|Cyfra +|CLUB TV
1803,0100:3D55|Cyfra +|DISCOVERY SCIENCE
1803,0100:3D57|Cyfra +|DISCOVERY WORLD
1803,0100:12CB|Cyfra +|DOMO
1803,0100:130B|Cyfra +|DTV CABLE AL
1803,0100:1309|Cyfra +|DTV CABLE JE
1803,0100:130A|Cyfra +|DTV CABLE KU
1803,0100:117D|Cyfra +|DTV CABLE MI
1803,0100:117C|Cyfra +|DTV CABLE PL
1803,0100:130C|Cyfra +|DTV CABLE ZI
1803,0100:3D5B|Cyfra +|EDUSAT
1803,0100:1153|Cyfra +|ESP
1803,0100:3D61|Cyfra +|Filmbox
1803,0100:3D60|Cyfra +|Filmbox Extra
1803,0100:3D62|Cyfra +|Filmbox Family
1803,0100:12DE|Cyfra +|H test 1
1803,0100:12DF|Cyfra +|H test 2
1803,0100:12E0|Cyfra +|H test 3
1803,0100:114D|Cyfra +|HBO
1803,0100:1150|Cyfra +|HBO COMEDY
1803,0100:114F|Cyfra +|HBO 2
1803,0100:1139|Cyfra +|HISTORY
1803,0100:13F5|Cyfra +|ITV
1803,0100:13F0|Cyfra +|KINO POLSKA
1803,0100:12C4|Cyfra +|KUCHNIA.TV
1803,0100:1137|Cyfra +|MINI MINI
1803,0100:1132|Cyfra +|Movies 24
1803,0100:3D5D|Cyfra +|MTV ROCKS
1803,0100:3D5E|Cyfra +|NATGEO
1803,0100:3D5F|Cyfra +|ORANGE INFO
1803,0100:1135|Cyfra +|Orange Sport
1803,0100:1136|Cyfra +|PLANETE
1803,0100:3D5A|Cyfra +|POLONIA 1
1803,0100:13F8|Cyfra +|PULS
1803,0100:3D59|Cyfra +|TELE5
1803,0100:13F1|Cyfra +|TRACE TV
1803,0100:13ED|Cyfra +|TV POLONIA
1803,0100:12C7|Cyfra +|TVP 1
1803,0100:12C8|Cyfra +|TVP 2
1803,0100:13F6|Cyfra +|TVP INFO
1803,0100:13F9|Cyfra +|TVP Kultura
1803,0100:13EE|Cyfra +|TVS
1803,0100:12C6|Cyfra +|Zig Zap
1803,0100:1407|Cyfra +|ZONE REALITY
```

back to [index](#index)

###

Cyfrowy Polsat

last review: 2014-03-10 by: Humorator

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


Additional information:

+   all channels added even unnecessary ones

```
###
### DVB-S - Cyfrowy Polsat - Hotbird 13.0E
###
0000,1803,1861:0000|Cyfrowy Polsat|Test11
0000,1803,1861:0001|Cyfrowy Polsat|MTV Live HD
0000,1803,1861:0001|Cyfrowy Polsat|Universal Polska
0000,1803,1861:0002|Cyfrowy Polsat|MTV Polska
0000,1803,1861:0002|Cyfrowy Polsat|Sci-Fi Eastern Europe
0000,1803,1861:0003|Cyfrowy Polsat|13th Street Polska
0000,1803,1861:0004|Cyfrowy Polsat|Comedy Central Family Polska
0000,1803,1861:0005|Cyfrowy Polsat|Viva Polska
0000,1803,1861:0007|Cyfrowy Polsat|VH-1 (Video Hits One)
0000,1803,1861:000a|Cyfrowy Polsat|Comedy Central Polska
0000,1803,1861:000b|Cyfrowy Polsat|Nickelodeon Europe
0000,1803,1861:0015|Cyfrowy Polsat|MTV Live HD
0000,1803,1861:001e|Cyfrowy Polsat|Nick Junior
0000,1803,1861:001f|Cyfrowy Polsat|Nickelodeon HD
0000,1803,1861:0020|Cyfrowy Polsat|B
0000,1803,1861:0021|Cyfrowy Polsat|Consumer Cam
0000,1803,1861:0033|Cyfrowy Polsat|Samsung2
0000,1803,1861:0036|Cyfrowy Polsat|HD_3000_FS
0000,1803,1861:0065|Cyfrowy Polsat|Polsat News
0000,1803,1861:0066|Cyfrowy Polsat|TVP Seriale
0000,1803,1861:0067|Cyfrowy Polsat|Polsat Sport
0000,1803,1861:0068|Cyfrowy Polsat|Polsat Film
0000,1803,1861:0069|Cyfrowy Polsat|Comedy Central Polska
0000,1803,1861:006a|Cyfrowy Polsat|Nickelodeon Polska
0000,1803,1861:006b|Cyfrowy Polsat|Kino Polska
0000,1803,1861:006c|Cyfrowy Polsat|Polsat Sport Extra
0000,1803,1861:0c1d|Cyfrowy Polsat|Polsat Sport HD
0000,1803,1861:0c1e|Cyfrowy Polsat|Polsat Sport HD
0000,1803,1861:0c1f|Cyfrowy Polsat|Fox Life HD Poland
0000,1803,1861:0c20|Cyfrowy Polsat|HBO HD
0000,1803,1861:0c21|Cyfrowy Polsat|HBO HD Polska
0000,1803,1861:0c22|Cyfrowy Polsat|TVP 2 HD
0000,1803,1861:0c23|Cyfrowy Polsat|Polsat HD
0000,1803,1861:0c24|Cyfrowy Polsat|Polsat Sport Extra HD
0000,1803,1861:0c25|Cyfrowy Polsat|AXN HD Polska
0000,1803,1861:0c26|Cyfrowy Polsat|Cinemax 2 HD
0000,1803,1861:0c27|Cyfrowy Polsat|Fox HD Polska
0000,1803,1861:0c28|Cyfrowy Polsat|Polsat Sport Extra HD
0000,1803,1861:0c29|Cyfrowy Polsat|Cinemax 2 HD
0000,1803,1861:0c2f|Cyfrowy Polsat|History Channel HD Polska
0000,1803,1861:0c3f|Cyfrowy Polsat|Eurosport
0000,1803,1861:0c40|Cyfrowy Polsat|Eurosport 2
0000,1803,1861:0dc4|Cyfrowy Polsat|TVP Historia
0000,1803,1861:0dc5|Cyfrowy Polsat|TVP Historia
0000,1803,1861:0dd7|Cyfrowy Polsat|
0000,1803,1861:0dd8|Cyfrowy Polsat|
0000,1803,1861:0e06|Cyfrowy Polsat|BBC HD Nordic, Turkey & Poland
0000,1803,1861:0e09|Cyfrowy Polsat|HBO 2 HD Polska
0000,1803,1861:0e0a|Cyfrowy Polsat|HBO Comedy HD Polska
0000,1803,1861:1000|Cyfrowy Polsat|Radio PIN
0000,1803,1861:1001|Cyfrowy Polsat|Moje Polskie Radio
0000,1803,1861:1002|Cyfrowy Polsat|RMF FM
0000,1803,1861:1003|Cyfrowy Polsat|RMF MAXXX
0000,1803,1861:1004|Cyfrowy Polsat|Radio Zet
0000,1803,1861:1005|Cyfrowy Polsat|Antyradio
0000,1803,1861:1006|Cyfrowy Polsat|Radio Plus
0000,1803,1861:1007|Cyfrowy Polsat|Radio 100,1 FM Zlote Przeboje
0000,1803,1861:1008|Cyfrowy Polsat|TOK FM
0000,1803,1861:1009|Cyfrowy Polsat|103,7 Roxy FM
0000,1803,1861:100a|Cyfrowy Polsat|Radio Eska ROCK
0000,1803,1861:100b|Cyfrowy Polsat|Radio Bajka
0000,1803,1861:10d7|Cyfrowy Polsat|TVN
0000,1803,1861:10d8|Cyfrowy Polsat|TVN 24
0000,1803,1861:10d9|Cyfrowy Polsat|TVN Siedem
0000,1803,1861:10dd|Cyfrowy Polsat|TTV
0000,1803,1861:10de|Cyfrowy Polsat|TVN Meteo
0000,1803,1861:10df|Cyfrowy Polsat|TVN Turbo
0000,1803,1861:10e0|Cyfrowy Polsat|TVN Style
0000,1803,1861:10e2|Cyfrowy Polsat|TVN 24 Biznes i Swiat
0000,1803,1861:114d|Cyfrowy Polsat|HBO Polska
0000,1803,1861:114f|Cyfrowy Polsat|HBO 2 Polska
0000,1803,1861:1150|Cyfrowy Polsat|HBO Comedy Polska
0000,1803,1861:116b|Cyfrowy Polsat|History Channel Eastern Europe
0000,1803,1861:1248|Cyfrowy Polsat|13th Street Polska
0000,1803,1861:12c7|Cyfrowy Polsat|TVP 1
0000,1803,1861:12c8|Cyfrowy Polsat|TVP 2
0000,1803,1861:1360|Cyfrowy Polsat|Daring! TV
0000,1803,1861:13f0|Cyfrowy Polsat|Kino Polska
0000,1803,1861:13f4|Cyfrowy Polsat|Fox Polska
0000,1803,1861:13f6|Cyfrowy Polsat|TVP Info
0000,1803,1861:13f8|Cyfrowy Polsat|TV Puls
0000,1803,1861:1402|Cyfrowy Polsat|Animal Planet Poland
0000,1803,1861:1406|Cyfrowy Polsat|CBS Drama
0000,1803,1861:1407|Cyfrowy Polsat|CBS Reality
0000,1803,1861:1416|Cyfrowy Polsat|TV PULS
0000,1803,1861:141a|Cyfrowy Polsat|CINEMAX
0000,1803,1861:1c85|Cyfrowy Polsat|Polsat Romans
0000,1803,1861:1c86|Cyfrowy Polsat|AXN White Poland
0000,1803,1861:1c87|Cyfrowy Polsat|AXN Black Poland
0000,1803,1861:1c88|Cyfrowy Polsat|Fightbox
0000,1803,1861:1c89|Cyfrowy Polsat|Extreme Sports
0000,1803,1861:1c8a|Cyfrowy Polsat|Eurosport
0000,1803,1861:1c8b|Cyfrowy Polsat|NatGeo Wild
0000,1803,1861:1c93|Cyfrowy Polsat|Discovery Channel Polska
0000,1803,1861:1c94|Cyfrowy Polsat|
0000,1803,1861:1c96|Cyfrowy Polsat|AXN Polska
0000,1803,1861:1c9c|Cyfrowy Polsat|Polsat Crime & Investigation Network
0000,1803,1861:1c9d|Cyfrowy Polsat|Crime + Investigation
0000,1803,1861:1cb5|Cyfrowy Polsat|Disney XD Polska
0000,1803,1861:1cca|Cyfrowy Polsat|Cinemax 2 Europe
0000,1803,1861:1ccb|Cyfrowy Polsat|Viasat Explorer
0000,1803,1861:1ccc|Cyfrowy Polsat|Viasat History
0000,1803,1861:1ccd|Cyfrowy Polsat|Viasat Nature CEE
0000,1803,1861:1ccf|Cyfrowy Polsat|Fox Life Poland
0000,1803,1861:1d21|Cyfrowy Polsat|Cartoon Network
0000,1803,1861:1d21|Cyfrowy Polsat|TCM Eastern Europe
0000,1803,1861:1d2a|Cyfrowy Polsat|Disney Channel Polska
0000,1803,1861:1d2b|Cyfrowy Polsat|Cartoon Network
0000,1803,1861:1d2c|Cyfrowy Polsat|Turner Classic Movies
0000,1803,1861:2011|Cyfrowy Polsat|CNN International Europe
0000,1803,1861:2011|Cyfrowy Polsat|CNN Radio
0000,1803,1861:2904|Cyfrowy Polsat|Cyfrowy Polsat PPV
0000,1803,1861:2905|Cyfrowy Polsat|Polsat Food Network
0000,1803,1861:2906|Cyfrowy Polsat|Boomerang
0000,1803,1861:2909|Cyfrowy Polsat|MTV Rocks
0000,1803,1861:290b|Cyfrowy Polsat|CBS Europa
0000,1803,1861:290c|Cyfrowy Polsat|Polsat Jim Jam
0000,1803,1861:290e|Cyfrowy Polsat|TV6 Polska
0000,1803,1861:290f|Cyfrowy Polsat|ATM Rozrywka TV
0000,1803,1861:2912|Cyfrowy Polsat|Polsat Sport News
0000,1803,1861:2913|Cyfrowy Polsat|Dla Abonentow
0000,1803,1861:2918|Cyfrowy Polsat|Travel Channel
0000,1803,1861:2919|Cyfrowy Polsat|SuperStacja
0000,1803,1861:291b|Cyfrowy Polsat|RMF FM
0000,1803,1861:2920|Cyfrowy Polsat|Jedynka - PR
0000,1803,1861:2921|Cyfrowy Polsat|Trójka - PR
0000,1803,1861:2927|Cyfrowy Polsat|Trójka - PR
0000,1803,1861:2929|Cyfrowy Polsat|Jedynka - PR
0000,1803,1861:292a|Cyfrowy Polsat|RMF FM
0000,1803,1861:2938|Cyfrowy Polsat|Disney Junior Middle-East & Africa
0000,1803,1861:293c|Cyfrowy Polsat|Dla Abonentow
0000,1803,1861:2954|Cyfrowy Polsat|
0000,1803,1861:32df|Cyfrowy Polsat|National Geographic HD Polska
0000,1803,1861:32e1|Cyfrowy Polsat|Filmbox HD
0000,1803,1861:32e2|Cyfrowy Polsat|AXN Spin HD
0000,1803,1861:3305|Cyfrowy Polsat|Eurosport HD
0000,1803,1861:3307|Cyfrowy Polsat|ESP HD Turk
0000,1803,1861:3308|Cyfrowy Polsat|ESP HD Russian
0000,1803,1861:3309|Cyfrowy Polsat|ESP HD Dutch
0000,1803,1861:330a|Cyfrowy Polsat|ESP HD Czech
0000,1803,1861:330b|Cyfrowy Polsat|ESP HD German
0000,1803,1861:330d|Cyfrowy Polsat|ESP HD Portuguese
0000,1803,1861:330e|Cyfrowy Polsat|ESP HD Polish
0000,1803,1861:330f|Cyfrowy Polsat|ESP HD Hungarian
0000,1803,1861:3310|Cyfrowy Polsat|ESP HD Bulgaria
0000,1803,1861:3311|Cyfrowy Polsat|ESP HD Italy
0000,1803,1861:3312|Cyfrowy Polsat|ESP HD Romania
0000,1803,1861:3313|Cyfrowy Polsat|ESP HD UPC
0000,1803,1861:3314|Cyfrowy Polsat|ESP HD Spain
0000,1803,1861:3315|Cyfrowy Polsat|ESP HD
0000,1803,1861:3316|Cyfrowy Polsat|ESP HD Serbia
0000,1803,1861:3317|Cyfrowy Polsat|ESP HD Greek
0000,1803,1861:3319|Cyfrowy Polsat|EUROSPORT HD
0000,1803,1861:331a|Cyfrowy Polsat|EUROSPORT HD
0000,1803,1861:331d|Cyfrowy Polsat|ESP HD test D
0000,1803,1861:332d|Cyfrowy Polsat|Polsat
0000,1803,1861:332e|Cyfrowy Polsat|Polsat Play
0000,1803,1861:332f|Cyfrowy Polsat|TV 4
0000,1803,1861:3330|Cyfrowy Polsat|Polsat Sport
0000,1803,1861:3331|Cyfrowy Polsat|Polsat Sport Extra
0000,1803,1861:3332|Cyfrowy Polsat|Polsat Cafe
0000,1803,1861:3333|Cyfrowy Polsat|Polsat Biznes
0000,1803,1861:3334|Cyfrowy Polsat|Polsat Film
0000,1803,1861:3335|Cyfrowy Polsat|Polsat News
0000,1803,1861:3336|Cyfrowy Polsat|Polsat 2 International
0000,1803,1861:3342|Cyfrowy Polsat|Polsat Play
0000,1803,1861:3346|Cyfrowy Polsat|Polsat Café
0000,1803,1861:3349|Cyfrowy Polsat|Polsat News
0000,1803,1861:3353|Cyfrowy Polsat|Polsat News
0000,1803,1861:35e9|Cyfrowy Polsat|Eurosport 2
0000,1803,1861:35ea|Cyfrowy Polsat|ESP2 Dutch
0000,1803,1861:35ec|Cyfrowy Polsat|ESP2 Test
0000,1803,1861:35ed|Cyfrowy Polsat|ESP2 Greek
0000,1803,1861:35f5|Cyfrowy Polsat|ESP2 Rus
0000,1803,1861:35fd|Cyfrowy Polsat|ESP2 Portuguese
0000,1803,1861:35fe|Cyfrowy Polsat|ESP2 Italy
0000,1803,1861:35ff|Cyfrowy Polsat|ESP2 Biava
0000,1803,1861:3605|Cyfrowy Polsat|ESP Spain
0000,1803,1861:3606|Cyfrowy Polsat|ESP Italy
0000,1803,1861:3607|Cyfrowy Polsat|Eurosport
0000,1803,1861:3609|Cyfrowy Polsat|ESP Dutch
0000,1803,1861:360a|Cyfrowy Polsat|ESP Polish
0000,1803,1861:360b|Cyfrowy Polsat|ESP Russian
0000,1803,1861:360c|Cyfrowy Polsat|ESP Portuguese
0000,1803,1861:360d|Cyfrowy Polsat|ESP Hungarian
0000,1803,1861:360f|Cyfrowy Polsat|ESP Czech
0000,1803,1861:3610|Cyfrowy Polsat|ESP Greek
0000,1803,1861:3611|Cyfrowy Polsat|ESP Cyprus
0000,1803,1861:3612|Cyfrowy Polsat|ESP Bulgarian
0000,1803,1861:3613|Cyfrowy Polsat|ESP2 Turk
0000,1803,1861:3614|Cyfrowy Polsat|ESP Serbia
0000,1803,1861:3615|Cyfrowy Polsat|ESP Turk
0000,1803,1861:3616|Cyfrowy Polsat|ESP2 German
0000,1803,1861:3617|Cyfrowy Polsat|ESP2 Serbia
0000,1803,1861:3618|Cyfrowy Polsat|ESP Biava
0000,1803,1861:3628|Cyfrowy Polsat|EUROSPORT2 PL
0000,1803,1861:3629|Cyfrowy Polsat|EUROSPORT PL
0000,1803,1861:3635|Cyfrowy Polsat|Eurosport 2 North East Europe
0000,1803,1861:3636|Cyfrowy Polsat|ESP2 NE Polish
0000,1803,1861:3637|Cyfrowy Polsat|ESP2 NE Bulgarian
0000,1803,1861:3638|Cyfrowy Polsat|ESP2 NE Serbian
0000,1803,1861:3639|Cyfrowy Polsat|ESP2 NE Czech
0000,1803,1861:363a|Cyfrowy Polsat|ESP2 NE Danish
0000,1803,1861:363b|Cyfrowy Polsat|ESP2 NE Russian
0000,1803,1861:363c|Cyfrowy Polsat|ESP2 NE Swedish
0000,1803,1861:363d|Cyfrowy Polsat|ESP ECH
0000,1803,1861:363e|Cyfrowy Polsat|ESP2 NE UPC
0000,1803,1861:363f|Cyfrowy Polsat|ESP2 NE Hungary
0000,1803,1861:3640|Cyfrowy Polsat|ESP2 NE Romania
0000,1803,1861:3641|Cyfrowy Polsat|ESP UPC
0000,1803,1861:3642|Cyfrowy Polsat|ESP2 NE Norwegian
0000,1803,1861:3643|Cyfrowy Polsat|ESP2 NE Dutch
0000,1803,1861:3644|Cyfrowy Polsat|Eurosport Romania
0000,1803,1861:390a|Cyfrowy Polsat|BBC Entertainment Poland
0000,1803,1861:390b|Cyfrowy Polsat|BBC Knowledge Poland
0000,1803,1861:390c|Cyfrowy Polsat|BBC Lifestyle Poland
0000,1803,1861:390d|Cyfrowy Polsat|BBC CBeebies Poland
0000,1803,1861:3914|Cyfrowy Polsat|Investigation Discovery Polska
0000,1803,1861:3915|Cyfrowy Polsat|TLC Polska
0000,1803,1861:3ab8|Cyfrowy Polsat|Discovery HD Showcase
0000,1803,1861:3abd|Cyfrowy Polsat|TVP 1 HD
0000,1803,1861:3adc|Cyfrowy Polsat|Romance TV
0000,1803,1861:3b62|Cyfrowy Polsat|TVP HD
0000,1803,1861:3b63|Cyfrowy Polsat|Eurosport 2 HD
0000,1803,1861:3b65|Cyfrowy Polsat|NatGeo Wild HD
0000,1803,1861:3b66|Cyfrowy Polsat|Animal Planet HD
0000,1803,1861:3b67|Cyfrowy Polsat|Cinemax HD Eastern Europe
0000,1803,1861:3d55|Cyfrowy Polsat|Discovery Science Polska
0000,1803,1861:3d57|Cyfrowy Polsat|Discovery Turbo Xtra
0000,1803,1861:3d58|Cyfrowy Polsat|TVP Sport
0000,1803,1861:3d5e|Cyfrowy Polsat|National Geographic Polska
0000,1803,1861:3d5f|Cyfrowy Polsat|Orange Sport TV Polska
0000,1803,1861:3d60|Cyfrowy Polsat|FilmBox Extra Polska
0000,1803,1861:3d61|Cyfrowy Polsat|FilmBox Polska
0000,1803,1861:3d62|Cyfrowy Polsat|Filmbox Family
0000,1803,1861:3d65|Cyfrowy Polsat|Filmbox Action
0000,1803,1861:3d70|Cyfrowy Polsat|TVP Seriale
0000,1803,1861:3dc4|Cyfrowy Polsat|Religia.TV
0000,1803,1861:3dcd|Cyfrowy Polsat|TVN HD
0000,1803,1861:3dd3|Cyfrowy Polsat|TVN 7 HD
0000,1803,1861:3e1d|Cyfrowy Polsat|Sundance Channel HD
0000,1803,1861:3e1e|Cyfrowy Polsat|Polsat Film HD
0000,1803,1861:3e20|Cyfrowy Polsat|Universal HD Poland
0000,1803,1861:3e21|Cyfrowy Polsat|TLC Poland HD
0000,1803,1861:3e23|Cyfrowy Polsat|Polsat News HD
0000,1803,1861:3e24|Cyfrowy Polsat|AXN Spin HD
0000,1803,1861:3e25|Cyfrowy Polsat|Eurosport HD
0000,1803,1861:3e26|Cyfrowy Polsat|TVP Sport HD
0000,1803,1861:4224|Cyfrowy Polsat|Redlight HD
0000,1803,1861:4225|Cyfrowy Polsat|Hustler HD 3D
0000,1803,1861:4269|Cyfrowy Polsat|VOD 151
0000,1803,1861:426a|Cyfrowy Polsat|VOD 152
0000,1803,1861:426b|Cyfrowy Polsat|VOD 153
0000,1803,1861:426c|Cyfrowy Polsat|VOD 154
0000,1803,1861:426d|Cyfrowy Polsat|VOD 155
0000,1803,1861:426e|Cyfrowy Polsat|VOD 156
0000,1803,1861:426f|Cyfrowy Polsat|VOD 157
0000,1803,1861:4270|Cyfrowy Polsat|VOD 158
0000,1803,1861:4271|Cyfrowy Polsat|VOD 159
0000,1803,1861:4272|Cyfrowy Polsat|VOD 160
0000,1803,1861:4273|Cyfrowy Polsat|VOD 161
0000,1803,1861:4274|Cyfrowy Polsat|VOD 162
0000,1803,1861:4275|Cyfrowy Polsat|VOD 163
0000,1803,1861:4276|Cyfrowy Polsat|VOD 164
0000,1803,1861:4277|Cyfrowy Polsat|VOD 165
0000,1803,1861:4278|Cyfrowy Polsat|VOD 166
0000,1803,1861:4279|Cyfrowy Polsat|VOD 167
0000,1803,1861:427a|Cyfrowy Polsat|VOD 168
0000,1803,1861:427b|Cyfrowy Polsat|Test10
0000,1803,1861:427c|Cyfrowy Polsat|VOD 150
0000,1803,1861:427d|Cyfrowy Polsat|xxxVOD1
0000,1803,1861:427e|Cyfrowy Polsat|xxxVOD2
0000,1803,1861:427f|Cyfrowy Polsat|E! Polska
0000,1803,1861:4280|Cyfrowy Polsat|Da Vinci Learning
0000,1803,1861:4281|Cyfrowy Polsat|Sundance Channel
0000,1803,1861:4282|Cyfrowy Polsat|CBS Action Poland
0000,1803,1861:4283|Cyfrowy Polsat|Fight Klub
0000,1803,1861:4285|Cyfrowy Polsat|VOD Poleca
0000,1803,1861:4286|Cyfrowy Polsat|VOD Poleca
0000,1803,1861:4287|Cyfrowy Polsat|VOD Poleca
0000,1803,1861:4288|Cyfrowy Polsat|TVP Rozrywka
0000,1803,1861:4289|Cyfrowy Polsat|TV Republika
0000,1803,1861:428a|Cyfrowy Polsat|Filmbox Arthouse
```

back to [index](#index)



### Free-X TV / Private Spice

last review: 10.03.2014 by: Generation3000

```
###
### DVB-S - Free-X TV / Private Spice - Hotbird 13.0E
###
0500:0832|Free-X TV|French Lover TV|TV|XXX
0500:0833|Free-X TV|PRIVATE TV|TV|XXX
0500:1251|Free-X TV|Brazzers TV Europe|TV|XXX
```

back to [index](#index)

###

nc+

last review: 2014-03-10 by: Humorator

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


Additional information:

+   also partitionally available @Telewizja na and TNK Smart HD

```
###
### DVB-S - nc+ - Hotbird 13.0E
###
0000,0100,0B01:0001|NC+|Universal Polska
0000,0100,0B01:0002|NC+|MTV Polska
0000,0100,0B01:0002|NC+|Sci-Fi Eastern Europe
0000,0100,0B01:0003|NC+|13th Street Polska
0000,0100,0B01:0004|NC+|Comedy Central Family Polska
0000,0100,0B01:0005|NC+|Viva Polska
0000,0100,0B01:0006|NC+|Viacom Blink!
0000,0100,0B01:0007|NC+|VH-1 (Video Hits One)
0000,0100,0B01:000a|NC+|Comedy Central Polska
0000,0100,0B01:000b|NC+|Nickelodeon Europe
0000,0100,0B01:0015|NC+|MTV Live HD
0000,0100,0B01:0016|NC+|MTV Polska.
0000,0100,0B01:0018|NC+|CC Family.
0000,0100,0B01:0019|NC+|VIVA Polska.
0000,0100,0B01:001e|NC+|Comedy Central Polska.
0000,0100,0B01:001e|NC+|Nick Junior
0000,0100,0B01:001f|NC+|Nickelodeon HD
0000,0100,0B01:002d|NC+|VIVA Polska..
0000,0100,0B01:012e|NC+|France 2 HD
0000,0100,0B01:012f|NC+|France 3 Sat
0000,0100,0B01:0131|NC+|France 5
0000,0100,0B01:013a|NC+|France 4
0000,0100,0B01:01a3|NC+|France Ô
0000,0100,0B01:01c5|NC+|AB Moteurs
0000,0100,0B01:01c7|NC+|Chasse et Pêche
0000,0100,0B01:01d4|NC+|XXL
0000,0100,0B01:01d5|NC+|XXL PL
0000,0100,0B01:041e|NC+|Faktura
0000,0100,0B01:0424|NC+|Faktura
0000,0100,0B01:0427|NC+|Faktura
0000,0100,0B01:0c1f|NC+|Fox Life HD Poland
0000,0100,0B01:0c20|NC+|HBO HD
0000,0100,0B01:0c21|NC+|HBO HD Polska
0000,0100,0B01:0c22|NC+|TVP 2 HD
0000,0100,0B01:0c23|NC+|Polsat HD
0000,0100,0B01:0c25|NC+|AXN HD Polska
0000,0100,0B01:0c26|NC+|Cinemax 2 HD
0000,0100,0B01:0c27|NC+|Fox HD Polska
0000,0100,0B01:0c29|NC+|Cinemax 2 HD
0000,0100,0B01:0c2f|NC+|History Channel HD Polska
0000,0100,0B01:0dae|NC+|Kino Polska Muzyka
0000,0100,0B01:0db2|NC+|Discovery Historia Polska
0000,0100,0B01:0db3|NC+|Zest TV
0000,0100,0B01:0db4|NC+|Motowizja TV
0000,0100,0B01:0dc0|NC+|Sport Klub Poland
0000,0100,0B01:0dc4|NC+|TVP Historia
0000,0100,0B01:0dc5|NC+|TVP Historia
0000,0100,0B01:0e06|NC+|BBC HD Nordic, Turkey & Poland
0000,0100,0B01:0e08|NC+|BBC Knowledge HD Poland
0000,0100,0B01:0e09|NC+|HBO 2 HD Polska
0000,0100,0B01:0e0a|NC+|HBO Comedy HD Polska
0000,0100,0B01:10d7|NC+|TVN
0000,0100,0B01:10d8|NC+|TVN 24
0000,0100,0B01:10d9|NC+|TVN Siedem
0000,0100,0B01:10dd|NC+|TTV
0000,0100,0B01:10de|NC+|TVN Meteo
0000,0100,0B01:10df|NC+|TVN Turbo
0000,0100,0B01:10e0|NC+|TVN Style
0000,0100,0B01:10e2|NC+|TVN 24 Biznes i Swiat
0000,0100,0B01:10f6|NC+|TVN 24_
0000,0100,0B01:10fd|NC+|TVN TURBO_
0000,0100,0B01:10fe|NC+|TVN STYLE_
0000,0100,0B01:1136|NC+|PLANETE+
0000,0100,0B01:1137|NC+|MINIMINI+
0000,0100,0B01:1138|NC+|nSport
0000,0100,0B01:1139|NC+|HISTORY
0000,0100,0B01:113d|NC+|Canal+ Family 2 Poland
0000,0100,0B01:113e|NC+|Canal+ Family Poland
0000,0100,0B01:1147|NC+|CANAL+ FAMILY2
0000,0100,0B01:114d|NC+|HBO Polska
0000,0100,0B01:114f|NC+|HBO 2 Polska
0000,0100,0B01:1150|NC+|HBO Comedy Polska
0000,0100,0B01:1151|NC+|
0000,0100,0B01:1153|NC+|ESP
0000,0100,0B01:1163|NC+|Planete+ Polska
0000,0100,0B01:1164|NC+|Mini Mini+
0000,0100,0B01:1167|NC+|HBO
0000,0100,0B01:1168|NC+|HBO2
0000,0100,0B01:1169|NC+|HBO COMEDY
0000,0100,0B01:116a|NC+|nSport
0000,0100,0B01:116b|NC+|History Channel Eastern Europe
0000,0100,0B01:117c|NC+|DTV CABLE PL
0000,0100,0B01:117d|NC+|DTV CABLE MI
0000,0100,0B01:1248|NC+|13th Street Polska
0000,0100,0B01:12c1|NC+|Canal+ Polska
0000,0100,0B01:12c2|NC+|Canal+ Film
0000,0100,0B01:12c3|NC+|Canal+ Film 2 Poland
0000,0100,0B01:12c4|NC+|KUCHNIA+
0000,0100,0B01:12c5|NC+|Ale Kino+
0000,0100,0B01:12c6|NC+|teleTOON+
0000,0100,0B01:12c7|NC+|TVP 1
0000,0100,0B01:12c8|NC+|TVP 2
0000,0100,0B01:12c9|NC+|CANAL+ SPORT
0000,0100,0B01:12cb|NC+|DOMO+
0000,0100,0B01:12d7|NC+|4823
0000,0100,0B01:12de|NC+|H test 1
0000,0100,0B01:12df|NC+|H test 2
0000,0100,0B01:12e0|NC+|H test 3
0000,0100,0B01:12e1|NC+|CANAL+ FILM
0000,0100,0B01:12e2|NC+|CANAL+ FILM2
0000,0100,0B01:12e3|NC+|CANAL+
0000,0100,0B01:12e4|NC+|CANAL+ FILM
0000,0100,0B01:12e5|NC+|CANAL+ SPORT
0000,0100,0B01:12e8|NC+|CYFRA+ RADIO
0000,0100,0B01:12ea|NC+|CYFRA+ RMF
0000,0100,0B01:12f5|NC+|Canal+ Sport Polska
0000,0100,0B01:12f6|NC+|Kuchnia+
0000,0100,0B01:12f7|NC+|ALE KINO+
0000,0100,0B01:12f8|NC+|Teletoon+ Polska
0000,0100,0B01:12f9|NC+|Domo+
0000,0100,0B01:12ff|NC+|tech 2
0000,0100,0B01:1300|NC+|KUCHNIA+
0000,0100,0B01:1307|NC+|CANAL+
0000,0100,0B01:1308|NC+|CANAL+ FILM
0000,0100,0B01:130a|NC+|DTV CABLE KU
0000,0100,0B01:130b|NC+|DTV CABLE AL
0000,0100,0B01:130c|NC+|DTV CABLE TT
0000,0100,0B01:130d|NC+|ALE KINO+
0000,0100,0B01:130e|NC+|ALE KINO+
0000,0100,0B01:1360|NC+|Daring! TV
0000,0100,0B01:13f0|NC+|Kino Polska
0000,0100,0B01:13f1|NC+|Trace Urban
0000,0100,0B01:13f4|NC+|Fox Polska
0000,0100,0B01:13f6|NC+|TVP Info
0000,0100,0B01:13f8|NC+|TV Puls
0000,0100,0B01:13fb|NC+|TVP Regionalna
0000,0100,0B01:1402|NC+|Animal Planet Poland
0000,0100,0B01:1406|NC+|CBS Drama
0000,0100,0B01:1407|NC+|CBS Reality
0000,0100,0B01:1416|NC+|TV PULS
0000,0100,0B01:1419|NC+|
0000,0100,0B01:141a|NC+|CINEMAX
0000,0100,0B01:1c85|NC+|Polsat Romans
0000,0100,0B01:1c86|NC+|AXN White Poland
0000,0100,0B01:1c87|NC+|AXN Black Poland
0000,0100,0B01:1c88|NC+|Fightbox
0000,0100,0B01:1c89|NC+|Extreme Sports
0000,0100,0B01:1c8a|NC+|Eurosport
0000,0100,0B01:1c8b|NC+|NatGeo Wild
0000,0100,0B01:1c93|NC+|Discovery Channel Polska
0000,0100,0B01:1c94|NC+|
0000,0100,0B01:1c96|NC+|AXN Polska
0000,0100,0B01:1c9c|NC+|Polsat Crime & Investigation Network
0000,0100,0B01:1cb5|NC+|Disney XD Polska
0000,0100,0B01:1cca|NC+|Cinemax 2 Europe
0000,0100,0B01:1ccf|NC+|Fox Life Poland
0000,0100,0B01:1d21|NC+|Cartoon Network
0000,0100,0B01:1d21|NC+|TCM Eastern Europe
0000,0100,0B01:1d2a|NC+|Disney Channel Polska
0000,0100,0B01:1d2b|NC+|Cartoon Network
0000,0100,0B01:1d2c|NC+|Turner Classic Movies
0000,0100,0B01:2011|NC+|CNN International Europe
0000,0100,0B01:2011|NC+|CNN Radio
0000,0100,0B01:2906|NC+|Boomerang
0000,0100,0B01:2909|NC+|MTV Rocks
0000,0100,0B01:290b|NC+|CBS Europa
0000,0100,0B01:290c|NC+|Polsat Jim Jam
0000,0100,0B01:290e|NC+|TV6 Polska
0000,0100,0B01:2912|NC+|Polsat Sport News
0000,0100,0B01:2914|NC+|Blue Hustler
0000,0100,0B01:2918|NC+|Travel Channel
0000,0100,0B01:2919|NC+|SuperStacja
0000,0100,0B01:2938|NC+|Disney Junior Middle-East & Africa
0000,0100,0B01:2954|NC+|
0000,0100,0B01:29e5|NC+|Mezzo
0000,0100,0B01:32dc|NC+|Canal+ HD Polska
0000,0100,0B01:32de|NC+|Canal+ Sport HD Polska
0000,0100,0B01:32df|NC+|National Geographic HD Polska
0000,0100,0B01:32e0|NC+|MiniMini+ HD
0000,0100,0B01:32e1|NC+|Filmbox HD
0000,0100,0B01:32e2|NC+|AXN Spin HD
0000,0100,0B01:32fc|NC+|
0000,0100,0B01:32fe|NC+|
0000,0100,0B01:3305|NC+|Eurosport HD
0000,0100,0B01:3307|NC+|ESP HD Turk
0000,0100,0B01:3308|NC+|ESP HD Russian
0000,0100,0B01:3309|NC+|ESP HD Dutch
0000,0100,0B01:330a|NC+|ESP HD Czech
0000,0100,0B01:330b|NC+|ESP HD German
0000,0100,0B01:330d|NC+|ESP HD Portuguese
0000,0100,0B01:330e|NC+|ESP HD Polish
0000,0100,0B01:330f|NC+|ESP HD Hungarian
0000,0100,0B01:3310|NC+|ESP HD Bulgaria
0000,0100,0B01:3311|NC+|ESP HD Italy
0000,0100,0B01:3312|NC+|ESP HD Romania
0000,0100,0B01:3313|NC+|ESP HD UPC
0000,0100,0B01:3314|NC+|ESP HD Spain
0000,0100,0B01:3315|NC+|ESP HD
0000,0100,0B01:3316|NC+|ESP HD Serbia
0000,0100,0B01:3317|NC+|ESP HD Greek
0000,0100,0B01:3318|NC+|EUROSPORT HD PL
0000,0100,0B01:3319|NC+|EUROSPORT HD
0000,0100,0B01:331a|NC+|EUROSPORT HD
0000,0100,0B01:331d|NC+|ESP HD test D
0000,0100,0B01:332d|NC+|Polsat
0000,0100,0B01:332e|NC+|Polsat Play
0000,0100,0B01:332f|NC+|TV 4
0000,0100,0B01:3333|NC+|Polsat Biznes
0000,0100,0B01:3334|NC+|Polsat Film
0000,0100,0B01:3336|NC+|Polsat 2 International
0000,0100,0B01:3346|NC+|Polsat Café
0000,0100,0B01:3353|NC+|Polsat News
0000,0100,0B01:3605|NC+|ESP Spain
0000,0100,0B01:3606|NC+|ESP Italy
0000,0100,0B01:3607|NC+|Eurosport
0000,0100,0B01:3609|NC+|ESP Dutch
0000,0100,0B01:360a|NC+|ESP Polish
0000,0100,0B01:360b|NC+|ESP Russian
0000,0100,0B01:360c|NC+|ESP Portuguese
0000,0100,0B01:360d|NC+|ESP Hungarian
0000,0100,0B01:360f|NC+|ESP Czech
0000,0100,0B01:3610|NC+|ESP Greek
0000,0100,0B01:3611|NC+|ESP Cyprus
0000,0100,0B01:3612|NC+|ESP Bulgarian
0000,0100,0B01:3614|NC+|ESP Serbia
0000,0100,0B01:3615|NC+|ESP Turk
0000,0100,0B01:3618|NC+|ESP Biava
0000,0100,0B01:3635|NC+|Eurosport 2 North East Europe
0000,0100,0B01:3636|NC+|ESP2 NE Polish
0000,0100,0B01:3637|NC+|ESP2 NE Bulgarian
0000,0100,0B01:3638|NC+|ESP2 NE Serbian
0000,0100,0B01:3639|NC+|ESP2 NE Czech
0000,0100,0B01:363a|NC+|ESP2 NE Danish
0000,0100,0B01:363b|NC+|ESP2 NE Russian
0000,0100,0B01:363c|NC+|ESP2 NE Swedish
0000,0100,0B01:363d|NC+|ESP ECH
0000,0100,0B01:363e|NC+|ESP2 NE UPC
0000,0100,0B01:363f|NC+|ESP2 NE Hungary
0000,0100,0B01:3640|NC+|ESP2 NE Romania
0000,0100,0B01:3641|NC+|ESP UPC
0000,0100,0B01:3642|NC+|ESP2 NE Norwegian
0000,0100,0B01:3643|NC+|ESP2 NE Dutch
0000,0100,0B01:3644|NC+|Eurosport Romania
0000,0100,0B01:3779|NC+|Canal+ Film HD Polska
0000,0100,0B01:377a|NC+|Canal+ Family 2 HD Poland
0000,0100,0B01:377b|NC+|Canal+ Family HD Poland
0000,0100,0B01:377d|NC+|teleTOON+ HD
0000,0100,0B01:377e|NC+|Planete+ HD Polska
0000,0100,0B01:377f|NC+|KUCHNIA+ HD
0000,0100,0B01:3780|NC+|DOMO+ HD
0000,0100,0B01:3781|NC+|ALE KINO+ HD
0000,0100,0B01:3782|NC+|Canal+ Film 2 HD Poland
0000,0100,0B01:379b|NC+|Teletoon+ HD Polska
0000,0100,0B01:379c|NC+|PLANETE+ HD
0000,0100,0B01:379d|NC+|Kuchnia+ HD
0000,0100,0B01:379e|NC+|Domo+ HD
0000,0100,0B01:379f|NC+|Ale Kino+ HD
0000,0100,0B01:37b1|NC+|
0000,0100,0B01:390a|NC+|BBC Entertainment Poland
0000,0100,0B01:390b|NC+|BBC Knowledge Poland
0000,0100,0B01:390c|NC+|BBC Lifestyle Poland
0000,0100,0B01:390d|NC+|BBC CBeebies Poland
0000,0100,0B01:3914|NC+|Investigation Discovery Polska
0000,0100,0B01:3915|NC+|TLC Polska
0000,0100,0B01:3ab7|NC+|MGM HD Polska
0000,0100,0B01:3ab8|NC+|Discovery HD Showcase
0000,0100,0B01:3ab9|NC+|nSport
0000,0100,0B01:3abb|NC+|MiniMini+ HD
0000,0100,0B01:3abd|NC+|TVP 1 HD
0000,0100,0B01:3abe|NC+|Romance TV Polska
0000,0100,0B01:3adc|NC+|Romance TV
0000,0100,0B01:3ae1|NC+|nSPORT
0000,0100,0B01:3b38|NC+|pVOD
0000,0100,0B01:3b62|NC+|TVP HD
0000,0100,0B01:3b63|NC+|Eurosport 2 HD
0000,0100,0B01:3b65|NC+|NatGeo Wild HD
0000,0100,0B01:3b66|NC+|Animal Planet HD
0000,0100,0B01:3b67|NC+|Cinemax HD Eastern Europe
0000,0100,0B01:3b69|NC+|Teletoon+ HD Polska
0000,0100,0B01:3b6a|NC+|nSport 36
0000,0100,0B01:3b6b|NC+|nSport 37
0000,0100,0B01:3bb3|NC+|Eurosport 2 HD PL-HU-RO
0000,0100,0B01:3bb5|NC+|Nat Geo Wild HD PL
0000,0100,0B01:3d55|NC+|Discovery Science Polska
0000,0100,0B01:3d57|NC+|Discovery Turbo Xtra
0000,0100,0B01:3d58|NC+|TVP Sport
0000,0100,0B01:3d5c|NC+|TVP Seriale
0000,0100,0B01:3d5e|NC+|National Geographic Polska
0000,0100,0B01:3d5f|NC+|Orange Sport TV Polska
0000,0100,0B01:3d60|NC+|FilmBox Extra Polska
0000,0100,0B01:3d61|NC+|FilmBox Polska
0000,0100,0B01:3d62|NC+|Filmbox Family
0000,0100,0B01:3d64|NC+|DISCOVERY
0000,0100,0B01:3d65|NC+|Filmbox Action
0000,0100,0B01:3d70|NC+|TVP Seriale
0000,0100,0B01:3d78|NC+|Discovery Channel Polska
0000,0100,0B01:3dc4|NC+|Religia.TV
0000,0100,0B01:3dc5|NC+|Puls 2
0000,0100,0B01:3dcd|NC+|TVN HD
0000,0100,0B01:3dce|NC+|TVN STYLE HD
0000,0100,0B01:3dcf|NC+|TVN Style HD
0000,0100,0B01:3dd0|NC+|TVN TURBO HD
0000,0100,0B01:3dd1|NC+|TVN Turbo HD
0000,0100,0B01:3dd2|NC+|TVN 24 HD
0000,0100,0B01:3dd3|NC+|TVN 7 HD
0000,0100,0B01:3e1d|NC+|Sundance Channel HD
0000,0100,0B01:3e1e|NC+|Polsat Film HD
0000,0100,0B01:3e20|NC+|Universal HD Poland
0000,0100,0B01:3e21|NC+|TLC Poland HD
0000,0100,0B01:3e24|NC+|AXN Spin HD
0000,0100,0B01:3e25|NC+|Eurosport HD
0000,0100,0B01:4224|NC+|Redlight HD
0000,0100,0B01:4225|NC+|Hustler HD 3D
0000,0100,0B01:427f|NC+|E! Polska
0000,0100,0B01:4282|NC+|CBS Action Poland
0000,0100,0B01:4288|NC+|TVP Rozrywka
0000,0100,0B01:439d|NC+|Baby TV
```

back to [index](#index)

### Redlight

last review: 2022-04-23 by: Darksniper

Additional Information

+   this list contains all programs you can receive with an full Redlight subscription

```
###
### DVB-S - Redlight - Hotbird 13.0E & Astra 19.0
###
#   Dorcel TV  / Erotik von ca. 23:00 Uhr bis 6:00 Uhr
#   Dorcel XXX / Erotik von ca. 00:00 Uhr bis 6:00 Uhr

0500:100B|Redlight|Hustler TV (Astra)
0500:0FE0|Redlight|Vivid (Astra)
0500:2205|Redlight|DORCEL TV (Astra)
0500:2204|Redlight|DORCEL XXX (Astra)
0500:226F|Redlight|VIXEN (Astra)
0500:4205|Redlight|Dorcel TV HD
0500:4220|Redlight|Hustler HD
0500:4224|Redlight|Redlight HD
0500:4207|Redlight|Brazzers HD
0500:1CBB|Redlight|Vivid Touch SD
0500:4267|Redlight|Vivid Red HD
0500:4222|Redlight|Private HD
0500:01D4|Redlight|XXL
0500:4221|Redlight|Blue Hustler
```

back to [index](#index)

### RTVi (REVIEW NEEDED)

last review: ??? by: ???

```
###
### DVB-S - RTVi - Hotbird 13.0E
###
0500:39D2|RTVi|RTVi info|TV|
0500:39D3|RTVi|RTVi Detskij Mir-Teleklub|TV|
0500:39D4|RTVi|RTVi Nashe Kino|TV|
0500:39D5|RTVi|RTVi Europe|TV|
```

back to [index](#index)

### Sky Italia

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.

last review: 2013-10-27 by: Verdi-Fan

Review needed for packages

```
###
### DVB-S - Sky Italia - Hotbird 13.0E
###
0000,0919,093B,09CD:106A|Sky Italia|Cinema 1 HD|TV|
0000,0919,093B,09CD:2B5D|Sky Italia|Cinema 1|TV|
0000,0919,093B,09CD:1E5D|Sky Italia|Cinema +1 HD|TV|
0000,0919,093B,09CD:2DCA|Sky Italia|Cinema +1|TV|
0000,0919,093B,09CD:1C38|Sky Italia|Cinema +24 HD|TV|
0000,0919,093B,09CD:2B63|Sky Italia|Cinema +24|TV|
0000,0919,093B,09CD:106C|Sky Italia|Cinema Oscar HD|TV|
0000,0919,093B,09CD:2DCC|Sky Italia|Cinema Oscar|TV|
0000,0919,093B,09CD:1C57|Sky Italia|CinemaFamilyHD|TV|
0000,0919,093B,09CD:2B61|Sky Italia|Cinema Family|TV|
0000,0919,093B,09CD:1C3F|Sky Italia|Cinema Passion HD|TV|
0000,0919,093B,09CD:2B73|Sky Italia|Cinema Passion|TV|
0000,0919,093B,09CD:2B16|Sky Italia|Cinema Comedy HD|TV|
0000,0919,093B,09CD:2DCD|Sky Italia|Cinema Comedy|TV|
0000,0919,093B,09CD:106E|Sky Italia|Cinema Max HD|TV|
0000,0919,093B,09CD:2B6B|Sky Italia|Cinema Max|TV|
0000,0919,093B,09CD:1E5E|Sky Italia|Cinema Max +1 HD|TV|
0000,0919,093B,09CD:2DC3|Sky Italia|Cinema Max +1|TV|
0000,0919,093B,09CD:0DEC|Sky Italia|Cinema Cult HD|TV|
0000,0919,093B,09CD:1FC9|Sky Italia|Cinema Cult|TV|
0000,0919,093B,09CD:2B18|Sky Italia|Cinema Classics HD|TV|
0000,0919,093B,09CD:2B65|Sky Italia|Cinema Classics|TV|
0000,0919,093B,09CD:0F66|Sky Italia|Sky Selection HD|TV|
0000,0919,093B,09CD:2D68|Sky Italia|Sky Selection|TV|
0000,0919,093B,09CD:2DB8|Sky Italia|Cinema itv|TV|
0000,0919,093B,09CD:1040|Sky Italia|Sky 3D|TV|
0000,0919,093B,09CD:2505|Sky Italia|Sky Uno HD|TV|
0000,0919,093B,09CD:2DC6|Sky Italia|Sky Uno|TV|
0000,0919,093B,09CD:37BA|Sky Italia|Sky Uno +1 HD|TV|
0000,0919,093B,09CD:2B70|Sky Italia|Sky Uno +1|TV|
0000,0919,093B,09CD:0596|Sky Italia|Sky Uno +2|TV|
0000,0919,093B,09CD:379D|Sky Italia|Fox HD|TV|
0000,0919,093B,09CD:1FBA|Sky Italia|Fox|TV|
0000,0919,093B,09CD:0FBD|Sky Italia|Fox +1|TV|
0000,0919,093B,09CD:0FD5|Sky Italia|Fox +2|TV|
0000,0919,093B,09CD:0DB8|Sky Italia|Fox Life HD|TV|
0000,0919,093B,09CD:1FC5|Sky Italia|Fox Life|TV|
0000,0919,093B,09CD:0FC2|Sky Italia|Fox Life +1|TV|
0000,0919,093B,09CD:0FD6|Sky Italia|Fox Life +2|TV|
0000,0919,093B,09CD:379E|Sky Italia|Fox Crime HD|TV|
0000,0919,093B,09CD:1FCB|Sky Italia|Fox Crime|TV|
0000,0919,093B,09CD:0FC1|Sky Italia|Fox Crime +1|TV|
0000,0919,093B,09CD:0FD7|Sky Italia|Fox Crime +2|TV|
0000,0919,093B,09CD:1FC8|Sky Italia|Fox Retro|TV|
0000,0919,093B,09CD:3779|Sky Italia|AXN HD|TV|
0000,0919,093B,09CD:05A3|Sky Italia|AXN|TV|
0000,0919,093B,09CD:2FE0|Sky Italia|AXN +1|TV|
0000,0919,093B,09CD:2B60|Sky Italia|AXN Sci-Fi|TV|
0000,0919,093B,09CD:2C91|Sky Italia|Horror Channel|TV|
0000,0919,093B,09CD:3902|Sky Italia|DIVA Universal|TV|
0000,0919,093B,09CD:2B66|Sky Italia|cielo|TV|
0000,0919,093B,09CD:057C|Sky Italia|Comedy Central|TV|
0000,0919,093B,09CD:2FF0|Sky Italia|Comedy +1|TV|
0000,0919,093B,09CD:3C03|Sky Italia|LEI|TV|
0000,0919,093B,09CD:0585|Sky Italia|LEI +1|TV|
0000,0919,093B,09CD:2CF3|Sky Italia|Real Time HD|TV|
0000,0919,093B,09CD:2A95|Sky Italia|Real Time|TV|
0000,0919,093B,09CD:2FEC|Sky Italia|Real Time +1|TV|
0000,0919,093B,09CD:2BCD|Sky Italia|GXT|TV|
0000,0919,093B,09CD:2FE7|Sky Italia|GXT +1|TV|
0000,0919,093B,09CD:2CC2|Sky Italia|La3|TV|
0000,0919,093B,09CD:2C44|Sky Italia|Sgommati 1|TV|
0000,0919,093B,09CD:2C53|Sky Italia|Sgommati 2|TV|
0000,0919,093B,09CD:2C54|Sky Italia|Sgommati 3|TV|
0000,0919,093B,09CD:2C56|Sky Italia|Sgommati 4|TV|
0000,0919,093B,09CD:057F|Sky Italia|La7|TV|
0000,0919,093B,09CD:0E20|Sky Italia|Telelombardia|TV|
0000,0919,093B,09CD:231C|Sky Italia|Antenna 3 Nordest|TV|
0000,0919,093B,09CD:420E|Sky Italia|Primo Canale|TV|
0000,0919,093B,09CD:420F|Sky Italia|ITALIA 7|TV|
0000,0919,093B,09CD:44D5|Sky Italia|Videolina|TV|
0000,0919,093B,09CD:2B0F|Sky Italia|Sky Sport 1 HD|TV|
0000,0919,093B,09CD:2AA8|Sky Italia|Sky Sport 1|TV|
0000,0919,093B,09CD:2B10|Sky Italia|Sky Sport 2 HD|TV|
0000,0919,093B,09CD:2AA9|Sky Italia|Sky Sport 2|TV|
0000,0919,093B,09CD:1C28|Sky Italia|Sky Sport 3 HD|TV|
0000,0919,093B,09CD:2DD9|Sky Italia|Sky Sport 3|TV|
0000,0919,093B,09CD:250D|Sky Italia|Sky Sport F1 HD|TV|
0000,0919,093B,09CD:2D69|Sky Italia|Sky Sport F1|TV|
0000,0919,093B,09CD:2B1B|Sky Italia|Sky Sport24 HD|TV|
0000,0919,093B,09CD:2AB1|Sky Italia|Sky Sport24|TV|
0000,0919,093B,09CD:057E|Sky Italia|Milan Channel|TV|
0000,0919,093B,09CD:2CC0|Sky Italia|Inter Channel|TV|
0000,0919,093B,09CD:2CBF|Sky Italia|Juventus Channel|TV|
0000,0919,093B,09CD:1FAA|Sky Italia|Roma Channel|TV|
0000,0919,093B,09CD:0FC7|Sky Italia|Lazio Style Ch|TV|
0000,0919,093B,09CD:2AAD|Sky Italia|Sportitalia|TV|
0000,0919,093B,09CD:0583|Sky Italia|Sportitalia2|TV|
0000,0919,093B,09CD:3311|Sky Italia|ESP HD Italy|TV|
0000,0919,093B,09CD:2DB9|Sky Italia|Eurosport|TV|
0000,0919,093B,09CD:1036|Sky Italia|Eurosport 2 HD|TV|
0000,0919,093B,09CD:2BC7|Sky Italia|Eurosport 2|TV|
0000,0919,093B,09CD:0592|Sky Italia|ESPN Classic|TV|
0000,0919,093B,09CD:2CF1|Sky Italia|ESPN America HD|TV|
0000,0919,093B,09CD:2CD1|Sky Italia|ESPN America|TV|
0000,0919,093B,09CD:2CF2|Sky Italia|ExtremeSportsHD|TV|
0000,0919,093B,09CD:2CB5|Sky Italia|Automoto Tv|TV|
0000,0919,093B,09CD:2FEE|Sky Italia|Bike Channel|TV|
0000,0919,093B,09CD:0FBC|Sky Italia|Nuvolari|TV|
0000,0919,093B,09CD:10E3|Sky Italia|SNAI Sat|TV|
0000,0919,093B,09CD:1C29|Sky Italia|Sky Supercalcio HD|TV|
0000,0919,093B,09CD:2AAA|Sky Italia|Sky Supercalcio|TV|
0000,0919,093B,09CD:0F4D|Sky Italia|Sky Calcio 1 HD|TV|
0000,0919,093B,09CD:2DBA|Sky Italia|Sky Calcio 1|TV|
0000,0919,093B,09CD:0F6F|Sky Italia|Sky Calcio 2 HD|TV|
0000,0919,093B,09CD:2BCF|Sky Italia|Sky Calcio 2|TV|
0000,0919,093B,09CD:1089|Sky Italia|Sky Calcio 3 HD|TV|
0000,0919,093B,09CD:2BD1|Sky Italia|Sky Calcio 3|TV|
0000,0919,093B,09CD:108A|Sky Italia|Sky Calcio 4 HD|TV|
0000,0919,093B,09CD:2BD3|Sky Italia|Sky Calcio 4|TV|
0000,0919,093B,09CD:0F46|Sky Italia|Sky Calcio 5 HD|TV|
0000,0919,093B,09CD:2BD5|Sky Italia|Sky Calcio 5|TV|
0000,0919,093B,09CD:0F48|Sky Italia|Sky Calcio 6 HD|TV|
0000,0919,093B,09CD:2BD7|Sky Italia|Sky Calcio 6|TV|
0000,0919,093B,09CD:1E5F|Sky Italia|Sky Calcio 7 HD|TV|
0000,0919,093B,09CD:2BD9|Sky Italia|Sky Calcio 7|TV|
0000,0919,093B,09CD:1E5C|Sky Italia|Sky Calcio 8 HD|TV|
0000,0919,093B,09CD:2D56|Sky Italia|Sky Calcio 8|TV|
0000,0919,093B,09CD:2D5D|Sky Italia|Sky Calcio 9|TV|
0000,0919,093B,09CD:2D5F|Sky Italia|Sky Calcio 10|TV|
0000,0919,093B,09CD:2D61|Sky Italia|Sky Calcio 11|TV|
0000,0919,093B,09CD:2D62|Sky Italia|Sky Calcio 12|TV|
0000,0919,093B,09CD:2D63|Sky Italia|Sky Calcio 13|TV|
0000,0919,093B,09CD:2D66|Sky Italia|Sky Calcio 14|TV|
0000,0919,093B,09CD:2C2F|Sky Italia|Sky Calcio Info|TV|
0000,0919,093B,09CD:2AAB|Sky Italia|Sport Active 1|TV|
0000,0919,093B,09CD:2AAC|Sky Italia|Sports Active 2|TV|
0000,0919,093B,09CD:2AB7|Sky Italia|Sports Active 3|TV|
0000,0919,093B,09CD:3454|Sky Italia|goal Alert HD|TV|
0000,0919,093B,09CD:1037|Sky Italia|MosaicoActiveHD|TV|
0000,0919,093B,09CD:2D02|Sky Italia|DeA Sapere HD|TV|
0000,0919,093B,09CD:379C|Sky Italia|NationalGeo HD|TV|
0000,0919,093B,09CD:0E39|Sky Italia|NationalGeo|TV|
0000,0919,093B,09CD:0FDA|Sky Italia|NationalGeo +1|TV|
0000,0919,093B,09CD:0DBB|Sky Italia|NatGeo Wild HD|TV|
0000,0919,093B,09CD:1FBE|Sky Italia|NatGeo Wild|TV|
0000,0919,093B,09CD:0DBA|Sky Italia|NatGeo Adv HD|TV|
0000,0919,093B,09CD:1015|Sky Italia|Discovery HD|TV|
0000,0919,093B,09CD:2B71|Sky Italia|Discovery|TV|
0000,0919,093B,09CD:2FD1|Sky Italia|Discovery +1|TV|
0000,0919,093B,09CD:2B13|Sky Italia|Discovery Sci HD|TV|
0000,0919,093B,09CD:05BB|Sky Italia|Discovery Sci|TV|
0000,0919,093B,09CD:1C32|Sky Italia|DiscoveryT&L HD|TV|
0000,0919,093B,09CD:05B9|Sky Italia|Discovery Travel|TV|
0000,0919,093B,09CD:2C90|Sky Italia|Animal Planet|TV|
0000,0919,093B,09CD:0DB9|Sky Italia|History HD|TV|
0000,0919,093B,09CD:1FCF|Sky Italia|History|TV|
0000,0919,093B,09CD:0FD9|Sky Italia|History +1|TV|
0000,0919,093B,09CD:1048|Sky Italia|Sky Arte HD|TV|
0000,0919,093B,09CD:0DB7|Sky Italia|GamberoRossoHD|TV|
0000,0919,093B,09CD:1FCC|Sky Italia|Gambero Rosso|TV|
0000,0919,093B,09CD:0E2E|Sky Italia|Alice|TV|
0000,0919,093B,09CD:0E31|Sky Italia|Marcopolo|TV|
0000,0919,093B,09CD:3C01|Sky Italia|DoveTv|TV|
0000,0919,093B,09CD:0E2F|Sky Italia|Leonardo|TV|
0000,0919,093B,09CD:1101|Sky Italia|Doctor's Life|TV|
0000,0919,093B,09CD:1111|Sky Italia|EasyBaby|TV|
0000,0919,093B,09CD:3BF4|Sky Italia|Babel|TV|
0000,0919,093B,09CD:1FAF|Sky Italia|Yacht & Sail|TV|
0000,0919,093B,09CD:3BF0|Sky Italia|Caccia e Pesca|TV|
0000,0919,093B,09CD:10FE|Sky Italia|Caccia e Pesca +|TV|
0000,0919,093B,09CD:0001|Sky Italia|MTV Live HD|TV|
0000,0919,093B,09CD:0E24|Sky Italia|MTV|TV|
0000,0919,093B,09CD:0594|Sky Italia|MTV Music|TV|
0000,0919,093B,09CD:0595|Sky Italia|MTV Dance|TV|
0000,0919,093B,09CD:2DBC|Sky Italia|MTV Rocks|TV|
0000,0919,093B,09CD:2DBD|Sky Italia|MTV Hits|TV|
0000,0919,093B,09CD:0593|Sky Italia|MTV Classic|TV|
0000,0919,093B,09CD:2C28|Sky Italia|myDeejay|TV|
0000,0919,093B,09CD:0E2A|Sky Italia|DeeJayTV|TV|
0000,0919,093B,09CD:38F3|Sky Italia|Music Box|TV|
0000,0919,093B,09CD:3C1C|Sky Italia|Matchmusic|TV|
0000,0919,093B,09CD:3BCD|Sky Italia|Hip Hop TV|TV|
0000,0919,093B,09CD:3BE5|Sky Italia|Rock TV|TV|
0000,0919,093B,09CD:2FD4|Sky Italia|Radio Capital Tv|TV|
0000,0919,093B,09CD:2CC8|Sky Italia|Classica|TV|
0000,0919,093B,09CD:1020|Sky Italia|Disney Ch. HD|TV|
0000,0919,093B,09CD:2B6E|Sky Italia|Disney Channel|TV|
0000,0919,093B,09CD:2C8B|Sky Italia|Disney Ch. +1|TV|
0000,0919,093B,09CD:2B6A|Sky Italia|Disney Ch. +2|TV|
0000,0919,093B,09CD:2D03|Sky Italia|Disney XD HD|TV|
0000,0919,093B,09CD:3BCB|Sky Italia|Disney XD|TV|
0000,0919,093B,09CD:2CBD|Sky Italia|Disney XD +1|TV|
0000,0919,093B,09CD:2C8D|Sky Italia|Disney XD +2|TV|
0000,0919,093B,09CD:2CBE|Sky Italia|DisneyInEnglish|TV|
0000,0919,093B,09CD:2B7C|Sky Italia|Disney Junior|TV|
0000,0919,093B,09CD:3BC5|Sky Italia|Disney Junior +1|TV|
0000,0919,093B,09CD:3BCC|Sky Italia|Cartoon Network|TV|
0000,0919,093B,09CD:2FE8|Sky Italia|Cartoon +1|TV|
0000,0919,093B,09CD:3C07|Sky Italia|Boomerang|TV|
0000,0919,093B,09CD:2FE9|Sky Italia|Boomerang +1|TV|
0000,0919,093B,09CD:2C31|Sky Italia|DeAJunior|TV|
0000,0919,093B,09CD:2CC4|Sky Italia|DeAKids|TV|
0000,0919,093B,09CD:2FD0|Sky Italia|DeAKids +1|TV|
0000,0919,093B,09CD:2C9D|Sky Italia|Super!|TV|
0000,0919,093B,09CD:2C38|Sky Italia|Nickelodeon|TV|
0000,0919,093B,09CD:2FF1|Sky Italia|Nickelodeon +1|TV|
0000,0919,093B,09CD:0590|Sky Italia|Nick Jr|TV|
0000,0919,093B,09CD:2FDE|Sky Italia|Nick Jr +1|TV|
0000,0919,093B,09CD:3450|Sky Italia|JimJam|TV|
0000,0919,093B,09CD:0FDE|Sky Italia|JimJam +1|TV|
0000,0919,093B,09CD:0FF5|Sky Italia|Planet Kids|TV|
0000,0919,093B,09CD:2C2E|Sky Italia|Baby TV|TV|
0000,0919,093B,09CD:3452|Sky Italia|MAN-GA|TV|
0000,0919,093B,09CD:2FD3|Sky Italia|-frisbee-|TV|
0000,0919,093B,09CD:2FD5|Sky Italia|K2|TV|
0000,0919,093B,09CD:110A|Sky Italia|Sky TG24|TV|
0000,0919,093B,09CD:10E8|Sky Italia|TG24PrimoPiano|TV|
0000,0919,093B,09CD:10EC|Sky Italia|TG24 Eventi|TV|
0000,0919,093B,09CD:10EA|Sky Italia|TG24 Rassegne|TV|
0000,0919,093B,09CD:10E9|Sky Italia|TG24 Sport|TV|
0000,0919,093B,09CD:10E7|Sky Italia|TG24 Mosaico|TV|
0000,0919,093B,09CD:10E4|Sky Italia|Voting|TV|
0000,0919,093B,09CD:10E1|Sky Italia|Sky Meteo24|TV|
0000,0919,093B,09CD:3A0B|Sky Italia|TG NORBA 24|TV|
0000,0919,093B,09CD:0599|Sky Italia|Class CNBC|TV|
0000,0919,093B,09CD:2BCB|Sky Italia|CNN Intl.|TV|
0000,0919,093B,09CD:1FA7|Sky Italia|Fox News|TV|
0000,0919,093B,09CD:38D0|Sky Italia|Fox Business|TV|
0000,0919,093B,09CD:1FAC|Sky Italia|Sky News|TV|
0000,0919,093B,09CD:1041|Sky Italia|Sky 3D|TV|
0000,0919,093B,09CD:1042|Sky Italia|Sky 3D|TV|
0000,0919,093B,09CD:1043|Sky Italia|Sky 3D|TV|
0000,0919,093B,09CD:1044|Sky Italia|Sky 3D|TV|
0000,0919,093B,09CD:2B12|Sky Italia|Sky Sport 2 HD|TV|
0000,0919,093B,09CD:2AB0|Sky Italia|Sky Sport 2|TV|
0000,0919,093B,09CD:2B20|Sky Italia|Sky Sport24 HD|TV|
0000,0919,093B,09CD:2B1D|Sky Italia|Sky Sport24 HD|TV|
0000,0919,093B,09CD:2AB8|Sky Italia|Sky Sport24|TV|
0000,0919,093B,09CD:2ABA|Sky Italia|Sky Sport24|TV|
0000,0919,093B,09CD:2FEF|Sky Italia|Bike Channel|TV|
0000,0919,093B,09CD:1C3E|Sky Italia|Sky Supercalcio HD|TV|
0000,0919,093B,09CD:2AAF|Sky Italia|Sky Supercalcio|TV|
0000,0919,093B,09CD:1C53|Sky Italia|DiscoveryT&L HD|TV|
0000,0919,093B,09CD:0582|Sky Italia|Discovery Travel|TV|
0000,0919,093B,09CD:1049|Sky Italia|Sky Arte HD|TV|
0000,0919,093B,09CD:0DB0|Sky Italia|GamberoRossoHD|TV|
0000,0919,093B,09CD:1FA6|Sky Italia|Gambero Rosso|TV|
0000,0919,093B,09CD:0E1B|Sky Italia|Alice|TV|
0000,0919,093B,09CD:0E1A|Sky Italia|Marcopolo|TV|
0000,0919,093B,09CD:3BC6|Sky Italia|DoveTv|TV|
0000,0919,093B,09CD:0E1C|Sky Italia|Leonardo|TV|
0000,0919,093B,09CD:1FBF|Sky Italia|Yacht & Sail|TV|
0000,0919,093B,09CD:1123|Sky Italia|Sky TG24|TV|
0000,0919,093B,09CD:10FC|Sky Italia|Sky TG24|TV|
0000,0919,093B,09CD:112A|Sky Italia|11861H SID 0x112a|TV|
0000,0919,093B,09CD:1E48|Sky Italia|11842V SID 0x1e48|TV|
0000,0919,093B,09CD:2AB9|Sky Italia|PPV Bundle|TV|
0000,0919,093B,09CD:2ABB|Sky Italia|PPV Bundle2|TV|
0000,0919,093B,09CD:342C|Sky Italia|Playjam|TV|
0000,0919,093B,09CD:2BBA|Sky Italia|Cielo_interact|TV|
0000,0919,093B,09CD:1FC6|Sky Italia|TestTS63|TV|
0000,0919,093B,09CD:1C7E|Sky Italia|Test T|TV|
0000,0919,093B,09CD:24FF|Sky Italia|TEST12|TV|
0000,0919,093B,09CD:2500|Sky Italia|TEST13|TV|
0000,0919,093B,09CD:2502|Sky Italia|TEST14|TV|
0000,0919,093B,09CD:2503|Sky Italia|TEST15|TV|
0000,0919,093B,09CD:2504|Sky Italia|TEST16|TV|
0000,0919,093B,09CD:38DF|Sky Italia|Sky Assist|TV|
0000,0919,093B,09CD:38C0|Sky Italia|Sky Inside|TV|
0000,0919,093B,09CD:38C2|Sky Italia|Sky Inside|TV|
0000,0919,093B,09CD:38CA|Sky Italia|Sky Inside|TV|
0000,0919,093B,09CD:38CB|Sky Italia|Sky Inside|TV|
0000,0919,093B,09CD:0F61|Sky Italia|Cinema 1 HD|TV|
0000,0919,093B,09CD:2C24|Sky Italia|Cinema 1 HD|TV|
0000,0919,093B,09CD:0F62|Sky Italia|Cinema +1 HD|TV|
0000,0919,093B,09CD:2C45|Sky Italia|Cinema +1 HD|TV|
0000,0919,093B,09CD:0F63|Sky Italia|Cinema +24 HD|TV|
0000,0919,093B,09CD:2C46|Sky Italia|Cinema +24 HD|TV|
0000,0919,093B,09CD:0F64|Sky Italia|Cinema Oscar HD|TV|
0000,0919,093B,09CD:2C4F|Sky Italia|Cinema Oscar HD|TV|
0000,0919,093B,09CD:0F65|Sky Italia|CinemaFamilyHD|TV|
0000,0919,093B,09CD:2C47|Sky Italia|CinemaFamilyHD|TV|
0000,0919,093B,09CD:0F67|Sky Italia|Cinema Passion HD|TV|
0000,0919,093B,09CD:2C49|Sky Italia|Cinema Passion HD|TV|
0000,0919,093B,09CD:0F68|Sky Italia|Cinema Comedy HD|TV|
0000,0919,093B,09CD:2C4A|Sky Italia|Cinema Comedy HD|TV|
0000,0919,093B,09CD:0F69|Sky Italia|Cinema Max HD|TV|
0000,0919,093B,09CD:2C55|Sky Italia|Cinema Max HD|TV|
0000,0919,093B,09CD:1E32|Sky Italia|Cinema Max +1 HD|TV|
0000,0919,093B,09CD:2C4B|Sky Italia|Cinema Max +1 HD|TV|
0000,0919,093B,09CD:0F78|Sky Italia|Cinema Cult HD|TV|
0000,0919,093B,09CD:2C65|Sky Italia|Cinema Cult HD|TV|
0000,0919,093B,09CD:1E33|Sky Italia|Cinema Classics HD|TV|
0000,0919,093B,09CD:2C48|Sky Italia|Cinema Classics HD|TV|
0000,0919,093B,09CD:0F3E|Sky Italia|Sky Uno HD|TV|
0000,0919,093B,09CD:2C43|Sky Italia|Sky Uno HD|TV|
0000,0919,093B,09CD:0F3F|Sky Italia|Fox HD|TV|
0000,0919,093B,09CD:2C3D|Sky Italia|Fox HD|TV|
0000,0919,093B,09CD:0F47|Sky Italia|Fox Life HD|TV|
0000,0919,093B,09CD:2C6C|Sky Italia|Fox Life HD|TV|
0000,0919,093B,09CD:0F49|Sky Italia|Fox Crime HD|TV|
0000,0919,093B,09CD:2C3E|Sky Italia|Fox Crime HD|TV|
0000,0919,093B,09CD:0F4A|Sky Italia|AXN HD|TV|
0000,0919,093B,09CD:2C30|Sky Italia|AXN HD|TV|
0000,0919,093B,09CD:0F4B|Sky Italia|Real Time HD|TV|
0000,0919,093B,09CD:2C6D|Sky Italia|Real Time HD|TV|
0000,0919,093B,09CD:0F6A|Sky Italia|Sky Sport 1 HD|TV|
0000,0919,093B,09CD:2C34|Sky Italia|Sky Sport 1 HD|TV|
0000,0919,093B,09CD:0F4E|Sky Italia|Sky Sport 2 HD|TV|
0000,0919,093B,09CD:2C68|Sky Italia|Sky Sport 2 HD|TV|
0000,0919,093B,09CD:0F5B|Sky Italia|Sky Sport 3 HD|TV|
0000,0919,093B,09CD:2C5D|Sky Italia|Sky Sport 3 HD|TV|
0000,0919,093B,09CD:0F5C|Sky Italia|Sky Sport F1 HD|TV|
0000,0919,093B,09CD:2C52|Sky Italia|Sky Sport F1 HD|TV|
0000,0919,093B,09CD:0F50|Sky Italia|Eurosport HD|TV|
0000,0919,093B,09CD:2C35|Sky Italia|Eurosport HD|TV|
0000,0919,093B,09CD:0F51|Sky Italia|Eurosport 2 HD|TV|
0000,0919,093B,09CD:2C5E|Sky Italia|Eurosport 2 HD|TV|
0000,0919,093B,09CD:0F52|Sky Italia|ESPN America HD|TV|
0000,0919,093B,09CD:2C6E|Sky Italia|ESPN America HD|TV|
0000,0919,093B,09CD:0F3D|Sky Italia|ExtremeSportsHD|TV|
0000,0919,093B,09CD:2C6B|Sky Italia|ExtremeSportsHD|TV|
0000,0919,093B,09CD:0F4F|Sky Italia|Sky Supercalcio HD|TV|
0000,0919,093B,09CD:2C2D|Sky Italia|Sky Supercalcio HD|TV|
0000,0919,093B,09CD:0F55|Sky Italia|Sky Calcio 1 HD|TV|
0000,0919,093B,09CD:2C76|Sky Italia|Sky Calcio 1 HD|TV|
0000,0919,093B,09CD:0F56|Sky Italia|Sky Calcio 2 HD|TV|
0000,0919,093B,09CD:2C77|Sky Italia|Sky Calcio 2 HD|TV|
0000,0919,093B,09CD:0F57|Sky Italia|Sky Calcio 3 HD|TV|
0000,0919,093B,09CD:2C78|Sky Italia|Sky Calcio 3 HD|TV|
0000,0919,093B,09CD:0F58|Sky Italia|Sky Calcio 4 HD|TV|
0000,0919,093B,09CD:2C79|Sky Italia|Sky Calcio 4 HD|TV|
0000,0919,093B,09CD:0F70|Sky Italia|Sky Calcio 5 HD|TV|
0000,0919,093B,09CD:2C7A|Sky Italia|Sky Calcio 5 HD|TV|
0000,0919,093B,09CD:0F6B|Sky Italia|Sky Calcio 6 HD|TV|
0000,0919,093B,09CD:2C7B|Sky Italia|Sky Calcio 6 HD|TV|
0000,0919,093B,09CD:0F6C|Sky Italia|Sky Calcio 7 HD|TV|
0000,0919,093B,09CD:2C7C|Sky Italia|Sky Calcio 7 HD|TV|
0000,0919,093B,09CD:0F6D|Sky Italia|Sky Calcio 8 HD|TV|
0000,0919,093B,09CD:2C7D|Sky Italia|Sky Calcio 8 HD|TV|
0000,0919,093B,09CD:1E3D|Sky Italia|NationalGeo HD|TV|
0000,0919,093B,09CD:2C2B|Sky Italia|NationalGeo HD|TV|
0000,0919,093B,09CD:1E41|Sky Italia|NatGeo Wild HD|TV|
0000,0919,093B,09CD:2C72|Sky Italia|NatGeo Wild HD|TV|
0000,0919,093B,09CD:1E22|Sky Italia|NatGeo Adv HD|TV|
0000,0919,093B,09CD:2C73|Sky Italia|NatGeo Adv HD|TV|
0000,0919,093B,09CD:1E3C|Sky Italia|Discovery HD|TV|
0000,0919,093B,09CD:2C26|Sky Italia|Discovery HD|TV|
0000,0919,093B,09CD:1E3E|Sky Italia|Discovery Sci HD|TV|
0000,0919,093B,09CD:2C6F|Sky Italia|Discovery Sci HD|TV|
0000,0919,093B,09CD:1E3F|Sky Italia|DiscoveryT&L HD|TV|
0000,0919,093B,09CD:2C70|Sky Italia|DiscoveryT&L HD|TV|
0000,0919,093B,09CD:1E42|Sky Italia|GamberoRossoHD|TV|
0000,0919,093B,09CD:2C74|Sky Italia|GamberoRossoHD|TV|
0000,0919,093B,09CD:1E40|Sky Italia|History HD|TV|
0000,0919,093B,09CD:2C71|Sky Italia|History HD|TV|
0000,0919,093B,09CD:0F40|Sky Italia|Sky Arte HD|TV|
0000,0919,093B,09CD:2C60|Sky Italia|Sky Arte HD|TV|
0000,0919,093B,09CD:0F41|Sky Italia|Sky Arte HD|TV|
0000,0919,093B,09CD:2C61|Sky Italia|Sky Arte HD|TV|
0000,0919,093B,09CD:1E44|Sky Italia|MTV LIVE HD|TV|
0000,0919,093B,09CD:2C6A|Sky Italia|MTV LIVE HD|TV|
0000,0919,093B,09CD:1E43|Sky Italia|Disney Ch. HD|TV|
0000,0919,093B,09CD:2C75|Sky Italia|Disney Ch. HD|TV|
0000,0919,093B,09CD:0F42|Sky Italia|Disney XD HD|TV|
0000,0919,093B,09CD:2C32|Sky Italia|Disney XD HD|TV|
0000,0919,093B,09CD:1E4F|Sky Italia|Fox Sports HD|TV|
0000,0919,093B,09CD:1E50|Sky Italia|Fox Sports Plus HD|TV|
0000,0919,093B,09CD:104A|Sky Italia|Classica HD|TV|
0000,0919,093B,09CD:1C5C|Sky Italia|MTV HD|TV|
0000,0919,093B,09CD:1E34|Sky Italia|Primafila 1 HD|TV|
0000,0919,093B,09CD:2C3C|Sky Italia|Primafila 1 HD|TV|
0000,0919,093B,09CD:1E35|Sky Italia|Primafila 3 HD|TV|
0000,0919,093B,09CD:2C5B|Sky Italia|Primafila 3 HD|TV|
0000,0919,093B,09CD:1E36|Sky Italia|Primafila 5 HD|TV|
0000,0919,093B,09CD:2C4C|Sky Italia|Primafila 5 HD|TV|
0000,0919,093B,09CD:1E37|Sky Italia|Primafila 7 HD|TV|
0000,0919,093B,09CD:2C4D|Sky Italia|Primafila 7 HD|TV|
0000,0919,093B,09CD:1E38|Sky Italia|Primafila 9 HD|TV|
0000,0919,093B,09CD:2C4E|Sky Italia|Primafila 9 HD|TV|
0000,0919,093B,09CD:1E20|Sky Italia|Primafila 11 HD|TV|
0000,0919,093B,09CD:2C50|Sky Italia|Primafila 11 HD|TV|
0000,0919,093B,09CD:1E21|Sky Italia|Primafila 13 HD|TV|
0000,0919,093B,09CD:2C51|Sky Italia|Primafila 13 HD|TV|
0000,0919,093B,09CD:1FBC|Sky Italia|Vetrina Primafila|TV|
0000,0919,093B,09CD:1FBD|Sky Italia|Vetrina Primafila|TV|
0000,0919,093B,09CD:1E5B|Sky Italia|Primafila 1 HD|TV|
0000,0919,093B,09CD:2D65|Sky Italia|Primafila 1|TV|
0000,0919,093B,09CD:38BF|Sky Italia|Primafila 2|TV|
0000,0919,093B,09CD:1E60|Sky Italia|Primafila 3 HD|TV|
0000,0919,093B,09CD:2BD0|Sky Italia|Primafila 3|TV|
0000,0919,093B,09CD:38E0|Sky Italia|Primafila 4|TV|
0000,0919,093B,09CD:0F71|Sky Italia|Primafila 5 HD|TV|
0000,0919,093B,09CD:2BCE|Sky Italia|Primafila 5|TV|
0000,0919,093B,09CD:38E1|Sky Italia|Primafila 6|TV|
0000,0919,093B,09CD:0F4C|Sky Italia|Primafila 7 HD|TV|
0000,0919,093B,09CD:2BCC|Sky Italia|Primafila 7|TV|
0000,0919,093B,09CD:340D|Sky Italia|Primafila 8|TV|
0000,0919,093B,09CD:108B|Sky Italia|Primafila 9 HD|TV|
0000,0919,093B,09CD:2BCA|Sky Italia|Primafila 9|TV|
0000,0919,093B,09CD:3400|Sky Italia|Primafila 10|TV|
0000,0919,093B,09CD:108F|Sky Italia|Primafila 11 HD|TV|
0000,0919,093B,09CD:2BC5|Sky Italia|Primafila 11|TV|
0000,0919,093B,09CD:3402|Sky Italia|Primafila 12|TV|
0000,0919,093B,09CD:0F72|Sky Italia|Primafila 13 HD|TV|
0000,0919,093B,09CD:2BC3|Sky Italia|Primafila 13|TV|
0000,0919,093B,09CD:3405|Sky Italia|Primafila 14|TV|
0000,0919,093B,09CD:2D57|Sky Italia|Primafila 15|TV|
0000,0919,093B,09CD:2D53|Sky Italia|Primafila 16|TV|
0000,0919,093B,09CD:2D51|Sky Italia|Primafila 17|TV|
0000,0919,093B,09CD:2D54|Sky Italia|Primafila 18|TV|
0000,0919,093B,09CD:2D55|Sky Italia|Primafila 19|TV|
0000,0919,093B,09CD:37AA|Sky Italia|Primafila 20 HD|TV|
0000,0919,093B,09CD:37D2|Sky Italia|Primafila 20 HD|TV|
0000,0919,093B,09CD:2DBE|Sky Italia|Primafila 20|TV|
0000,0919,093B,09CD:2DBF|Sky Italia|Primafila 20|TV|
0000,0919,093B,09CD:38BD|Sky Italia|Primafila 21|TV|
0000,0919,093B,09CD:38FA|Sky Italia|Primafila 21|TV|
0000,0919,093B,09CD:38BC|Sky Italia|Primafila 22|TV|
0000,0919,093B,09CD:38C8|Sky Italia|Primafila 22|TV|
0000,0919,093B,09CD:3421|Sky Italia|Primafila 23|TV|
0000,0919,093B,09CD:342A|Sky Italia|Primafila 23|TV|
0000,0919,093B,09CD:3427|Sky Italia|Primafila 24|TV|
0000,0919,093B,09CD:3435|Sky Italia|Primafila 24|TV|
0000,0919,093B,09CD:3422|Sky Italia|Primafila 25|TV|
0000,0919,093B,09CD:3431|Sky Italia|Primafila 25|TV|
0000,0919,093B,09CD:3423|Sky Italia|Primafila 26|TV|
0000,0919,093B,09CD:3432|Sky Italia|Primafila 26|TV|
0000,0919,093B,09CD:341E|Sky Italia|Primafila 27|TV|
0000,0919,093B,09CD:3433|Sky Italia|Primafila 27|TV|
0000,0919,093B,09CD:38BE|Sky Italia|Primafila 28|TV|
0000,0919,093B,09CD:38C9|Sky Italia|Primafila 28|TV|
### Eurosport
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3305|Sky Italia|Eurosport HD|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3307|Sky Italia|Eurosport HD turk|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3308|Sky Italia|Eurosport HD Russian|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3309|Sky Italia|Eurosport HD dutch|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:330A|Sky Italia|Eurosport HD Czech|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:330B|Sky Italia|Eurosport HD german|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:330D|Sky Italia|Eurosport HD portugues|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:330E|Sky Italia|Eurosport HD Polish|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:330F|Sky Italia|Eurosport HD hungaria|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3310|Sky Italia|Eurosport HD Bulgaria|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3311|Sky Italia|Eurosport HD Italy|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3312|Sky Italia|Eurosport HD Romania|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3313|Sky Italia|Eurosport HD ECH|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3314|Sky Italia|Eurosport HD Spain|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3315|Sky Italia|Eurosport HD|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3316|Sky Italia|Eurosport HD Serbia|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3317|Sky Italia|Eurosport HD Greek|TV|
0000,0100,0500,0604,0919,091F,093B,09CD,0B01,0BAA,1803,1813,1861:3B63|Sky Italia|Eurosport 2 HD|TV|
```

Sky Italia Radio last review: 2013-02-25 by: Frosch1482

```
###
### Sky Italia Radio
###
0000,0919,093B,09CD:3BEB|Radio Sky Italia|Hit Italia|RADIO|
0000,0919,093B,09CD:3C06|Radio Sky Italia|Yesterjay 2000|RADIO|
0000,0919,093B,09CD:3BEA|Radio Sky Italia|Yesterjay '90|RADIO|
0000,0919,093B,09CD:3BE9|Radio Sky Italia|Yesterjay '80|RADIO|
0000,0919,093B,09CD:3BFE|Radio Sky Italia|Capital '70|RADIO|
0000,0919,093B,09CD:3BFF|Radio Sky Italia|Vintage '60|RADIO|
0000,0919,093B,09CD:3BE8|Radio Sky Italia|50 songs|RADIO|
0000,0919,093B,09CD:3C11|Radio Sky Italia|B-Side|RADIO|
0000,0919,093B,09CD:3C19|Radio Sky Italia|Baby Mix|RADIO|
0000,0919,093B,09CD:3C18|Radio Sky Italia|Cinema Deejay|RADIO|
0000,0919,093B,09CD:3C0C|Radio Sky Italia|Dance|RADIO|
0000,0919,093B,09CD:3C1A|Radio Sky Italia|Disc Joker|RADIO|
0000,0919,093B,09CD:3C15|Radio Sky Italia|Extrabeat|RADIO|
0000,0919,093B,09CD:3C0A|Radio Sky Italia|Heart n' song|RADIO|
0000,0919,093B,09CD:3BEC|Radio Sky Italia|ItalianVintage|RADIO|
0000,0919,093B,09CD:3C12|Radio Sky Italia|Jazz & Fusion|RADIO|
0000,0919,093B,09CD:3C13|Radio Sky Italia|Jazz Gold|RADIO|
0000,0919,093B,09CD:3C0E|Radio Sky Italia|Livetime|RADIO|
0000,0919,093B,09CD:38D2|Radio Sky Italia|M2O|RADIO|
0000,0919,093B,09CD:3C17|Radio Sky Italia|Opera|RADIO|
0000,0919,093B,09CD:38D8|Radio Sky Italia|R 101|RADIO|
0000,0919,093B,09CD:38D3|Radio Sky Italia|Radio 105|RADIO|
0000,0919,093B,09CD:38DA|Radio Sky Italia|Radio 24|RADIO|
0000,0919,093B,09CD:38D5|Radio Sky Italia|Radio Capital|RADIO|
0000,0919,093B,09CD:38D1|Radio Sky Italia|Radio DeeJay|RADIO|
0000,0919,093B,09CD:38D9|Radio Sky Italia|Radio Italia|RADIO|
0000,0919,093B,09CD:38D6|Radio Sky Italia|Radio KissKiss|RADIO|
0000,0919,093B,09CD:38DC|Radio Sky Italia|Radio Montecarlo|RADIO|
0000,0919,093B,09CD:38DB|Radio Sky Italia|RDS|RADIO|
0000,0919,093B,09CD:3C0D|Radio Sky Italia|Ritmo Latino|RADIO|
0000,0919,093B,09CD:3C0F|Radio Sky Italia|Rock Classic|RADIO|
0000,0919,093B,09CD:3C10|Radio Sky Italia|Rock Shock|RADIO|
0000,0919,093B,09CD:38D7|Radio Sky Italia|RTL 102.5|RADIO|
0000,0919,093B,09CD:3C16|Radio Sky Italia|Sinfonia|RADIO|
0000,0919,093B,09CD:3C14|Radio Sky Italia|Soul Train|RADIO|
0000,0919,093B,09CD:3C00|Radio Sky Italia|Vibe|RADIO|
0000,0919,093B,09CD:38D4|Radio Sky Italia|Virgin Radio|RADIO|
0000,0919,093B,09CD:3BE6|Radio Sky Italia|Sky Music|TV|
0000,0919,093B,09CD:3BED|Radio Sky Italia|Sky Music|TV|
0000,0919,093B,09CD:38CC|Radio Sky Italia|Sky Radio|TV|
```

last review: 2014-01-24 by: Humorator

Review needed for packages sorted by package

```
### Sky TV ###
0000,0919,093B,09CD:057C|Sky Italia|Comedy Central|TV|Sky TV
0000,0919,093B,09CD:0585|Sky Italia|LEI +1|TV|Sky TV
0000,0919,093B,09CD:05A3|Sky Italia|AXN|TV|Sky TV
0000,0919,093B,09CD:0FBD|Sky Italia|Fox +1|TV|Sky TV
0000,0919,093B,09CD:0FC1|Sky Italia|Fox Crime +1|TV|Sky TV
0000,0919,093B,09CD:0FC2|Sky Italia|Fox Life +1|TV|Sky TV
0000,0919,093B,09CD:0FD5|Sky Italia|Fox +2|TV|Sky TV
0000,0919,093B,09CD:0FD6|Sky Italia|Fox Life +2|TV|Sky TV
0000,0919,093B,09CD:0FD7|Sky Italia|Fox Crime +2|TV|Sky TV
0000,0919,093B,09CD:110C|Sky Italia|POKERItalia24|TV|Sky TV
0000,0919,093B,09CD:1111|Sky Italia|EasyBaby|TV|Sky TV
0000,0919,093B,09CD:1FA7|Sky Italia|Fox News|TV|Sky TV
0000,0919,093B,09CD:1FBA|Sky Italia|Fox|TV|Sky TV
0000,0919,093B,09CD:1FC5|Sky Italia|Fox Life|TV|Sky TV
0000,0919,093B,09CD:1FC8|Sky Italia|Fox Retro|TV|Sky TV
0000,0919,093B,09CD:1FCB|Sky Italia|Fox Crime|TV|Sky TV
0000,0919,093B,09CD:1FCC|Sky Italia|Gambero Rosso|TV|Sky TV
0000,0919,093B,09CD:2B60|Sky Italia|AXN Sci-Fi|TV|Sky TV
0000,0919,093B,09CD:2B66|Sky Italia|cielo|TV|Sky TV
0000,0919,093B,09CD:2B70|Sky Italia|Sky Uno +1|TV|Sky TV
0000,0919,093B,09CD:2BBA|Sky Italia|Cielo_interact|TV|Sky TV
0000,0919,093B,09CD:2BCD|Sky Italia|GXT|TV|Sky TV
0000,0919,093B,09CD:2C62|Sky Italia|Gambero Rosso|TV|Sky TV
0000,0919,093B,09CD:2C63|Sky Italia|Dove TV|TV|Sky TV
0000,0919,093B,09CD:2C91|Sky Italia|Horror Channel|TV|Sky TV
0000,0919,093B,09CD:2CB5|Sky Italia|Automoto TV|TV|Sky TV
0000,0919,093B,09CD:2CC8|Sky Italia|Classica|TV|Sky TV
0000,0919,093B,09CD:2DC6|Sky Italia|Sky Uno|TV|Sky TV
0000,0919,093B,09CD:2FE0|Sky Italia|AXN +1|TV|Sky TV
0000,0919,093B,09CD:2FE7|Sky Italia|GXT +1|TV|Sky TV
0000,0919,093B,09CD:2FEE|Sky Italia|Bike Channel|TV|Sky TV
0000,0919,093B,09CD:2FF0|Sky Italia|Comedy +1|TV|Sky TV
0000,0919,093B,09CD:3452|Sky Italia|MAN-GA|TV|Sky TV
0000,0919,093B,09CD:38D0|Sky Italia|Fox Business|TV|Sky TV
0000,0919,093B,09CD:3902|Sky Italia|DIVA Universal|TV|Sky TV
0000,0919,093B,09CD:3BF4|Sky Italia|Babel|TV|Sky TV
0000,0919,093B,09CD:3C01|Sky Italia|Dove TV|TV|Sky TV
0000,0919,093B,09CD:3C03|Sky Italia|LEI|TV|Sky TV
0000,0919,093B,09CD:110A|Sky Italia|Sky TG24|TV|Sky TV
0000,0919,093B,09CD:10E8|Sky Italia|Sky TG24 Primo Piano|TV|Sky TV
0000,0919,093B,09CD:10EC|Sky Italia|Sky TG24 Eventi|TV|Sky TV
0000,0919,093B,09CD:10EA|Sky Italia|Sky TG24 Rassegne|TV|Sky TV
0000,0919,093B,09CD:1123|Sky Italia|Sky TG24|TV|Sky TV
0000,0919,093B,09CD:10FC|Sky Italia|Sky TG24|TV|Sky TV
0000,0919,093B,09CD:3A0B|Sky Italia|TG NORBA 24|TV|Sky TV
0000,0919,093B,09CD:10E1|Sky Italia|Sky Meteo24|TV|Sky TV
0000,0919,093B,09CD:0599|Sky Italia|Class CNBC|TV|Sky TV
0000,0919,093B,09CD:2BCB|Sky Italia|CNN Intl.|TV|Sky TV
0000,0919,093B,09CD:1FAC|Sky Italia|Sky News|TV|Sky TV

### Sky TV HD ###
0000,0919,093B,09CD:0DB7|Sky Italia|Gambero Rosso HD|TV|Sky TV HD
0000,0919,093B,09CD:0DB8|Sky Italia|Fox Life HD|TV|Sky TV HD
0000,0919,093B,09CD:0DBF|Sky Italia|Sky TG24 HD|TV|Sky TV HD
0000,0919,093B,09CD:0DC1|Sky Italia|Sky TG24 HD|TV|Sky TV HD
0000,0919,093B,09CD:0DCC|Sky Italia|Sky TG24 HD|TV|Sky TV HD
0000,0919,093B,09CD:0F3D|Sky Italia|ExtremeSportsHD|TV|Sky TV HD
0000,0919,093B,09CD:0F3E|Sky Italia|Sky Uno HD|TV|Sky TV HD
0000,0919,093B,09CD:0F3F|Sky Italia|Fox HD|TV|Sky TV HD
0000,0919,093B,09CD:0F40|Sky Italia|Sky Arte HD|TV|Sky TV HD
0000,0919,093B,09CD:0F41|Sky Italia|Sky Arte HD|TV|Sky TV HD
0000,0919,093B,09CD:0F47|Sky Italia|Fox Life HD|TV|Sky TV HD
0000,0919,093B,09CD:0F49|Sky Italia|Fox Crime HD|TV|Sky TV HD
0000,0919,093B,09CD:0F4A|Sky Italia|AXN HD|TV|Sky TV HD
0000,0919,093B,09CD:0F7E|Sky Italia|Sky TG24 HD|TV|Sky TV HD
0000,0919,093B,09CD:1048|Sky Italia|Sky Arte HD|TV|Sky TV HD
0000,0919,093B,09CD:1049|Sky Italia|Sky Arte HD|TV|Sky TV HD
0000,0919,093B,09CD:104A|Sky Italia|Classica HD|TV|Sky TV HD
0000,0919,093B,09CD:1C32|Sky Italia|Discovery T&L HD|TV|Sky TV HD
0000,0919,093B,09CD:1E3F|Sky Italia|DiscoveryT&L HD|TV|Sky TV HD
0000,0919,093B,09CD:1E42|Sky Italia|GamberoRossoHD|TV|Sky TV HD
0000,0919,093B,09CD:2502|Sky Italia|cielo HD|TV|Sky TV HD
0000,0919,093B,09CD:2505|Sky Italia|Sky Uno HD|TV|Sky TV HD
0000,0919,093B,09CD:2B1B|Sky Italia|Sky Sport24 HD|TV|Sky TV HD
0000,0919,093B,09CD:2B1D|Sky Italia|Sky Sport24 HD|TV|Sky TV HD
0000,0919,093B,09CD:2B20|Sky Italia|Sky Sport24 HD|TV|Sky TV HD
0000,0919,093B,09CD:2C30|Sky Italia|AXN HD|TV|Sky TV HD
0000,0919,093B,09CD:2C3D|Sky Italia|Fox HD|TV|Sky TV HD
0000,0919,093B,09CD:2C3E|Sky Italia|Fox Crime HD|TV|Sky TV HD
0000,0919,093B,09CD:2C43|Sky Italia|Sky Uno HD|TV|Sky TV HD
0000,0919,093B,09CD:2C44|Sky Italia|Gambero Rosso HD|TV|
0000,0919,093B,09CD:2C5C|Sky Italia|Sky TG24 HD|TV|Sky TV HD
0000,0919,093B,09CD:2C60|Sky Italia|Sky Arte HD|TV|Sky TV HD
0000,0919,093B,09CD:2C61|Sky Italia|Sky Arte HD|TV|Sky TV HD
0000,0919,093B,09CD:2C6B|Sky Italia|ExtremeSportsHD|TV|Sky TV HD
0000,0919,093B,09CD:2C6C|Sky Italia|Fox Life HD|TV|Sky TV HD
0000,0919,093B,09CD:2C70|Sky Italia|DiscoveryT&L HD|TV|Sky TV HD
0000,0919,093B,09CD:2C74|Sky Italia|GamberoRossoHD|TV|Sky TV HD
0000,0919,093B,09CD:2CF2|Sky Italia|ExtremeSports HD|TV|Sky TV HD
0000,0919,093B,09CD:3779|Sky Italia|AXN HD|TV|Sky TV HD
0000,0919,093B,09CD:379D|Sky Italia|Fox HD|TV|Sky TV HD
0000,0919,093B,09CD:379E|Sky Italia|Fox Crime HD|TV|Sky TV HD
0000,0919,093B,09CD:37BA|Sky Italia|Sky Uno +1 HD|TV|Sky TV HD

### Sky Famiglia ###
0000,0919,093B,09CD:0590|Sky Italia|Nick Jr|TV|Sky Famiglia
0000,0919,093B,09CD:0593|Sky Italia|MTV Classic|TV|Sky Famiglia
0000,0919,093B,09CD:0594|Sky Italia|MTV Music|TV|Sky Famiglia
0000,0919,093B,09CD:0595|Sky Italia|MTV Dance|TV|Sky Famiglia
0000,0919,093B,09CD:05BB|Sky Italia|Discovery Sci|TV|Sky Famiglia
0000,0919,093B,09CD:0E24|Sky Italia|MTV|TV|Sky Famiglia
0000,0919,093B,09CD:0E39|Sky Italia|NationalGeo|TV|Sky Famiglia
0000,0919,093B,09CD:0FD9|Sky Italia|History +1|TV|Sky Famiglia
0000,0919,093B,09CD:0FDA|Sky Italia|NationalGeo +1|TV|Sky Famiglia
0000,0919,093B,09CD:0FDE|Sky Italia|JimJam +1|TV|Sky Famiglia
0000,0919,093B,09CD:0FF5|Sky Italia|Planet Kids|TV|Sky Famiglia
0000,0919,093B,09CD:1FBE|Sky Italia|NatGeo Wild|TV|Sky Famiglia
0000,0919,093B,09CD:1FCF|Sky Italia|History|TV|Sky Famiglia
0000,0919,093B,09CD:2B6A|Sky Italia|Disney Channel +2|TV|Sky Famiglia
0000,0919,093B,09CD:2B6E|Sky Italia|Disney Channel|TV|Sky Famiglia
0000,0919,093B,09CD:2B71|Sky Italia|Discovery Channel|TV|Sky Famiglia
0000,0919,093B,09CD:2B7C|Sky Italia|Disney Junior|TV|Sky Famiglia
0000,0919,093B,09CD:2C2E|Sky Italia|Baby TV|TV|Sky Famiglia
0000,0919,093B,09CD:2C31|Sky Italia|DeAJunior|TV|Sky Famiglia
0000,0919,093B,09CD:2C38|Sky Italia|Nickelodeon|TV|Sky Famiglia
0000,0919,093B,09CD:2C8B|Sky Italia|Disney Channel +1|TV|Sky Famiglia
0000,0919,093B,09CD:2C8D|Sky Italia|Disney XD +2|TV|Sky Famiglia
0000,0919,093B,09CD:2C90|Sky Italia|Animal Planet|TV|Sky Famiglia
0000,0919,093B,09CD:2CBD|Sky Italia|Disney XD +1|TV|Sky Famiglia
0000,0919,093B,09CD:2CBE|Sky Italia|Disney In English|TV|Sky Famiglia
0000,0919,093B,09CD:2CC4|Sky Italia|DeAKids|TV|Sky Famiglia
0000,0919,093B,09CD:2D02|Sky Italia|DeA Sapere HD|TV|Sky Famiglia
0000,0919,093B,09CD:2D03|Sky Italia|Disney XD HD|TV|Sky Famiglia
0000,0919,093B,09CD:2DBC|Sky Italia|MTV Rocks|TV|Sky Famiglia
0000,0919,093B,09CD:2DBD|Sky Italia|MTV Hits|TV|Sky Famiglia
0000,0919,093B,09CD:2FD0|Sky Italia|DeAKids +1|TV|Sky Famiglia
0000,0919,093B,09CD:2FD1|Sky Italia|Discovery +1|TV|Sky Famiglia
0000,0919,093B,09CD:2FDE|Sky Italia|Nick Jr +1|TV|Sky Famiglia
0000,0919,093B,09CD:2FE8|Sky Italia|Cartoon +1|TV|Sky Famiglia
0000,0919,093B,09CD:2FE9|Sky Italia|Boomerang +1|TV|Sky Famiglia
0000,0919,093B,09CD:2FF1|Sky Italia|Nickelodeon +1|TV|Sky Famiglia
0000,0919,093B,09CD:3450|Sky Italia|JimJam|TV|Sky Famiglia
0000,0919,093B,09CD:3BC5|Sky Italia|Disney Junior +1|TV|Sky Famiglia
0000,0919,093B,09CD:3BCB|Sky Italia|Disney XD|TV|Sky Famiglia
0000,0919,093B,09CD:3BCC|Sky Italia|Cartoon Network|TV|Sky Famiglia
0000,0919,093B,09CD:3C07|Sky Italia|Boomerang|TV|Sky Famiglia

### Sky Famiglia HD ###
0000,0919,093B,09CD:1E3C|Sky Italia|Discovery HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:0001|Sky Italia|MTV Live HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:0DB9|Sky Italia|History HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:0DBA|Sky Italia|NatGeo Adventure HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:0DBB|Sky Italia|NatGeo Wild HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:0F42|Sky Italia|Disney XD HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:1015|Sky Italia|Discovery HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:1020|Sky Italia|Disney Channel HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:1E22|Sky Italia|NatGeo Adv HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:1E3D|Sky Italia|NationalGeo HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:1E3E|Sky Italia|Discovery Sci HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:1E40|Sky Italia|History HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:1E41|Sky Italia|NatGeo Wild HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:1E43|Sky Italia|Disney Channel HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:1E44|Sky Italia|MTV LIVE HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:2B13|Sky Italia|Discovery Sci HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:2C26|Sky Italia|Discovery HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:2C2B|Sky Italia|NationalGeo HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:2C32|Sky Italia|Disney XD HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:2C6A|Sky Italia|MTV LIVE HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:2C6F|Sky Italia|Discovery Sci HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:2C71|Sky Italia|History HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:2C72|Sky Italia|NatGeo Wild HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:2C73|Sky Italia|NatGeo Adv HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:2C75|Sky Italia|Disney Channel HD|TV|Sky Famiglia HD
0000,0919,093B,09CD:379C|Sky Italia|NationalGeo HD|TV|Sky Famiglia HD

### Sky Cinema ###
0000,0919,093B,09CD:1FC9|Sky Italia|Cinema Cult|TV|Sky Cinema
0000,0919,093B,09CD:2B5D|Sky Italia|Cinema 1|TV|Sky Cinema
0000,0919,093B,09CD:2B61|Sky Italia|Cinema Family|TV|Sky Cinema
0000,0919,093B,09CD:2B63|Sky Italia|Cinema +24|TV|Sky Cinema
0000,0919,093B,09CD:2B65|Sky Italia|Cinema Classics|TV|Sky Cinema
0000,0919,093B,09CD:2B6B|Sky Italia|Cinema Max|TV|Sky Cinema
0000,0919,093B,09CD:2B73|Sky Italia|Cinema Passion|TV|Sky Cinema
0000,0919,093B,09CD:2CF4|Sky Italia|Cinema Family+1 HD|TV|Sky Cinema
0000,0919,093B,09CD:2D68|Sky Italia|Sky Selection|TV|Sky Cinema
0000,0919,093B,09CD:2DB8|Sky Italia|Cinema itv|TV|Sky Cinema
0000,0919,093B,09CD:2DC3|Sky Italia|Cinema Max +1|TV|Sky Cinema
0000,0919,093B,09CD:2DCA|Sky Italia|Cinema +1|TV|Sky Cinema
0000,0919,093B,09CD:2DCC|Sky Italia|Cinema 007|TV|Sky Cinema
0000,0919,093B,09CD:2DCD|Sky Italia|Cinema Comedy|TV|Sky Cinema

### Sky Cinema HD ###
0000,0919,093B,09CD:0F61|Sky Italia|Cinema 1 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:0DEC|Sky Italia|Cinema Cult HD|TV|Sky Cinema HD
0000,0919,093B,09CD:0F62|Sky Italia|Cinema +1 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:0F63|Sky Italia|Cinema +24 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:0F64|Sky Italia|Cinema 007 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:0F65|Sky Italia|Cinema Family HD|TV|Sky Cinema HD
0000,0919,093B,09CD:0F67|Sky Italia|Cinema Passion HD|TV|Sky Cinema HD
0000,0919,093B,09CD:0F68|Sky Italia|Cinema Comedy HD|TV|Sky Cinema HD
0000,0919,093B,09CD:0F69|Sky Italia|Cinema Max HD|TV|Sky Cinema HD
0000,0919,093B,09CD:0F78|Sky Italia|Cinema Cult HD|TV|Sky Cinema HD
0000,0919,093B,09CD:106A|Sky Italia|Cinema 1 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:106C|Sky Italia|Cinema 007 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:106E|Sky Italia|Cinema Max HD|TV|Sky Cinema HD
0000,0919,093B,09CD:1C38|Sky Italia|Cinema +24 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:1C3F|Sky Italia|Cinema Passion HD|TV|Sky Cinema HD
0000,0919,093B,09CD:1C57|Sky Italia|Cinema Family HD|TV|Sky Cinema HD
0000,0919,093B,09CD:1E32|Sky Italia|Cinema Max +1 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:1E33|Sky Italia|Cinema Classics HD|TV|Sky Cinema HD
0000,0919,093B,09CD:1E5D|Sky Italia|Cinema +1 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:1E5E|Sky Italia|Cinema Max +1 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2B16|Sky Italia|Cinema Comedy HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2B18|Sky Italia|Cinema Classics HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2C24|Sky Italia|Cinema 1 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2C45|Sky Italia|Cinema +1 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2C46|Sky Italia|Cinema +24 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2C47|Sky Italia|Cinema Family HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2C48|Sky Italia|Cinema Classics HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2C49|Sky Italia|Cinema Passion HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2C4A|Sky Italia|Cinema Comedy HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2C4B|Sky Italia|Cinema Max +1 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2C4F|Sky Italia|Cinema 007 HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2C55|Sky Italia|Cinema Max HD|TV|Sky Cinema HD
0000,0919,093B,09CD:2C65|Sky Italia|Cinema Cult HD|TV|Sky Cinema HD

### Sky Sport ###
0000,0919,093B,09CD:2AB8|Sky Italia|Sky Sport 24|TV|Sky Sport
0000,0919,093B,09CD:2AA8|Sky Italia|Sky Sport 1|TV|Sky Sport
0000,0919,093B,09CD:2AA9|Sky Italia|Sky Sport 2|TV|Sky Sport
0000,0919,093B,09CD:2AB0|Sky Italia|Sky Sport 2|TV|Sky Sport
0000,0919,093B,09CD:2AB1|Sky Italia|Sky Sport 24|TV|Sky Sport
0000,0919,093B,09CD:2ABA|Sky Italia|Sky Sport 24|TV|Sky Sport
0000,0919,093B,09CD:2BC7|Sky Italia|Eurosport 2|TV|Sky Sport
0000,0919,093B,09CD:2D8C|Sky Italia|Fox Sports 2|TV|Sky Sport
0000,0919,093B,09CD:2DB9|Sky Italia|Eurosport|TV|Sky Sport
0000,0919,093B,09CD:2DD9|Sky Italia|Sky Sport 3|TV|Sky Sport

### Sky Sport HD ###
0000,0919,093B,09CD:2B12|Sky Italia|Sky Sport 2 HD|TV|Sky Sport HD
0000,0919,093B,09CD:0F4B|Sky Italia|Real Time HD|TV|Sky Sport HD
0000,0919,093B,09CD:0F4E|Sky Italia|Sky Sport 2 HD|TV|Sky Sport HD
0000,0919,093B,09CD:0F50|Sky Italia|Eurosport HD|TV|Sky Sport HD
0000,0919,093B,09CD:0F51|Sky Italia|Eurosport 2 HD|TV|Sky Sport HD
0000,0919,093B,09CD:0F53|Sky Italia|F1 Race Control HD|TV|Sky Sport HD
0000,0919,093B,09CD:0F54|Sky Italia|F1 Onboard Mix HD|TV|Sky Sport HD
0000,0919,093B,09CD:0F83|Sky Italia|Fox Sports 2 HD|TV|Sky Sport HD
0000,0919,093B,09CD:0F5B|Sky Italia|Sky Sport 3 HD|TV|Sky Sport HD
0000,0919,093B,09CD:0F5C|Sky Italia|Sky Sport F1 HD|TV|Sky Sport HD
0000,0919,093B,09CD:0F6A|Sky Italia|Sky Sport 1 HD|TV|Sky Sport HD
0000,0919,093B,09CD:1036|Sky Italia|Eurosport 2 HD|TV|Sky Sport HD
0000,0919,093B,09CD:1C28|Sky Italia|Sky Sport 3 HD|TV|Sky Sport HD
0000,0919,093B,09CD:1E50|Sky Italia|Fox Sports 2 HD|TV|Sky Sport HD
0000,0919,093B,09CD:2B0F|Sky Italia|Sky Sport 1 HD|TV|Sky Sport HD
0000,0919,093B,09CD:2B10|Sky Italia|Sky Sport 2 HD|TV|Sky Sport HD
0000,0919,093B,09CD:2C27|Sky Italia|F1 Race Control HD|TV|Sky Sport HD
0000,0919,093B,09CD:2C29|Sky Italia|F1 Onboard Mix HD|TV|Sky Sport HD
0000,0919,093B,09CD:2C34|Sky Italia|Sky Sport 1 HD|TV|Sky Sport HD
0000,0919,093B,09CD:2C35|Sky Italia|Eurosport HD|TV|Sky Sport HD
0000,0919,093B,09CD:2C52|Sky Italia|Sky Sport F1 HD|TV|Sky Sport HD
0000,0919,093B,09CD:2C54|Sky Italia|Fox Sports 2 HD|TV|Sky Sport HD
0000,0919,093B,09CD:2C5D|Sky Italia|Sky Sport 3 HD|TV|Sky Sport HD
0000,0919,093B,09CD:2C5E|Sky Italia|Eurosport 2 HD|TV|Sky Sport HD
0000,0919,093B,09CD:2C68|Sky Italia|Sky Sport 2 HD|TV|Sky Sport HD
0000,0919,093B,09CD:2C6D|Sky Italia|F1 Real Time HD|TV|Sky Sport HD

### Sky Calcio ###
0000,0919,093B,09CD:2E0A|Sky Italia|Fox Sports|TV|Sky Calcio
0000,0919,093B,09CD:2AAA|Sky Italia|Sky Supercalcio|TV|Sky Calcio
0000,0919,093B,09CD:2AAF|Sky Italia|Sky Supercalcio|TV|Sky Calcio
0000,0919,093B,09CD:2BCF|Sky Italia|Sky Calcio 2|TV|Sky Calcio
0000,0919,093B,09CD:2BD1|Sky Italia|Sky Calcio 3|TV|Sky Calcio
0000,0919,093B,09CD:2BD3|Sky Italia|Sky Calcio 4|TV|Sky Calcio
0000,0919,093B,09CD:2BD5|Sky Italia|Sky Calcio 5|TV|Sky Calcio
0000,0919,093B,09CD:2BD7|Sky Italia|Sky Calcio 6|TV|Sky Calcio
0000,0919,093B,09CD:2BD9|Sky Italia|Sky Calcio 7|TV|Sky Calcio
0000,0919,093B,09CD:2C2F|Sky Italia|Sky Calcio Info|TV|Sky Calcio
0000,0919,093B,09CD:2D56|Sky Italia|Sky Calcio 8|TV|Sky Calcio
0000,0919,093B,09CD:2D5D|Sky Italia|Sky Calcio 9|TV|Sky Calcio
0000,0919,093B,09CD:2D5F|Sky Italia|Sky Calcio 10|TV|Sky Calcio
0000,0919,093B,09CD:2D61|Sky Italia|Sky Calcio 11|TV|Sky Calcio
0000,0919,093B,09CD:2D62|Sky Italia|Sky Calcio 12|TV|Sky Calcio
0000,0919,093B,09CD:2D63|Sky Italia|Sky Calcio 13|TV|Sky Calcio
0000,0919,093B,09CD:2DBA|Sky Italia|Sky Calcio 1|TV|Sky Calcio

### Sky Calcio HD ###
0000,0919,093B,09CD:0F82|Sky Italia|Fox Sports HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F46|Sky Italia|Sky Calcio 5 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F48|Sky Italia|Sky Calcio 6 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F4D|Sky Italia|Sky Calcio 1 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F4F|Sky Italia|Sky Supercalcio HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F55|Sky Italia|Sky Calcio 1 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F56|Sky Italia|Sky Calcio 2 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F57|Sky Italia|Sky Calcio 3 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F58|Sky Italia|Sky Calcio 4 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F6B|Sky Italia|Sky Calcio 6 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F6C|Sky Italia|Sky Calcio 7 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F6D|Sky Italia|Sky Calcio 8 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F6F|Sky Italia|Sky Calcio 2 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:0F70|Sky Italia|Sky Calcio 5 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:1089|Sky Italia|Sky Calcio 3 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:108A|Sky Italia|Sky Calcio 4 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:1C29|Sky Italia|Sky Supercalcio HD|TV|Sky Calcio HD
0000,0919,093B,09CD:1C3E|Sky Italia|Sky Supercalcio HD|TV|
0000,0919,093B,09CD:1E4F|Sky Italia|Fox Sports HD|TV|Sky Calcio HD
0000,0919,093B,09CD:1E5C|Sky Italia|Sky Calcio 8 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:1E5F|Sky Italia|Sky Calcio 7 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:2C2D|Sky Italia|Sky Supercalcio HD|TV|Sky Calcio HD
0000,0919,093B,09CD:2C53|Sky Italia|Fox Sports HD|TV|Sky Calcio HD
0000,0919,093B,09CD:2C76|Sky Italia|Sky Calcio 1 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:2C77|Sky Italia|Sky Calcio 2 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:2C78|Sky Italia|Sky Calcio 3 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:2C79|Sky Italia|Sky Calcio 4 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:2C7A|Sky Italia|Sky Calcio 5 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:2C7B|Sky Italia|Sky Calcio 6 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:2C7C|Sky Italia|Sky Calcio 7 HD|TV|Sky Calcio HD
0000,0919,093B,09CD:2C7D|Sky Italia|Sky Calcio 8 HD|TV|Sky Calcio HD

### Canali opzionali ###
0000,0919,093B,09CD:057E|Sky Italia|Milan Channel|TV|Sky Canali opzionali
0000,0919,093B,09CD:0FC7|Sky Italia|Lazio Style Ch|TV|Sky Canali opzionali
0000,0919,093B,09CD:10FE|Sky Italia|CACCIA e PESCA|TV|Sky Canali opzionali
0000,0919,093B,09CD:1FAA|Sky Italia|Roma Channel|TV|Sky Canali opzionali
0000,0919,093B,09CD:2CBF|Sky Italia|JUVENTUS TV|Sky Canali opzionali
0000,0919,093B,09CD:2CC0|Sky Italia|Inter Channel|TV|Sky Canali opzionali
0000,0919,093B,09CD:3BF0|Sky Italia|CACCIA e PESCA|TV|Sky Canali opzionali

### Primafila ###
0000,0919,093B,09CD:1FBC|Sky Italia|Vetrina Primafila|TV|Primafila
0000,0919,093B,09CD:1FBD|Sky Italia|Vetrina Primafila|TV|Primafila
0000,0919,093B,09CD:2BC3|Sky Italia|Primafila 13|TV|Primafila
0000,0919,093B,09CD:2BC5|Sky Italia|Primafila 11|TV|Primafila
0000,0919,093B,09CD:2BCA|Sky Italia|Primafila 9|TV|Primafila
0000,0919,093B,09CD:2BCC|Sky Italia|Primafila 7|TV|Primafila
0000,0919,093B,09CD:2BCE|Sky Italia|Primafila 5|TV|Primafila
0000,0919,093B,09CD:2BD0|Sky Italia|Primafila 1|TV|Primafila
0000,0919,093B,09CD:2D51|Sky Italia|Primafila 17|TV|Primafila
0000,0919,093B,09CD:2D53|Sky Italia|Primafila 16|TV|Primafila
0000,0919,093B,09CD:2D54|Sky Italia|Primafila 18|TV|Primafila
0000,0919,093B,09CD:2D55|Sky Italia|Primafila 19|TV|Primafila
0000,0919,093B,09CD:2D57|Sky Italia|Primafila 15|TV|Primafila
0000,0919,093B,09CD:2D65|Sky Italia|Primafila 3|TV|Primafila
0000,0919,093B,09CD:2DBE|Sky Italia|Primafila 20|TV|Primafila
0000,0919,093B,09CD:2DBF|Sky Italia|Primafila 20|TV|Primafila
0000,0919,093B,09CD:3400|Sky Italia|Primafila 10|TV|Primafila
0000,0919,093B,09CD:3402|Sky Italia|Primafila 12|TV|Primafila
0000,0919,093B,09CD:3405|Sky Italia|Primafila 14|TV|Primafila
0000,0919,093B,09CD:340D|Sky Italia|Primafila 8|TV|Primafila
0000,0919,093B,09CD:341E|Sky Italia|Primafila 27|TV|Primafila
0000,0919,093B,09CD:3421|Sky Italia|Primafila 23|TV|Primafila
0000,0919,093B,09CD:3422|Sky Italia|Primafila 25|TV|Primafila
0000,0919,093B,09CD:3423|Sky Italia|Primafila 26|TV|Primafila
0000,0919,093B,09CD:3427|Sky Italia|Primafila 24|TV|Primafila
0000,0919,093B,09CD:342A|Sky Italia|Primafila 23|TV|Primafila
0000,0919,093B,09CD:3431|Sky Italia|Primafila 25|TV|Primafila
0000,0919,093B,09CD:3432|Sky Italia|Primafila 26|TV|Primafila
0000,0919,093B,09CD:3433|Sky Italia|Primafila 27|TV|Primafila
0000,0919,093B,09CD:3435|Sky Italia|Primafila 24|TV|Primafila
0000,0919,093B,09CD:38BC|Sky Italia|Primafila 22|TV|Primafila
0000,0919,093B,09CD:38BD|Sky Italia|Primafila 21|TV|Primafila
0000,0919,093B,09CD:38BE|Sky Italia|Primafila 28|TV|Primafila
0000,0919,093B,09CD:38BF|Sky Italia|Primafila 2|TV|Primafila
0000,0919,093B,09CD:38C8|Sky Italia|Primafila 22|TV|Primafila
0000,0919,093B,09CD:38C9|Sky Italia|Primafila 28|TV|Primafila
0000,0919,093B,09CD:38E0|Sky Italia|Primafila 4|TV|Primafila
0000,0919,093B,09CD:38E1|Sky Italia|Primafila 6|TV|Primafila
0000,0919,093B,09CD:38FA|Sky Italia|Primafila 21|TV|Primafila

### Primafila HD ###
0000,0919,093B,09CD:0F4C|Sky Italia|Primafila 7 HD|TV|Primafila HD
0000,0919,093B,09CD:0F71|Sky Italia|Primafila 5 HD|TV|Primafila HD
0000,0919,093B,09CD:0F72|Sky Italia|Primafila 13 HD|TV|Primafila HD
0000,0919,093B,09CD:108B|Sky Italia|Primafila 9 HD|TV|Primafila HD
0000,0919,093B,09CD:108F|Sky Italia|Primafila 11 HD|TV|Primafila HD
0000,0919,093B,09CD:1E20|Sky Italia|Primafila 11 HD|TV|Primafila HD
0000,0919,093B,09CD:1E21|Sky Italia|Primafila 13 HD|TV|Primafila HD
0000,0919,093B,09CD:1E34|Sky Italia|Primafila 3 HD|TV|Primafila HD
0000,0919,093B,09CD:1E35|Sky Italia|Primafila 1 HD|TV|Primafila HD
0000,0919,093B,09CD:1E36|Sky Italia|Primafila 5 HD|TV|Primafila HD
0000,0919,093B,09CD:1E37|Sky Italia|Primafila 7 HD|TV|Primafila HD
0000,0919,093B,09CD:1E38|Sky Italia|Primafila 9 HD|TV|Primafila HD
0000,0919,093B,09CD:1E5B|Sky Italia|Primafila 3 HD|TV|Primafila HD
0000,0919,093B,09CD:1E60|Sky Italia|Primafila 1 HD|TV|Primafila HD
0000,0919,093B,09CD:2C3C|Sky Italia|Primafila 3 HD|TV|Primafila HD
0000,0919,093B,09CD:2C4C|Sky Italia|Primafila 5 HD|TV|Primafila HD
0000,0919,093B,09CD:2C4D|Sky Italia|Primafila 7 HD|TV|Primafila HD
0000,0919,093B,09CD:2C4E|Sky Italia|Primafila 9 HD|TV|Primafila HD
0000,0919,093B,09CD:2C50|Sky Italia|Primafila 11 HD|TV|Primafila HD
0000,0919,093B,09CD:2C51|Sky Italia|Primafila 13 HD|TV|Primafila HD
0000,0919,093B,09CD:2C5B|Sky Italia|Primafila 1 HD|TV|Primafila HD
0000,0919,093B,09CD:37AA|Sky Italia|Primafila 20 HD|TV|Primafila HD
0000,0919,093B,09CD:37D2|Sky Italia|Primafila 20 HD|TV|Primafila HD

### Sky Selection ###
0000,0919,093B,09CD:0F66|Sky Italia|Sky Selection HD|TV|Sky Selection HD

### Sky 3D ###
0000,0919,093B,09CD:1040|Sky Italia|Sky 3D|TV|Sky 3D
0000,0919,093B,09CD:1041|Sky Italia|Sky 3D|TV|Sky 3D
0000,0919,093B,09CD:1042|Sky Italia|Sky 3D|TV|Sky 3D
0000,0919,093B,09CD:1043|Sky Italia|Sky 3D|TV|Sky 3D
0000,0919,093B,09CD:1044|Sky Italia|Sky 3D|TV|Sky 3D

####unsorted
0000,0919,093B,09CD:2CF3|Sky Italia|Real Time HD|TV|
0000,0919,093B,09CD:2A95|Sky Italia|Real Time|TV|
0000,0919,093B,09CD:2FEC|Sky Italia|Real Time +1|TV|
0000,0919,093B,09CD:2CC2|Sky Italia|La3|TV|
0000,0919,093B,09CD:057F|Sky Italia|La7|TV|
0000,0919,093B,09CD:2AAD|Sky Italia|Sportitalia|TV|
0000,0919,093B,09CD:0583|Sky Italia|Sportitalia2|TV|
0000,0919,093B,09CD:3311|Sky Italia|ESP HD Italy|TV|
0000,0919,093B,09CD:331D|Sky Italia|ESP HD test D|TV|
0000,0919,093B,09CD:0FBC|Sky Italia|Nuvolari|TV|
0000,0919,093B,09CD:1037|Sky Italia|Sport Active HD|TV|
0000,0919,093B,09CD:2AAB|Sky Italia|Sport Active 1|TV|
0000,0919,093B,09CD:2AAC|Sky Italia|Sports Active 2|TV|
0000,0919,093B,09CD:2AB7|Sky Italia|Sports Active 3|TV|
0000,0919,093B,09CD:3454|Sky Italia|goal Alert HD|TV|
0000,0919,093B,09CD:1C3B|Sky Italia|Uomo partita|TV|
0000,0919,093B,09CD:0F5A|Sky Italia|Calcio1Magaz|TV|
0000,0919,093B,09CD:2B17|Sky Italia|SkySpo1Magaz|TV|
0000,0919,093B,09CD:250D|Sky Italia|Sky Sport F1 HD|TV|
0000,0919,093B,09CD:250E|Sky Italia|Sky Sport F1 HD voting|TV|
0000,0919,093B,09CD:250F|Sky Italia|SkySpF1HDmagazi|TV|
0000,0919,093B,09CD:2512|Sky Italia|SkySpF1HDstats|TV|
0000,0919,093B,09CD:2514|Sky Italia|On Board Sky HD|TV|
0000,0919,093B,09CD:2507|Sky Italia|Onboard Mix HD|TV|
0000,0919,093B,09CD:2511|Sky Italia|OnBoardMixHDfee|TV|
0000,0919,093B,09CD:2513|Sky Italia|Race F1 Hdfeed|TV|
0000,0919,093B,09CD:2510|Sky Italia|Race Control HD|TV|
0000,0919,093B,09CD:2508|Sky Italia|MosaicoFormu1HD|TV|
0000,0919,093B,09CD:2D69|Sky Italia|Sky Sport F1|TV|
0000,0919,093B,09CD:2C2A|Sky Italia|Onboard Mix|TV|
0000,0919,093B,09CD:2C3F|Sky Italia|On Board Leader|TV|
0000,0919,093B,09CD:2D6A|Sky Italia|F1 FakeMagazine|TV|
0000,0919,093B,09CD:2C2C|Sky Italia|Highlights|TV|
0000,0919,093B,09CD:2C39|Sky Italia|Live Timing|TV|
0000,0919,093B,09CD:2C42|Sky Italia|Pit Lane|TV|
0000,0919,093B,09CD:2C40|Sky Italia|Race Tracker|TV|
0000,0919,093B,09CD:2C33|Sky Italia|Race Control|TV|
0000,0919,093B,09CD:05B9|Sky Italia|Discovery Travel|TV|
0000,0919,093B,09CD:0E2E|Sky Italia|Alice|TV|
0000,0919,093B,09CD:0E31|Sky Italia|Marcopolo|TV|
0000,0919,093B,09CD:0E2F|Sky Italia|Leonardo|TV|
0000,0919,093B,09CD:1101|Sky Italia|Doctor's Life|TV|
0000,0919,093B,09CD:1FAF|Sky Italia|Yacht & Sail|TV|
0000,0919,093B,09CD:2C28|Sky Italia|myDeejay|TV|
0000,0919,093B,09CD:0E2A|Sky Italia|DeeJayTV|TV|
0000,0919,093B,09CD:38F3|Sky Italia|Music Box|TV|
0000,0919,093B,09CD:3C1C|Sky Italia|Matchmusic|TV|
0000,0919,093B,09CD:3BCD|Sky Italia|Hip Hop TV|TV|
0000,0919,093B,09CD:3BE5|Sky Italia|Rock TV|TV|
0000,0919,093B,09CD:2FD4|Sky Italia|Radio Capital Tv|TV|
0000,0919,093B,09CD:2C9D|Sky Italia|Super!|TV|
0000,0919,093B,09CD:2FD3|Sky Italia|-frisbee-|TV|
0000,0919,093B,09CD:2FD5|Sky Italia|K2|TV|
0000,0919,093B,09CD:10E9|Sky Italia|TG24 Sport|TV|
0000,0919,093B,09CD:10E7|Sky Italia|TG24 Mosaico|TV|
0000,0919,093B,09CD:2AB9|Sky Italia|PPV Bundle|TV|
0000,0919,093B,09CD:2ABB|Sky Italia|PPV Bundle2|TV|
0000,0919,093B,09CD:342C|Sky Italia|Playjam|TV|
0000,0919,093B,09CD:1FC6|Sky Italia|TestTS63|TV|
0000,0919,093B,09CD:1C7E|Sky Italia|Test T|TV|
0000,0919,093B,09CD:1084|Sky Italia|TEST Sky|TV|
0000,0919,093B,09CD:2C3A|Sky Italia|TEST1 Sky|TV|
0000,0919,093B,09CD:3BC6|Sky Italia|11219H SID 0x3bc6|TV|
0000,0919,093B,09CD:0582|Sky Italia|11355V SID 0x582|TV|
0000,0919,093B,09CD:104B|Sky Italia|12206H SID 0x104b|TV|
0000,0919,093B,09CD:0F8C|Sky Italia|12418V SID 0xf8c|TV|
0000,0919,093B,09CD:0F8D|Sky Italia|12418V SID 0xf8d|TV|
0000,0919,093B,09CD:0F8E|Sky Italia|12418V SID 0xf8e|TV|
0000,0919,093B,09CD:0F8F|Sky Italia|12418V SID 0xf8f|TV|
0000,0919,093B,09CD:1C53|Sky Italia|12360H SID 0x1c53|TV|
0000,0919,093B,09CD:2C36|Sky Italia|12616H SID 0x2c36|TV|
0000,0919,093B,09CD:2C37|Sky Italia|12616H SID 0x2c37|TV|
0000,0919,093B,09CD:2C3B|Sky Italia|12616H SID 0x2c3b|TV|
0000,0919,093B,09CD:2C41|Sky Italia|12616H SID 0x2c41|TV|
0000,0919,093B,09CD:2C56|Sky Italia|Discovery Travel|TV|
0000,0919,093B,09CD:2C25|Sky Italia|Discovery Y&L HD|TV|
0000,0919,093B,09CD:2C66|Sky Italia|Alice|TV|
0000,0919,093B,09CD:2C64|Sky Italia|Marcopolo|TV|
0000,0919,093B,09CD:2C67|Sky Italia|Leonardo|TV|
0000,0919,093B,09CD:2C69|Sky Italia|Yacht & Sail|TV|
0000,0919,093B,09CD:38C0|Sky Italia|Sky Inside|TV|
0000,0919,093B,09CD:38C2|Sky Italia|Sky Inside|TV|
0000,0919,093B,09CD:38CA|Sky Italia|Sky Inside|TV|
0000,0919,093B,09CD:38CB|Sky Italia|Sky Inside|TV|
```

back to [index](#index)

### SRG/SSR - Schweizer Fernsehen

last review: 2014-01-24 by: Humorator

```
###
### DVB-S - SRG/SSR - Hotbird 13.0E
###
### SRF - Schweizer Radio und Fernsehen
0500:0385|SRG/SSR|SRF 1|TV|SRF (de)
0500:038B|SRG/SSR|SRF zwei|TV|SRF (de)
0500:038F|SRG/SSR|SRF info|TV|SRF (de)
0500:1F43|SRG/SSR|3+|TV|SRF (de)
0500:1F44|SRG/SSR|4+|TV|SRF (de)
0500:4331|SRG/SSR|SRF 1 HD|TV|SRF (de)
0500:4332|SRG/SSR|SRF zwei HD|TV|SRF (de)
### RTS - Radio Télévision Suisse
0500:36B2|SRG/SSR|RTS Un|TV|RTS (fr)
0500:36B8|SRG/SSR|RTS Deux|TV|RTS (fr)
0500:4333|SRG/SSR|RTS Un HD|TV|RTS (fr)
0500:4334|SRG/SSR|RTS Deux HD|TV|RTS (fr)
### RSI - Radiotelevisione svizzera
0500:03B7|SRG/SSR|RSI LA 2 HD|TV|RSI (it)
0500:36B3|SRG/SSR|RSI LA 1|TV|RSI (it)
0500:36B9|SRG/SSR|RSI LA 2|TV|RSI (it)
0500:36E3|SRG/SSR|RSI LA 1 HD|TV|RSI (it)
```

back to [index](#index)

### TeleSat (REVIEW NEEDED)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.

last review: 2012-03-09 by: ???

```
###
### DVB-S - TeleSat - Hotbird 13.0E
###
0100:012D|TeleSat 13.0E|TF 1|TV|General|
0100:012E|TeleSat 13.0E|France 2 HD|TV|General|
0100:012F|TeleSat 13.0E|France 3 Sat|TV|General|
0100:0131|TeleSat 13.0E|France 5|TV|General|
0100:0137|TeleSat 13.0E|NT 1|TV|General|
0100:013A|TeleSat 13.0E|France 4|TV|General|
0100:01A1|TeleSat 13.0E|Direct Star|TV|Entertainment|
0100:01A2|TeleSat 13.0E|Gulli|TV|Children|
0100:01C6|TeleSat 13.0E|Animaux|TV|Documentaries|
0100:01C8|TeleSat 13.0E|Ciné FX|TV|Movies|
0100:01C9|TeleSat 13.0E|Ciné Polar|TV|Movies|
0100:01CA|TeleSat 13.0E|Escales|TV|Documentaries|
0100:01CB|TeleSat 13.0E|Toute l´Histoire|TV|Documentaries|
0100:01CC|TeleSat 13.0E|AB 3|TV|General|
0100:01CD|TeleSat 13.0E|Action|TV|Movies|
0100:01CE|TeleSat 13.0E|Mangas|TV|Children|
0100:01CF|TeleSat 13.0E|Encyclo|TV|Documentaries|
0100:01D0|TeleSat 13.0E|AB 4|TV|General|
0100:362F|TeleSat 13.0E|La Une|TV|General|
0100:3630|TeleSat 13.0E|La Deux|TV|General|
0100:3631|TeleSat 13.0E|RTL TVI|TV|General|
0100:3632|TeleSat 13.0E|Club RTL|TV|General|
0100:3633|TeleSat 13.0E|Plug RTL|TV|General|
0100:3634|TeleSat 13.0E|Disney Channel France|TV|Children|
```

back to [index](#index)

###

Telewizja na

last review: 2014-03-10 by: Humorator

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


Additional information:

+   also part of nc+ and TNK Smart HD

```
###
### DVB-S - Telewizja na - Hotbird 13.0E
###
0B00:0005|Telewizja|Viva Polska
0B00:10d7|Telewizja|TVN
0B00:10d8|Telewizja|TVN 24
0B00:10d9|Telewizja|TVN Siedem
0B00:10dd|Telewizja|TTV
0B00:10de|Telewizja|TVN Meteo
0B00:10df|Telewizja|TVN Turbo
0B00:10e0|Telewizja|TVN Style
0B00:12c7|Telewizja|TVP 1
0B00:12c8|Telewizja|TVP 2
0B00:13f0|Telewizja|Kino Polska
0B00:13f6|Telewizja|TVP Info
0B00:13f8|Telewizja|TV Puls
0B00:1d2a|Telewizja|Disney Channel Polska
0B00:290e|Telewizja|TV6 Polska
0B00:332d|Telewizja|Polsat
0B00:332f|Telewizja|TV 4
0B00:3333|Telewizja|Polsat Biznes
0B00:3ab7|Telewizja|MGM HD Polska
0B00:3ab9|Telewizja|nSport
0B00:3abd|Telewizja|TVP 1 HD
0B00:3b62|Telewizja|TVP HD
0B00:3b65|Telewizja|NatGeo Wild HD
0B00:3b66|Telewizja|Animal Planet HD
0B00:3dcd|Telewizja|TVN HD
```

back to [index](#index)

###

TNK Smart HD+

last review: 2014-03-05 by: d4m1

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


Additional information:

+   nc+ and Telewizja

```
###
### DVB-S - MTV Unlimited - Hotbird 13.0E
###
0B01:0005|TNK Smart HD+|Viva Polska
0B01:0019|TNK Smart HD+|Viva Polska
0B01:002D|TNK Smart HD+|Viva Polska
0B01:0C22|TNK Smart HD+|TVP 2 HD
0B01:0C23|TNK Smart HD+|Polsat HD
0B01:0DC4|TNK Smart HD+|TVP Historia
0B01:0DC5|TNK Smart HD+|TVP Historia
0B01:10D7|TNK Smart HD+|TVN
0B01:10D8|TNK Smart HD+|TVN 24
0B01:10D9|TNK Smart HD+|TVN Siedem
0B01:10DD|TNK Smart HD+|TTV
0B01:10DE|TNK Smart HD+|TVN Meteo
0B01:10DF|TNK Smart HD+|TVN Turbo
0B01:10E0|TNK Smart HD+|TVN Style
0B01:10E2|TNK Smart HD+|TVN Biznes i Swiat
0B01:10F6|TNK Smart HD+|TVN 24
0B01:10FD|TNK Smart HD+|TVN Turbo
0B01:10FE|TNK Smart HD+|TVN Style
0B01:1136|TNK Smart HD+|Planete+
0B01:1137|TNK Smart HD+|MiniMini+
0B01:1138|TNK Smart HD+|nSport
0B01:1164|TNK Smart HD+|MiniMini+
0B01:116A|TNK Smart HD+|nSport
0B01:12C4|TNK Smart HD+|Kuchnia+
0B01:12C5|TNK Smart HD+|Ale Kino+
0B01:12C6|TNK Smart HD+|teleTOON+/HYPER+
0B01:12C7|TNK Smart HD+|TVP 1
0B01:12C8|TNK Smart HD+|TVP 2
0B01:12CB|TNK Smart HD+|DOMO+
0B01:12F6|TNK Smart HD+|Kuchnia+
0B01:13F0|TNK Smart HD+|Kino Polska
0B01:13F6|TNK Smart HD+|TVP Info
0B01:13F8|TNK Smart HD+|TV Puls
0B01:13FB|TNK Smart HD+|TVP Regionalna
0B01:1416|TNK Smart HD+|TV Puls
0B01:1BC1|TNK Smart HD+|TVP Historia
0B01:1C93|TNK Smart HD+|Discovery Channel
0B01:1C96|TNK Smart HD+|AXN
0B01:1D2A|TNK Smart HD+|Disney Channel
0B01:290E|TNK Smart HD+|TV6
0B01:2912|TNK Smart HD+|Polsat Sport News
0B01:32E0|TNK Smart HD+|MiniMini+ HD
0B01:332D|TNK Smart HD+|Polsat
0B01:332F|TNK Smart HD+|TV4
0B01:3333|TNK Smart HD+|Polsat Biznes
0B01:3336|TNK Smart HD+|Polsat 2
0B01:377D|TNK Smart HD+|TeleTOON+/HYPER+ HD
0B01:377E|TNK Smart HD+|Planete+ HD
0B01:377F|TNK Smart HD+|Kuchnia+ HD
0B01:3780|TNK Smart HD+|DOMO+ HD
0B01:3781|TNK Smart HD+|Ale Kino+ HD
0B01:3798|TNK Smart HD+|TeleTOON+/HYPER+ HD
0B01:379C|TNK Smart HD+|Planete+ HD
0B01:379D|TNK Smart HD+|Kuchnia+ HD
0B01:379E|TNK Smart HD+|DOMO+ HD
0B01:379F|TNK Smart HD+|Ale Kino+ HD
0B01:3AB9|TNK Smart HD+|nSport (HD)
0B01:3ABB|TNK Smart HD+|MiniMini+ HD
0B01:3ABD|TNK Smart HD+|TVP 1 HD
0B01:3AE1|TNK Smart HD+|nSport (HD)
0B01:3B69|TNK Smart HD+|TeleTOON+/HYPER+ HD
0B01:3B6A|TNK Smart HD+|nSport 36
0B01:3B6B|TNK Smart HD+|nSport 37
0B01:3D58|TNK Smart HD+|TVP Sport
0B01:3D5C|TNK Smart HD+|TVP Seriale
0B01:3D5F|TNK Smart HD+|Orange Sport
0B01:3D64|TNK Smart HD+|Discovery Channel
0B01:3D70|TNK Smart HD+|TVP Seriale
0B01:3DC4|TNK Smart HD+|Religia.TV
0B01:3DC5|TNK Smart HD+|Puls 2
0B01:3DCD|TNK Smart HD+|TVN HD
0B01:3DCE|TNK Smart HD+|TVN Style HD
0B01:3DCF|TNK Smart HD+|TVN Style HD
0B01:3DD0|TNK Smart HD+|TVN Turbo HD
0B01:3DD1|TNK Smart HD+|TVN Turbo HD
0B01:3DD2|TNK Smart HD+|TVN 24 HD
0B01:3DD3|TNK Smart HD+|TVN 7 HD
0B01:4288|TNK Smart HD+|TVP Rozrywka
```

back to [index](#index)

### TivùSat

last review: 2014-03-10 by: Humorator

```
###
### DVB-S - TivuSat - Hotbird 13.0E
###
183D:0002|TivùSat|Canale 5|TV|General
183D:0004|TivùSat|Iris|TV|General
183D:0006|TivùSat|Boing Italia|TV|Children
183D:0007|TivùSat|La5|TV|Lifestyle
183D:0009|TivùSat|Mediaset Extra|TV|General
183D:000A|TivùSat|Mediaset Italia Due|TV|Entertainment
183D:000C|TivùSat|TOPcrime|TV|Series
183D:0CE5|TivùSat|Rai Sport 2|TV|Sport
183D:0CE9|TivùSat|Rai Sport 1|TV|Sport
183D:0CEA|TivùSat|Rai Premium|TV|General
183D:0D49|TivùSat|Rai 1 HD|TV|General
183D:0D4B|TivùSat|Rai 3 TGR FVG|TV|Regional
183D:0D52|TivùSat|Rai 5|TV|General
183D:0D66|TivùSat|Rai Yoyo|TV|Children
183D:0E1E|TivùSat|La 7|TV|General
183D:0E24|TivùSat|MTV Italia|TV|Music
183D:0E2A|TivùSat|Deejay TV|TV|Music
183D:2136|TivùSat|Rai Movie|TV|Movies
183D:213F|TivùSat|Rai 1|TV|General
183D:2140|TivùSat|Rai 2|TV|General
183D:2141|TivùSat|Rai 3|TV|General
183D:2142|TivùSat|Rai 4|TV|General
183D:2B66|TivùSat|Cielo|TV|General
183D:2BAC|TivùSat|TV 2000|TV|Religious
183D:4256|TivùSat|Rai 2 HD|TV|General
183D:4257|TivùSat|Rai 3 HD|TV|General
```

back to [index](#index)

# **DVB-C**

## **Belgian Cable**

### Voo (REVIEW NEEDED)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.

last review: ??? by: ???

Additional information:

+   ex-IDEATEL
+   Voo seems to use different srvid locally so this file may not fully work if you are not from former IDEATEL provider
+   Some FTA channels are also already included, ready for encryption.

```
###
### DVB-C - Voo - Belgian Cable
###
0100:4E88|VOO|TF1 HD|TV
0100:0066|VOO|BE 1 + 1h|TV
0100:0068|VOO|BE SERIES|TV
0100:0069|VOO|BE SPORT1|TV
0100:006A|VOO|BE SPORT2|TV
0100:006B|VOO|BE 1|TV
0100:006C|VOO|BE CINE|TV
0100:006D|VOO|BE SPORT3|TV
0100:006E|VOO|STB DATA 0|TV
0100:006F|VOO|STB DATA 1|TV
0100:00C9|VOO|Infosport|TV
0100:00CA|VOO|Télétoon|TV
0100:00CB|VOO|STYLIA|TV
0100:00CC|VOO|Moteurs|TV
0100:00CD|VOO|Animaux|TV
0100:00CE|VOO|Chasse et Pêche|TV
0100:00CF|VOO|XXL|TV
0100:00D0|VOO|Toute l'histoire|TV
0100:00D1|VOO|Action|TV
0100:00D2|VOO|Mangas|TV
0100:00D3|VOO|Playhouse|TV
0100:012D|VOO|ESPN America|TV
0100:012E|VOO|Planète+|TV
0100:012F|VOO|Voyage|TV
0100:0130|VOO|Canal J|TV
0100:0131|VOO|Cuisine TV|TV
0100:0132|VOO|Cartoon|TV
0100:0133|VOO|TCM|TV
0100:0134|VOO|Ciné+ Premier|TV
0100:0135|VOO|Ciné+ Classic|TV
0100:0136|VOO|Ciné+ Frisson|TV
0100:0191|VOO|MTV Idol|TV
0100:0192|VOO|M6 Music Hits|TV
0100:0193|VOO|Comédie+|TV
0100:0194|VOO|Disney XD|TV
0100:0195|VOO|Planète+ No Limit|TV
0100:0196|VOO|Equidia|TV
0100:0197|VOO|Mezzo|TV
0100:0198|VOO|Game One|TV
0100:0199|VOO|Eurosport 2|TV
0100:019A|VOO|Disney CinéMagic|TV
0100:01F4|VOO|Be Météo|TV
0100:01F5|VOO|Evénement|TV
0100:01F6|VOO|Boomerang|TV
0100:01F7|VOO|Télé Maison|TV
0100:01F8|VOO|Tiji|TV
0100:01F9|VOO|NGC|TV
0100:01FA|VOO|Planète+ Thalassa|TV
0100:01FB|VOO|ESPN Classic|TV
0100:01FC|VOO|Vivolta|TV
0100:01FD|VOO|Discovery|TV
0100:01FE|VOO|SYFY|TV
0100:0259|VOO|June|TV
0100:025A|VOO|MTV Pulse|TV
0100:025B|VOO|Trace TV|TV
0100:025C|VOO|Bloomberg|TV
0100:025D|VOO|BFM TV|TV
0100:025E|VOO|Nat Géo Wild|TV
0100:025F|VOO|NatGeo Music|TV
0100:0260|VOO|Histoire|TV
0100:0261|VOO|Extrême Sports|TV
0100:0262|VOO|Man-X|TV
0100:0263|VOO|Fashion TV|TV
0100:02BC|VOO|EPG|TV
0100:02BD|VOO|Mcm Top|TV
0100:02BE|VOO|Mcm Pop|TV
0100:02BF|VOO|I> Télé|TV
0100:02C0|VOO|E! Entertainment|TV
0100:02C1|VOO|Zone Reality|TV
0100:02C2|VOO|Yacht & Sail|TV
0100:02C3|VOO|Hustler TV|TV
0100:02C5|VOO|Poker Channel|TV
0100:0321|VOO|A la séance 1|TV
0100:0322|VOO|A la séance 2|TV
0100:0323|VOO|A la séance 3|TV
0100:0324|VOO|A la séance 4|TV
0100:0325|VOO|A la séance 5|TV
0100:0326|VOO|A la séance 6|TV
0100:0327|VOO|A la séance 7|TV
0100:0328|VOO|A la séance 8|TV
0100:0385|VOO|BE HD|TV
0100:0386|VOO|Disney Cinemagic HD|TV
0100:0387|VOO|Eurosport HD|TV
0100:0388|VOO|Be 3D|TV
0100:2775|VOO|EEN|TV
0100:2776|VOO|Ket./Can.|TV
0100:2777|VOO|AB3|TV
0100:2778|VOO|AB4|TV
0100:2779|VOO|LCI|TV
0100:277A|VOO|CanalZ|TV
0100:277C|VOO|Arte Belgique|TV
0100:277D|VOO|TLB|TV
0100:277E|VOO|TV Brussel|TV
0100:277F|VOO|RTC Tele Liege|TV
0100:2780|VOO|TeleVesdre|TV
0100:2781|VOO|TV LUX|TV
0100:2782|VOO|MA TELE|TV
0100:2783|VOO|Canal C|TV
0100:2784|VOO|TVCom|TV
0100:2785|VOO|CanalZoom|TV
0100:2786|VOO|Télésambre|TV
0100:2787|VOO|NOTELE|TV
0100:2788|VOO|Antenne Centre|TV
0100:2789|VOO|TELE MB|TV
0100:27D9|VOO|TRT|TV
0100:27DA|VOO|Das Erste|TV
0100:27DB|VOO|RAI1|TV
0100:27DC|VOO|ZDF|TV
0100:27DD|VOO|CNBC|TV
0100:27DE|VOO|TVE|TV
0100:27DF|VOO|NED2|TV
0100:27E0|VOO|Canal 24 Horas|TV
0100:27E1|VOO|AL Aoula|TV
0100:283D|VOO|CNN Int.|TV
0100:283E|VOO|MTV/Nickelodeon|TV
0100:283F|VOO|LibertyTV FR|TV
0100:2840|VOO|M6 BOUTIQUE LA CHAINE|TV
0100:2841|VOO|BBC 1 London|TV
0100:2842|VOO|TV5MONDE|TV
0100:2843|VOO|Euronews|TV
0100:2844|VOO|BBC 2 England|TV
0100:2845|VOO|CBBC Channel|TV
0100:2846|VOO|CBeebies|TV
0100:28A1|VOO|TF1|TV
0100:28A2|VOO|France 2|TV
0100:28A3|VOO|France 3|TV
0100:28A4|VOO|France 4|TV
0100:28A5|VOO|France 5|TV
0100:28A6|VOO|TV Breizh|TV
0100:28A7|VOO|France Ô|TV
0100:28A8|VOO|France 24|TV
0100:28A9|VOO|Best of Shopping|TV
0100:28AA|VOO|Star TV|TV
0100:2905|VOO|Barker Channel|TV
0100:2906|VOO|DISNEY CHANNEL|TV
0100:2907|VOO|GULLI|TV
0100:2908|VOO|EUROSPORT|TV
0100:2909|VOO|RADIO CONTACT|TV
0100:290A|VOO|iConcert|TV
0100:290B|VOO|MTV BASE FRANCE|TV
0100:290C|VOO|La Prem1ere|Radio
0100:290D|VOO|Classic 21|Radio
0100:290E|VOO|Musiq3|Radio
0100:290F|VOO|VivaCite|Radio
0100:2910|VOO|brf|Radio
0100:2911|VOO|Pure FM|Radio
0100:2912|VOO|NICK-JR|TV
0100:2913|VOO|Direct Star|TV
0100:2914|VOO|Twizz|Radio
0100:2969|VOO|NED1|TV
0100:296A|VOO|KidsCo|TV
0100:296B|VOO|13eme RUE|TV
0100:296C|VOO|RAI2|TV
0100:296D|VOO|RAI3|TV
0100:296E|VOO|ERT|TV
0100:296F|VOO|RTPI|TV
0100:2970|VOO|Ushuaïa TV|TV
0100:2A31|VOO|La Une|TV
0100:2A32|VOO|La Deux|TV
0100:2A33|VOO|La Trois|TV
0100:2A34|VOO|RTL TVI|TV
0100:2A35|VOO|Club RTL|TV
0100:2A36|VOO|Plug RTL|TV
0100:2A3B|VOO|Bel RTL|Radio
0100:2A3C|VOO|Mint|Radio
0100:2A3D|VOO|Radio Contact|Radio
0100:2A3F|VOO|Contact R'n'b|Radio
0100:4E85|VOO|La Une HD|TV
0100:4E86|VOO|La Deux HD|TV
0100:4E87|VOO|La Trois HD|TV
0100:4E89|VOO|13e Rue HD|TV
0100:4EE9|VOO|RTL Tvi HD|TV
0100:4EEA|VOO|Club RTL HD|TV
0100:4EEB|VOO|Plug RTL HD|TV
0100:4EEC|VOO|France 2 HD|TV
0100:4EED|VOO|Ushuaïa TV HD|TV
```

## **Dutch Cable**

### Ziggo NL (@home) (REVIEW NEEDED)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.

last review: 2013-12-18 by: source DoeEensGek sat4all

Review needed for packages and for |Radio|And |TV|

```
###
### DVB-C - ZIGGO @home - Dutch Cable
###
0604:00E8|Ziggo|HBO 2|@home
0604:00F1|Ziggo|Eén HD|@home
0604:03E9|Ziggo|ARD|@home
0604:03ED|Ziggo|NDR|@home
0604:03EE|Ziggo|RTL Television|@home
0604:03F0|Ziggo|Sat. 1|@home
0604:03F1|Ziggo|WDR|@home
0604:008D|Ziggo|Omroep Flevoland|@home
0604:008E|Ziggo|TV Drenthe|@home
0604:008F|Ziggo|TV Noord|@home
0604:0090|Ziggo|Omrop Fryslân|@home
0604:0091|Ziggo|TV Oost|@home
0604:0094|Ziggo|TV Gelderland|@home
0604:07D1|Ziggo|TV Noord-Holland|@home
0604:0009|Ziggo|Net 5|@home
0604:0016|Ziggo|Eén|@home
0604:0017|Ziggo|Canvas|@home
0604:0027|Ziggo|Crime & Investigation Network|@home
0604:00A7|Ziggo|Eurosport HD|@home
0604:0101|Ziggo|FOX Sports Informatie|@home
0604:0273|Ziggo|Radio Gelderland|@home
0604:0274|Ziggo|Omroep Brabant Radio|@home
0604:0275|Ziggo|L1 Radio|@home
0604:028D|Ziggo|Eins Live|@home
0604:028E|Ziggo|Radio Continu|@home
0604:028F|Ziggo|NDR 2|@home
0604:0290|Ziggo|NDR Kultur|@home
0604:02DA|Ziggo|NDR 1|@home
0604:02E6|Ziggo|RADIONL|@home
0604:02E7|Ziggo|Waterstad FM|@home
0604:02E9|Ziggo|BBC Radio 1|@home
0604:02EA|Ziggo|BBC Radio 2|@home
0604:02EB|Ziggo|BBC Radio 3|@home
0604:02EC|Ziggo|BBC Radio 4|@home
0604:02ED|Ziggo|BBC World Service|@home
0604:0CAB|Ziggo|Eurosport 2 HD|@home
0604:000C|Ziggo|Zenderoverzicht|@home
0604:027F|Ziggo|100% NL|@home
0604:0280|Ziggo|Uljala Radio|@home
0604:0282|Ziggo|Tweede kamerlijn|@home
0604:0FA1|Ziggo|Nat Geo Wild|@home
0604:0FA4|Ziggo|Discovery World|@home
0604:0FA5|Ziggo|Discovery Science|@home
0604:0FA6|Ziggo|Investigation Discovery|@home
0604:0FA7|Ziggo|Travel Channel|@home
0604:0FA8|Ziggo|Discovery Channel|@home
0604:0FA9|Ziggo|National Geographic Channel|@home
0604:0FB5|Ziggo|CNN International|@home
0604:0043|Ziggo|Nick Hits|@home
0604:008A|Ziggo|Private Spice|@home
0604:00C4|Ziggo|FOXlife|@home
0604:00E2|Ziggo|Comedy Central Extra|@home
0604:00F6|Ziggo|Sport1 Voetbal HD|@home
0604:00FF|Ziggo|FOX Sports 5 Eredivisie|@home
0604:1389|Ziggo|Comedy Central Family|@home
0604:138A|Ziggo|Eurosport 2|@home
0604:138C|Ziggo|Motors TV|@home
0604:0010|Ziggo|Nickelodeon|@home
0604:0011|Ziggo|Eurosport|@home
0604:0013|Ziggo|MTV|@home
0604:0014|Ziggo|Comedy Central|@home
0604:0328|Ziggo|Zenderoverzicht HD|@home
0604:1771|Ziggo|Sport1 Select|@home
0604:1772|Ziggo|Sport1 Voetbal|@home
0604:17A3|Ziggo|70s|@home
0604:17A5|Ziggo|Silk (Love Songs)|@home
0604:17A6|Ziggo|Classical Greats|@home
0604:17A7|Ziggo|Rock Anthems|@home
0604:17AA|Ziggo|Drive|@home
0604:17B2|Ziggo|Ultimate Urban|@home
0604:17B5|Ziggo|Chillout|@home
0604:17B6|Ziggo|Blues|@home
0604:17B9|Ziggo|Cocktail Lounge|@home
0604:17BB|Ziggo|All Day Party|@home
0604:17BD|Ziggo|Classical Orchestral|@home
0604:17BF|Ziggo|80s|@home
0604:17C0|Ziggo|Classical Calm|@home
0604:17C5|Ziggo|90s|@home
0604:17C6|Ziggo|Rewind|@home
0604:00A2|Ziggo|MAX|@home
0604:00A4|Ziggo|Zee Cinema|@home
0604:00B5|Ziggo|X-MO|@home
0604:00F9|Ziggo|Star Plus|@home
0604:00FA|Ziggo|Star Gold|@home
0604:044E|Ziggo|Aljazeera English|@home
0604:1B5D|Ziggo|Zee TV|@home
0604:1B5E|Ziggo|SET Asia|@home
0604:1BDC|Ziggo|Planet Turk|@home
0604:008B|Ziggo|PassieTV/Dusk!|@home
0604:00C7|Ziggo|PassieXXX|@home
0604:02CF|Ziggo|XLnt Dance|@home
0604:02D0|Ziggo|XLnt Lounge|@home
0604:02D1|Ziggo|XLnt Salsa|@home
0604:02D2|Ziggo|XLnt Alternative Rock|@home
0604:02D3|Ziggo|XLnt Classic Rock|@home
0604:02D4|Ziggo|XLnt Jazz|@home
0604:02D5|Ziggo|XLnt Schlager|@home
0604:02D6|Ziggo|XLnt R&B|@home
0604:02D7|Ziggo|XLnt Musical|@home
0604:02D8|Ziggo|XLnt Kleuterliedjes|@home
0604:02DD|Ziggo|WDR 2|@home
0604:02DE|Ziggo|WDR 3|@home
0604:02DF|Ziggo|WDR 4|@home
0604:02E0|Ziggo|WDR 5|@home
0604:2329|Ziggo|Sport1 Golf|@home
0604:232A|Ziggo|Sport1 Tennis|@home
0604:232B|Ziggo|Sport1 Extra 1|@home
0604:232C|Ziggo|Sport1 Extra 2|@home
0604:0023|Ziggo|Film1 Comedy & Kids|@home
0604:00FE|Ziggo|FOX|@home
0604:026E|Ziggo|RTV Noord radio|@home
0604:026F|Ziggo|Omrop Fryslan radio|@home
0604:0270|Ziggo|Radio Drenthe|@home
0604:0271|Ziggo|Radio Oost|@home
0604:0272|Ziggo|RTV Flevoland|@home
0604:02E1|Ziggo|VRT Radio 1|@home
0604:02E2|Ziggo|VRT Radio 2|@home
0604:02E3|Ziggo|Klara|@home
0604:02E4|Ziggo|Studio Brussel|@home
0604:02E5|Ziggo|MNM|@home
0604:02EE|Ziggo|Radio zeeland|@home
0604:2711|Ziggo|Nederland 1|@home
0604:2712|Ziggo|Nederland 2|@home
0604:2713|Ziggo|Nederland 3|@home
0604:2714|Ziggo|RTL 4|@home
0604:2716|Ziggo|CNBC Europe|@home
0604:048A|Ziggo|Zappelin / Zapp 24|@home
0604:2AF9|Ziggo|Veronica/Disney XD|@home
0604:2AFC|Ziggo|SBS 6|@home
0604:2AFD|Ziggo|RTL 5|@home
0604:2AFE|Ziggo|RTL 7|@home
0604:00B2|Ziggo|Film1 Action|@home
0604:00C5|Ziggo|RTL Lounge|@home
0604:0102|Ziggo|100% NL TV|@home
0604:02CD|Ziggo|Efteling Radio|@home
0604:2EE2|Ziggo|BBC World News|@home
0604:2EE5|Ziggo|Politiek 24|@home
0604:2EE7|Ziggo|Journaal 24|@home
0604:2EEA|Ziggo|Euronews|@home
0604:0024|Ziggo|Film1 Sundance|@home
0604:004D|Ziggo|192TV|@home
0604:0050|Ziggo|Mezzo|@home
0604:00B7|Ziggo|13TH STREET|@home
0604:00C3|Ziggo|SLAM!TV|@home
0604:00F5|Ziggo|RTL Telekids|@home
0604:32C9|Ziggo|VH-1|@home
0604:32CA|Ziggo|VH-1 Classic|@home
0604:32CF|Ziggo|TV Oranje|@home
0604:33A2|Ziggo|RTL Crime|@home
0604:36AF|Ziggo|RADIONL Serieus Verzoek|@home
0604:003C|Ziggo|Zender vd Maand|@home
0604:0085|Ziggo|Eventkanaal|@home
0604:00E7|Ziggo|HBO|@home
0604:36B1|Ziggo|Dusk! Deluxe|@home
0604:36B3|Ziggo|MTV Brand New|@home
0604:36B7|Ziggo|TCM|@home
0604:36B8|Ziggo|MGM Movie Channel|@home
0604:0072|Ziggo|Arte|@home
0604:00B6|Ziggo|OUTTV|@home
0604:0263|Ziggo|Radio 10|@home
0604:0265|Ziggo|BNR Nieuwsradio|@home
0604:0266|Ziggo|Arrow Classic Rock|@home
0604:0267|Ziggo|Sublime FM|@home
0604:0268|Ziggo|Slam! FM|@home
0604:026A|Ziggo|Classic FM|@home
0604:026B|Ziggo|Radio 6|@home
0604:026C|Ziggo|FunX|@home
0604:3A99|Ziggo|National Geographic Channel HD|@home
0604:3AA2|Ziggo|RTL 8|@home
0604:0020|Ziggo|Film1 Spotlight|@home
0604:0044|Ziggo|Baby TV|@home
0604:00B8|Ziggo|Syfy Universal|@home
0604:0103|Ziggo|FOX Sports 2 HD|@home
0604:3E82|Ziggo|Sport1 Select HD|@home
0604:00D7|Ziggo|Animal Planet HD|@home
0604:00F0|Ziggo|Comedy Central HD|@home
0604:4651|Ziggo|Cartoon Network|@home
0604:4656|Ziggo|Boomerang|@home
0604:0075|Ziggo|France 2|@home
0604:00D3|Ziggo|FOX Sports 1 Eredivisie HD|@home
0604:00EF|Ziggo|Discovery Channel HD|@home
0604:4A3A|Ziggo|TVE|@home
0604:4A3B|Ziggo|Rai Uno|@home
0604:4A3D|Ziggo|TV5 Monde|@home
0604:4A40|Ziggo|TRT Türk|@home
0604:002B|Ziggo|E! Entertainment|@home
0604:0065|Ziggo|Nick Toons|@home
0604:0259|Ziggo|Radio 1|@home
0604:025A|Ziggo|Radio 2|@home
0604:025B|Ziggo|3FM|@home
0604:025C|Ziggo|Radio 4|@home
0604:025D|Ziggo|Radio 5|@home
0604:025E|Ziggo|Sky Radio|@home
0604:025F|Ziggo|538|@home
0604:0260|Ziggo|Wild FM Hitradio|@home
0604:0261|Ziggo|Q-Music|@home
0604:0262|Ziggo|Radio Veronica|@home
0604:55F1|Ziggo|Film1 Premiere HD|@home
0604:55F3|Ziggo|Humor TV 24|@home
0604:55F4|Ziggo|CBS Reality|@home
0604:00E9|Ziggo|HBO 3|@home
0604:00ED|Ziggo|Ketnet/OP12|@home
0604:00EE|Ziggo|Ziggo Xite|@home
0604:59D9|Ziggo|Holland Doc 24|@home
0604:59DB|Ziggo|Cultura 24|@home
0604:59DC|Ziggo|Erotiek Pakket|@home
0604:59DE|Ziggo|101 TV|@home
0604:59E0|Ziggo|Best 24|@home
0604:00AE|Ziggo|FOX Sports 1 Eredivisie|@home
0604:00AF|Ziggo|FOX Sports 2|@home
0604:00B0|Ziggo|FOX Sports 3 Eredivisie|@home
0604:00B1|Ziggo|FOX Sports 4|@home
0604:5DC1|Ziggo|HISTORY HD|@home
0604:0039|Ziggo|HISTORY|@home
0604:003A|Ziggo|NostalgieNet|@home
0604:00D1|Ziggo|Net 5 HD|@home
0604:00D2|Ziggo|RTL 8 HD|@home
0604:02C3|Ziggo|XLnt Hits|@home
0604:02C4|Ziggo|XLnt NederPop Gold|@home
0604:02C5|Ziggo|XLnt NederPop|@home
0604:02C6|Ziggo|XLnt Nostalgie|@home
0604:02C7|Ziggo|XLnt PiratenHits|@home
0604:02C8|Ziggo|XLnt Easy listening|@home
0604:02C9|Ziggo|XLnt Oldies|@home
0604:02CA|Ziggo|XLnt Today's Pop|@home
0604:02CB|Ziggo|XLnt Comedy|@home
0604:02CC|Ziggo|XLnt Dance Classics|@home
0604:0041|Ziggo|Nick Jr.|@home
0604:00B4|Ziggo|Family 7|@home
0604:00CB|Ziggo|Nederland 3 HD|@home
0604:089C|Ziggo|RTL 4 HD|@home
0604:00AB|Ziggo|JimJam|@home
0604:00DC|Ziggo|Disney Junior|@home
0604:00F2|Ziggo|Canvas HD|@home
0604:0295|Ziggo|Radio France International|@home
0604:0297|Ziggo|RNE Radio|@home
0604:0298|Ziggo|RAI Radio 1|@home
0604:02BA|Ziggo|Reggae|@home
0604:02BD|Ziggo|Head bangers|@home
0604:02BE|Ziggo|Rock 'n Roll|@home
0604:02BF|Ziggo|Hot Country|@home
0604:02C0|Ziggo|The Christmas Channel|@home
0604:6979|Ziggo|BBC 3 / CBBC|@home
0604:697A|Ziggo|BBC 4 / CBeebies|@home
0604:697B|Ziggo|BBC 1|@home
0604:697C|Ziggo|BBC 2|@home
0604:697D|Ziggo|BBC Entertainment|@home
0604:697E|Ziggo|ZDF|@home
0604:0079|Ziggo|Euro D|@home
0604:007A|Ziggo|ATV Avrupa|@home
0604:007B|Ziggo|TGRT EU|@home
0604:007C|Ziggo|Samanyola Avrupa|@home
0604:007D|Ziggo|Euro Star|@home
0604:007E|Ziggo|Show TV|@home
0604:0083|Ziggo|Kral TV|@home
0604:00A3|Ziggo|Habertürk|@home
0604:00FD|Ziggo|Horse & Country TV|@home
0604:00C9|Ziggo|Nederland 1 HD|@home
0604:00CA|Ziggo|Nederland 2 HD|@home
0604:00DD|Ziggo|538|@home
0604:021A|Ziggo|538|@home
0604:08A4|Ziggo|24Kitchen|@home
0604:00D6|Ziggo|Disney XD 24|@home
0604:00DE|Ziggo|MTV Music 24|@home
0604:00E0|Ziggo|Nat Geo Wild HD|@home
0604:00FC|Ziggo|Penthouse|@home
0604:0219|Ziggo|DJAZZ.tv|@home
0604:7542|Ziggo|TLC|@home
0604:00D5|Ziggo|Disney Channel|@home
0604:00DF|Ziggo|FOXlife HD|@home
0604:00E1|Ziggo|MTV Live HD|@home
0604:0100|Ziggo|FOX HD|@home
0604:0045|Ziggo|Lite TV|@home
0604:00CF|Ziggo|RTL 7 HD|@home
0604:00DB|Ziggo|Pebble TV|@home
0604:08A0|Ziggo|Veronica HD/Disney XD|@home
0604:0021|Ziggo|Film1 Premiere|@home
0604:00EA|Ziggo|HBO HD|@home
0604:00EB|Ziggo|HBO 2 HD|@home
0604:00EC|Ziggo|HBO 3 HD|@home
0604:00A1|Ziggo|brava nl klassiek|@home
0604:00CD|Ziggo|RTL 5 HD|@home
0604:089E|Ziggo|SBS 6 HD|@home
0604:507E|Ziggo|Ziggo TV|@home
0604:50DD|Ziggo|TV Gelderland|@home
0604:50DE|Ziggo|Omroep Zeeland|@home
0604:50DF|Ziggo|L1 Limburg|@home
0604:50E0|Ziggo|Omroep Brabant TV|@home
0604:50E1|Ziggo|TV Rijnmond|@home
0604:50E2|Ziggo|TV West|@home
0604:50FA|Ziggo|L1 Limburg|@home
0604:01F4|Ziggo|Lokale omroep|@home
0604:01F5|Ziggo|Lokale omroep|@home
0604:01F6|Ziggo|Lokale omroep|@home
0604:01F7|Ziggo|Lokale omroep|@home
0604:01F8|Ziggo|Lokale omroep|@home
0604:01F9|Ziggo|Lokale omroep |@home
0604:01FA|Ziggo|Lokale omroep |@home
0604:01FB|Ziggo|Lokale omroep|@home
0604:01FC|Ziggo|Lokale omroep|@home
0604:0200|Ziggo|GPTV|@home
0604:0202|Ziggo|TV Limburg|@home
0604:020B|Ziggo|DTV Oss|@home
0604:0863|Ziggo|Brabant Midden|@home
0604:0864|Ziggo|Brabant West|@home
0604:0866|Ziggo|Brabant NoordOost|@home
0604:1388|Ziggo|Lokale radio|@home
0604:13EC|Ziggo|Lokale radio|@home
0604:1450|Ziggo|Lokale radio|@home
0604:14B4|Ziggo|Lokale radio|@home
0604:1518|Ziggo|Lokale radio|@home
0604:157C|Ziggo|Lokale radio|@home
0604:15E0|Ziggo|Lokale radio|@home
0604:1644|Ziggo|Lokale radio|@home
0604:16A8|Ziggo|Lokale radio|@home
0604:4E8A|Ziggo|Brabant Midden|@home
0604:4E8B|Ziggo|Brabant West|@home
0604:4E8C|Ziggo|Brabant NoordOost|@home
```

back to [index](#index)

### Ziggo NL (5555/8888) (REVIEW NEEDED)

last review: 2013-08-24 by: source DoeEensGek sat4all

Review needed for packages and for |Radio|And |TV|

```
###
### DVB-C - ZIGGO multikabel/casema - Dutch Cable (5555/8888)
###
0000,0602,0604:00CD|Ziggo|RTL 5 HD|5555/8888
0000,0602,0604:00D4|Ziggo|24 Kitchen|5555/8888
0000,0602,0604:00FC|Ziggo|Penthouse|5555/8888
0000,0602,0604:0219|Ziggo|DJAZZ.tv|5555/8888
0000,0602,0604:03E9|Ziggo|Eventkanaal|5555/8888
0000,0602,0604:0061|Ziggo|Euronews|5555/8888
0000,0602,0604:00DF|Ziggo|FOXlife HD|5555/8888
0000,0602,0604:00F5|Ziggo|RTL Telekids|5555/8888
0000,0602,0604:0100|Ziggo|FOX HD|5555/8888
0000,0602,0604:07D2|Ziggo|Cartoon Network|5555/8888
0000,0602,0604:07D3|Ziggo|National Geographic Channel|5555/8888
0000,0602,0604:07D4|Ziggo|BBC Entertainment|5555/8888
0000,0602,0604:07D7|Ziggo|Dusk! Deluxe|5555/8888
0000,0602,0604:00CF|Ziggo|RTL 7 HD|5555/8888
0000,0602,0604:00D2|Ziggo|RTL 8 HD|5555/8888
0000,0602,0604:00FF|Ziggo|FOX Sports 5 Eredivisie|5555/8888
0000,0602,0604:0101|Ziggo|FOX Sports Informatie|5555/8888
0000,0602,0604:0BB9|Ziggo|Eurosport 2|5555/8888
0000,0602,0604:0BBB|Ziggo|Crime & Investigation Network|5555/8888
0000,0602,0604:0BBF|Ziggo|Travel Channel|5555/8888
0000,0602,0604:0BC3|Ziggo|MTV|5555/8888
0000,0602,0604:0042|Ziggo|Nick Toons|5555/8888
0000,0602,0604:00CC|Ziggo|RTL 4 HD|5555/8888
0000,0602,0604:00E7|Ziggo|HBO|5555/8888
0000,0602,0604:0FA2|Ziggo|TLC|5555/8888
0000,0602,0604:0FA4|Ziggo|Discovery World|5555/8888
0000,0602,0604:0FA5|Ziggo|Discovery Science|5555/8888
0000,0602,0604:0FA6|Ziggo|Investigation Discovery|5555/8888
0000,0602,0604:0FD2|Ziggo|VRT Radio 1|5555/8888
0000,0602,0604:0FD3|Ziggo|VRT Radio 2|5555/8888
0000,0602,0604:0FD4|Ziggo|Klara|5555/8888
0000,0602,0604:0FD5|Ziggo|Studio Brussel|5555/8888
0000,0602,0604:0FD6|Ziggo|MNM|5555/8888
0000,0602,0604:0FD7|Ziggo|BBC Radio 4|5555/8888
0000,0602,0604:0043|Ziggo|Nick Hits|5555/8888
0000,0602,0604:0049|Ziggo|MTV Brand New|5555/8888
0000,0602,0604:00BC|Ziggo|FOX Sports 1 Eredivisie|5555/8888
0000,0602,0604:00D0|Ziggo|Veronica HD/Disney XD|5555/8888
0000,0602,0604:02EE|Ziggo|Radio Zeeland|5555/8888
0000,0602,0604:1389|Ziggo|HISTORY|5555/8888
0000,0602,0604:13BA|Ziggo|Eins Live|5555/8888
0000,0602,0604:13BB|Ziggo|WDR 2|5555/8888
0000,0602,0604:13BD|Ziggo|WDR 4|5555/8888
0000,0602,0604:13BE|Ziggo|WDR 5|5555/8888
0000,0602,0604:13BF|Ziggo|RNE Radio|5555/8888
0000,0602,0604:13C0|Ziggo|L1 Radio|5555/8888
0000,0602,0604:13C2|Ziggo|Radio Decibel|5555/8888
0000,0602,0604:13C3|Ziggo|WDR 3|5555/8888
0000,0602,0604:13C4|Ziggo|Ujala Radio|5555/8888
0000,0602,0604:13C5|Ziggo|RAI Radio 1|5555/8888
0000,0602,0604:13C6|Ziggo|Radio West|5555/8888
0000,0602,0604:13C7|Ziggo|Radio M Utrecht|5555/8888
0000,0602,0604:13C8|Ziggo|Omroep Brabant Radio|5555/8888
0000,0602,0604:13C9|Ziggo|Radio Rijnmond|5555/8888
0000,0602,0604:13CA|Ziggo|Radio Noord-Holland|5555/8888
0000,0602,0604:13CB|Ziggo|Tweede Kamerlijn|5555/8888
0000,0602,0604:13CC|Ziggo|Sublime FM|5555/8888
0000,0602,0604:1771|Ziggo|Veronica/Disney XD|5555/8888
0000,0602,0604:1772|Ziggo|Net 5|5555/8888
0000,0602,0604:1773|Ziggo|één|5555/8888
0000,0602,0604:1774|Ziggo|RTL 8|5555/8888
0000,0602,0604:1775|Ziggo|Comedy Central / Kindernet|5555/8888
0000,0602,0604:000C|Ziggo|Zenderoverzicht|5555/8888
0000,0602,0604:00C5|Ziggo|RTL Lounge|5555/8888
0000,0602,0604:1B6C|Ziggo|Motors TV|5555/8888
0000,0602,0604:1B6D|Ziggo|Nickelodeon|5555/8888
0000,0602,0604:1B6E|Ziggo|WDR|5555/8888
0000,0602,0604:1B70|Ziggo|Holland Doc 24|5555/8888
0000,0602,0604:1B8A|Ziggo|Arrow Classic Rock|5555/8888
0000,0602,0604:1B8B|Ziggo|BNR Nieuwsradio|5555/8888
0000,0602,0604:1B8C|Ziggo|Classic FM|5555/8888
0000,0602,0604:1B8D|Ziggo|FunX|5555/8888
0000,0602,0604:1B8E|Ziggo|Slam! FM|5555/8888
0000,0602,0604:1B8F|Ziggo|Q-Music|5555/8888
0000,0602,0604:1B90|Ziggo|Radio 1|5555/8888
0000,0602,0604:1B91|Ziggo|Radio 2|5555/8888
0000,0602,0604:1B92|Ziggo|3FM|5555/8888
0000,0602,0604:1B93|Ziggo|Radio 4|5555/8888
0000,0602,0604:1B94|Ziggo|Radio France International|5555/8888
0000,0602,0604:00F4|Ziggo|Zenderoverzicht HD|5555/8888
0000,0602,0604:1F42|Ziggo|MGM Movie Channel|5555/8888
0000,0602,0604:1F43|Ziggo|Nederland 3|5555/8888
0000,0602,0604:1F44|Ziggo|Nederland 1|5555/8888
0000,0602,0604:1F45|Ziggo|Nederland 2|5555/8888
0000,0602,0604:1F46|Ziggo|Rai Uno|5555/8888
0000,0602,0604:00D5|Ziggo|Disney Channel|5555/8888
0000,0602,0604:00D6|Ziggo|Disney XD|5555/8888
0000,0602,0604:00DC|Ziggo|Disney Junior|5555/8888
0000,0602,0604:00E1|Ziggo|MTV Live HD|5555/8888
0000,0602,0604:00E8|Ziggo|HBO 2|5555/8888
0000,0602,0604:02CD|Ziggo|Efteling Radio|5555/8888
0000,0602,0604:2329|Ziggo|Ziggo TV|5555/8888
0000,0602,0604:235A|Ziggo|Radio 6|5555/8888
0000,0602,0604:235B|Ziggo|Radio 10 Gold|5555/8888
0000,0602,0604:235C|Ziggo|538|5555/8888
0000,0602,0604:235F|Ziggo|Sky Radio|5555/8888
0000,0602,0604:2360|Ziggo|Radio Veronica|5555/8888
0000,0602,0604:2362|Ziggo|Radio 5|5555/8888
0000,0602,0604:2363|Ziggo|BBC Radio 1|5555/8888
0000,0602,0604:2364|Ziggo|BBC Radio 2|5555/8888
0000,0602,0604:2365|Ziggo|BBC Radio 3|5555/8888
0000,0602,0604:2366|Ziggo|BBC World Service|5555/8888
0000,0602,0604:004B|Ziggo|MTV Music 24|5555/8888
0000,0602,0604:004D|Ziggo|192 TV|5555/8888
0000,0602,0604:00F3|Ziggo|Eurosport 2 HD|5555/8888
0000,0602,0604:2711|Ziggo|Journaal 24|5555/8888
0000,0602,0604:2713|Ziggo|Film1 Premiere HD|5555/8888
0000,0602,0604:2714|Ziggo|TV Oranje|5555/8888
0000,0602,0604:2716|Ziggo|CNBC Europe|5555/8888
0000,0602,0604:002F|Ziggo|101 TV|5555/8888
0000,0602,0604:00AB|Ziggo|JimJam|5555/8888
0000,0602,0604:00F0|Ziggo|Comedy Central HD / Kindernet|5555/8888
0000,0602,0604:2AF9|Ziggo|BBC 3 / CBBC|5555/8888
0000,0602,0604:2AFB|Ziggo|Sport1 Tennis|5555/8888
0000,0602,0604:2AFC|Ziggo|Sport1 Golf|5555/8888
0000,0602,0604:2AFD|Ziggo|Sport1 Voetbal|5555/8888
0000,0602,0604:2AFE|Ziggo|Sport1 Select|5555/8888
0000,0602,0604:00CB|Ziggo|Nederland 3 HD|5555/8888
0000,0602,0604:00D9|Ziggo|Comedy Central Extra|5555/8888
0000,0602,0604:00DD|Ziggo|538|5555/8888
0000,0602,0604:2EE1|Ziggo|538|5555/8888
0000,0602,0604:2EE2|Ziggo|BBC World News|5555/8888
0000,0602,0604:2EE3|Ziggo|CNN International|5555/8888
0000,0602,0604:2EE4|Ziggo|Discovery Channel|5555/8888
0000,0602,0604:2EE7|Ziggo|Eurosport|5555/8888
0000,0602,0604:00BE|Ziggo|FOX Sports 3 Eredivisie|5555/8888
0000,0602,0604:00F1|Ziggo|één HD|5555/8888
0000,0602,0604:00F6|Ziggo|Sport1 Voetbal HD|5555/8888
0000,0602,0604:32C9|Ziggo|ARD|5555/8888
0000,0602,0604:32CA|Ziggo|BBC 4 / CBeebies|5555/8888
0000,0602,0604:32CB|Ziggo|BBC 1|5555/8888
0000,0602,0604:32CC|Ziggo|BBC 2|5555/8888
0000,0602,0604:32CE|Ziggo|ESPN AMERICA|5555/8888
0000,0602,0604:003D|Ziggo|Cultura 24|5555/8888
0000,0602,0604:0050|Ziggo|Mezzo|5555/8888
0000,0602,0604:0062|Ziggo|Politiek 24|5555/8888
0000,0602,0604:0072|Ziggo|Arte|5555/8888
0000,0602,0604:0078|Ziggo|TRT Türk|5555/8888
0000,0602,0604:02A5|Ziggo|90s|5555/8888
0000,0602,0604:02B2|Ziggo|Rewind|5555/8888
0000,0602,0604:02B8|Ziggo|Drive|5555/8888
0000,0602,0604:02C0|Ziggo|The Alternative|5555/8888
0000,0602,0604:02CF|Ziggo|XLnt Dance|5555/8888
0000,0602,0604:02D0|Ziggo|XLnt Lounge|5555/8888
0000,0602,0604:02D1|Ziggo|XLnt Salsa|5555/8888
0000,0602,0604:02D2|Ziggo|XLnt Alternative Rock|5555/8888
0000,0602,0604:02D3|Ziggo|XLnt Classic Rock|5555/8888
0000,0602,0604:02D4|Ziggo|XLnt Jazz|5555/8888
0000,0602,0604:02D5|Ziggo|XLnt Schlager|5555/8888
0000,0602,0604:02D6|Ziggo|XLnt R&B|5555/8888
0000,0602,0604:02D7|Ziggo|XLnt Musical|5555/8888
0000,0602,0604:02D8|Ziggo|XLnt Kleuterliedjes|5555/8888
0000,0602,0604:36B1|Ziggo|Net 5 HD|5555/8888
0000,0602,0604:36E3|Ziggo|80s|5555/8888
0000,0602,0604:36E5|Ziggo|Silk (Love Songs)|5555/8888
0000,0602,0604:36E6|Ziggo|Ultimate Urban|5555/8888
0000,0602,0604:36E7|Ziggo|Classical Greats|5555/8888
0000,0602,0604:36E8|Ziggo|Rock Anthems|5555/8888
0000,0602,0604:36EB|Ziggo|Head bangers|5555/8888
0000,0602,0604:36EC|Ziggo|70s|5555/8888
0000,0602,0604:36F2|Ziggo|Reggae|5555/8888
0000,0602,0604:36F5|Ziggo|Blues|5555/8888
0000,0602,0604:36F6|Ziggo|Chillout|5555/8888
0000,0602,0604:36F7|Ziggo|Hot Country|5555/8888
0000,0602,0604:36F9|Ziggo|Cocktail Lounge|5555/8888
0000,0602,0604:36FD|Ziggo|Classical Orchestral|5555/8888
0000,0602,0604:36FE|Ziggo|Classical Calm|5555/8888
0000,0602,0604:3701|Ziggo|Rock 'n' Roll|5555/8888
0000,0602,0604:3709|Ziggo|All Day Party|5555/8888
0000,0602,0604:370A|Ziggo|XLnt Hits|5555/8888
0000,0602,0604:370B|Ziggo|XLnt Nederpop Gold|5555/8888
0000,0602,0604:370C|Ziggo|XLnt Nederpop|5555/8888
0000,0602,0604:370D|Ziggo|XLnt Nostalgie|5555/8888
0000,0602,0604:370E|Ziggo|XLnt PiratenHits|5555/8888
0000,0602,0604:370F|Ziggo|XLnt Easy Listening|5555/8888
0000,0602,0604:3710|Ziggo|XLnt Oldies|5555/8888
0000,0602,0604:3711|Ziggo|XLnt Today's Pop|5555/8888
0000,0602,0604:3712|Ziggo|XLnt Comedy|5555/8888
0000,0602,0604:3714|Ziggo|XLnt Dance Classics|5555/8888
0000,0602,0604:00B7|Ziggo|13TH STREET|5555/8888
0000,0602,0604:00C4|Ziggo|FOXlife|5555/8888
0000,0602,0604:00DA|Ziggo|RTL Crime|5555/8888
0000,0602,0604:00F2|Ziggo|Canvas HD|5555/8888
0000,0602,0604:3A99|Ziggo|Sport1 Extra 1|5555/8888
0000,0602,0604:3A9A|Ziggo|Sport1 Extra 2|5555/8888
0000,0602,0604:3A9E|Ziggo|Canvas|5555/8888
0000,0602,0604:3A9F|Ziggo|TCM|5555/8888
0000,0602,0604:3E81|Ziggo|Pebble TV|5555/8888
0000,0602,0604:3E82|Ziggo|Film1 Series|5555/8888
0000,0602,0604:3E83|Ziggo|Film1 Premiere|5555/8888
0000,0602,0604:3E84|Ziggo|Film1 Family|5555/8888
0000,0602,0604:3E85|Ziggo|Film1 Sundance|5555/8888
0000,0602,0604:0045|Ziggo|Lite TV|5555/8888
0000,0602,0604:00B8|Ziggo|Syfy Universal|5555/8888
0000,0602,0604:00BD|Ziggo|FOX Sports 2|5555/8888
0000,0602,0604:00EE|Ziggo|Ziggo Xite|5555/8888
0000,0602,0604:4653|Ziggo|Baby TV|5555/8888
0000,0602,0604:4654|Ziggo|Boomerang|5555/8888
0000,0602,0604:4657|Ziggo|VH-1|5555/8888
0000,0602,0604:4659|Ziggo|ZDF|5555/8888
0000,0602,0604:4A39|Ziggo|RTL 4|5555/8888
0000,0602,0604:4A3A|Ziggo|RTL 5|5555/8888
0000,0602,0604:4A3B|Ziggo|SBS 6|5555/8888
0000,0602,0604:4A3E|Ziggo|RTL 7|5555/8888
0000,0602,0604:00E9|Ziggo|HBO 3|5555/8888
0000,0602,0604:4E23|Ziggo|E! Entertainment|5555/8888
0000,0602,0604:4E24|Ziggo|TVE|5555/8888
0000,0602,0604:4E25|Ziggo|Private Spice|5555/8888
0000,0602,0604:4E27|Ziggo|National Geographic Channel HD|5555/8888
0000,0602,0604:4E28|Ziggo|Best 24|5555/8888
0000,0602,0604:003E|Ziggo|Zappelin / Zapp 24|5555/8888
0000,0602,0604:008B|Ziggo|PassieTV/Dusk!|5555/8888
0000,0602,0604:00BF|Ziggo|FOX Sports 4|5555/8888
0000,0602,0604:5209|Ziggo|Sport1 Select HD|5555/8888
0000,0602,0604:520B|Ziggo|Weer en Verkeer|5555/8888
0000,0602,0604:003A|Ziggo|NostalgieNet|5555/8888
0000,0602,0604:00B2|Ziggo|Film1 Action|5555/8888
0000,0602,0604:00B3|Ziggo|Comedy Central Family|5555/8888
0000,0602,0604:00D7|Ziggo|Animal Planet HD|5555/8888
0000,0602,0604:00EF|Ziggo|Discovery Channel HD|5555/8888
0000,0602,0604:00B4|Ziggo|Family 7|5555/8888
0000,0602,0604:00CE|Ziggo|SBS 6 HD|5555/8888
0000,0602,0604:59D9|Ziggo|TV 5 Monde Europe|5555/8888
0000,0602,0604:59DA|Ziggo|Sat. 1|5555/8888
0000,0602,0604:59DC|Ziggo|CBS Reality|5555/8888
0000,0602,0604:59E0|Ziggo|VH-1 Classic|5555/8888
0000,0602,0604:0026|Ziggo|Humor TV 24|5555/8888
0000,0602,0604:00A1|Ziggo|brava nl klassiek|5555/8888
0000,0602,0604:00D3|Ziggo|FOX Sports 1 Eredivisie HD|5555/8888
0000,0602,0604:026F|Ziggo|Omrop Fryslân radio|5555/8888
0000,0602,0604:027A|Ziggo|RADIONL|5555/8888
0000,0602,0604:027B|Ziggo|Waterstad FM|5555/8888
0000,0602,0604:027F|Ziggo|100% NL|5555/8888
0000,0602,0604:028F|Ziggo|NDR 2|5555/8888
0000,0602,0604:0290|Ziggo|NDR Kultur|5555/8888
0000,0602,0604:02DA|Ziggo|NDR 1|5555/8888
0000,0602,0604:5DC1|Ziggo|Nat Geo Wild|5555/8888
0000,0602,0604:5DC6|Ziggo|RTL Television|5555/8888
0000,0602,0604:0041|Ziggo|Nick Jr.|5555/8888
0000,0602,0604:00A6|Ziggo|Eurosport HD|5555/8888
0000,0602,0604:00B6|Ziggo|OUTTV|5555/8888
0000,0602,0604:00FE|Ziggo|FOX|5555/8888
0000,0602,0604:09C5|Ziggo|NDR|5555/8888
0000,0602,0604:001F|Ziggo|HISTORY HD|5555/8888
0000,0602,0604:00BA|Ziggo|France 2|5555/8888
0000,0602,0604:00C7|Ziggo|PassieXXX|5555/8888
0000,0602,0604:00E0|Ziggo|Nat Geo Wild HD|5555/8888
0000,0602,0604:00ED|Ziggo|Ketnet/OP12|5555/8888
0000,0602,0604:6591|Ziggo|Erotiek Pakket|5555/8888
0000,0602,0604:00C9|Ziggo|Nederland 1 HD|5555/8888
0000,0602,0604:00CA|Ziggo|Nederland 2 HD|5555/8888
0000,0602,0604:6979|Ziggo|Zender vd Maand|5555/8888
0000,0602,0604:697A|Ziggo|SLAM!TV|5555/8888
0000,0602,0604:0079|Ziggo|Euro D|5555/8888
0000,0602,0604:007A|Ziggo|ATV Avrupa|5555/8888
0000,0602,0604:007B|Ziggo|TGRT EU|5555/8888
0000,0602,0604:007C|Ziggo|Samanyolu Avrupa|5555/8888
0000,0602,0604:007D|Ziggo|Euro Star|5555/8888
0000,0602,0604:007E|Ziggo|Show TV|5555/8888
0000,0602,0604:00FD|Ziggo|Horse & Country TV|5555/8888
0000,0602,0604:6D61|Ziggo|HaberTürk|5555/8888
0000,0602,0604:6D62|Ziggo|Kral TV|5555/8888
0000,0602,0604:00EA|Ziggo|HBO HD|5555/8888
0000,0602,0604:00EB|Ziggo|HBO 2 HD|5555/8888
0000,0602,0604:00EC|Ziggo|HBO 3 HD|5555/8888
0000,0602,0604:0082|Ziggo|SET Asia|5555/8888
0000,0602,0604:00F9|Ziggo|Star Plus|5555/8888
0000,0602,0604:00FA|Ziggo|Star Gold|5555/8888
0000,0602,0604:7919|Ziggo|Planet Turk|5555/8888
0000,0602,0604:791A|Ziggo|MAX|5555/8888
0000,0602,0604:791B|Ziggo|Zee Cinema|5555/8888
0000,0602,0604:791C|Ziggo|Zee TV|5555/8888
0000,0602,0604:791D|Ziggo|X-MO|5555/8888
0000,0602,0604:791F|Ziggo|Aljazeera English|5555/8888
0000,0602,0604:0064|Ziggo|Lokale Omroep |5555/8888
0000,0602,0604:00C8|Ziggo|Lokale Omroep |5555/8888
0000,0602,0604:012C|Ziggo|Lokale Omroep |5555/8888
0000,0602,0604:0190|Ziggo|Lokale Omroep |5555/8888
0000,0602,0604:01F4|Ziggo|Lokale Omroep |5555/8888
0000,0602,0604:0258|Ziggo|Lokale Omroep|5555/8888
0000,0602,0604:02BC|Ziggo|Lokale Omroep |5555/8888
0000,0602,0604:0320|Ziggo|Lokale Omroep |5555/8888
0000,0602,0604:0384|Ziggo|Lokale Omroep |5555/8888
0000,0602,0604:0385|Ziggo|Temp|5555/8888
0000,0602,0604:03E8|Ziggo|Lokale Omroep |5555/8888
0000,0602,0604:1388|Ziggo|Lokale Radio|5555/8888
0000,0602,0604:13EC|Ziggo|Lokale Radio|5555/8888
0000,0602,0604:1450|Ziggo|Lokale Radio|5555/8888
0000,0602,0604:14B4|Ziggo|Lokale Radio|5555/8888
0000,0602,0604:1518|Ziggo|Lokale Radio|5555/8888
0000,0602,0604:157C|Ziggo|Lokale Radio|5555/8888
0000,0602,0604:15E0|Ziggo|Lokale Radio|5555/8888
0000,0602,0604:1644|Ziggo|Lokale Radio|5555/8888
0000,0602,0604:16A8|Ziggo|Lokale Radio|5555/8888
0000,0602,0604:2710|Ziggo|Lokale Omroep|5555/8888
0000,0602,0604:2711|Ziggo|Journaal 24|5555/8888
0000,0602,0604:008C|Ziggo|Omroep Zeeland|5555/8888
0000,0602,0604:0093|Ziggo|RTV Utrecht|5555/8888
0000,0602,0604:0094|Ziggo|TV Gelderland|5555/8888
0000,0602,0604:0095|Ziggo|Omroep Brabant TV|5555/8888
0000,0602,0604:0097|Ziggo|TV Noord Holland|5555/8888
0000,0602,0604:0098|Ziggo|TV Rijnmond|5555/8888
0000,0602,0604:0099|Ziggo|TV West|5555/8888
0000,0602,0604:008D|Ziggo|TV Flevoland|5555/8888
0000,0602,0604:0093|Ziggo|RTV Utrecht|5555/8888
0000,0602,0604:0094|Ziggo|TV Gelderland|5555/8888
0000,0602,0604:0095|Ziggo|Omroep Brabant TV|5555/8888
0000,0602,0604:0097|Ziggo|TV Noord Holland|5555/8888
0000,0602,0604:0098|Ziggo|TV Rijnmond|5555/8888
0000,0602,0604:0099|Ziggo|TV West|5555/8888
0000,0602,0604:008C|Ziggo|Omroep Zeeland|5555/8888
0000,0602,0604:0092|Ziggo|L1 Limburg|5555/8888
0000,0602,0604:0093|Ziggo|RTV Utrecht|5555/8888
0000,0602,0604:0094|Ziggo|TV Gelderland|5555/8888
0000,0602,0604:0095|Ziggo|Omroep Brabant TV|5555/8888
0000,0602,0604:0098|Ziggo|TV Rijnmond|5555/8888
0000,0602,0604:0099|Ziggo|TV West|5555/8888
0000,0602,0604:008D|Ziggo|TV Flevoland|5555/8888
0000,0602,0604:0090|Ziggo|Omrop Fryslân|5555/8888
0000,0602,0604:0093|Ziggo|RTV Utrecht|5555/8888
0000,0602,0604:0096|Ziggo|AT 5|5555/8888
0000,0602,0604:0097|Ziggo|TV Noord Holland|5555/8888
0000,0602,0604:0098|Ziggo|TV Rijnmond|5555/8888
0000,0602,0604:0099|Ziggo|TV West|5555/8888
```

back to [index](#index)

## **Finnish Cable**

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


### DNA Welho Helsinki

last review: 20-10-2013 by: ???

Additional information:

+   Partial list from the Helsinki cable network.
+   The srvid's are different for other cities.

```
###
### DVB-C - DNA WELHO HELSINKI - Finnish Cable (42249)
###
0B00:0003|DMC|Extreme Sports Channel
0B00:001E|Unknown|Investigation Discovery
0B00:0064|Digita Oy|FOX HD
0B00:00C9|Unknown|National Geographic Channel
0B00:00CA|Telenor|CNN International
0B00:00CC|MTV Networks|VH1
0B00:00CE|Kabelkiosk|Nick Jr.
0B00:00D1|MTV Oy|MTV3 MAX
0B00:00E9|Telenor|BBC Knowledge
0B00:0101|MTV Oy|MTV3 Juniori
0B00:0137|MTV Oy|MTV3 Fakta
0B00:0141|MTV Oy|MTV3 Leffa
0B00:0169|MTV Oy|MTV3 Fakta XL
0B00:0173|MTV Oy|MTV3 Sarja
0B00:0196|Telenor|Discovery Channel
0B00:0197|Telenor|Animal Planet
0B00:01BC|Sanoma Television Oy|Nelonen
0B00:01E1|Urhotv Oy|URHOtv
0B00:01F3|Unknown|Kuukauden kanava
0B00:0366|Sveriges Television|SVT24
0B00:0389|Telenor|Eurosport
0B00:03F2|Sveriges Television|SVT1
0B00:03F6|Telenor|Discovery World
0B00:03F7|Telenor|Discovery Science
0B00:03F8|Telenor|TLC
0B00:0410|TV4-gruppen|TV4
0B00:044C|Modern Times Group|TV3
0B00:044F|Telenor|BBC Entertainment
0B00:05B4|MTV Oy|MTV3 Komedia
0B00:0648|Telenor|Eurosport 2
0B00:0649|Telenor|Star!
0B00:073C|Sanoma Television Oy|Nelonen Prime
0B00:083F|Telenor|Showtime
0B00:09C5|Telenor|BBC Lifestyle
0B00:09CF|Telenor|History
0B00:0C6C|Viasat|Disney Channel
0B00:0CDB|MTV Oy|MTV3 HD
0B00:0CF1|Levira|Silver
0B00:0F0A|Viasat|Disney Junior
0B00:13A6|Sveriges Television|SVT2
0B00:13D8|Unknown|Nat Geo Wild
0B00:14B4|DMC|CBS Reality
0B00:59D8|Viasat|Disney XD
0B00:6D63|Arqiva|Travel Channel
0B00:6FF8|MTV Networks|MTV Hits
0B00:FA64|Sanoma Television Oy|Nelonen Nappula
0B00:FE4C|Sanoma Television Oy|Nelonen Maailma
```

back to [index](#index)

## **German Cable**

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


### Unitymedia & KabelBW (incl. Sky)

last review: 2015-01-20 by: EgLe

KabelBW und Unitymedia verschmelzen immer mehr; im Frühling 2015 wird wohl auch der Name KabelBW fallen.
Hier habe ich mal die Nach der letzten gültigen Senderliste vom 01. Dezember 2014. Alles händisch angepasst und überprüft.

Additional information:

+   CAID´s
    +   I12 -> 1722 (Betacrypt) and 1835 (Nagra Berlin)
    +   UM01 -> 1831 (Nagra Aladin)
    +   UM02 -> 1838 (Nagra Berlin)
    +   Horizon -> 1850 (Nagra)
    +   V23 -> 098E ( Videoguard )
    +   management (0000)
+   some (local) programms are not available in some areas



```
###
### UM-KBW HD Programme ###
###
0000,098E,1722,1831,1835,1838,1850:0458|UM-KBW|NatGeo HD|TV|HD Option Digital TV
0000,098E,1722,1831,1835,1838,1850:0459|UM-KBW|History HD|TV|HD Option Digital TV
0000,098E,1722,1831,1835,1838,1850:0463|UM-KBW|TNT Serie HD|TV|HD Option Digital TV
0000,098E,1722,1831,1835,1838,1850:0464|UM-KBW|FOX HD|TV|HD Option Digital TV
0000,098E,1722,1831,1835,1838,1850:046A|UM-KBW|Discovery HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:42DA|UM-KBW|Sport1+ HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:4E96|UM-KBW|Sport1 HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:5274|UM-KBW|TNT Film HD|TV|HD Option Digital TV
0000,098E,1722,1831,1835,1838,1850:6219|UM-KBW|13TH STREET HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:621A|UM-KBW|Auto Motor und Sport TV HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:621B|UM-KBW|Spiegel TV Wissen HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:69E7|UM-KBW|Disney HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:69EA|UM-KBW|SyFy HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:6DCF|UM-KBW|Bon Gusto HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:6DD0|UM-KBW|MTV Live HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:71B5|UM-KBW|ServusTV HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:759C|UM-KBW|CLASSICA HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:75A4|UM-KBW|Kinowelt TV HD|TV|HD Option Digital TV
0000,098E,1722,1831,1835,1838,1850:797F|UM-KBW|Romance TV HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:7980|UM-KBW|DMAX HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:7D65|UM-KBW|Sat.1 HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:7D66|UM-KBW|ProSieben HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:7D67|UM-KBW|kabel eins HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:7D68|UM-KBW|sixx HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:7D69|UM-KBW|ProSieben MAXX HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:814D|UM-KBW|RTL HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:814E|UM-KBW|RTL2 HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:814F|UM-KBW|VOX HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:8150|UM-KBW|Super RTL HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:8151|UM-KBW|RTL Nitro HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:94D5|UM-KBW|ProSieben FUN HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:94D6|UM-KBW|TNT Glitz HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:94D7|UM-KBW|RTL Crime HD|TV|HD Option Digital TV
0000,098E,1722,1831,1835,1838,1850:94D7|UM-KBW|RTL Crime HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:94D8|UM-KBW|Lust Pur HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:9CA5|UM-KBW|AXN HD|TV|HD Option Digital TV
0000,098E,1722,1831,1835,1838,1850:A85D|UM-KBW|CNN International HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:AC48|UM-KBW|PLANET HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:AC4A|UM-KBW|Nickelodeon HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:B02D|UM-KBW|VIVA / Comedy Central HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:B02E|UM-KBW|Animal Planet HD|TV|HD Option Digital TV
0000,098E,1722,1831,1835,1838,1850:B415|UM-KBW|RTL Living HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:B416|UM-KBW|Passion HD|TV|HD Option Digital TV Allstars
0000,098E,1722,1831,1835,1838,1850:B417|UM-KBW|Deluxe Music HD|TV|HD Option
0000,098E,1722,1831,1835,1838,1850:B7FD|UM-KBW|Penthouse HD|TV|HD Option Digital TV Extra


###
### UM-KBW Kino auf Abruf (not sending any more) ###
###
0000,098E,1722,1831,1835,1838,1850:3EE9|UM-KBW|Kino 08|TV|
0000,098E,1722,1831,1835,1838,1850:3EEA|UM-KBW|Kino 07|TV|
0000,098E,1722,1831,1835,1838,1850:4AA2|UM-KBW|Kino 06|TV|
0000,098E,1722,1831,1835,1838,1850:4AA3|UM-KBW|Kino 05|TV|
0000,098E,1722,1831,1835,1838,1850:4AA4|UM-KBW|Kino 04|TV|
0000,098E,1722,1831,1835,1838,1850:4AA5|UM-KBW|Kino 03|TV|
0000,098E,1722,1831,1835,1838,1850:4AA6|UM-KBW|Kino 02|TV|
0000,098E,1722,1831,1835,1838,1850:4AA7|UM-KBW|Kino 01|TV|

###
### UM-KBW Bonus ###
###
0000,098E,1722,1831,1835,1838,1850:3717|UM-KBW|CNBC|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:3729|UM-KBW|BBC World Service (E)|Radio|Bonus
0000,098E,1722,1831,1835,1838,1850:372A|UM-KBW|BBC World Service (Arab.)|Radio|Bonus
0000,098E,1722,1831,1835,1838,1850:622A|UM-KBW|France 4|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:6600|UM-KBW|TV CG Sat|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:69E4|UM-KBW|GOD TV|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:6DC8|UM-KBW|France 24 (en Francais)|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:6DC9|UM-KBW|France 2|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:6DCA|UM-KBW|France 3|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:6DCB|UM-KBW|France 5|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:6DCD|UM-KBW|Radio Italia|Radio|Bonus
0000,098E,1722,1831,1835,1838,1850:6DCE|UM-KBW|Ginx TV|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:71AD|UM-KBW|Record Internacional Europa|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:71AE|UM-KBW|Türkshow TV|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:71AF|UM-KBW|Haber Türk|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:71B1|UM-KBW|KAZAKH TV|TV|Bonus
0000,098E,1722,1831,1835,1838,1850:71B2|UM-KBW|Souvenirs from earth|TV|Bonus

###
### UM-KBW Türkei ###
###
0000,098E,1722,1831,1835,1838,1850:5658|UM-KBW|Kanal 7|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5658|UM-KBW|Kanal 7|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5659|UM-KBW|Lig TV|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5659|UM-KBW|Lig TV|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:565D|UM-KBW|SHOW TURK|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:565D|UM-KBW|SHOW TURK|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:565E|UM-KBW|Turkmax|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:565E|UM-KBW|Turkmax|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:565F|UM-KBW|TGRT EU|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:565F|UM-KBW|TGRT EU|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5A3D|UM-KBW|ATV Avrupa|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5A3D|UM-KBW|ATV Avrupa|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5A40|UM-KBW|EURO STAR|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5A40|UM-KBW|EURO STAR|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5A41|UM-KBW|Euro D|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5A41|UM-KBW|Euro D|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5A4A|UM-KBW|Radyo Metropol|Radio|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5A4A|UM-KBW|Radyo Metropol|Radio|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5E35|UM-KBW|RadyoTürk|Radio|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:5E35|UM-KBW|RadyoTürk|Radio|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:6213|UM-KBW|Power Türk TV|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:6213|UM-KBW|Power Türk TV|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:6214|UM-KBW|SAMANYOLU TV|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:6214|UM-KBW|SAMANYOLU TV|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:6603|UM-KBW|Kral FM Avrupa|Radio|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:6603|UM-KBW|Kral FM Avrupa|Radio|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:6604|UM-KBW|Alem FM|Radio|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:6604|UM-KBW|Alem FM|Radio|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:71B3|UM-KBW|NTV Avrupa|TV|UM-KBW Türkei
0000,098E,1722,1831,1835,1838,1850:71B3|UM-KBW|NTV Avrupa|TV|UM-KBW Türkei

###
### UM-KBW Italien ###
###
0000,098E,1722,1831,1835,1838,1850:565A|UM-KBW|Rai Uno|TV|UM-KBW Italien
0000,098E,1722,1831,1835,1838,1850:565B|UM-KBW|Rai Due|TV|UM-KBW Italien
0000,098E,1722,1831,1835,1838,1850:565C|UM-KBW|Rai Tre|TV|UM-KBW Italien
0000,098E,1722,1831,1835,1838,1850:5669|UM-KBW|RAI Radio 1|Radio|UM-KBW Italien
0000,098E,1722,1831,1835,1838,1850:5A3E|UM-KBW|24Horas|TV|UM-KBW Italien
0000,098E,1722,1831,1835,1838,1850:6605|UM-KBW|Mediaset|TV|UM-KBW Italien

###
### UM-KBW Albanisch ###
###
0000,098E,1722,1831,1835,1838,1850:6227|UM-KBW|Klan Kosova|TV|UM-KBW Albanisch
0000,098E,1722,1831,1835,1838,1850:6228|UM-KBW|RTK1|TV|UM-KBW Albanisch
0000,098E,1722,1831,1835,1838,1850:622E|UM-KBW|RTV21|TV|UM-KBW Albanisch
0000,098E,1722,1831,1835,1838,1850:622F|UM-KBW|KTV|TV|UM-KBW Albanisch

###
### UM-KBW Spanisch-Portugiesisch ###
###
0000,098E,1722,1831,1835,1838,1850:5A43|UM-KBW|RTPi|TV|UM-KBW Spanien-Portugal
0000,098E,1722,1831,1835,1838,1850:5A47|UM-KBW|TVE Internacional|TV|UM-KBW Spanien-Portugal

###
### UM-KBW Ungarisch ###
###
0000,098E,1722,1831,1835,1838,1850:AC53|UM-KBW|Duna|TV|UM-KBW Ungarisch

###
### UM-KBW Tschechisch ###
###
0000,098E,1722,1831,1835,1838,1850:AC58|UM-KBW|OCKO|TV|UM-KBW Tschechisch

###
### UM-KBW Japanisch ###
###
0000,098E,1722,1831,1835,1838,1850:65F6|UM-KBW|JSTV|TV|UM-KBW Japanisch

###
### UM-KBW Englisch ###
###
0000,098E,1722,1831,1835,1838,1850:3716|UM-KBW|BBC Entertainment|TV|UM-KBW Englisch
0000,098E,1722,1831,1835,1838,1850:621D|UM-KBW|Disney Junior GB|TV|UM-KBW Englisch
0000,098E,1722,1831,1835,1838,1850:6220|UM-KBW|Disney XD GB|TV|UM-KBW Englisch

###
### UM-KBW Russland ###
###
0000,098E,1722,1831,1835,1838,1850:5656|UM-KBW|Detskij Mir / Teleklub|TV|UM-KBW Russland
0000,098E,1722,1831,1835,1838,1850:5657|UM-KBW|itvn|TV|UM-KBW Russland
0000,098E,1722,1831,1835,1838,1850:5660|UM-KBW|Channel One Russia|TV|UM-KBW Russland
0000,098E,1722,1831,1835,1838,1850:5A42|UM-KBW|Nashe Kino|TV|UM-KBW Russland
0000,098E,1722,1831,1835,1838,1850:5A44|UM-KBW|RTR Planeta|TV|UM-KBW Russland
0000,098E,1722,1831,1835,1838,1850:5A45|UM-KBW|RTVi|TV|UM-KBW Russland
0000,098E,1722,1831,1835,1838,1850:BBE5|UM-KBW|NTV Mir|TV|UM-KBW Russland

###
### UM-KBW Polen ###
###
0000,098E,1722,1831,1835,1838,1850:5657|UM-KBW|itvn|TV|UM-KBW Polen
0000,098E,1722,1831,1835,1838,1850:5A46|UM-KBW|TV Polonia|TV|UM-KBW Polen
0000,098E,1722,1831,1835,1838,1850:5E34|UM-KBW|Radio ZET|Radio|UM-KBW Polen
0000,098E,1722,1831,1835,1838,1850:6215|UM-KBW|TVP Info|TV|UM-KBW Polen
0000,098E,1722,1831,1835,1838,1850:6226|UM-KBW|TVP Kultura|TV|UM-KBW Polen
0000,098E,1722,1831,1835,1838,1850:759D|UM-KBW|TV Silesia|TV|UM-KBW Polen

###
### UM-KBW Griechenland ###
###
0000,098E,1722,1831,1835,1838,1850:5A3F|UM-KBW|ERT WORLD|TV|UM-KBW Griechenland
0000,098E,1722,1831,1835,1838,1850:759E|UM-KBW|Antenna 1 Europe|TV|UM-KBW Griechenland
0000,098E,1722,1831,1835,1838,1850:759F|UM-KBW|MAD TV|TV|UM-KBW Griechenland

###
### UM-KBW Rumänisch ###
###
0000,098E,1722,1831,1835,1838,1850:AC51|UM-KBW|Pro TV International|TV|UM-KBW Rumänisch

###
### UM-KBW Bosnisch & Kroatisch & Serbisch ###
###
0000,098E,1722,1831,1835,1838,1850:621E|UM-KBW|Pink Film|TV|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:621F|UM-KBW|Pink Folk|TV|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:622C|UM-KBW|RTS Sat|TV|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:6230|UM-KBW|DM Sat|TV|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:65FA|UM-KBW|Balkanika Music Television|TV|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:65FB|UM-KBW|HRT TV 1|TV|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:65FC|UM-KBW|Pink Plus|TV|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:65FD|UM-KBW|Pink Extra|TV|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:65FE|UM-KBW|Hayat TV|TV|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:65FF|UM-KBW|Pink Music|TV|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:6601|UM-KBW|HRT HR1|Radio|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:6602|UM-KBW|Pink Radio|Radio|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:AC55|UM-KBW|CMC |TV|UM-KBW Bosnisch & Kroatisch & Serbisch
0000,098E,1722,1831,1835,1838,1850:B41F|UM-KBW|BN TV|TV|UM-KBW Bosnisch & Kroatisch & Serbisch

###
### UM-KBW Arabisch ###
###
0000,098E,1722,1831,1835,1838,1850:7595|UM-KBW|Al Jazeera|TV|UM-KBW Arabisch
0000,098E,1722,1831,1835,1838,1850:7596|UM-KBW|MBC Europe|TV|UM-KBW Arabisch
0000,098E,1722,1831,1835,1838,1850:B41E|UM-KBW|Al Arabiya|TV|UM-KBW Arabisch

###
### UM-KBW Music Choice ###
###
0000,098E,1722,1831,1835,1838,1850:2B71|UM|Klassik|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B72|UM|Klassik Sinfonie|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B73|UM|2000er|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B74|UM|Hot Country|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B75|UM|Kinder|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B76|UM|Coffee & Dinner|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B77|UM|New Age|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B78|UM|Rewind - 80er & 90er|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B79|UM|Total Hits Frankreich|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B7A|UM|Total Hits Russland|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B7B|UM|Urban|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B7C|UM|Schlager|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B7D|UM|Total Hits Deutschland|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B7E|UM|Total Hits Italien|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B7F|UM|TotalF Hits UK|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B80|UM|Bollywood Hits|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B81|UM|Turk Muzigi|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B82|UM|Latin|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B83|UM|Volksmusik|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B84|UM|Cool Jazz|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B85|UM|Jazz Classics|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B86|UM|Cocktail Lounge|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B87|UM|Easy Listening Charts|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B88|UM|Arabisch|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B89|UM|Revival - 60er & 70er|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B8A|UM|Total Hits Spanien|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B8B|UM|Rock 'n' Roll|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B8C|UM|Total Hits Polen|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B8D|UM|80er|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B8E|UM|90er|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B8F|UM|Chansons|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:2B90|UM|Classic Rock|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:3341|UM|Rock Hymnen|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:3342|UM|Headbangers|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:3343|UM|The Alternative|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:3344|UM|Dancefloor Fillers|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:3345|UM|Bass Breaks & Beats|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:3346|UM|Chillout|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:3347|UM|Sommer Hits|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:3348|UM|Freedom|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:3349|UM|Kuschelsongs|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:334A|UM|Groove (Disco & Funk)|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:334B|UM|Blues|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:334C|UM|R'n'B & Soul Classic|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:334D|UM|Hip Hop|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:334E|UM|Reggae|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:334F|UM|Independent Classics|Radio|UM - Music Choice|
0000,098E,1722,1831,1835,1838,1850:3350|UM|Showcase|Radio|UM - Music Choice|

###
### UM-KBW-Sky Starter bzw. Sky Welt ###
###
0000,098E,1722,1831,1835,1838,1850:000C|UM-KBW-Sky|NatGeo Wild|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:000D|UM-KBW-Sky|National Geographic (S)|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:000E|UM-KBW-Sky|Discovery Channel (S)|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:0010|UM-KBW-Sky|Fox Serie (S)|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:0011|UM-KBW-Sky|Sky Sport News|TV|Sky Sport
0000,098E,1722,1831,1835,1838,1850:0013|UM-KBW-Sky|Junior|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:0015|UM-KBW-Sky|Beate-Uhse.tv|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:0016|UM-KBW-Sky|Heimatkanal|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:0017|UM-KBW-Sky|Sky Krimi|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:0018|UM-KBW-Sky|Classica|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:001A|UM-KBW-Sky|Disney Junior (S)|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:001B|UM-KBW-Sky|RTL Crime (S)|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:001C|UM-KBW-Sky|Disney XD (S)|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:001D|UM-KBW-Sky|RTL Passion (S)|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:0024|UM-KBW-Sky|Syfy (S)|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:002A|UM-KBW-Sky|13th Street (S)|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:0032|UM-KBW-Sky|TNT Serie (S)|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:0034|UM-KBW-Sky|Spiegel Geschichte|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:00A8|UM-KBW-Sky|Motorvision TV|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:0201|UM-KBW-Sky|Blue Movie|TV|SKY Starter
0000,098E,1722,1831,1835,1838,1850:0206|UM-KBW-Sky|Goldstar TV|TV|SKY Starter

###
### UM-KBW-Sky Welt HD ###
###
0000,098E,1722,1831,1835,1838,1850:006C|UM-KBW-Sky|Sky Sport News HD|TV|Sky Welt HD
0000,098E,1722,1831,1835,1838,1850:0070|UM-KBW-Sky|NatGeo HD (S)|TV|Sky Welt HD
0000,098E,1722,1831,1835,1838,1850:0071|UM-KBW-Sky|History HD (S)|TV|Sky Welt HD
0000,098E,1722,1831,1835,1838,1850:0076|UM-KBW-Sky|Nat Geo Wild HD|TV|Sky Welt HD
0000,098E,1722,1831,1835,1838,1850:007B|UM-KBW-Sky|TNT Serie HD (S)|TV|Sky Welt HD
0000,098E,1722,1831,1835,1838,1850:007C|UM-KBW-Sky|Fox HD (S)|TV|Sky Welt HD
0000,098E,1722,1831,1835,1838,1850:0082|UM-KBW-Sky|Discovery HD (S)|TV|Sky Welt HD
0000,098E,1722,1831,1835,1838,1850:0084|UM-KBW-Sky|Eurosport HD|TV|Sky Welt HD

###
### UM-KBW-Sky Film ###
###
0000,098E,1722,1831,1835,1838,1850:0008|UM-KBW-Sky|Sky Comedy|TV|Sky Film
0000,098E,1722,1831,1835,1838,1850:0009|UM-KBW-Sky|Sky Action|TV|Sky Film
0000,098E,1722,1831,1835,1838,1850:000A|UM-KBW-Sky|Sky Cinema|TV|Sky Film
0000,098E,1722,1831,1835,1838,1850:000B|UM-KBW-Sky|Sky Cinema +1|TV|Sky Film
0000,098E,1722,1831,1835,1838,1850:0014|UM-KBW-Sky|Sky Emotion|TV|Sky Film
0000,098E,1722,1831,1835,1838,1850:0019|UM-KBW-Sky|Disney Cinemagic|TV|Sky Film
0000,098E,1722,1831,1835,1838,1850:0022|UM-KBW-Sky|Sky Atlantic|TV|Sky Film
0000,098E,1722,1831,1835,1838,1850:0029|UM-KBW-Sky|Sky Hits|TV|Sky Film
0000,098E,1722,1831,1835,1838,1850:002B|UM-KBW-Sky|Sky Cinema +24|TV|Sky Film
0000,098E,1722,1831,1835,1838,1850:0203|UM-KBW-Sky|MGM|TV|Sky Film
0000,098E,1722,1831,1835,1838,1850:0204|UM-KBW-Sky|Sky Nostalgie|TV|Sky Film

###
### UM-KBW-Sky Film HD ###
###
0000,098E,1722,1831,1835,1838,1850:006B|UM-KBW-Sky|Sky Hits HD|TV|Sky Film HD
0000,098E,1722,1831,1835,1838,1850:006E|UM-KBW-Sky|Sky Atlantic HD|TV|Sky Film HD
0000,098E,1722,1831,1835,1838,1850:006F|UM-KBW-Sky|Disney Cinemagic HD|TV|Sky Film HD
0000,098E,1722,1831,1835,1838,1850:0074|UM-KBW-Sky|Sky Action HD|TV|Sky Film HD
0000,098E,1722,1831,1835,1838,1850:0083|UM-KBW-Sky|Sky Cinema HD|TV|Sky Film HD

###
### UM-KBW-Sky Sport ###
###
0000,098E,1722,1831,1835,1838,1850:001E|UM-KBW-Sky|Sky Sport Austria|TV|Sky Sport
0000,098E,1722,1831,1835,1838,1850:00DD|UM-KBW-Sky|Sky Sport 1|TV|Sky Sport
0000,098E,1722,1831,1835,1838,1850:00DE|UM-KBW-Sky|Sky Sport 2|TV|Sky Sport
0000,098E,1722,1831,1835,1838,1850:00FD|UM-KBW-Sky|Sky Sport 11|TV|Sky Sport
0000,098E,1722,1831,1835,1838,1850:0107|UM-KBW-Sky|Sky Sport 3|TV|Sky Sport
0000,098E,1722,1831,1835,1838,1850:0111|UM-KBW-Sky|Sky Sport 4|TV|Sky Sport
0000,098E,1722,1831,1835,1838,1850:011B|UM-KBW-Sky|Sky Sport 5|TV|Sky Sport
0000,098E,1722,1831,1835,1838,1850:0125|UM-KBW-Sky|Sky Sport 6|TV|Sky Sport
0000,098E,1722,1831,1835,1838,1850:012F|UM-KBW-Sky|Sky Sport 7|TV|Sky Sport
0000,098E,1722,1831,1835,1838,1850:0139|UM-KBW-Sky|Sky Sport 8|TV|Sky Sport
0000,098E,1722,1831,1835,1838,1850:0143|UM-KBW-Sky|Sky Sport 9|TV|Sky Sport
0000,098E,1722,1831,1835,1838,1850:014D|UM-KBW-Sky|Sky Sport 10|TV|Sky Sport

###
### UM-KBW-Sky Sport HD ###
###
0000,098E,1722,1831,1835,1838,1850:0072|UM-KBW-Sky|Sky Sport HD 2|TV|Sky Sport HD
0000,098E,1722,1831,1835,1838,1850:0081|UM-KBW-Sky|Sky Sport HD 1|TV|Sky Sport HD
0000,098E,1722,1831,1835,1838,1850:010C|UM-KBW-Sky|Sky Sport HD 3|TV|Sky Sport HD
0000,098E,1722,1831,1835,1838,1850:010e|UM-KBW-Sky|Eurosport360 HD 1|TV|Sky Sport HD
0000,098E,1722,1831,1835,1838,1850:0112|UM-KBW-Sky|Eurosport360 HD 3|TV|Sky Sport HD
0000,098E,1722,1831,1835,1838,1850:0116|UM-KBW-Sky|Sky Sport HD 4|TV|Sky Sport HD
0000,098E,1722,1831,1835,1838,1850:0118|UM-KBW-Sky|Eurosport360 HD 2|TV|Sky Sport HD
0000,098E,1722,1831,1835,1838,1850:0120|UM-KBW-Sky|Sky Sport HD 5|TV|Sky Sport HD

###
### UM-KBW-Sky Bundesliga ###
###
0000,098E,1722,1831,1835,1838,1850:00DF|UM-KBW-Sky|Sky Bundesliga 1|TV|Sky Bundesliga
0000,098E,1722,1831,1835,1838,1850:00FC|UM-KBW-Sky|Sky Bundesliga 10|TV|Sky Bundesliga
0000,098E,1722,1831,1835,1838,1850:0106|UM-KBW-Sky|Sky Bundesliga 2|TV|Sky Bundesliga
0000,098E,1722,1831,1835,1838,1850:0110|UM-KBW-Sky|Sky Bundesliga 3|TV|Sky Bundesliga
0000,098E,1722,1831,1835,1838,1850:011A|UM-KBW-Sky|Sky Bundesliga 4|TV|Sky Bundesliga
0000,098E,1722,1831,1835,1838,1850:0124|UM-KBW-Sky|Sky Bundesliga 5|TV|Sky Bundesliga
0000,098E,1722,1831,1835,1838,1850:012E|UM-KBW-Sky|Sky Bundesliga 6|TV|Sky Bundesliga
0000,098E,1722,1831,1835,1838,1850:0138|UM-KBW-Sky|Sky Bundesliga 7|TV|Sky Bundesliga
0000,098E,1722,1831,1835,1838,1850:0142|UM-KBW-Sky|Sky Bundesliga 8|TV|Sky Bundesliga
0000,098E,1722,1831,1835,1838,1850:014C|UM-KBW-Sky|Sky Bundesliga 9|TV|Sky Bundesliga

###
### UM-KBW-Sky Bundesliga HD ###
###
0000,098E,1722,1831,1835,1838,1850:0069|UM-KBW-Sky|Sky Bundesliga HD 1|TV|Sky Bundesliga HD
0000,098E,1722,1831,1835,1838,1850:010B|UM-KBW-Sky|Sky Bundesliga HD 2|TV|Sky Bundesliga HD
0000,098E,1722,1831,1835,1838,1850:0115|UM-KBW-Sky|Sky Bundesliga HD 3|TV|Sky Bundesliga HD
0000,098E,1722,1831,1835,1838,1850:011F|UM-KBW-Sky|Sky Bundesliga HD 4|TV|Sky Bundesliga HD

###
### UM-KBW-Sky Select ###
###
0000,098E,1722,1831,1835,1838,1850:00FB|UM-KBW-Sky|Sky Select 1|TV|Sky Select
0000,098E,1722,1831,1835,1838,1850:00FE|UM-KBW-Sky|Sky Select Event A|TV|Sky Select
0000,098E,1722,1831,1835,1838,1850:0105|UM-KBW-Sky|Sky Select 2|TV|Sky Select
0000,098E,1722,1831,1835,1838,1850:010F|UM-KBW-Sky|Sky Select 3|TV|Sky Select
0000,098E,1722,1831,1835,1838,1850:0119|UM-KBW-Sky|Sky Select 4|TV|Sky Select
0000,098E,1722,1831,1835,1838,1850:0123|UM-KBW-Sky|Sky Select 5|TV|Sky Select
0000,098E,1722,1831,1835,1838,1850:012D|UM-KBW-Sky|Sky Select 6|TV|Sky Select
0000,098E,1722,1831,1835,1838,1850:0137|UM-KBW-Sky|Sky Select 7|TV|Sky Select
0000,098E,1722,1831,1835,1838,1850:0141|UM-KBW-Sky|Sky Select 8|TV|Sky Select
0000,098E,1722,1831,1835,1838,1850:014B|UM-KBW-Sky|Sky Select 9|TV|Sky Select
0000,098E,1722,1831,1835,1838,1850:014E|UM-KBW-Sky|Sky Select Event B|TV|Sky Select

###
### UM-KBW-Sky Blue Movie ###
###
0000,098E,1722,1831,1835,1838,1850:0159|UM-KBW-Sky|Blue Movie 1|TV|Sky Blue Movie
0000,098E,1722,1831,1835,1838,1850:0163|UM-KBW-Sky|Blue Movie 2|TV|Sky Blue Movie
0000,098E,1722,1831,1835,1838,1850:016D|UM-KBW-Sky|Blue Movie 3|TV|Sky Blue Movie

###
### UM-KBW-Sky Sonstige ###
###
0000,098E,1722,1831,1835,1838,1850:0075|UM-KBW-Sky|Sky 3D|TV|Sky Sonstige
```

back to [index](#index)

### Kabel Deutschland

last review: 2013-08-26 by: source BaNaNaBeck @DEB

last update: 2014-04-18

Additional information:

+   SPORT1 US HD although being a HD channel is part of "Premium Extra" only

```
Please copy the existing SKY AT/DE entries you´ll find clicking the here!
For performance and administrational reasons all caids in one!
See also oscam.srvid
```

```
###
### DVB-C - Kabel Deutschland - German Cable
###

### KDG - Digitale Sendewelt ###
0000,1722,1801,1834,1861,09C7:CF12|KDG|Eurosport 2|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:CF76|KDG|DELUXE MUSIC|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:CF7F|KDG|Russia Today (engl)|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:D16C|KDG|Astro TV|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:D16E|KDG|Al Jazeera Int (engl)|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C762|KDG|France 2 (fre) |TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:D10E|KDG|France 3 (fre)|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C764|KDG|France 5 (fre)|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C759|KDG|France24 (fre)|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:D04A|KDG|Tunis 7|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C761|KDG|BN Sat (scr)|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C75F|KDG|Duna TV / Caspio|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:D047|KDG|Iran Music|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:D03A|KDG|Pro TV International|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C757|KDG|Al Jazeera Children|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:D16E|KDG|Al Jazeera International|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C75C|KDG|Arirang/Fashion TV (eng)|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C758|KDG|BNT World|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:D046|KDG|BVN|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C75D|KDG|IN International|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:D04D|KDG|InforRU.tv|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:D03B|KDG|LRT Lituanica|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C75A|KDG|NTD TV / MAC TV|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:CF7F|KDG|Russia Today TV|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:D049|KDG|Sky News (eng)/CNBC Europe (eng)|TV|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:D106|KDG|tv8|TV|Digitale Sendewelt

### KDG - Digitale Sendewelt - Radio ###
0000,1722,1801,1834,1861,09C7:C4E0|KDG|Radio-Test|Radio|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C4E2|KDG|ERF|Radio|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C4E4|KDG|Sunshine Live|Radio|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C4E5|KDG|Klassik Radio|Radio|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C4E6|KDG|RTL Radio|Radio|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C4E7|KDG|Radio Paloma|Radio|Digitale Sendewelt
0000,1722,1801,1834,1861,09C7:C4E8|KDG|JAM FM|Radio|Digitale Sendewelt

### KDG - Premium Extra ###
0000,1722,1801,1834,1861,09C7:C3B9|KDG|Planet|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C3BA|KDG|SciFi (KD)|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C3BB|KDG|13th Street (KD)|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C3BC|KDG|Kinowelt TV|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C3BF|KDG|Gute Laune TV|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C47D|KDG|SPORT 1+|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C47F|KDG|TNT Serie (KD)|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C480|KDG|AXN Action|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C481|KDG|Silverline|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C482|KDG|SPORT1 US|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C483|KDG|Disney xD|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C60D|KDG|MTV|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C610|KDG|MTV Brand New|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C613|KDG|Lust Pur|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C614|KDG|National Geographic|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C615|KDG|Disney Junior|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C617|KDG|Cartoon Network|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C618|KDG|TNT Film|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C619|KDG|The Biography Channel|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:CF70|KDG|Jukebox|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:CF73|KDG|Rock TV|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:D035|KDG|History|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:D036|KDG|Bon Gusto|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:D03E|KDG|Animax|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:D099|KDG|Spiegel TV Digital|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:D09C|KDG|Boomerang|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:D0A1|KDG|FOX|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:D0A3|KDG|Sat.1 Comedy|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:D0A4|KDG|kabel eins classics|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:D0A5|KDG|Romance TV|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:D16B|KDG|sportdigital|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:D0A2|KDG|TNT Glitz|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:CF0B|KDG|RTL Living|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:C3B8|KDG|E! Entertainment|TV|Premium Extra
0000,1722,1801,1834,1861,09C7:CF16|KDG|SPORT1 US HD|TV|Premium Extra

### KDG - Premium HD ###
0000,1722,1801,1834,1861,09C7:C361|KDG|TNT Glitz HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C357|KDG|FOX HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C351|KDG|TNT Serie HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C352|KDG|TNT Film HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C354|KDG|13th Street HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C353|KDG|Planet HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C358|KDG|Syfy HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C355|KDG|SPORT1+ HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C356|KDG|Nat Geo HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C370|KDG|NatGeo People HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C364|KDG|Romance TV HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C366|KDG|SPIEGEL TV WISSEN HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C360|KDG|Cartoon Network HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C367|KDG|AXN HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C368|KDG|KinoweltTV HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C371|KDG|History HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C373|KDG|Universal Channel HD|TV|Premium HD
0000,1722,1801,1834,1861,09C7:C37F|KDG|Boomerang HD|TV|Premium HD

### KDG - Privat HD ###
0000,1722,1801,1834,1861,09C7:C359|KDG|kabel eins HD|TV|KD Privat HD
0000,1722,1801,1834,1861,09C7:C35A|KDG|SPORT1 HD|TV|KD Privat HD
0000,1722,1801,1834,1861,09C7:C35B|KDG|RTL II HD|TV|KD Privat HD
0000,1722,1801,1834,1861,09C7:C35C|KDG|RTL HD|TV|KD Privat HD
0000,1722,1801,1834,1861,09C7:C35D|KDG|VOX HD|TV|KD Privat HD
0000,1722,1801,1834,1861,09C7:C35F|KDG|ProSieben HD|TV|KD Privat HD
0000,1722,1801,1834,1861,09C7:C362|KDG|SAT.1 HD|TV|KD Privat HD
0000,1722,1801,1834,1861,09C7:C363|KDG|sixx HD|TV|KD Privat HD
0000,1722,1801,1834,1861,09C7:C365|KDG|ServusTV HD|TV|KD Privat HD
0000,1722,1801,1834,1861,09C7:C36C|KDG|SUPER RTL HD|TV|Privat HD
0000,1722,1801,1834,1861,09C7:C36D|KDG|RTL NITRO HD|TV|Privat HD
0000,1722,1801,1834,1861,09C7:C36A|KDG|HSE24 HD|TV|Privat HD
0000,1722,1801,1834,1861,09C7:C36B|KDG|QVC HD|TV|Privat HD
0000,1722,1801,1834,1861,09C7:C36F|KDG|Disney Channel HD|TV|Privat HD
0000,1722,1801,1834,1861,09C7:C372|KDG|N24 HD|TV|Privat HD
0000,1722,1801,1834,1861,09C7:C37B|KDG|TELE 5 HD|TV|Privat HD
0000,1722,1801,1834,1861,09C7:C37D|KDG|CNN HD (eng)|TV|Privat HD

### KDG - Premium Extra - Radio ###
0000,1722,1801,1834,1861,09C7:C419|KDG|Klassik Hits|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C41A|KDG|Symphonie|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C41C|KDG|Country|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C41E|KDG|Instrumentals|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C41F|KDG|New Age|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C420|KDG|Euro Hits|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C423|KDG|Deutscher Rock|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C424|KDG|Deutsche Schlager|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C425|KDG|Deutsche Hits|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C427|KDG|UK Hits|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C42B|KDG|Chillout|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C42D|KDG|Klassischer Jazz|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C42E|KDG|Perfect Dinner Party|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C42F|KDG|Brasil |Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C430|KDG|Rock Anthems|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C432|KDG|Spanischer Rock|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C433|KDG|Rock'n' Roll Oldies|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C437|KDG|60er & 70er Hits|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C438|KDG|Big Band/Swing|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C439|KDG|Classic Rock|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C43A|KDG|Heavy Metal|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C43B|KDG|Alternative|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C43C|KDG|Dance|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C43F|KDG|Pop|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C441|KDG|Love Songs|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C442|KDG|80er & 90er Hits|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C443|KDG|Blues|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C445|KDG|R & B Hip Hop|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C446|KDG|Reggae|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C447|KDG|Rap|Radio|Premium Extra
0000,1722,1801,1834,1861,09C7:C4E9|KDG|METROPOL FM|Radio|Premium Extra

### KDG - Kabel Englisch ###
0000,1722,1801,1834,1861,09C7:CF71|KDG|SPORT1 US (engl)|TV|Kabel Eglisch
0000,1722,1801,1834,1861,09C7:CF6D|KDG|BBC Entertainment (engl)|TV|Kabel Englisch
0000,1722,1801,1834,1861,09C7:CF74|KDG|Disney XD (engl)|TV|Kabel Englisch
0000,1722,1801,1834,1861,09C7:D048|KDG|TNT Serie (engl)|TV|Kabel Englisch
0000,1722,1801,1834,1861,09C7:D09F|KDG|Boomerang (engl)|TV|Kabel Englisch
0000,1722,1801,1834,1861,09C7:C612|KDG|Cartoon Network (engl)|TV|Kabel Englisch
0000,1722,1801,1834,1861,09C7:CFD8|KDG|National Geo (engl)|TV|Kabel Englisch
0000,1722,1801,1834,1861,09C7:D09A|KDG|AXN Action (engl)|TV|Kabel Englisch
0000,1722,1801,1834,1861,09C7:D109|KDG|Disney Junior (engl)|TV|Kabel Englisch
0000,1722,1801,1834,1861,09C7:D0A0|KDG|TNT Film (engl) |TV|Kabel Englisch

### KDG - Kabel Türkisch ###
0000,1722,1801,1834,1861,09C7:CFD3|KDG|ATV Avrupa (türk)|TV|Kabel Türkisch
0000,1722,1801,1834,1861,09C7:CFD5|KDG|Euro D (türk)|TV|Kabel Türkisch
0000,1722,1801,1834,1861,09C7:CFDA|KDG|Euro Star (türk)|TV|Kabel Türkisch
0000,1722,1801,1834,1861,09C7:D0FD|KDG|Show Turk (türk)|TV|Kabel Türkisch
0000,1722,1801,1834,1861,09C7:D0FE|KDG|NTV Avrupa (türk)|TV|Kabel Türkisch
0000,1722,1801,1834,1861,09C7:D100|KDG|Kanal 7 (türk)|TV|Kabel Türkisch

### KDG - Kabel Polnisch ###
0000,1722,1801,1834,1861,09C7:CF72|KDG|iTVN (pol)|TV|Kabel Polnisch
0000,1722,1801,1834,1861,09C7:CFD4|KDG|TV Polonia (pol)|TV|Kabel Polnisch

### KDG - Kabel Spanisch ###
0000,1722,1801,1834,1861,09C7:D105|KDG|Canal 24 Horas (span)|TV|Kabel Spanisch
0000,1722,1801,1834,1861,09C7:D104|KDG|TVE Internacional (span)|TV|Kabel Spanisch

### KDG - Kabel Portugiesisch ###
0000,1722,1801,1834,1861,09C7:CFD6|KDG|RTP Internacional (port)|TV|Kabel Portugiesisch

### KDG - Kabel Italienisch ###
0000,1722,1801,1834,1861,09C7:D101|KDG|Rai 1 (itl)|TV|Kabel Italienisch
0000,1722,1801,1834,1861,09C7:D102|KDG|Rai 2 (itl)|TV|Kabel Italienisch
0000,1722,1801,1834,1861,09C7:D103|KDG|Rai 3 (itl)|TV|Kabel Italienisch

### KDG - Kabel Russisch ###
0000,1722,1801,1834,1861,09C7:CFD1|KDG|RTVi (rus)|TV|Kabel Russisch
0000,1722,1801,1834,1861,09C7:CFD2|KDG|Nashe Kino (rus)|TV|Kabel Russisch
0000,1722,1801,1834,1861,09C7:CFDC|KDG|RTR Planeta (rus)|TV|Kabel Russisch
0000,1722,1801,1834,1861,09C7:D0FF|KDG|Detski Mir/TeleKlub|TV|Kabel Russisch
0000,1722,1801,1834,1861,09C7:D108|KDG|CH1 Russia (rus)|TV|Kabel Russisch
0000,1722,1801,1834,1861,09C7:D04D|KDG|RTVi Info / FMC (rus)|TV|Kabel Russisch

```

back to [index](#index)

### Kabelkiosk

Please copy the existing [Kabelkiosk](#kabelkiosk) entries you´ll find [here](#kabelkiosk) for administrational reasons just listed once!

back to [index](#index)

### Primacom

last review: 2014-03-07 by: Humorator

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
###
### DVB-C - Primacom  - German Cable
###
0000,098C,09AF,09C4,0B00:00E6|Primacom|Kabel 1 HD|TV|
0000,098C,09AF,09C4,0B00:00E7|Primacom|DMAX HD|TV|
0000,098C,09AF,09C4,0B00:00E8|Primacom|Tele 5 HD|TV|
0000,098C,09AF,09C4,0B00:00E9|Primacom|nick/Comedy Central HD|TV|
0000,098C,09AF,09C4,0B00:00EA|Primacom|Sport1 HD|TV|
0000,098C,09AF,09C4,0B00:012D|Primacom|RTL HD|TV|
0000,098C,09AF,09C4,0B00:012E|Primacom|Vox HD|TV|
0000,098C,09AF,09C4,0B00:012F|Primacom|Sat 1 HD|TV|
0000,098C,09AF,09C4,0B00:0130|Primacom|Prosieben HD|TV|
0000,098C,09AF,09C4,0B00:0132|Primacom|RTL Nitro HD|TV|
0000,098C,09AF,09C4,0B00:0133|Primacom|n-tv HD|TV|
0000,098C,09AF,09C4,0B00:0196|Primacom|Super RTL HD|TV|
0000,098C,09AF,09C4,0B00:01A0|Primacom|Sixx HD|TV|
0000,098C,09AF,09C4,0B00:01A1|Primacom|RTL 2 HD|TV|
0000,098C,09AF,09C4,0B00:01A2|Primacom|Deluxe Music HD|TV|
0000,098C,09AF,09C4,0B00:01A3|Primacom|VIVA HD|TV|
0000,0B00,09AF:0265|Primacom|C Music TV|TV|
0000,0B00,09AF:0266|Primacom|Lust Pur|TV|
0000,0B00,09AF:0267|Primacom|Blue Hustler|TV|
0000,0B00,09AF:0268|Primacom|Spiegel TV Wissen HD|TV|
0000,0B00,09AF:026B|Primacom|Travel Channel|TV|
0000,0B00,09AF:026C|Primacom|iTVN|TV|
0000,0B00,09AF:026D|Primacom|auto motor und sport channel|TV|
0000,0B00,09AF:026E|Primacom|AXN HD|TV|
0000,0B00,09AF:026F|Primacom|Animal Planet|TV|
0000,0B00,09AF:041A|Primacom|Show Türk|TV|
0000,0B00,09AF:044C|Primacom|NTV|TV|
0000,0B00,09AF:047E|Primacom|Kanal 7|TV|
0000,0B00,09AF:04B0|Primacom|Euro D|TV|
0000,0B00,09AF:04E2|Primacom|ATV|TV|
0000,0B00,09AF:0514|Primacom|Rai 1|TV|
0000,0B00,09AF:0546|Primacom|Mediaset Italia|TV|
0000,0B00,09AF:0578|Primacom|Rai 3|TV|
0000,0B00,09AF:05DC|Primacom|TV Polonia|TV|
0000,0B00,09AF:060E|Primacom|TRT Türk TV|TV|
0000,0B00,09AF:0802|Primacom|Samanyolu|TV|
0000,0B00,09AF:09C4|Primacom|Euro Star|TV|
0000,0B00,09AF:09F6|Primacom|RTR Planeta|TV|
0000,0B00,09AF:0A28|Primacom|Euronews Italian|TV|
0000,0B00,09AF:0A5A|Primacom|Euronews Spanish|TV|
0000,0B00,09AF:0A8C|Primacom|Euronews Russia|TV|
0000,0B00,09AF:0A96|Primacom|Euronews Portuguese|TV|
0000,0B00,09AF:0AA0|Primacom|Euronews Fench|TV|
0000,0B00,09AF:0AAA|Primacom|Euronews English|TV|
0000,0B00,09AF:0AB4|Primacom|Euronews German|TV|
0000,0B00,09AF:0ABE|Primacom|Marco Polo TV|TV|
0000,0B00,09AF:0B22|Primacom|Channel One Russia|TV|
0000,0B00,09AF:0B86|Primacom|Kinowelt TV|TV|
0000,0B00,09AF:0BB8|Primacom|Bon Gusto|TV|
0000,0B00,09AF:0BEA|Primacom|Animax|TV|
0000,0B00,09AF:4E85|Primacom|13TH Street HD|TV|
0000,0B00,09AF:4E86|Primacom|SyFy HD|TV|
0000,0B00,09AF:4E8F|Primacom|Silverline|TV|
0000,0B00,09AF:4E91|Primacom|Boomerang|TV|
0000,0B00,09AF:4E92|Primacom|Deutsches Wetter Fernsehen|TV|
0000,0B00,09AF:4E96|Primacom|History|TV|
0000,0B00,09AF:4E97|Primacom|TNT Film|TV|
0000,0B00,09AF:4E98|Primacom|Cartoon Network|TV|
0000,0B00,09AF:4E99|Primacom|The Biography Channel|TV|
0000,0B00,09AF:4E9A|Primacom|National Geographic HD|TV|
0000,0B00,09AF:4E9B|Primacom|FUEL TV HD|TV|
0000,0B00,09AF:4EE9|Primacom|yourfamily|TV|
0000,0B00,09AF:4EEA|Primacom|Romance TV|TV|
0000,0B00,09AF:4EED|Primacom|E! Entertainment Deutschland|TV|
0000,0B00,09AF:4EEF|Primacom|sportdigital|TV|
0000,0B00,09AF:4EF0|Primacom|MTV Germany|TV|
0000,0B00,09AF:4EF1|Primacom|Eurosport 2|TV|
0000,0B00,09AF:4EF2|Primacom|Gute Laune TV|TV|
0000,0B00,09AF:4EF3|Primacom|Discovery Channel HD|TV|
0000,0B00,09AF:4EF4|Primacom|nick jr.|TV|
0000,0B00,09AF:4EF5|Primacom|VH1 Classic|TV|
0000,0B00,09AF:4EF6|Primacom|FOX HD|TV|
0B00:6FEE|Primacom|MTV Hits|TV|
0B00:6FEF|Primacom|MTV Dance|TV|
0B00:6FF0|Primacom|VH1|TV|
0B00:6FF1|Primacom|VH1 Classic|TV|
0B00:6FF3|Primacom|MTV Rocks|TV|
```

back to [index](#index)

### NetCologne (REVIEW NEEDED)

last review: 2013-08-12 by: ???

Attention: wrong syntax! Program and packages are changed

```
###
### DVB-C - NetCologne  - German Cable
### update:
###

#NC Premium HD+
098C:0131|Kabel Eins HD|TV|Netcologne Premium HD+
0B00:213E|Nickelodeon/Comedy Central|TV|Netcologne Premium HD+
0B00:0130|Pro7 HD|TV|Netcologne Premium HD+
0B00:2134|RTL2 HD|TV|Netcologne Premium HD+
0B00:012D|RTL HD|TV|Netcologne Premium HD+
0B00:0898|RTL Nitro HD|TV|Netcologne Premium HD+
0B00:012F|SAT.1 HD|TV|Netcologne Premium HD+
0B00:2148|Sixx HD|TV|Netcologne Premium HD+
0B00:215C|Super RTL HD|TV|Netcologne Premium HD+
0B00:012E|VOX HD|TV|Netcologne Premium HD+

#NC MTV Tune-inn
0B00:6FEF|MTV Dance|TV|Netcologne MTV Tune-inn
0B00:6FEE|MTV Hits|TV|Netcologne MTV Tune-inn
0B00:6FF3|MTV Rocks|TV|Netcologne MTV Tune-inn
0B00:6FF0|VH1|TV|Netcologne MTV Tune-inn
0B00:6FF1|VH1 Classic|TV|Netcologne MTV Tune-inn

#NC Männer und Sport
0B00:026D|auto motor und sport channel|TV|Netcologne Männer und Sport
0B00:2058|Eurosport 2|TV|Netcologne Männer und Sport
0B00:0267|Hustler TV|TV|Netcologne Männer und Sport
0B00:2062|Playboy TV Europe|TV|Netcologne Männer und Sport
0B00:4E8D|sportdigital|TV|Netcologne Männer und Sport

#NC Unterhaltung
0B00:4E85|13 Street|TV|Netcologne Unterhaltung
0B00:026F|Animal Planet|TV|Netcologne Unterhaltung
0B00:4E91|Boomerang|TV|Netcologne Unterhaltung
0B00:4E98|Cartoon Network|TV|Netcologne Unterhaltung
0B00:4EF3|Discovery Channel|TV|Netcologne Unterhaltung
0B00:200D|Kabel Eins classics|TV|Netcologne Unterhaltung
0B00:7009|MTV|TV|Netcologne Unterhaltung
0B00:4EF4|Nick Junior|TV|Netcologne Unterhaltung
0B00:2EFE|RTL Living|TV|Netcologne Unterhaltung
0B00:2152|Sat.1 emotions|TV|Netcologne Unterhaltung
0B00:4E86|Syfy|TV|Netcologne Unterhaltung
0B00:4E97|TNT Film|TV|Netcologne Unterhaltung

#NC Unterhaltung Extra
0B00:0BEA|Animax|TV|Netcologne Unterhaltung Extra
0B00:0BB8|BonGusto|TV|Netcologne Unterhaltung Extra
0B00:4EF3|Discovery Channel HD|TV|Netcologne Unterhaltung Extra
0B00:4E96|History|TV|Netcologne Extra
0B00:4EED|E! Entertainment|TV|Netcologne Unterhaltung Extra
0B00:4EF6|FOX HD|TV|Netcologne Unterhaltung Extra
0B00:4EF2|Kinowelt TV|TV|Unterhaltung Extra
0B00:204E|MTV Live HD|TV|Unterhaltung Extra
0B00:4E9A|National Geographic HD|TV|Unterhaltung Extra
0B00:4EEA|Romance TV|TV|Unterhaltung Extra
0B00:0960|RTL Living HD|TV|Unterhaltung Extra
0B00:4E8F|Silverline|Unterhaltung Extra
0B00:0268|Spiegel TV Wissen HD|TV|Unterhaltung Extra
0B00:4E99|The Biography Channel|TV|Unterhaltung Extra
0B00:026B|Travel Channel|TV|Unterhaltung Extra
0B00:2774|UNITEL CLASSICA HD|TV|Unterhaltung Extra

#NC Sonstige
0B00:014E|C Music TV|TV|Netcologne Classic
0B00:203A|Deutsches Musik Fernsehen|TV|Netcologne Classic
0B00:4EE9|yourfamily|TV|Netcologne Familie
0B00:4EF2|Gute Laune TV|TV|Netcologne Familie (alt)
0B00:0266|Lust Pur|TV|Netcologne Netcologne Unterhaltung (alt)

#NC Balkan
0B00:814C|Balkanika MTV|TV|Netcologne Balkan
0B00:8160|BN Sat|TV|Netcologne Balkan
0B00:206D|HRT-TV1|TV|Netcologne Balkan
0B00:817E|RTCG Sat|TV|Netcologne Balkan
0B00:146E|RTS Sat|TV|Netcologne Balkan
0B00:2071|HRT Radio|Radio|Netcologne Balkan Radio

#NC Griechisch
0B00:2012|ANT1 EUROPE|TV|Netcologne Griechisch
0B00:19C8|MAD TV|TV|Netcologne Griechisch

#NC Italienisch
0B00:0A28|Euronews Italy|TV|Netcologne Italienisch
0B00:9150|Mediaset Italia|TV|Netcologne Italienisch
0B00:0546|Rai Duo|TV|Netcologne Italienisch
0B00:02C6|Rai News|TV|Netcologne Italienisch
0B00:207B|Rai Scuola|TV|Netcologne Italienisch
0B00:02D0|Rai Storia|TV|Netcologne Italienisch
0B00:0578|Rai Tre|TV|Netcologne Italienisch
0B00:0514|Rai Uno|TV|Netcologne Italienisch
0B00:2792|Rai Radio Uno|Radio|Netcologne Italienisch Radio

#NC Japanisch
0B00:2015|JSTV|TV|Netcologne Japanisch
0B00:2016|JSTV Radio|TV|Netcologne Japanisch

#NC Polnisch
0B00:026C|iTVN|TV|Netcologne Polnisch
0B00:05DC|TV Polonia|Netcologne Polnisch
0B00:0CA5|TV Silesia|TV|Netcologne Polnisch
0B00:0381|TVP Kultura|TV|Netcologne Polnisch

#NC Russich
0B00:0B22|Channel One Russia|TV|Netcologne Russich
0B00:0A8C|Euronews Russia|TV|Netcologne Russich
0B00:09F6|RTR Planeta|TV|Netcologne Russich
0B00:000D|RTVi Europe|TV|Netcologne Russich
0B00:0010|RTVi Nashe Kino|TV|Netcologne Russich
0B00:0012|RTVi Detski mir - TeleKlub|TV|Netcologne Russich

#NC Serbisch
0B00:0002|Pink Extra|TV|Netcologne Serbisch
0B00:0009|Pink Film|TV|Netcologne Serbisch
0B00:000A|Pink Music|TV|Netcologne Serbisch
0B00:0802|Pink Plus|TV|Netcologne Serbisch
0B00:0003|Pink Radio|Radio|Netcologne Serbisch Radio

#NC Spanisch/Portugiesich
0B00:0DAE|Canal 24 Horas|TV|Netcologne Spanisch/Portugiesich
0B00:2026|EuroNews Portuguese|TV|Netcologne Spanisch/Portugiesich
0B00:202B|EuroNews Spanisch|TV|Netcologne Spanisch/Portugiesich
0B00:1A2C|RTPi|TV|Netcologne Spanisch/Portugiesich
0B00:2030|tve international|TV|Spanisch/Portugiesich

#NC Türkisch
0B00:04E2|ATV Avrupa|TV|Netcologne Türkisch
0B00:04B0|Euro D|TV|Netcologne Türkisch
0B00:09C4|Euro Star|TV|Netcologne Türkisch
0B00:2058|Kanal 7 Avrupa|TV|Netcologne Türkisch
0B00:047E|NTV Avrupa|TV|Netcologne Türkisch
0B00:041A|Show Turk|TV|Netcologne Türkisch
0B00:060E|TRT-Turk TV|TV|Netcologne Türkisch
0B00:208F|RadyoTurk.de|Radio|Netcologne Türkisch Radio

#NC Türkisch Extra
0B00:91B4|Haberturk TV|TV|Netcologne Türkisch Extra
0B00:9484|Kral TV|TV|Netcologne Türkisch Extra
0B00:8174|Methap TV|TV|Netcologne Türkisch Extra
0B00:032A|Samanyolu Haber|TV|Netcologne Türkisch Extra
0B00:947A|Samanyolu TV Avrupa|TV|Netcologne Türkisch Extra
0B00:277E|TRT Belgesel|TV|Netcologne Türkisch Extra
0B00:038E|TRT Haber|TV|Netcologne Türkisch Extra
```

back to [index](#index)

# **not (yet) sorted by Satellites**

These providers still need to be reviewed and sorted by satellites Please help to stay up to date If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


## Al Jazeera Sport (REVIEW NEEDED)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.

last review: 2013-01-08 by: ???

```
###
### DVB-S - Al Jazeera Sport - Eutelsat 3.0E & 13.0E
###
0500,0603:0074|Al Jazeera Sport 13E|Al Jazeera Sports News|TV|
0500,0603:019A|Al Jazeera Sport 13E|BeIN Sport 1 HD|TV|HD
0500,0603:019B|Al Jazeera Sport 13E|BeIN Sport 2 HD|TV|HD
0500,0603:20F5|Al Jazeera Sport 3E/13E|Al Jazeera Sports +1|TV|
0500,0603:20F6|Al Jazeera Sport 3E/13E|Al Jazeera Sports +2|TV|
0500,0603:20F7|Al Jazeera Sport 3E/13E|Al Jazeera Sports +3|TV|
0500,0603:20F8|Al Jazeera Sport 3E/13E|Al Jazeera Sports +4|TV|
0500,0603:20F9|Al Jazeera Sport 3E/13E|Al Jazeera Sports +5|TV|
0500,0603:20FA|Al Jazeera Sport 3E/13E|Al Jazeera Sports +6|TV|
0500,0603:20FB|Al Jazeera Sport 3E/13E|Al Jazeera Sports +7|TV|
0500,0603:20FC|Al Jazeera Sport 3E/13E|Al Jazeera Sports +8|TV|
0500,0603:20FD|Al Jazeera Sport 3E/13E|Al Jazeera Sports +9|TV|
0500,0603:20FE|Al Jazeera Sport 3E/13E|Al Jazeera Sports +10|TV|
0500,0603:452F|Al Jazeera Sport 13E|Al Jazeera Sports HD 1|TV|HD
0500,0603:4530|Al Jazeera Sport 13E|Al Jazeera Sports HD 2|TV|HD
0500,0603:4531|Al Jazeera Sport 13E|Al Jazeera Sports News HD|TV|HD
0500,0603:4532|Al Jazeera Sport 13E|BeIN Sport 1 HD|TV|HD
```

back to [index](#index)

## Al Jazeera Sport (REVIEW NEEDED)

last review: 2013-01-08 by: ???

Review, add CAIDS and split needed

```
###
### DVB-S - Al Jazeera Sport - Nilesat 7.0 W & BADR 26.0E
###
0500,0603:0321|Al Jazeera Sport 7W/26E|Al Jazeera Sports +6|TV|
0500,0603:0322|Al Jazeera Sport 7W/26E|Al Jazeera Sports +7|TV|
0500,0603:0323|Al Jazeera Sport 7W/26E|Al Jazeera Sports +8|TV|
0500,0603:0324|Al Jazeera Sport 7W/26E|Al Jazeera Sports +9|TV|
0500,0603:0325|Al Jazeera Sport 7W/26E|Al Jazeera Sports +10|TV|
0500,0603:0A8D|Al Jazeera Sport 7W/26E|Al Jazeera Sports +1|TV|
0500,0603:0A8E|Al Jazeera Sport 7W/26E|Al Jazeera Sports +2|TV|
0500,0603:0A8F|Al Jazeera Sport 7W/26E|Al Jazeera Sports +3|TV|
0500,0603:0A90|Al Jazeera Sport 7W/26E|Al Jazeera Sports +4|TV|
0500,0603:0A91|Al Jazeera Sport 7W/26E|Al Jazeera Sports +5|TV|
0500,0603:1131|Al Jazeera Sport 7W|Al Jazeera Sports +9|TV|
0500,0603:1132|Al Jazeera Sport 7W|Al Jazeera Sports +10|TV|
0500,0603:1133|Al Jazeera Sport 7W|NBA TV|TV|
0500,0603:1134|Al Jazeera Sport 7W|ESPN|TV|
0500,0603:1135|Al Jazeera Sport 7W|ESPN Classic Sport Europe|TV|
0500,0603:1136|Al Jazeera Sport 7W|ESPN America|TV|
0500,0603:1137|Al Jazeera Sport 7W|Fox Sports Middle East|TV|
0500,0603:1451|Al Jazeera Sport 7W|Al Jazeera Sports HD 1|TV|HD
0500,0603:1452|Al Jazeera Sport 7W|Al Jazeera Sports HD 2|TV|HD
0500,0603:1453|Al Jazeera Sport 7W|BeIN Sport 1 HD|TV|HD
```

back to [index](#index)

## SCT Satisfaction (REVIEW NEEDED)

last review: ??? by: ???

Review needed for information about information in general If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
###
### DVB-S - SCT Satisfaction -
###
0500,0604,0628,0000,0919,093B,09CD:000A|XXX|SCT HD|TV|
0500,0604,0628,0000,0919,093B,09CD:35C0|XXX|D-XTV|TV|
0500,0604,0628,0000,0919,093B,09CD:35C1|XXX|D-XTV2|TV|
0500,0604,0628,0000,0919,093B,09CD:35C2|XXX|S3|TV|
0500,0604,0628,0000,0919,093B,09CD:35C3|XXX|S5|TV|
0500,0604,0628,0000,0919,093B,09CD:35C4|XXX|S4|TV|
0500,0604,0628,0000,0919,093B,09CD:35C6|XXX|S6|TV|
0500,0604,0628,0000,0919,093B,09CD:35C7|XXX|S7|TV|
0500,0604,0628,0000,0919,093B,09CD:35C8|XXX|SCT HQ|TV|
0500,0604,0628,0000,0919,093B,09CD:35C9|XXX|S3B|TV|
```

back to [index](#index)

## TeleSat (REVIEW NEEDED)

last review: 2012-03-09 by: ???

Review needed for information about split and additional CAIDS on channels (MTV, Hustler etc)

```
###
### DVB-S - TeleSat - Astra 19.2E & 23.5E
###
0100:07FA|TeleSat 19.2E|Hustler TV|TV|Porn|
0100:0820|TeleSat 19.2E|Mint|RADIO||
0100:0821|TeleSat 19.2E|Bel RTL|RADIO||
0100:0822|TeleSat 19.2E|Radio Contact|RADIO||
0100:0825|TeleSat 19.2E|Pure FM|RADIO||
0100:0826|TeleSat 19.2E|Classic21|RADIO||
0100:0827|TeleSat 19.2E|VivaCite|RADIO||
0100:0828|TeleSat 19.2E|Musiq 3|RADIO||
0100:0829|TeleSat 19.2E|La Premiere|RADIO||
0100:0FAB|TeleSat 19.2E|Nederland 1|TV|General|
0100:0FAC|TeleSat 19.2E|Nederland 2|TV|General|
0100:0FAD|TeleSat 19.2E|Nederland 3|TV|General|
0100:0FAF|TeleSat 19.2E|National Geographic NL|TV|Documentaries|
0100:1479|TeleSat 19.2E|La Une|TV|General|
0100:147A|TeleSat 19.2E|La Deux|TV|General|
0100:147B|TeleSat 19.2E|La Trois|TV|General|
0100:1483|TeleSat 19.2E|RTL TVI|TV|General|
0100:1484|TeleSat 19.2E|Club RTL|TV|General|
0100:1485|TeleSat 19.2E|Plug RTL|TV|General|
0100:1909|TeleSat 19.2E|Télétoon +1|TV|Children|
0100:1FD7|TeleSat 19.2E|Eurosport France|TV|Sport|
0100:1FD9|TeleSat 19.2E|Planète+|TV|Documentaries|
0100:1FDA|TeleSat 19.2E|Télétoon+|TV|Children|
0100:1FDB|TeleSat 19.2E|Voyage|TV|Travel|
0100:1FDC|TeleSat 19.2E|LCI - La Chaîne Info|TV|News|
0100:1FDE|TeleSat 19.2E|Comédie+|TV|Comedy|
0100:1FE1|TeleSat 19.2E|June|TV|Entertainment|
0100:1FE2|TeleSat 19.2E|TiJi|TV|Children|
0100:20A2|TeleSat 19.2E|MCM Pop|TV|Music|
0100:20AD|TeleSat 19.2E|MCM Top|TV|Music|
0100:21FD|TeleSat 19.2E|Télé Maison|TV|Documentaries|
0100:2201|TeleSat 19.2E|Disney XD France|TV|Children|
0100:2204|TeleSat 19.2E|National Geographic France|TV|Documentaries|
0100:22CA|TeleSat 19.2E|Disney Channel France +1|TV|Children|
0100:22CB|TeleSat 19.2E|Disney Junior France|TV|Children|
0100:251E|TeleSat 19.2E|Ushuaia TV|TV|Documentaries|
0100:2522|TeleSat 19.2E|NatGeo Wild|TV|Documentaries|
0100:2523|TeleSat 19.2E|Piwi+|TV|Children|
0100:2581|TeleSat 19.2E|Histoire|TV|Documentaries|
0100:2589|TeleSat 19.2E|Canal J|TV|Children|
0100:2B01|TeleSat 19.2E|KidsCo|TV|Children|
0100:2F68|TeleSat 19.2E|Vivolta|TV|Lifestyle|
0100:31E3|TeleSat 19.2E|VTM|TV|General|
0100:31E4|TeleSat 19.2E|2BE|TV|General|
0100:31E5|TeleSat 19.2E|VT 4|TV|General|
0100:31E7|TeleSat 19.2E|één|TV|General|
0100:31E8|TeleSat 19.2E|Canvas|TV|General|
0100:31E8|TeleSat 19.2E|Ketnet|TV|Children|
0100:31E9|TeleSat 19.2E|Vitaya|TV|General|
0100:31EA|TeleSat 19.2E|Radio 1|RADIO||
0100:31EB|TeleSat 19.2E|Radio 2|RADIO||
0100:31EC|TeleSat 19.2E|MNM|RADIO||
0100:31ED|TeleSat 19.2E|Studio Brussel|RADIO||
0100:31EE|TeleSat 19.2E|Klara|RADIO||
0100:31EF|TeleSat 19.2E|Jim|TV|Music|
0100:31F0|TeleSat 19.2E|VIJF TV|TV|Entertainment|
0100:31F1|TeleSat 19.2E|Kanaal Z|TV|Business|
0100:31F1|TeleSat 19.2E|VTM Kzoom|TV|Children|
0100:31F2|TeleSat 19.2E|Q-music|RADIO||
0100:31F3|TeleSat 19.2E|JOEfm|RADIO||
0100:31F4|TeleSat 19.2E|Man-X|TV|Porn|
0100:31F5|TeleSat 19.2E|Nostalgie|RADIO||
0100:31F6|TeleSat 19.2E|Acht|TV|General|
0100:31FA|TeleSat 19.2E|Dorcel TV|TV|Porn|
0100:3335|TeleSat 19.2E|ESPN America|TV|Sport|
0100:6F69|TeleSat 19.2E|Cartoon Network|TV|Children|
0100:6F6D|TeleSat 19.2E|TCM France|TV|Movies|
0100:6F6F|TeleSat 19.2E|Boomerang France|TV|Children|
0100:6FB8|TeleSat 19.2E|MTV Live HD|TV|Music|
0100:6FEC|TeleSat 19.2E|MTV France|TV|Music|
0100:6FEF|TeleSat 19.2E|MTV Dance|TV|Music|
0100:6FF0|TeleSat 19.2E|VH-1 (Video Hits One)|TV|Music|
0100:6FF1|TeleSat 19.2E|VH-1 Classic|TV|Music|
0100:6FF3|TeleSat 19.2E|MTV Rocks|TV|Music|
0100:6FF7|TeleSat 19.2E|Game One|TV|Game|
0100:6FFC|TeleSat 19.2E|Nickelodeon France|TV|Children|
0100:6FFF|TeleSat 19.2E|MTV Music|TV|Music|
0100:7002|TeleSat 19.2E|MTV Pulse|TV|Music|
0100:7003|TeleSat 19.2E|MTV Idol|TV|Music|
###23.5
0100:17A7|TeleSat 23.5E|Vitaliteit|TV|Health|
0100:17AC|TeleSat 23.5E|Body In Balance|TV|Lifestyle|
0100:333B|TeleSat 23.5E|Daring! TV|TV|Porn|
0100:5221|TeleSat 23.5E|één HD|TV|General|
0100:5226|TeleSat 23.5E|Canvas HD|TV|General|
0100:5226|TeleSat 23.5E|Ketnet HD|TV|Children|
```

back to [index](#index)

# all to be sorted and reviewed

these havent been reviewed quite a while


If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


### andere

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
# Sonstiges (unsortiert)
0500:427F|andere|ENCYCLOPEDIA|TV|Astra
0500:00D4|andere|ENCYCLOPEDIA|TV|Hotbird
0500,0D03:07FA|XXX|Hustler TV|TV|
0500:227B|XXX|DORCEL TV|TV|Hotbird
0500:4280|XXX|XXL|TV|Astra
0500:00CD|XXX|XXL|TV|Hotbird
0500:00D7|XXX|XXL Pl|TV|Hotbird
0500:3788|XXX|French Lover|TV|
0500:1251|XXX|Private Spice|TV|
0500:128F|XXX|XTSY|TV|
0500:2456|XXX|HUSTLER HD/3D|TV|
0500,0628:43B3|XXX|Daring! TV|TV|
0100,0D05:07FA|XXX|Hustler TV|TV|
0100:24C1|andere|Pink TV|TV|
```



### NTVmir (5.0E)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
# NTVmir
0500:000A|NTV mir|NTV mir|TV|Sirius
```

### FocusSat (0.8E)

```
# Focus Sat
0B02:76C2|Focus|TVR 1|TV|
0B02:76C3|Focus|TVR 2|TV|
0B02:76C4|Focus|TVR Cultural|TV|
0B02:76C5|Focus|Antena 1|TV|
0B02:76C6|Focus|Prima TV|TV|
0B02:76C7|Focus|Realitatea TV|TV|
0B02:76C8|Focus|National TV|TV|
0B02:76C9|Focus|Favorit TV|TV|
0B02:76CA|Focus|Diva Universal|TV|
0B02:76CB|Focus|Romantica RO|TV|
0B02:76CC|Focus|MTV Romania|TV|
0B02:76CD|Focus|Minimax|TV|
0B02:7725|Focus|Pro TV|TV|
0B02:7726|Focus|Pro Cinema|TV|
0B02:7727|Focus|Acasa|TV|
0B02:7728|Focus|Sport.ro|TV|
0B02:7729|Focus|Pro TV International|TV|
0B02:772A|Focus|Antena 3|TV|
0B02:772B|Focus|Filmbox Basic|TV|
0B02:772D|Focus|Animal Planet RO|TV|
0B02:772E|Focus|National Geographic RO|TV|
0B02:7730|Focus|Cartoon Network RO/TCM RO|TV|
0B02:7731|Focus|AXN RO|TV|
0B02:7733|Focus|Etno|TV|
0B02:7789|Focus|B1|TV|
0B02:778A|Focus|Euforia Lifestyle|TV|
0B02:778B|Focus|N24|TV|
0B02:778C|Focus|Sport1 RO|TV|
0B02:778E|Focus|GSP TV|TV|
0B02:7791|Focus|Discovery RO|TV|
0B02:7792|Focus|CNN|TV|
0B02:7793|Focus|Antena 2|TV|
0B02:7794|Focus|Reality ROM|TV|
0B02:7795|Focus|Trinitas|TV|
0B02:7797|Focus|HBO RO|TV|
0B02:77ED|Focus|Extreme Sports|TV|
0B02:77EE|Focus|JimJam EMEA|TV|
0B02:77F5|Focus|Cinemax|TV|
0B02:77F6|Focus|Boomerang|TV|
0B02:77F7|Focus|Nat Geo Wild|TV|
0B02:77FA|Focus|TV5MONDE|TV|
0B02:7853|Focus|duck TV|TV|
0B02:7855|Focus|Hustler TV|TV|
0B02:7856|Focus|Viasat History|TV|
0B02:7857|Focus|MGM|TV|
0B02:7858|Focus|ESPN America|TV|
0B02:785B|Focus|AXN Crime|TV|
0B02:785E|Focus|History|TV|
0B02:785F|Focus|Disney ROM|TV|
0B02:78B5|Focus|Eurosport|TV|
0B02:78B8|Focus|Viasat Explorer|TV|
0B02:78BA|Focus|AXN SCI-FI|TV|
0B02:78BC|Focus|HBO Comedy|TV|
0B02:78BD|Focus|Daring TV|TV|
0B02:78BE|Focus|Nickelodeon|TV|
0B02:78C2|Focus|Cinemax 2|TV|
0B02:78C3|Focus|Blue Hustler|TV|
```

### Platforma HD/DV (9.0E)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
#Platforma HD:
4AE1:000A|Platforma HD|Kinopokaz 1 HD|TV|HD
4AE1:0014|Platforma HD|Sport HD|TV|HD
4AE1:001E|Platforma HD|ESP HD|TV|HD
4AE1:0028|Platforma HD|NGC HD|TV|HD
4AE1:0032|Platforma HD|NGC Wild HD|TV|HD
4AE1:003C|Platforma HD|MTV HD|TV|HD
4AE1:0046|Platforma HD|Teleputeshestvia HD|TV|HD
4AE1:0050|Platforma HD|Kinopokaz 2 HD|TV|HD
4AE1:0064|Platforma HD|Zhenskij Mir HD|TV|HD
4AE1:006E|Platforma HD|HD Life|TV|HD
4AE1:0078|Platforma HD|Sport HD1|TV|HD
#
#Platforma DV:
4AE1:1D4D|Platforma HD|Pervyj|TV|DV
4AE1:1D4E|Platforma HD|Rossia 1|TV|DV
4AE1:1D4F|Platforma HD|NTV|TV|DV
4AE1:1D5A|Platforma HD|Muz TV|TV|DV
4AE1:1D5B|Platforma HD|365 Dnej|TV|DV
4AE1:1D5C|Platforma HD|Komedia TV|TV|DV
4AE1:1D5D|Platforma HD|Kuchnja TV|TV|DV
4AE1:1D5E|Platforma HD|Avtoplus|TV|DV
4AE1:1D5F|Platforma HD|Tonus TV|TV|DV
4AE1:1D50|Platforma HD|Russia 2|TV|DV
4AE1:1D51|Platforma HD|Russia K|TV|DV
4AE1:1D52|Platforma HD|Bibigon|TV|DV
4AE1:1D53|Platforma HD|STS|TV|DV
4AE1:1D54|Platforma HD|Peterburg 5|TV|DV
4AE1:1D55|Platforma HD|TNT|TV|DV
4AE1:1D56|Platforma HD|Russia 24|TV|DV
4AE1:1D57|Platforma HD|Kinopokaz DV|TV|DV
4AE1:1D58|Platforma HD|Teleputeshestvia DV|TV|DV
4AE1:1D59|Platforma HD|Telekanal REN|TV|DV
4AE1:1D60|Platforma HD|Zoo TV|TV|DV
4AE1:1D62|Platforma HD|Ochota&Rybalka|TV|DV
4AE1:1D63|Platforma HD|RBK TV|TV|DV
4AE1:1D54|Platforma HD|24 Techno|TV|DV
```

### Penthouse HD (9.0E)

```
# Penthouse HD
0500,4AE1:000A|Penthouse HD|Penthouse HD
0500,4AE1:0014|Penthouse HD|Penthouse HD 1
0500,4AE1:001E|Penthouse HD|Penthouse HD 2
0500,4AE1:35C8|Penthouse HD|SCT HQ
```

### Viasat (4.8E)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
# Viasat
090F:000A|Viasat|NTV Mir
090F:044C|Viasat|TV 3 Sverige Stockholm
090F:0456|Viasat|TV 3 Norge
090F:0460|Viasat|TV 3 Danmark
090F:046A|Viasat|TV 1000 Drama
090F:0474|Viasat|TV 1000
090F:047E|Viasat|TV 1000 Action
090F:0488|Viasat|TV 6 Sverige
090F:0492|Viasat|Cartoon Network Nordic
090F:0514|Viasat|Viasat Sport HD Norge
090F:051E|Viasat|Viasat Sport HD Sverige
090F:0528|Viasat|Viasat Premier League HD
090F:0532|Viasat|TV 2 Premier League 1 HD
090F:053C|Viasat|TV 2 Premier League 2 HD
090F:05DD|Viasat|NRK 1 Østlandssendingen
090F:05DE|Viasat|NRK 2
090F:05EC|Viasat|NRK 1 Tegnspråk
090F:05F0|Viasat|NRK 1 Østafjells
090F:05F1|Viasat|NRK 1 Nordnytt
090F:0640|Viasat|TV 1000 HD
090F:064A|Viasat|SVT 1 HD
090F:0654|Viasat|TV 2 (Norway)
090F:065E|Viasat|TV 3+
090F:06AE|Viasat|National Geographic Channel HD UK
090F:06B8|Viasat|TV 2 Sport HD
090F:06C2|Viasat|MTVN HD
090F:06CC|Viasat|DR HD
090F:0708|Viasat|DR Update
090F:0712|Viasat|TV2 Zulu
090F:071C|Viasat|TV2 Charlie
090F:0726|Viasat|TV 2 Film
090F:0730|Viasat|TV 2 Sport 1
090F:073A|Viasat|TV 2 Sport Premier League
090F:0744|Viasat|Viasat Golf
090F:074E|Viasat|TV 2 News
090F:0758|Viasat|DR Ramasjang
090F:0762|Viasat|DR K
090F:076C|Viasat|Viasat Sport East
090F:0776|Viasat|TV 1000 Russkoe Kino
090F:0780|Viasat|TV 1000 East
090F:078A|Viasat|Viasat 3
090F:078E|Viasat|Viasat Nature East
090F:0794|Viasat|TV 6 Hungary
090F:079E|Viasat|TV 1000 Action East
090F:0834|Viasat|Viasat Sport Sverige
090F:083E|Viasat|Viasat Nature
090F:0848|Viasat|BBC World News
090F:0852|Viasat|TV 3+
090F:085C|Viasat|Viasat Hockey
090F:0866|Viasat|MTV Sverige
090F:0870|Viasat|Viasat 4
090F:087A|Viasat|TV 1000 East
090F:0884|Viasat|TV 4 Fakta Sverige
090F:096A|Viasat|SVT 2
090F:0A00|Viasat|SVT 1
090F:0C1C|Viasat|E! EMEA
090F:0C26|Viasat|TV 1000 Family
090F:0C30|Viasat|TV 1000 Nordic
090F:0C3A|Viasat|TV 1000 Classic
090F:0C58|Viasat|Nickelodeon Sverige
090F:0C62|Viasat|Zone Reality Europe
090F:0C6C|Viasat|Disney Channel Scandinavia
090F:0C76|Viasat|Disney XD Scandinavia
090F:0D48|Viasat|FEM
090F:0D52|Viasat|TV 1000 Action East
090F:0D5C|Viasat|Viasat Fotboll
090F:0D66|Viasat|Viasat Motor
090F:0D70|Viasat|Viasat Sport Norge
090F:0D7A|Viasat|VH1 Europe A (18-06)-Nickelodeon Nordic (06-18)
090F:0D84|Viasat|Diva Universal Russia
090F:0DAE|Viasat|NRK 1 Nordland
090F:0DAF|Viasat|NRK 1 Midtnytt
090F:0DB1|Viasat|NRK 1 Vestlandsrevyen
090F:0DB2|Viasat|NRK 1 Rogaland
090F:0DB3|Viasat|NRK 1 Sørlandet
090F:0DB4|Viasat|NRK 1 Østnytt
090F:0DB5|Viasat|NRK 1 Østfold
090F:0DB6|Viasat|NRK Super/NRK3
090F:0DBB|Viasat|NRK 1
090F:0E1A|Viasat|Cartoon Network Nordic
090F:0E24|Viasat|Animal Planet Europe
090F:0E2E|Viasat|Discovery Channel Central Europe
090F:0E38|Viasat|TV 3 Sverige Mitt
090F:0E42|Viasat|TV 3 Sverige Öst
090F:0E4C|Viasat|TV 3 Sverige Väst
090F:0E56|Viasat|TV 3 Sverige Syd
090F:0E60|Viasat|TV 3 Sverige Norr
090F:0E6A|Viasat|National Geographic Channel Scandinavia
090F:0ED8|Viasat|TV 10
090F:0EE2|Viasat|TV 2 (Norway)
090F:0EEC|Viasat|Nelonen Sport Pro
090F:0EF6|Viasat|Viasat Fotball
090F:0F00|Viasat|TV 4 Sport[NDS]"
090F:0F0A|Viasat|Boomerang Nordic
090F:0F14|Viasat|TV 4 Science Fiction
090F:0F28|Viasat|Kanal 5 (Sweden)
090F:0F32|Viasat|TV 4 Komedi
090F:0FA0|Viasat|TV Chile
090F:0FAA|Viasat|Visjon Norge
090F:0FB4|Viasat|EuroNews
090F:0FC8|Viasat|Canal Motor
090F:0FD2|Viasat|Kanal 10
090F:0FDC|Viasat|God TV Scandinavia
090F:0FF0|Viasat|RT English
090F:0FFA|Viasat|TV 7 (Sweden)
090F:1130|Viasat|TV 2 Premier League 3
090F:1162|Viasat|TV 2 Nyhetskanalen
090F:116C|Viasat|TV 1000 Premium
090F:1176|Viasat|TV 2 Premier League 1
090F:1180|Viasat|TV 2 Premier League 2
090F:118A|Viasat|TV 2 Premier League 3
090F:11F8|Viasat|TV 2 Nord
090F:1202|Viasat|TV 2 Midt-Vest
090F:120C|Viasat|TV 2 Østjylland
090F:1216|Viasat|TV 2 Syd
090F:1220|Viasat|TV 2 Fyn
090F:122A|Viasat|TV 2 Øst
090F:1234|Viasat|TV 2 Lorry
090F:123E|Viasat|TV 2 Bornholm
090F:1388|Viasat|SVT 1
090F:1392|Viasat|SVT 2
090F:139C|Viasat|Kunskapskanalen
090F:13A6|Viasat|SVT B
090F:13B0|Viasat|TV Norge
090F:13BA|Viasat|TV 2 Bliss
090F:13C4|Viasat|TV 4 Guld
090F:13D8|Viasat|Nat Geo Wild Europe
090F:1770|Viasat|TV 400
090F:177A|Viasat|TV 2 Filmkanalen
090F:1784|Viasat|Private Spice
090F:178E|Viasat|Viasat Nature East
090F:1798|Viasat|MTV Norge
090F:17A2 "(4,8E) VVIASAT - IASAT HISTORY||
090F:17AC|Viasat|Viasat Sport Baltic
090F:17C0|Viasat|TV 4 Plus
090F:17CA|Viasat|TV 4 Film
090F:1838|Viasat|Perviy Baltijskyi Kanal Estonia
090F:1842|Viasat|Perviy Baltijskyi Kanal Latvija
090F:184C|Viasat|Perviy Baltijskyi Kanal Lietuva
090F:1856|Viasat|Perviy Baltijskyi Muzykalnyi Kanal
090F:1860|Viasat|REN TV Baltia
090F:1865|Viasat|LNK
090F:186A|Viasat|Lietuvos Rytas TV
090F:1888|Viasat|TV 1 (Lithuania)
090F:1892|Viasat|TV 5 (Latvia)
090F:1897|Viasat|LTV 7
090F:189C|Viasat|TV 3 Latvija
090F:18A6|Viasat|3+ Latvija
090F:18B0|Viasat|3+ Eesti
090F:18BA|Viasat|TV 3 Eesti
090F:18BF|Viasat|TV 6 Latvija
090F:18C4|Viasat|TV 3 Lietuva
090F:18CE|Viasat|TV 6 Lietuva
090F:18D3|Viasat|TV 6 Eesti
090F:18D8|Viasat|LNT
090F:18E2|Viasat|LTV
090F:18EC|Viasat|ETV (Estonia)
090F:18F6|Viasat|LTV 1
090F:190A|Viasat|Spice
090F:1914|Viasat|TV 1000 Balkan
090F:191E|Viasat|TV 1000 Polska
090F:195A|Viasat|Viasat History
090F:1A9A|Viasat|Kanal 2
090F:1AA4|Viasat|Kanal 11
090F:1AB8|Viasat|Baltijos TV
090F:1ACC|Viasat|ETV 2 (Estonia)
090F:1AE0|Viasat|Nick Jr Sverige
090F:1AEA|Viasat|RTR Planeta Baltia
090F:1B6C|Viasat|DR 1
090F:1B76|Viasat|DR 2
090F:1B80|Viasat|TV 8 (Sweden)
090F:1B8A|Viasat|CNN International Europe
090F:1B94|Viasat|Spice
090F:1B9E|Viasat|TV 2 Sport (Denmark)
090F:1BA8|Viasat|MTVV Danmark
090F:1BB2|Viasat|TV 1000 Russkoe Kino
090F:1EDC|Viasat|Viasat Xtra Premier League 1
090F:1EE6|Viasat|Viasat Xtra Premier League 2
090F:1EF0|Viasat|Viasat Xtra Premier League 3
090F:1EFA|Viasat|Viasat Xtra Premier League 4
090F:1F04|Viasat|Viasat Xtra Premier League 5
090F:1F0E|Viasat|Viasat Xtra Premier League 6
090F:1F18|Viasat|Viasat Xtra Premier League 7
090F:1F40|Viasat|Viasat Xtra 1
090F:1F4A|Viasat|Viasat Xtra 2
090F:1F54|Viasat|Viasat Xtra 3
090F:1F5E|Viasat|Viasat Xtra 4
090F:1F68|Viasat|Viasat Xtra 5
090F:1F72|Viasat|Säsongskortet Allsvenskan 3
090F:1F7C|Viasat|Säsongskortet Allsvenskan 4
090F:1F86|Viasat|Säsongskortet Allsvenskan 5
090F:1F90|Viasat|Viasat Xtra 6
090F:1F9A|Viasat|TV 4 (Sweden)
090F:1FA4|Viasat|TV 2 Sport 2
090F:1FAE|Viasat|TV 2 Sport 3
090F:1FB8|Viasat|TV 3 Puls
090F:1FC2|Viasat|TV 2 Sport 4
090F:1FCC|Viasat|TV 2 Sport 5
090F:1FE0|Viasat|Säsongskortet Allsvenskan 1
090F:1FEA|Viasat|Säsongskortet Allsvenskan 2
```

### Nova (13.0E)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
#
# DVB-S - Nova - Hotbird 13.0E
# Date: 2011-09-26
#
0604:1251|Nova 13.0E|Private Spice|TV|Porn|
0604:1D4D|Nova 13.0E|Nickelodeon Europe|TV|Children|
0604:1D4E|Nova 13.0E|VH-1 (Video Hits One)|TV|Music|
0604:1D4F|Nova 13.0E|MTV Greece|TV|Music|
0604:1D51|Nova 13.0E|MGM Greece|TV|Movies|
0604:1D52|Nova 13.0E|Animal Planet|TV|Documentaries|
0604:1D54|Nova 13.0E|National Geographic Greece|TV|Documentaries|
0604:1D57|Nova 13.0E|Private Spice|TV|Porn|
0604:1D59|Nova 13.0E|Playboy TV|TV|Erotic|
0604:1D8F|Nova 13.0E|Nova Cinema 4|TV|Movies|
0604:1D97|Nova 13.0E|Travel Channel|TV|Travel|
0604:1D99|Nova 13.0E|Mad Greekz|TV|Music|
0604:1D6A|Nova 13.0E|BHMA FM 99,5|RADIO||
0604:1D83|Nova 13.0E|SENTRA FM|RADIO||
0604:1D84|Nova 13.0E|REAL FM|RADIO||
0604:1D94|Nova 13.0E|novasport FM|RADIO||
0604:1D95|Nova 13.0E|NOVA SCOPE|RADIO||
0604:1D93|Nova 13.0E|EEPG|DATA||
0604:1C85|Nova 13.0E|Motors TV|TV|Sport|
0604:35E9|Nova 13.0E|Eurosport 2|TV|Sport|
0604:3607|Nova 13.0E|Eurosport|TV|Sport|
0604:3305|Nova 13.0E|Eurosport HD|TV|Sport|
0604:000A|Nova 13.0E|SCT HD|TV|Porn|
0604:35C0|Nova 13.0E|Redlight TV|TV|Erotic|
0604:35C1|Nova 13.0E|Diablo X TV 2|TV|Porn|
0604:35C2|Nova 13.0E|Satisfaction Plus|TV|Porn|
0604:35C3|Nova 13.0E|Boy & Boy|TV|Porn|
0604:35C4|Nova 13.0E|TeleItalia|TV|Porn|
0604:35C6|Nova 13.0E|Satisfaction Privé|TV|Porn|
0604:35C7|Nova 13.0E|Marc Dorcel TV|TV|Erotic|
0604:35C8|Nova 13.0E|Satisfaction Channel Television|TV|Porn|
0604:013C|Nova 13.0E|Disney XD Greece|TV|Children|
0604:013D|Nova 13.0E|Nova Cinema 1|TV|Movies|
0604:013E|Nova 13.0E|NovaSports 1|TV|Sport|
0604:013F|Nova 13.0E|Mega Channel|TV|Music|
0604:0140|Nova 13.0E|ANT 1|TV|General|
0604:0141|Nova 13.0E|Star Channel|TV|General|
0604:0142|Nova 13.0E|Alter Channel|TV|General|
0604:0143|Nova 13.0E|Novasports 7|TV|Sport|
0604:0145|Nova 13.0E|Alpha TV Greece|TV|General|
0604:0135|Nova 13.0E|Love Radio|RADIO||
0604:0137|Nova 13.0E|Skai Radio|RADIO||
0604:0138|Nova 13.0E|Melodi Radio|RADIO||
0604:0139|Nova 13.0E|RR3|RADIO||
0604:013A|Nova 13.0E|RR1|RADIO||
0604:1BBE|Nova 13.0E|E! Entertainment TV|TV|Lifestyle|
0604:1BBF|Nova 13.0E|History|TV|Documentaries|
0604:1BC0|Nova 13.0E|Nova Cinema 2|TV|Movies|
0604:1BC2|Nova 13.0E|Nova Cinema 3|TV|Movies|
0604:1BC3|Nova 13.0E|NovaSports 4|TV|Sport|
0604:1BC4|Nova 13.0E|NovaSports Highlights|TV|Sport|
0604:1BC5|Nova 13.0E|NovaSports 6|TV|Sport|
0604:1BC7|Nova 13.0E|Disney Channel Greece|TV|Children|
0604:1BC8|Nova 13.0E|Nova Sports 3|TV|Sport|
0604:1BD0|Nova 13.0E|Fox Life Greece|TV|Series|
0604:1BD1|Nova 13.0E|FX Greece|TV|Entertainment|
0604:1BD2|Nova 13.0E|Boomerang|TV|Children|
0604:1BD3|Nova 13.0E|NatGeo Wild|TV|Documentaries|
0604:1BC1|Nova 13.0E|mottv|RADIO||
0604:1BC6|Nova 13.0E|testsrv_m4|RADIO||
0604:1BCD|Nova 13.0E|Mad Radio|RADIO||
0604:1BBD|Nova 13.0E|GAMES|DATA||
0604:3C8E|Nova 13.0E|NatGeo Wild HD|TV|Documentaries|
0604:3C8F|Nova 13.0E|National Geographic HD UK|TV|Documentaries|
0604:3C91|Nova 13.0E|Discovery HD Showcase|TV|Documentaries|
0604:3C94|Nova 13.0E|Nova Sports HD|TV|Sport|
0604:3C95|Nova 13.0E|Nova Cinema HD|TV|Movies|
0604:015F|Nova 13.0E|Discovery Channel Greece|TV|Children|
0604:0161|Nova 13.0E|NovaSports 2|TV|Sport|
0604:0169|Nova 13.0E|Macedonia TV|TV|General|
0604:016A|Nova 13.0E|Skai|TV|General|
0604:016B|Nova 13.0E|ET 3|TV|General|
0604:0178|Nova 13.0E|NET|TV|General|
0604:0179|Nova 13.0E|Mad TV|TV|Music|
0604:017A|Nova 13.0E|ET 1|TV|General|
0604:016C|Nova 13.0E|NET|RADIO|News|
0604:016D|Nova 13.0E|ERA2|RADIO||
0604:016E|Nova 13.0E|ERA SPORT|RADIO||
0604:0172|Nova 13.0E|Mad Music Hits GR Cy|RADIO||
0604:0173|Nova 13.0E|Mad Music My Rock Cy|RADIO||
0604:0174|Nova 13.0E|Mad Music Greek Cy|RADIO||
0604:0175|Nova 13.0E|Mad Music Rebetico Cy|RADIO||
0604:0176|Nova 13.0E|Mad Music Seasonal Cy|RADIO||
0604:017B|Nova 13.0E|ERA3|RADIO||
0604:0182|Nova 13.0E|MAD MUSIC Hits GR|RADIO||
0604:0183|Nova 13.0E|MAD MUSIC My Rock|RADIO||
0604:0184|Nova 13.0E|MAD MUSIC Greek|RADIO||
0604:0185|Nova 13.0E|MAD MUSIC Rebetico|RADIO||
0604:0186|Nova 13.0E|MAD MUSIC Seasonal|RADIO||
0604:0069|Nova 13.0E|Mezzo|TV|Music|
0604:227B|Nova 13.0E|Dorcel TV|TV|Porn|
0604:2011|Nova 13.0E|CNN International Europe|TV|News|
```

### Cyfra+

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
# Cyfra+
0100,0B00:0001|Cyfra+|MTVN HD
0100,0B07:0002|Cyfra+|MTV Polska
0100,0B07:0004|Cyfra+|VH1 Polska
0100,0B07:000A|Cyfra+|Comedy Central Polska
0100,0B07:0069|Cyfra+|Mezzo
0100,0B07:00CA|Cyfra+|AB Moteurs
0100,0B07:00CC|Cyfra+|Chasse & Peche
0100,0B07:00CD|Cyfra+|XXL
0100,0B07:00D7|Cyfra+|XXL PL
0100,0B07:00D9|Cyfra+|France 5
0100,0B07:00DA|Cyfra+|France Ô
0100,0B07:01F7|Cyfra+| France 2
0100,0B07:021A|Cyfra+|France 3 Sat
0100,0B07:021B|Cyfra+|France 4
0100,0B07:0C1F|Cyfra+|FoxLife HD
0100,0B07:0C21|Cyfra+|HBO Polska HD
0100,0B07:0E06|Cyfra+|BBC HD
0100,0B07:10D7|Cyfra+|TVN
0100,0B07:10D8|Cyfra+|TVN 24
0100,0B07:10D9|Cyfra+|TVN 7
0100,0B07:10DE|Cyfra+|TVN Meteo
0100,0B07:10DF|Cyfra+|TVN Turbo
0100,0B07:10E0|Cyfra+|TVN Style
0100,0B07:10E2|Cyfra+|TVN CNBC Biznes
0100,0B07:1132|Cyfra+|Movies 24
0100,0B07:1134|Cyfra+|4 Fun TV
0100,0B07:1135|Cyfra+|Orange sport
0100,0B07:1136|Cyfra+|Planete Polska
0100,0B07:1137|Cyfra+|MiniMini
0100,0B07:1138|Cyfra+|Patio TV
0100,0B07:1139|Cyfra+|History Europe
0100,0B07:113D|Cyfra+|Canal + Sport 2
0100,0B07:113E|Cyfra+|Canal + Sport 3
0100,0B07:114D|Cyfra+|HBO Polska
0100,0B07:114E|Cyfra+|Hallmark Channel
0100,0B07:114F|Cyfra+|HBO 2 Polska
0100,0B07:1150|Cyfra+|HBO Comedy Polska
0100,0B07:12C1|Cyfra+|Canal + Polska
0100,0B07:12C2|Cyfra+|Canal + Film
0100,0B07:12C4|Cyfra+|Kuchnia TV
0100,0B07:12C5|Cyfra+|Ale Kino!
0100,0B07:12C6|Cyfra+|ZigZap / Hyper
0100,0B07:12C7|Cyfra+|TVP 1
0100,0B07:12C8|Cyfra+|TVP 2
0100,0B07:12C9|Cyfra+|Canal + Sport
0100,0B07:12CB|Cyfra+|Domo
0100,0B07:13ED|Cyfra+|TVP Polonia
0100,0B07:13EE|Cyfra+|TV Silesia
0100,0B07:13F0|Cyfra+|Kino Polska
0100,0B07:13F1|Cyfra+|Trace TV
0100,0B07:13F5|Cyfra+|ITV
0100,0B07:13F6|Cyfra+|TVP Info
0100,0B07:13F7|Cyfra+|Cinemax
0100,0B07:13F8|Cyfra+|TV Puls
0100,0B07:13F9|Cyfra+|TVP Kultura
0100,0B07:1402|Cyfra+|Animal Planet
0100,0B07:1405|Cyfra+|CNBC Europe
0100,0B07:1406|Cyfra+|Zone Club Polska
0100,0B07:1407|Cyfra+|Zone Reality Polska
0100,0B07:144B|Cyfra+|[Cyfra + VOD info card]
0100,0B07:1C85|Cyfra+|Zone Romantica
0100,0B07:1C86|Cyfra+|AXN Crime
0100,0B07:1C87|Cyfra+|AXN Sci-Fi
0100,0B07:1C89|Cyfra+|Extreme Sports Channel
0100,0B07:1C8B|Cyfra+|Nat Geo Wild
0100,0B07:1C93|Cyfra+|Discovery Channel Polska
0100,0B07:1C96|Cyfra+|AXN Polska
0100,0B07:1C9C|Cyfra+|Crime & Investigation
0100,0B07:1CAC|Cyfra+|ESPN Classic Europe
0100,0B07:1CB5|Cyfra+|Disney XD Polska
0100,0B07:1CCA|Cyfra+|Cinemax 2 Central Europe
0100,0B07:1CCF|Cyfra+|Fox Life Polska
0100,0B07:1D21|Cyfra+|Cartoon Network
0100,0B07:1D2A|Cyfra+|Disney Channel Polska
0100,0B07:1D2C|Cyfra+|TCM
0100,0B07:2011|Cyfra+|CNN International Europe
0100,0B07:21CB|Cyfra+|Eurosport 2 Bundesliga
0100,0B07:2909|Cyfra+|TVP Sport
0100,0B07:2918|Cyfra+|Travel Channel
0100,0B07:2919|Cyfra+|Superstacja
0100,0B07:29D5|Cyfra+|KBS World
0100,0B07:32DD|Cyfra+|Canal + Film HD
0100,0B07:32DE|Cyfra+|Canal + Sport HD
0100,0B07:32DF|Cyfra+|National Geographic HD
0100,0B07:32E1|Cyfra+|FilmBox HD
0100,0B07:32E2|Cyfra+|TVP HD
0100,0B07:3318|Cyfra+|Eurosport HD PL
0100,0B07:332F|Cyfra+|TV 4
0100,0B07:35EA|Cyfra+|Eurosport 2
0100,0B07:3607|Cyfra+|Eurosport
0100,0B07:3914|Cyfra+|Investigation Discovery
0100,0B07:3915|Cyfra+|Discovery Travel & Living
0100,0B07:3A35|Cyfra+|Universal Channel Polska
0100,0B07:3A36|Cyfra+|Sci Fi Channel Polska
0100,0B07:3B63|Cyfra+|Eurosport 2 HD Bundesliga
0100,0B07:3B66|Cyfra+|Animal Planet HD
0100,0B07:3B65|Cyfra+|Nat Geo Wild HD
0100,0B07:3B67|Cyfra+|Cinemax HD
0100,0B07:3D55|Cyfra+|Discovery Science Channel
0100,0B07:3D57|Cyfra+|Discovery World
0100,0B07:3D59|Cyfra+|Tele 5
0100,0B07:3D5A|Cyfra+|Polonia 1
0100,0B07:3D5B|Cyfra+|Edusat
0100,0B07:3D5D|Cyfra+|MTV Rocks
0100,0B07:3D5E|Cyfra+|National Geographic
0100,0B07:3D5F|Cyfra+|Orange sport info
0100,0B07:3D60|Cyfra+|FilmBox Extra
0100,0B07:3D61|Cyfra+|FilmBox Polska
0100,0B07:3D62|Cyfra+|FilmBox Family
0100,0B07:3DBB|Cyfra+|Religia TV
```

### Digitürk 7.0°E / 42.0°E

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
#
# Digitürk 7.0°E / 42.0°E
# 2013-02-28
#
0D00,0664:00CA|DigiTurk|Lig TV HD|TV|
0664:00CD|DigiTurk|MMX Premier HD |TV|
0D00,0664:00CE|DigiTurk|Eurosport HD |TV|
0664:00D2|DigiTurk|Dizimax HD |TV|
0D00,0664:0259|DigiTurk|MCJ |TV|
0D00,0664:025A|DigiTurk|BJK TV|TV|
0D00,0664:025B|DigiTurk|MMX Speed|TV|
0D00,0664:025B|DigiTurk|MMX Speed 42° |TV|
0D00,0664:025C|DigiTurk|MMX Stars|TV|
0D00,0664:025D|DigiTurk|MGM Movies|TV|
0D00,0664:0260|DigiTurk|TGRT Haber|TV|
0D00,0664:0264|DigiTurk|MMX Festival|TV|
0D00,0664:027C|DigiTurk|Intimacy|TV|
0D00,0664:027E|DigiTurk|Jojo / 42° SporMax|TV|
0D00,0664:028C|DigiTurk|Bloomberg HT |TV|
0D00,0664:044F|DigiTurk|Bursaspor TV|TV|
0D00,0664:0451|DigiTurk|Salonda ne var|TV|
0D00,0664:0454|DigiTurk|Beyaz TV |TV|
0D00,0664:0455|DigiTurk|Kanal B |TV|
0D00,0664:0456|DigiTurk|Entertainment TV |TV|
0D00,0664:0457|DigiTurk|Bugün TV |TV|
0D00,0664:0459|DigiTurk|HALK TV |TV|
0D00,0664:05DD|DigiTurk|Dizimax Vice|TV|
0D00,0664:05DE|DigiTurk|Samanyolu TV |TV|
0D00,0664:05E0|DigiTurk|GS TV / 42° Türkmax|TV|
0D00,0664:05E1|DigiTurk|Sundance Channel|TV|
0D00,0664:05E2|DigiTurk|TRT 1 |TV|
0D00,0664:05E6|DigiTurk|Lig TV |TV|
0D00,0664:05EC|DigiTurk|Türkmax|TV|
0D00,0664:061A|DigiTurk|Dizimax Entertainment |TV|
0D00,0664:0623|DigiTurk|TARAFTAR 204|TV|
0D00,0664:06A5|DigiTurk|NTV Turkey |TV|
0D00,0664:06A6|DigiTurk|KanalTürk |TV|
0D00,0664:06A7|DigiTurk|TRT 3 / TRT Gap|TV|
0D00,0664:06A8|DigiTurk|CNBC-e |TV|
0D00,0664:06A9|DigiTurk|CNN Türk |TV|
0D00,0664:06AB|DigiTurk|Artı Bir TV |TV|
0D00,0664:06AC|DigiTurk|MMX Premier|TV|
0D00,0664:06AE|DigiTurk|Cartoon Network|TV|
0D00,0664:06AF|DigiTurk|TV 8 Turkey |TV|
0D00,0664:06B1|DigiTurk|Kral POP |TV|
0D00,0664:06B2|DigiTurk|VIP 42° |TV|
0D00,0664:08FD|DigiTurk|Show TV |TV|
0D00,0664:08FE|DigiTurk|Kanal D|TV|
0D00,0664:0903|DigiTurk|Blue Hustler |TV|
0D00,0664:0905|DigiTurk|Salon 1 |TV|
0D00,0664:0906|DigiTurk|Salon 2 |TV|
0D00,0664:0907|DigiTurk|Disney XD|TV|
0D00,0664:0911|DigiTurk|Blue Hustler 42° |TV|
0D00,0664:0917|DigiTurk|VIP|TV|
0D00,0664:0924|DigiTurk|Blue Hustler |TV|
0D00,0664:0932|DigiTurk|Showmax |TV|
0D00,0664:0DAE|DigiTurk|NAT GEO 42°|TV|
0D00,0664:10CD|DigiTurk|Fox Turk |TV|
0D00,0664:10CE|DigiTurk|ATV |TV|
0D00,0664:10CF|DigiTurk|Kanal 7 |TV|
0D00,0664:10D1|DigiTurk|Eurosport |TV|
0D00,0664:10D2|DigiTurk|Disney Channel|TV|
0D00,0664:10D3|DigiTurk|A Haber|TV|
0D00,0664:10D4|DigiTurk|Salon 3 |TV|
0D00,0664:10DA|DigiTurk|MMX Premier 2|TV|
0D00,0664:10DC|DigiTurk|Dizimax Comedy|TV|
0D00,0664:10F4|DigiTurk|SkyTürk |TV|
0D00,0664:14B5|DigiTurk|Baby TV |TV|
0D00,0664:14B6|DigiTurk|iZ TV |TV|
0D00,0664:14B7|DigiTurk|iZ TV |TV|
0D00,0664:14B8|DigiTurk|Flash TV |TV|
0D00,0664:14B9|DigiTurk|Planet Cocuk|TV|
0D00,0664:14BC|DigiTurk|Digi Ticari|TV|
0D00,0664:14BE|DigiTurk|Digi |TV|
0D00,0664:14BF|DigiTurk|Yumurcak TV |TV|
0D00,0664:14C0|DigiTurk|Penthouse|TV|
0D00,0664:14C1|DigiTurk|MTV|TV|
0D00,0664:14C2|DigiTurk|E! Entertainment|TV|
0D00,0664:14C3|DigiTurk|Bio – CI|TV|
0D00,0664:14C4|DigiTurk|Power Turk TV |TV|
0D00,0664:14C5|DigiTurk|Samanyolu Haber |TV|
0D00,0664:14C7|DigiTurk|National Geo Adventure |TV|
0D00,0664:14C9|DigiTurk|Penthouse|TV|
0D00,0664:14F0|DigiTurk|Jojo 42° |TV|
0D00,0664:14F1|DigiTurk|INTIMACY 42° |TV|
0D00,0664:14FB|DigiTurk|TARAFTAR 205 |TV|
0D00,0664:150E|DigiTurk|iZ TV 42°|TV|
0D00,0664:1904|DigiTurk|Haber Turk TV |TV|
0D00,0664:1906|DigiTurk|MMX Stars 2|TV|
0D00,0664:1908|DigiTurk|Lig TV Ticari |TV|
0D00,0664:190A|DigiTurk|Fenerbahce TV |TV|
0D00,0664:190B|DigiTurk|DiziMax Drama|TV|
0D00,0664:190C|DigiTurk|MMX Family|TV|
0D00,0664:190D|DigiTurk|Nick Jr. |TV|
0D00,0664:190F|DigiTurk|MMX Festival|TV|
0D00,0664:1914|DigiTurk|TGRT Haber |TV|
0D00,0664:193D|DigiTurk|Fox Sports|TV|
0D00,0664:1C85|DigiTurk|Star TV |TV|
0D00,0664:1C86|DigiTurk|Home TV |TV|
0D00,0664:1C8B|DigiTurk|National Geo|TV|
0D00,0664:1C8D|DigiTurk|NatGeo Wild |TV|
0D00,0664:1C8F|DigiTurk|Mehtap |TV|
0D00,0664:1C98|DigiTurk|Home TV |TV|
0D00,0664:1CC0|DigiTurk|History Channel|RD|
0D00,0664:1CC1|DigiTurk|Digi 42° / 42° Star TV|TV|
0D00,0664:1CC2|DigiTurk|TARAFTAR 205 42° |TV|
0D00,0664:1CD0|DigiTurk|Sömine Keyfi Digitürk |TV|
0D00,0664:1CE9|DigiTurk|HOTTEST HITS |RD|
0D00,0664:1CEA|DigiTurk|SONGS OF LOVE |RD|
0D00,0664:1CEB|DigiTurk|2000 s HITS |RD|
0D00,0664:1CEC|DigiTurk|90 s HITS |RD|
0D00,0664:1CED|DigiTurk|80 s HITS |RD|
0D00,0664:1CEE|DigiTurk|70 s HITS |RD|
0D00,0664:1CEF|DigiTurk|50 s 60 s HITS |RD|
0D00,0664:1CF0|DigiTurk|STANDARDS |RD|
0D00,0664:1CF1|DigiTurk|CLASSICAL MUSIC |RD|
0D00,0664:1CF2|DigiTurk|ALTERNATIVE ROCK |RD|
0D00,0664:1CF3|DigiTurk|HARD ROCK |RD|
0D00,0664:1CF4|DigiTurk|CLASSIC ROCK |RD|
0D00,0664:1CF5|DigiTurk|NU JAZZ |RD|
0D00,0664:1CF6|DigiTurk|JAZZ CLASSICS |RD|
0D00,0664:1CF7|DigiTurk|BLUES |RD|
0D00,0664:1CF8|DigiTurk|REGGAE |RD|
0D00,0664:1CF9|DigiTurk|LATIN |RD|
0D00,0664:1CFA|DigiTurk|DANCE CLASSICS |RD|
0D00,0664:1CFB|DigiTurk|DANCE |RD|
0D00,0664:1CFC|DigiTurk|CHILL OUT / LOUNGE |RD|
0D00,0664:1CFD|DigiTurk|HIP HOP R&B |RD|
0D00,0664:1CFE|DigiTurk|EASY LISTENING |RD|
0D00,0664:1CFF|DigiTurk|YOGA ZONE |RD|
0D00,0664:1D00|DigiTurk|INTERNATIONAL |RD|
0D00,0664:1D01|DigiTurk|R & B |RD|
0D00,0664:1D02|DigiTurk|SYMPHONIC |RD|
0D00,0664:1D03|DigiTurk|SMOOTH JAZZ|RD|
0D00,0664:1D06|DigiTurk|OPERA|RD|
0D00,0664:1D08|DigiTurk|METRO FM|RD|
0D00,0664:1D0A|DigiTurk|SÜPER FM|RD|
0D00,0664:1D0C|DigiTurk|ALEM FM 89.2 |RD|
0D00,0664:1D0F|DigiTurk|MASAL RADYO |RD|
0D00,0664:1D10|DigiTurk|ARIONRD.COM |RD|
0D00,0664:1D4D|DigiTurk|Fox Life Turkey |TV|
0D00,0664:1D4E|DigiTurk|Minika Go|TV|
0D00,0664:1D51|DigiTurk|Eurosport 2 |TV|
0D00,0664:1D56|DigiTurk|E2 |TV|
0D00,0664:1D58|DigiTurk|NTV Spor |TV|
0D00,0664:1D5B|DigiTurk|24|TV|
0D00,0664:1D5C|DigiTurk|TV Net |TV|
0D00,0664:1D5E|DigiTurk|EPL|TV|
0D00,0664:1D5F|DigiTurk|Disney Junior|TV|
0D00,0664:1D60|DigiTurk|NBA TV |TV|
0D00,0664:1D61|DigiTurk|Ülke TV|TV|
0D00,0664:1DB4|DigiTurk|TV2|TV|
0D00,0664:1DB5|DigiTurk|Kanal A |TV|
0D00,0664:1DB6|DigiTurk|FX Turkey |TV|
0D00,0664:1DB8|DigiTurk|Nickelodeon|TV|
0D00,0664:1DB9|DigiTurk|Zone Reality|TV|
0D00,0664:1DBB|DigiTurk|Yumurcak TV|TV|
0D00,0664:1DBC|DigiTurk|Baby TV|TV|
0D00,0664:1DBD|DigiTurk|Discovery Channel|TV|
0D00,0664:1DBE|DigiTurk|Discovery Science|TV|
0D00,0664:1E79|DigiTurk|Rai Uno |TV|
0D00,0664:1E7A|DigiTurk|Saudi Channel 1 |TV|
0D00,0664:1E7C|DigiTurk|CH1 Russia|TV|
0D00,0664:1E7D|DigiTurk|Wedding TV |TV|
0D00,0664:1E7F|DigiTurk|World Travel |TV|
0D00,0664:1E80|DigiTurk|Al Jazeera English |TV|
0D00,0664:1E81|DigiTurk|Bloomberg Europe |TV|
0D00,0664:1E82|DigiTurk|TV5 Monde Europe |TV|
0D00,0664:1E83|DigiTurk|BabyFirst |TV|
0D00,0664:1E84|DigiTurk|ProSieben |TV|
0D00,0664:1E86|DigiTurk|France 24|TV|
0D00,0664:1E89|DigiTurk|CNN INT|TV|
0D00,0664:1E8E|DigiTurk|TOP SHOP TV|TV|
0D00,0664:1EDD|DigiTurk|National Geo HD |TV|
0664:1EDE|DigiTurk|DiziMax More HD |TV|
0664:1EE7|DigiTurk|Penthouse HD |TV|
0664:1EE8|DigiTurk|MMX Stars HD |TV|
0664:1EEA|DigiTurk|EPL HD|TV|
0D00,0664:1F42|DigiTurk|Olay TV|TV|
0D00,0664:1F43|DigiTurk|Mezzo|TV|
0D00,0664:1F44|DigiTurk|VH-1|TV|
0D00,0664:1F45|DigiTurk|Extreme Sports |TV|
0D00,0664:1F46|DigiTurk|BBC Entertainment|TV|
0D00,0664:1F47|DigiTurk|DREAM TV |TV|
0D00,0664:1F48|DigiTurk|BBC World News |TV|
0D00,0664:1F49|DigiTurk|EuroNews |TV|
0D00,0664:1F51|DigiTurk|Style Network |TV|
0D00,0664:1F4C|DigiTurk|MCM Top |TV|
0D00,0664:1F4D|DigiTurk|Fashion TV |TV|
0D00,0664:1F4E|DigiTurk|CNN Int|TV|
0664:1FA5|DigiTurk|Fox Sports HD|TV|
0664:1FA6|DigiTurk|NatGeo Wild HD |TV|
0664:1FA8|DigiTurk|Lig TV Ticari HD|TV|
0664:1FAF|DigiTurk|Show TV HD|TV|
0664:1FB0|DigiTurk|Skytürk HD|TV|
0D00,0664:2009|DigiTurk|ESPN America|TV|
0D00,0664:2010|DigiTurk|Meltem |TV|
0D00,0664:200A|DigiTurk|ESPN Classic|TV|
0D00,0664:200B|DigiTurk|FOG TV|TV|
0D00,0664:200C|DigiTurk|SPORTS TV|TV|
0D00,0664:200F|DigiTurk|KRAL TV|TV|
0D00,0664:201A|DigiTurk|MTV Hits|TV|
0D00,0664:201C|DigiTurk|e2|TV|
0664:201D|DigiTurk|Fashion TV HD|TV|
```

### Pink International

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
# Pink International
091F:0001|Pink International|Pink Plus
091F:0002|Pink International|Pink Extra
091F:0004|Pink International|Pink TV Bosnia Herzegovina
091F:0005|Pink International|Pink TV Montenegro
091F:0006|Pink International|Pink Srbija
091F:0007|Pink International|Pink Action
091F:0008|Pink International|Pink Movies
091F:0009|Pink International|Pink Film
091F:000A|Pink International|Pink Music
091F:000B|Pink International|Pink Kids
091F:000C|Pink International|Pink Family
091F:001F|Pink International|Pink Plus
091F:0020|Pink International|Pink Extra
091F:0022|Pink International|Pink TV Bosnia Herzegovina
091F:0023|Pink International|Pink TV Montenegro
091F:0024|Pink International|Pink Srbija
091F:0025|Pink International|Pink Action
091F:0026|Pink International|Pink Movies
091F:0027|Pink International|Pink Film
091F:0028|Pink International|Pink Music
091F:0029|Pink International|Pink Kids
091F:002A|Pink International|Pink Family
```

### Boom (4.0W)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
#
# DVB-S - Boom - 4.0W
# Date: 2011-09-26
#
0929:0066|Boom 4.0W|History|TV|Documentaries|
0929:008F|Boom 4.0W|National TV|TV|General|
0929:0090|Boom 4.0W|MTV Hits|TV|Music|
0929:0091|Boom 4.0W|Daring! TV|TV|Porn|
0929:0092|Boom 4.0W|AXN Sci Fi|TV|Series|
0929:0093|Boom 4.0W|Animal Planet Eastern Europe|TV|Documentaries|
0929:0094|Boom 4.0W|CNN International Europe|TV|News|
0929:0095|Boom 4.0W|Realitatea TV|TV|News|
0929:0096|Boom 4.0W|Discovery World|TV|Documentaries|
0929:0097|Boom 4.0W|U (Romania)|TV|Music|
0929:0098|Boom 4.0W|VH-1 (Video Hits One)|TV|Music|
0929:0099|Boom 4.0W|Discovery Travel & Living UK|TV|Documentaries|
0929:009A|Boom 4.0W|Discovery Science Channel|TV|Technology|
0929:009B|Boom 4.0W|Antena 1|TV|General|
0929:009C|Boom 4.0W|Boomerang|TV|Children|
0929:009D|Boom 4.0W|Discovery Channel Romania|TV|Documentaries|
0929:009E|Boom 4.0W|Antena 2|TV|General|
0929:00A0|Boom 4.0W|Animax|TV|Children|
0929:00A0|Boom 4.0W|MiniMax Romania|TV|Children|
0929:00A5|Boom 4.0W|The Money Channel Romania|TV|Business|
0929:00B3|Boom 4.0W|Taraf TV|TV|Music|
0929:0061|Boom 4.0W|boom music|RADIO||
0929:00A9|Boom 4.0W|Radio Guerrilla|RADIO||
0929:0065|Boom 4.0W|TVR 1|TV|General|
0929:0066|Boom 4.0W|TVR 2|TV|General|
0929:0067|Boom 4.0W|Pro TV|TV|General|
0929:0068|Boom 4.0W|Acasá TV|TV|General|
0929:0069|Boom 4.0W|TV 1000 Balkan|TV|Movies|
0929:006A|Boom 4.0W|Pro Cinema|TV|Movies|
0929:006B|Boom 4.0W|HBO Romania|TV|Movies|
0929:006C|Boom 4.0W|AXN Central Europe|TV|Series|
0929:006D|Boom 4.0W|Cinemax East Europe|TV|Movies|
0929:006E|Boom 4.0W|History|TV|Documentaries|
0929:006F|Boom 4.0W|Disney Channel Romania, Bulgaria & Ukraine|TV|Children|
0929:0070|Boom 4.0W|Cartoon Network Eastern Europe|TV|Children|
0929:0071|Boom 4.0W|TCM - Turner Classic Movies|TV|Movies|
0929:0072|Boom 4.0W|Antena 3 Romania|TV|News|
0929:0073|Boom 4.0W|Euforia Lifestyle TV|TV|Lifestyle|
0929:0074|Boom 4.0W|Prima TV|TV|General|
0929:0075|Boom 4.0W|Private Spice|TV|Porn|
0929:0077|Boom 4.0W|AXN Crime|TV|Series|
0929:0078|Boom 4.0W|Duna TV|TV|General|
0929:00A4|Boom 4.0W|MTV Romania|TV|Music|
0929:00A7|Boom 4.0W|OTV Romania|TV|Various|
0929:007A|Boom 4.0W|Extreme Sports|TV|Sport|
0929:007B|Boom 4.0W|SportKlub Romania|TV|Sport|
0929:007C|Boom 4.0W|Viasat History|TV|History|
0929:007D|Boom 4.0W|National Geographic Romania|TV|Documentaries|
0929:007E|Boom 4.0W|TVR Cultural|TV|Cultural|
0929:007F|Boom 4.0W|Favorit TV|TV|General|
0929:0080|Boom 4.0W|Kanal D Romania|TV|General|
0929:0081|Boom 4.0W|Boom Sport Two|TV|Sport|
0929:0082|Boom 4.0W|Smarty|TV|Children|
0929:0083|Boom 4.0W|Boom Indian|TV|Movies|
0929:0084|Boom 4.0W|Boom Comedy|TV|Movies|
0929:0085|Boom 4.0W|Boom Hop!|TV|Children|
0929:0086|Boom 4.0W|Boom Action|TV|Movies|
0929:0087|Boom 4.0W|Boom Drama|TV|Movies|
0929:0088|Boom 4.0W|Sport.ro|TV|Sport|
0929:0089|Boom 4.0W|Dolce Sport|TV|Sport|
0929:008A|Boom 4.0W|Musicmax Adult|TV|Porn|
0929:008B|Boom 4.0W|Dolce Sport 2|TV|Sport|
0929:008C|Boom 4.0W|Playboy TV|TV|Erotic|
0929:00A2|Boom 4.0W|BBC World News|TV|News|
0929:00A6|Boom 4.0W|TV5 Monde Europe|TV|General|
0929:00AC|Boom 4.0W|TVR Info|TV|News|
0929:0001|Boom 4.0W|Bucuresti 1 TV|TV|General|
```

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


## N

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
#  N
0B01,0500:0007|N|Baby TV
0B01:0DAD|N|Discovery Travel & Living Polska
0B01:0DAE|N|Discovery Science Polska
0B01:0DAF|N|Animal Planet Eastern Europe
0B01:0DB0|N|Discovery World Polska
0B01:0DB1|N|Discovery Channel Polska
0B01:0DB2|N|Discovery Historia Polska
0B01:0DB3|N|Kino Polska
0B01:0DB4|N|Movies 24 Eastern Europe
0B01:0DB5|N|KidsCo
0B01:0DB6|N|AXN Crime Poland
0B01:0DB7|N|AXN Sci-Fi Poland
0B01:0DBB|N|Eska TV
0B01:0DDF|N|HBO Polska (Home Box Office)
0B01:0DE0|N|HBO 2 Polska
0B01:0DE1|N|HBO Comedy
0B01:0DE8|N|Invoice
0B01:12C7|N|TVP 1
0B01:12C8|N|TVP 2
0B01:1D2A|N|Disney Channel Polska
0B01:0001|N|MTVNHD
0B01:0002|N|MTV Polska
0B01:0004|N|VH-1 Polska
0B01:000A|N|Comedy Central Polska
0B01:35E9|N|Eurosport 2
0B01:3607|N|Eurosport
0B01:3AFD|N|Wojna i Pokoj
0B01:3AFE|N|nTalk
0B01:3AFF|N|AXN Polska
0B01:3B00|N|JimJam EMEA
0B01:3B01|N|TVP Historia
0B01:3B02|N|Da Vinci Learning
0B01:3B03|N|Jetix Polska
0B01:3B04|N|Sport Klub +
0B01:3B05|N|Cartoon Network Eastern Europe
0B01:3B06|N|Sport Klub Poland
0B01:3B08|N|MTV2 Europe
0B01:3B09|N|ESPN America
0B01:3B0B|N|Boomerang
0B01:3B0C|N|Cinemax East Europe
0B01:3B0D|N|Cinemax 2 Central Europe
0B01:3B0E|N|Jetix Play
0B01:3B10|N|OTV Poland
0B01:3B14|N|TVN International Europe
0B01:3B61|N|HBO HD Polska
0B01:3B62|N|TVP HD
0B01:3B1B|N|R1
0B01:3305|N|Eurosport HD
0B01:10D7|N|TVN
0B01:10D8|N|TVN 24
0B01:10D9|N|TVN Siedem
0B01:10DE|N|TVN Meteo
0B01:10DF|N|TVN Turbo
0B01:10E0|N|TVN Style
0B01:10E2|N|TVN CNBC Biznes
0B01:3AB7|N|MGM HD Polska
0B01:3AB8|N|Discovery HD UK
0B01:3AB9|N|nSport
0B01:3ABA|N|Filmbox HD
0B01:3ABB|N|TVN HD
0B01:3AD4|N|Invoice
0B01:001E|N|Nickelodeon Polska
0B01:13F6|N|TVP Info
0B01:3DBA|N|TVN Lingua
0B01:3DBB|N|Religia.TV
0B01:3DBC|N|nSport
0B01:3DBD|N|TVP Sport
0B01:3DBE|N|FilmBox Polska
0B01:3DBF|N|FilmBox Extra Polska
0B01:3DC0|N|Filmbox Family
0B01:3A35|N|Universal Eastern Europe
0B01:3A36|N|Sci-Fi Eastern Europe
0B01:2011|N|CNN International Europe
```

## N & Akta (Max TV)

```
#  N & Akta (Max TV)
0500:3A35|N & Akta (Max TV)|Universal Eastern Europe
0500:3A36|N & Akta (Max TV)|Sci-Fi Eastern Europe
```

## RTV

```
#  RTV
0500:0C81|RTV|SLO-TV 1
0500:0C82|RTV|SLO-TV 2
```

## digital media centre

```
#  digital media centre
0500:1251|digital media centre|Private Spice
0500:0076|digital media centre|Private Spice
```

## Belgacom

```
#  Belgacom
0604:2971|Belgacom|Ary Digital
0604:2981|Belgacom|B4u Movies
0608:2980|Belgacom|Zee Cinema
0608:296C|Belgacom|Zee Tv
```

## UPC Direct

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
#  UPC Direct
0D02:6FFA|UPC Direct|VH1
0D02:07E9|UPC Direct|Eurosport
0D02:3335|UPC Direct|ESPN America
0D02:4F4D|UPC Direct|Nova Sport
0D02:4F4E|UPC Direct|Animal Planet Eastern Europe
0D02:4F4F|UPC Direct|Discovery Channel Hungary
0D02:4F50|UPC Direct|JimJam
0D02:4F51|UPC Direct|Jetix Eastern Europe
0D02:4F52|UPC Direct|National Geographic Polska
0D02:4F53|UPC Direct|HBO Comedy
0D02:4F54|UPC Direct|Hallmark Central Europe
0D02:4F55|UPC Direct|Hustler TV
0D02:4F56|UPC Direct|ZoneReality
0D02:4F57|UPC Direct|Extreme Sports
0D02:4F5B|UPC Direct|CT 1
0D02:4F5D|UPC Direct|Nova Cinema (Cz)
0D02:4F5E|UPC Direct|CT 2
0D02:4F5F|UPC Direct|Markiza TV
0D02:4F60|UPC Direct|J@J
0D02:4F61|UPC Direct|TV Nova
0D02:4F62|UPC Direct|XXX Xtreme
0D02:4F63|UPC Direct|Prima Televize
0D02:4F64|UPC Direct|TV Barrandov
0D02:4F65|UPC Direct|FilmMuzeum
0D02:4F66|UPC Direct|CT4 Sport
0D02:4F67|UPC Direct|Echo TV
0D02:4F68|UPC Direct|HBO 2 Central Europe
0D02:4F69|UPC Direct|HBO Hungary
0D02:4F6A|UPC Direct|HBO Czechia & Slovakia
0D02:4F6B|UPC Direct|Duna TV
0D02:4F6C|UPC Direct|TV Paprika
0D02:4F6D|UPC Direct|Magyar ATV
0D02:4F6E|UPC Direct|Cool TV
0D02:4F6F|UPC Direct|TV Deko
0D02:4F70|UPC Direct|Sport 1 Hungary
0D02:4F71|UPC Direct|Magyar TV 2
0D02:4F72|UPC Direct|Minimax Hungary
0D02:4F73|UPC Direct|Sport 2 Hungary
0D02:4F74|UPC Direct|Film +
0D02:4F75|UPC Direct|TCM Eastern Europe
0D02:4F76|UPC Direct|Viasat 3
0D02:4F77|UPC Direct|Boomerang
0D02:4F78|UPC Direct|Viasat Explorer
0D02:4F79|UPC Direct|Viasat History
0D02:4F7A|UPC Direct|STV 1
0D02:4F7B|UPC Direct|TA 3
0D02:4F7C|UPC Direct|Travel Channel
0D02:4F7D|UPC Direct|MGM Eastern Europe
0D02:4F7E|UPC Direct|BeBe TV
0D02:4F7F|UPC Direct|Comedy Central
0D02:4F80|UPC Direct|AXN Central Europe
0D02:4F81|UPC Direct|Blue Hustler
0D02:4F82|UPC Direct|Hir TV
0D02:4F84|UPC Direct|MTV Hungary
0D02:4F85|UPC Direct|Cinemax East Europe
0D02:4F86|UPC Direct|FEM 3
0D02:4F87|UPC Direct|RTL Klub
0D02:4F88|UPC Direct|Spektrum Int
0D02:4F89|UPC Direct|SportKlub
0D02:4F8A|UPC Direct|Film + Czechia & Slovakia
0D02:4F8B|UPC Direct|TV 2 (Hungary)
0D02:4F8C|UPC Direct|Sport 1 Czechia & Slovakia
0D02:4F8D|UPC Direct|Viva TV Hungary
0D02:4F8E|UPC Direct|Eurosport 2
0D02:4F8F|UPC Direct|Eurosport 2 Romania & Hungary
0D02:4FE2|UPC Direct|Bart?k R?di?
0D02:6FEE|UPC Direct|MTV Hits
0D02:6FEF|UPC Direct|MTV Dance
0D02:6FF0|UPC Direct|VH-1 (Video Hits One)
0D02:6FF1|UPC Direct|VH-1 Classic
0D02:6FF3|UPC Direct|MTV2 Europe
0D02:6FFF|UPC Direct|MTV Music
0D02:7000|UPC Direct|MTV Europe
```

## UPC Direct - M1

```
#  UPC Direct - M1
0D02:4F83|UPC Direct - M1|Magyar TV
```

## UPC Direct - Petofi Radio

```
#  UPC Direct - Petofi Radio
0D02:4FE3|UPC Direct - Petofi Radio|MR2
```

## UPC Direct - Kossuth Radio

```
#  UPC Direct - Kossuth Radio
0D02:4FE4|UPC Direct - Kossuth Radio|MR1
```

## UPC 1W

```
#  UPC 1W
0D02:00C9|UPC 1W|National Geographic UK
0D02:00CB|UPC 1W|Travel Channel
0D02:00CC|UPC 1W|VH1
0D02:03E9|UPC 1W|BBC World News
0D02:03EE|UPC 1W|FISHING AND HUNTING
0D02:03EF|UPC 1W|DOQ
0D02:03F5|UPC 1W|Sky News
0D02:0648|UPC 1W|Eurosport 2 NEE
0D02:0726|UPC 1W|Bloomberg
0D02:0B60|UPC 1W|Al Jazeera English
0D02:0B77|UPC 1W|ESPN America HD
0D02:0EDD|UPC 1W|Rush HD
0D02:106A|UPC 1W|History Channel HD Nordic
0D02:7595|UPC 1W|HBO Hungary
0D02:7596|UPC 1W|NOVA CINEMA
0D02:7597|UPC 1W|CS FILM/MINI
0D02:7598|UPC 1W|SPORT 1 Hungary
0D02:7599|UPC 1W|Eurosport 2
0D02:759A|UPC 1W|CT 1
0D02:759B|UPC 1W|TV MARKIZA
0D02:759C|UPC 1W|TA 3/Ring TV
0D02:759D|UPC 1W|PRIMA TV
0D02:759E|UPC 1W|TV DOMA
0D02:759F|UPC 1W|SPEKTRUM International
0D02:75A0|UPC 1W|TV PAPRIKA
0D02:75F9|UPC 1W|COMEDY CENTRAL
0D02:75FA|UPC 1W|HBO Czechia
0D02:75FB|UPC 1W|FILM + Hungary
0D02:75FC|UPC 1W|NOVA Sport
0D02:75FD|UPC 1W|SPORT 2 Hungary
0D02:75FE|UPC 1W|CT 2
0D02:75FF|UPC 1W|TV JOJ
0D02:7600|UPC 1W|TV BARANDOV
0D02:7601|UPC 1W|Viva TV (Hungary)
0D02:7602|UPC 1W|TV 2 (Hungary)
0D02:7603|UPC 1W|MAGYAR ATV
0D02:7604|UPC 1W|Echo TV
0D02:7605|UPC 1W|Z1
0D02:7606|UPC 1W|SPORT 2 Czechia
0D02:765D|UPC 1W|FILM + Czechia
0D02:765E|UPC 1W|SPORT 1 Czechia
0D02:765F|UPC 1W|SPORT Klub Hungary
0D02:7660|UPC 1W|STV 2
0D02:7661|UPC 1W|TV NOVA
0D02:7662|UPC 1W|STV 1
0D02:7663|UPC 1W|MTV HUNGARY
0D02:7664|UPC 1W|Cool TV (Hungary)
0D02:7665|UPC 1W|MINIMAX/Anime+ Czechia (06-20)
0D02:7666|UPC 1W|TV DEKO
0D02:7667|UPC 1W|VIASAT 3
0D02:7668|UPC 1W|OCKO
0D02:7669|UPC 1W|PRIMA COOL
0D02:766A|UPC 1W|STV 3
0D02:772C|UPC 1W|FILMBOX FAMILY
0D02:772F|UPC 1W|RTL Klub
0D02:7734|UPC 1W|TV 6
0D02:778D|UPC 1W|M1
0D02:778F|UPC 1W|M2
0D02:7790|UPC 1W|HIR TV
0D02:7792|UPC 1W|CNN ENTERTIMENT
0D02:7798|UPC 1W|VH1 Classic
0D02:77ED|UPC 1W|Extreme SPORTs Channel
0D02:77EE|UPC 1W|JIMJAM
0D02:77EF|UPC 1W|DISNEY channel Hungary Czechia
0D02:77F0|UPC 1W|Animal Planet Africa
0D02:77F1|UPC 1W|HBO 2 Central Europe
0D02:77F2|UPC 1W|CT 4 SPORT
0D02:77F3|UPC 1W|Hallmark East Europe
0D02:77F4|UPC 1W|AXN Central Europe
0D02:77F5|UPC 1W|CINEMAX Central Europe
0D02:77F6|UPC 1W|Boomerang Europe
0D02:77F7|UPC 1W|NAT GEO WILD
0D02:7852|UPC 1W|Cartoon Network/TCM Central Europe
0D02:7853|UPC 1W|bebe TV
0D02:7854|UPC 1W|NAT Geo Hungary Czechia
0D02:7855|UPC 1W|Hustler TV Europe
0D02:7856|UPC 1W|VIASAT History
0D02:7857|UPC 1W|MGM Central Europe
0D02:7858|UPC 1W|ESPN AMERIKA
0D02:7859|UPC 1W|MTV HITS
0D02:785A|UPC 1W|MTV 2
0D02:785B|UPC 1W|AXN CRIMI
0D02:785C|UPC 1W|MTV CZECH
0D02:785D|UPC 1W|4 STORY TV
0D02:785E|UPC 1W|HISTORY CHANNEL
0D02:78B5|UPC 1W|Eurosport
0D02:78B6|UPC 1W|MTV EUROPE
0D02:78B7|UPC 1W|DISCOVERY Channel Hungary
0D02:78B8|UPC 1W|VIASAT Explorer
0D02:78B9|UPC 1W|Zone Club Europe
0D02:78BA|UPC 1W|AXN SCIFI
0D02:78BB|UPC 1W|MTV DANCE
0D02:78BC|UPC 1W|HBO Commedy
0D02:78BD|UPC 1W|XXX Xtreme
0D02:78BE|UPC 1W|NICKELODEON
0D02:78BF|UPC 1W|SPORT 5
0D02:78C0|UPC 1W|Fem3
0D02:78C1|UPC 1W|JOJ PLUS
0D02:78C2|UPC 1W|CINEMAX 2 Central Europe [CW2]
0D02:78C3|UPC 1W|Blue Hustler Europe (23-05)
0D02:791E|UPC 1W|HaBO HD
```

## BFBS

```
#  BFBS
0D07:1F41|BFBS|BFBS 1
0D07:1F42|BFBS|BFBS 2
0D07:1F43|BFBS|BFBS 3
0D07:1F44|BFBS|BFBS 4
0D07:1F45|BFBS|BFBS 5
0D07:1F46|BFBS|BFBS 6
0D07:1F47|BFBS|BFBS 7
0D07:1F48|BFBS|BFBS 8
0D07:1F49|BFBS|BFBS 9
0D07:1F4A|BFBS|BFBS 10
```

## HRT

```
#  HRT
0500:206d|HRT|HRT-TV 1
0500:206e|HRT|HRT-TV 2
0500:206f|HRT|HRT PLUS
```

## HTB+ 5 Kanal

```
#  HTB+ 5 Kanal
0500:791e|HTB+ 5 Kanal|St.Peterburg
```

## DigitAlb

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
#  DigitAlb
0B00:0385|DigitAlb|Top Channel
0B00:0386|DigitAlb|Top News
0B00:0387|DigitAlb|My Music
0B00:0388|DigitAlb|Bang Bang
0B00:0389|DigitAlb|Cufo TV
0B00:038A|DigitAlb|Junior TV Albania
0B00:038B|DigitAlb|Explorer shkence
0B00:038C|DigitAlb|Explorer histori
0B00:038D|DigitAlb|Explorer natyra
0B00:038E|DigitAlb|Digi +
0B00:038F|DigitAlb|Film Autor
0B00:0390|DigitAlb|Film Hits
0B00:0391|DigitAlb|Film Thriller
0B00:03E9|DigitAlb|Film Drame
0B00:03EA|DigitAlb|Film Aksion
0B00:03EB|DigitAlb|Film Komedi
0B00:03EE|DigitAlb|X1
0B00:03EF|DigitAlb|X2
0B00:03F1|DigitAlb|Big Brother1
0B00:03F2|DigitAlb|Big Brother2
0B00:03F3|DigitAlb|T
0B00:044C|DigitAlb|SuperSport HD-1
0B00:044D|DigitAlb|SuperSport HD-2
0B00:044E|DigitAlb|A1
0B00:044F|DigitAlb|BBF
0B00:0450|DigitAlb|Supersonic TV
0B00:0451|DigitAlb|Tirana TV
0B00:0452|DigitAlb|National Geographic Romania
0B00:0453|DigitAlb|NatGeo Wild Romania
0B00:0454|DigitAlb|Travel Channel
0B00:0455|DigitAlb|MGM Eastern Europe
0B00:0456|DigitAlb|Fox Life
0B00:0457|DigitAlb|Fox Crime
0B00:0458|DigitAlb|Cartoon Network
0B00:0459|DigitAlb|X3
0B00:045A|DigitAlb|X4
0B00:0848|DigitAlb|SuperSport 1 (Albania)
0B00:085C|DigitAlb|SuperSport 2 (Albania)
0B00:0870|DigitAlb|SuperSport 3 (Albania)
0B00:0884|DigitAlb|SuperSport 4 (Albania)
0B00:0898|DigitAlb|SuperSport 5 (Albania)
0B00:08AC|DigitAlb|TV Klan
0B00:08C0|DigitAlb|News 24 Albania
0B00:08D4|DigitAlb|Digi Gold
0B00:08E8|DigitAlb|MusicAL
0B00:08FC|DigitAlb|Koha TV Albania
0B00:0910|DigitAlb|TV Shqiptar
0B00:0924|DigitAlb|Ora News
0B00:0938|DigitAlb|Kohavision
0B00:094C|DigitAlb|RTV 21 Sat
0B00:0961|DigitAlb|DigitAlb HD-1
0B00:0962|DigitAlb|DigitAlb HD-2
0B00:0963|DigitAlb|DigitAlb HD-3
0B00:0964|DigitAlb|National Geographic UK
0B00:1824|DigitAlb|TeleNorba
0B00:0965|DigitAlb|SuperSport HD-1
0B00:0966|DigitAlb|SuperSport HD-2
0B00:03EC|DigitAlb|National Geographic Romania
0B00:03ED|DigitAlb|NatGeo Wild Romania
0B00:03F0|DigitAlb|XXX
0B00:03F4|DigitAlb|Fox Life
0B00:03F5|DigitAlb|Fox Crime
0B00:03F6|DigitAlb|Cartoon Network
0B00:03F7|DigitAlb|TeleNorba
0B00:03F8|DigitAlb|BBF
0B00:03F9|DigitAlb|Tirana TV
0B00:03FA|DigitAlb|Supersonic TV
0B00:03FB|DigitAlb|TVA Albania
0B00:0834|DigitAlb|DigitAlb promo
```

## Conto

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
#  Conto
0B00:20EB|Conto|Conto Tv3
0B00:20EC|Conto|Conto Tv2
0B00:20ED|Conto|Conto TvPremium
0B00:20EF|Conto|Conto Tv4
```

## MTV Networks

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
#  MTV Networks
0D00,0B00:6FEE|MTV Networks|MTV Hits
0D00,0B00:6FEF|MTV Networks|MTV Dance
0D00,0B00:6FF0|MTV Networks|VH-1 (Video Hits One)
0D00,0B00:6FF1|MTV Networks|VH-1 Classic
0D00,0B00:6FF3|MTV Networks|MTV Rocks
0D00,0B00:6FFA|MTV Networks|VH1
0D00,0B00:6FFF|MTV Networks|MTV Music
0B00,0D00:0001|MTV Networks|MTVNHD
0B00,0D00:0002|MTV Networks|MTV Polska
0B00,0D00:0004|MTV Networks|VH-1 Polska
0D00:0006|MTV Networks|MTV Europe
0D00:0007|MTV Networks|VH-1 (Video Hits One)
0B00,0D00:000A|MTV Networks|Comedy Central Polska
0D00:000B|MTV Networks|Nickelodeon
0D00:0016|MTV Networks|MTV Polska.
0D00:0018|MTV Networks|VH1 Polska.
0D00:6FEB|MTV Networks|MTV Spain
0D00:6FEC|MTV Networks|MTV France
0D00:6FF4|MTV Networks|Nick Spain
0D00:6FF5|MTV Networks|MTV Base France
0D00:6FF7|MTV Networks|Game One
0D00:6FF8|MTV Networks|MTV Hits
0D00:6FFB|MTV Networks|VH1 Classic
0D00:6FFC|MTV Networks|Nickelodeon France
0D00:6FFD|MTV Networks|MTV TWO
0D00:7013|MTV Networks|MTV ESP
0D00:6FB8|MTV Networks|MTVNHD
0D00:7000|MTV Networks|MTV Europe
0D00:7002|MTV Networks|MTV Pulse
0D00:7007|MTV Networks|MTV Nederland
0D00:7009|MTV Networks|MTV Entertainment
0D00:700A|MTV Networks|Nick Premium
```



## TSA

```
#  TSA
0604,0500:4EE9|TSA|Sex Erotic
0604,0500:4EEA|TSA|Sex Voyeur
0604,0500:4EEC|TSA|Sex Fantasy
0604,0500:4EEF|TSA|Sex Hot
0604,0500:4EF0|TSA|Sex Girls
0604,0500:4EF2|TSA|Sex Black
0500:35C6|TSA|Satisfaction Channel Television
```

## Harmonic

```
#  Harmonic
0604,0500:35C0|Harmonic|Satisfaction TV
0604,0500:35C1|Harmonic|Satisfaction Golden Girls
0604,0500:35C2|Harmonic|Satisfaction plus
0604,0500:35C4|Harmonic|Satisfaction TV
0604,0500:35C3|Harmonic|Satisfaction ITALY
0604,0500:35C6|Harmonic|Satisfaction Prive
```

## Digital+ (30W)

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
#  Digital+ (30W)
1810:05DC|Digital+ (30W)|Canal+ Spain HD
1810:05DE|Digital+ (30W)|Canal+ D Cine HD
1810:05DF|Digital+ (30W)|Canal+ Deporte HD
1810:002F|Digital+ (30W)|TCM Clásico
1810:0039|Digital+ (30W)|Real Madrid TV
1810:0046|Digital+ (30W)|CNN+
1810:0098|Digital+ (30W)|Canal de las Estrellas
1810:00A0|Digital+ (30W)|Pro TV International
1810:00A1|Digital+ (30W)|RAD. ROMANIA
1810:0001|Digital+ (30W)|Canal+ Spain
1810:0002|Digital+ (30W)|Canal+ 2
1810:0017|Digital+ (30W)|Paramount Comedy Channel Spain
1810:001E|Digital+ (30W)|Disney Channel Spain
1810:002E|Digital+ (30W)|TCM Moderno
1810:0036|Digital+ (30W)|Sportmania
1810:0038|Digital+ (30W)|Teledeporte
1810:003E|Digital+ (30W)|Discovery Channel Spain & Portugal
1810:0043|Digital+ (30W)|Cultural.es
1810:0050|Digital+ (30W)|40 TV
1810:0005|Digital+ (30W)|Canal+ Acción
1810:0006|Digital+ (30W)|Canal+ Comedia
1810:0007|Digital+ (30W)|Canal+ D Cine
1810:0011|Digital+ (30W)|SET en Veo
1810:001B|Digital+ (30W)|MTV Spain
1810:001D|Digital+ (30W)|Jetix Spain
1810:001F|Digital+ (30W)|Disney Channel +1
1810:0020|Digital+ (30W)|Playhouse Disney
1810:0022|Digital+ (30W)|Nick Spain +1
1810:0024|Digital+ (30W)|Cartoon Network +1
1810:0045|Digital+ (30W)|Decasa TV
1810:0099|Digital+ (30W)|Telefe Internacional
1810:000A|Digital+ (30W)|Canal+ Eventos
1810:003A|Digital+ (30W)|Bar?a TV
1810:0069|Digital+ (30W)|Taquilla 5
1810:006A|Digital+ (30W)|Taquilla 6
1810:006B|Digital+ (30W)|Taquilla 7
1810:006C|Digital+ (30W)|Taquilla 8
1810:006D|Digital+ (30W)|Taquilla 9
1810:0072|Digital+ (30W)|Feria de Abril
1810:0078|Digital+ (30W)|Taquilla X
1810:0079|Digital+ (30W)|Taquilla X
1810:007A|Digital+ (30W)|Taquilla XX Hard
1810:007B|Digital+ (30W)|MULTI-X
1810:007D|Digital+ (30W)|MULTI-X (1)
1810:007E|Digital+ (30W)|MULTI-X (2)
1810:007F|Digital+ (30W)|MULTI-X (3)
1810:0013|Digital+ (30W)|Fama 24H
1810:001A|Digital+ (30W)|Cosmopolitan TV
1810:0027|Digital+ (30W)|BabyFirst
1810:003B|Digital+ (30W)|Caza y Pesca
1810:003C|Digital+ (30W)|Odisea
1810:003F|Digital+ (30W)|Viajar
1810:0040|Digital+ (30W)|Canal de Historia
1810:0041|Digital+ (30W)|Biography Channel Spain & Portugal
1810:0047|Digital+ (30W)|Canal 24 Horas
1810:0048|Digital+ (30W)|M?teo
1810:004A|Digital+ (30W)|Bloomberg Europe
1810:0BB9|Digital+ (30W)|Baby First
1810:0BBA|Digital+ (30W)|Odisse?a
1810:0BBB|Digital+ (30W)|Canal de Hist?ria
1810:0BBC|Digital+ (30W)|Bloomberg
1810:000B|Digital+ (30W)|TVE 1
1810:0015|Digital+ (30W)|Fox Spain
1810:0016|Digital+ (30W)|AXN
1810:0019|Digital+ (30W)|Sci-Fi Spain
1810:002B|Digital+ (30W)|Canal+ Acción +30
1810:002C|Digital+ (30W)|Canal+ Comedia +30
1810:0031|Digital+ (30W)|D Cine Espa?ol
1810:0042|Digital+ (30W)|Canal Cocina
1810:0096|Digital+ (30W)|Ecuavisa Internacional
1810:0097|Digital+ (30W)|Caracol Internacional
1810:000F|Digital+ (30W)|TeleCinco
1810:001C|Digital+ (30W)|Animax
1810:0021|Digital+ (30W)|Nick Spain
1810:0023|Digital+ (30W)|Cartoon Network
1810:0025|Digital+ (30W)|Boomerang Spain
1810:0065|Digital+ (30W)|Taquilla 1
1810:0066|Digital+ (30W)|Taquilla 2
1810:0067|Digital+ (30W)|Taquilla 3
1810:0068|Digital+ (30W)|Taquilla 4
1810:007C|Digital+ (30W)|Taquilla XY
1810:0003|Digital+ (30W)|Canal+ ...30
1810:0008|Digital+ (30W)|Canal+ Fútbol
1810:0009|Digital+ (30W)|Canal+ Deportes
1810:000D|Digital+ (30W)|Antena 3
1810:0014|Digital+ (30W)|Calle 13
1810:0035|Digital+ (30W)|Golf +
1810:003D|Digital+ (30W)|National Geographic Spain
1810:004D|Digital+ (30W)|Fox News
1810:0051|Digital+ (30W)|40 Latino
1810:0063|Digital+ (30W)|Playboy TV
1810:0004|Digital+ (30W)|Cuatro
1810:000C|Digital+ (30W)|TVE 2
1810:0010|Digital+ (30W)|La Sexta
1810:0026|Digital+ (30W)|Clan TVE
1810:002D|Digital+ (30W)|TNT (Spain)
1810:0030|Digital+ (30W)|Canal Hollywood
1810:0037|Digital+ (30W)|Eurosport
1810:0044|Digital+ (30W)|Hogarutil
1810:0055|Digital+ (30W)|Canal Cl?sico
1810:009D|Digital+ (30W)|Telenovelas
```

## DIGI TV

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
#  DIGI TV
1880,1802:03E9|DIGI TV|TVR 1
1880,1802:03EB|DIGI TV|Antena 1
1880,1802:03ED|DIGI TV|TVR 2
1880,1802:03EE|DIGI TV|Prima TV
1880,1802:03EF|DIGI TV|Realitatea TV
1880,1802:03F0|DIGI TV|B1
1880,1802:03F1|DIGI TV|National TV
1880,1802:03F2|DIGI TV|N24
1880,1802:03F4|DIGI TV|Hallmark
1880,1802:03F5|DIGI TV|DigiSport HU
1880,1802:03F7|DIGI TV|Sport RO
1880,1802:03F8|DIGI TV|Eurosport
1880,1802:03F9|DIGI TV|Jetix
1880,1802:03FA|DIGI TV|Minimax RO
1880,1802:03FB|DIGI TV|Kiss TV
1880,1802:03FC|DIGI TV|MTV RO
1880,1802:03FD|DIGI TV|VH 1
1880,1802:03FE|DIGI TV|Etno
1880,1802:03FF|DIGI TV|Cinemax
1880,1802:0400|DIGI TV|HBO Romaina
1880,1802:0402|DIGI TV|Discovery CE
1880,1802:0403|DIGI TV|Animal Planet
1880,1802:0404|DIGI TV|Discovery World
1880,1802:0405|DIGI TV|Discovery Sci Fi
1880,1802:0406|DIGI TV|Discovery T&L
1880,1802:0407|DIGI TV|National Geografic
1880,1802:0408|DIGI TV|Reality
1880,1802:0409|DIGI TV|Private Spice
1880,1802:041A|DIGI TV|Pro TV
1880,1802:0424|DIGI TV|ACASA TV
1880,1802:0492|DIGI TV|Pro Cinema
1880,1802:0497|DIGI TV|Romantica RO
1880,1802:049C|DIGI TV|AXN
1880,1802:04A1|DIGI TV|Antena 2
1880,1802:04A6|DIGI TV|Hir TV
1880,1802:04B0|DIGI TV|Pro Tv International
1880,1802:054A|DIGI TV|Viasat Explorer
1880,1802:054E|DIGI TV|Viasat History
1880,1802:0550|DIGI TV|Cartoon/TCM
1880,1802:0555|DIGI TV|Hallmark CE
1880,1802:055A|DIGI TV|Antena 3
1880,1802:055C|DIGI TV|Euforia
1880,1802:055F|DIGI TV|Favorit TV
1880,1802:0564|DIGI TV|TV 2
1880,1802:056E|DIGI TV|Minimax HU/SK
1880,1802:05E6|DIGI TV|RTL Klub
1880,1802:05E8|DIGI TV|ATV
1880,1802:05F0|DIGI TV|Film+
1880,1802:05FA|DIGI TV|Cool TV
1880,1802:0604|DIGI TV|Duna TV
1880,1802:060E|DIGI TV|DigiSport RO
1880,1802:0618|DIGI TV|M1
1880,1802:0622|DIGI TV|Viasat 3
1802:062C|DIGI TV|TV 1000
1880,1802:0A0A|DIGI TV|Jetix CE
1880,1802:0A14|DIGI TV|MTV HU
1880,1802:0A1E|DIGI TV|Viva TV
1880,1802:0A28|DIGI TV|Romantica HU
1880,1802:0A32|DIGI TV|Sport 1
1880,1802:0A3C|DIGI TV|Sport 2
1880,1802:0A46|DIGI TV|HBO 2
1880,1802:0A50|DIGI TV|4 Story TV
1880,1802:0A5A|DIGI TV|Travel
1880,1802:0A64|DIGI TV|HBO Hungaria
1880,1802:0A6E|DIGI TV|Spektrum
1880,1802:0A82|DIGI TV|Sport Klub HU
1880,1802:0A8C|DIGI TV|M2
1880,1802:0A96|DIGI TV|Film+ CE
1880,1802:0AA0|DIGI TV|Discovery CH
1880,1802:0AAA|DIGI TV|Music Box
1880,1802:0ABE|DIGI TV|Reality CE
1880,1802:0AC8|DIGI TV|Markiza
1880,1802:0AD2|DIGI TV|Joj
1880,1802:0ADC|DIGI TV|TA 3
1880,1802:0AE6|DIGI TV|Animal Planet CE
1880,1802:0AFA|DIGI TV|HBO CE
1880,1802:0B04|DIGI TV|Nova Sport
1880,1802:0B0E|DIGI TV|Ocko
1802:0B18|DIGI TV|RTV Severin
1880,1802:0B22|DIGI TV|Eurosport 2
1880,1802:0B36|DIGI TV|Sport 1 SK/CZ
1880,1802:0B40|DIGI TV|STV 1
1880,1802:0B4A|DIGI TV|STV 2
1880,1802:0B50|DIGI TV|National Geografic CE
1880,1802:0B54|DIGI TV|CT1
1880,1802:0B5E|DIGI TV|CT2
1880,1802:0B72|DIGI TV|CT4 Sport
1880,1802:0B77|DIGI TV|Prima CZ
1880,1802:0B86|DIGI TV|Kanal D
1880,1802:0B90|DIGI TV|Taraf TV
1880,1802:0B9A|DIGI TV|Echo TV
1880,1802:0BA4|DIGI TV|Nova CZ
1880,1802:0BB8|DIGI TV|Nova TV
1880,1802:0BC2|DIGI TV|RTS 1
1880,1802:0BCC|DIGI TV|OBN
1880,1802:0BD6|DIGI TV|RTS 2
1880,1802:0BE0|DIGI TV|RTV 1
1880,1802:0BEA|DIGI TV|RTL Televijia
1880,1802:0BF4|DIGI TV|Paprika
1880,1802:0BFE|DIGI TV|DM Sat
1880,1802:0C08|DIGI TV|Z 1
1880,1802:0C1C|DIGI TV|CMC
1880,1802:0C26|DIGI TV|MTV Adria
1880,1802:0C30|DIGI TV|Credo
1880,1802:0C3A|DIGI TV|Joj Plus
1880,1802:0C44|DIGI TV|Analog TV
1802:0C4E|DIGI TV|Galaksija
1880,1802:0C58|DIGI TV|TVR Info
1880,1802:0C62|DIGI TV|STV 3
1880,1802:0C76|DIGI TV|HBO Comedy Adria
1880,1802:0C80|DIGI TV|Fasion
1880,1802:0C94|DIGI TV|B92
1880,1802:0C9E|DIGI TV|TVR Cultural
1880,1802:0CA8|DIGI TV|MTV Europe
1880,1802:0CB2|DIGI TV|Net TV
1880,1802:0CBC|DIGI TV|Kapital Network
1880,1802:0CC6|DIGI TV|TVR 3
1880,1802:0CD0|DIGI TV|Sport Klub+
1802:0CDA|DIGI TV|DoQ
1880,1802:0CE4|DIGI TV|Sport Klub Croatia
1880,1802:0CEE|DIGI TV|HBO Adria
1880,1802:0CF8|DIGI TV|Romantica CE
1880,1802:0D0C|DIGI TV|Nova Cinema
1880,1802:0D16|DIGI TV|Eurosport 2 CE
1880,1802:0D20|DIGI TV|Sport 1 RO
1880,1802:0D2A|DIGI TV|Music Mix
1880,1802:0D34|DIGI TV|CNN
1880,1802:0D3E|DIGI TV|TV5 Europe
1802:0D48|DIGI TV|Fishing&Hunting
1880,1802:0D52|DIGI TV|VTV
1880,1802:0D5C|DIGI TV|TV Neptun
1880,1802:0D70|DIGI TV|AXN Sci Fi
1880,1802:0D7A|DIGI TV|AXN Crime
1880,1802:0D84|DIGI TV|Money Channel
1880,1802:0D8E|DIGI TV|Trinitas
1880,1802:0D98|DIGI TV|HBO Comedy
1880,1802:0DA2|DIGI TV|National Geografic Wild CE
1880,1802:0DB6|DIGI TV|Mezzo
1880,1802:0DC0|DIGI TV|Movies 24 HU
1880,1802:0DD4|DIGI TV|GSP1
1880,1802:0DDE|DIGI TV|Universal
1880,1802:0DE8|DIGI TV|National Geografic Wild RO
1880,1802:0E06|DIGI TV|U TV
1880,1802:0E10|DIGI TV|Zapping TV
1880,1802:0E4C|DIGI TV|Top Shop TV
1880,1802:1770|DIGI TV|Digifilm 1
1880,1802:177A|DIGI TV|Digifilm 2
1880:0DAC|DIGI TV|Boomerang
1880:0FD2|DIGI TV|ActionStar
1880:0FDC|DIGI TV|Comedystar
1880:0FE6|DIGI TV|CineStar Romania
1880:0FF0|DIGI TV|AXN Central Europe
1880:0FFA|DIGI TV|N24 Plus
1880:1004|DIGI TV|Investigation Discovery Europe
1880:100E|DIGI TV|TV Doma
1880:1018|DIGI TV|Movies 24 Eastern Europe
1880:1022|DIGI TV|TVRM Educational
1880:102C|DIGI TV|Service 13-10
1880:1036|DIGI TV|Service 13-11
1880:1040|DIGI TV|Service 13-12
1880:104A|DIGI TV|Service 13-13
1880:03EC|DIGI TV|Digi Sport Hungary
1880:040A|DIGI TV|Discovery Channel Romania
1880:0AB4|DIGI TV|BeBe TV
1880:0FC8|DIGI TV|Radio TV Severin
1880:0636|DIGI TV|TV 1000 Balkan
```

## NC Num?ricable

If you can help, dont hesitate to edit this page!!!
Use the comment line below the editwindow and leave, before saving, a short summary note what you've done for the log.


```
#  NC Num?ricable
0100:1F47|NC Num?ricable|Mezzo
0100:1F4C|NC Num?ricable|MEZZO.
0100:1F4A|NC Num?ricable|i-T?l?
0100:1F55|NC Num?ricable|I>TELE
0100:2267|NC Num?ricable|Trace TV
0100:2270|NC Num?ricable|Motors TV
0100:2261|NC Num?ricable|France 2
0100:2262|NC Num?ricable|France 3
0100:2525|NC Num?ricable|France 4
0100:2135|NC Num?ricable|France 5
0100:2275|NC Num?ricable|FRANCE 2
0100:2276|NC Num?ricable|FRANCE 3
0100:2539|NC Num?ricable|FRANCE 4
0100:218F|NC Num?ricable|FRANCE 5
0100:6F69|NC Num?ricable|Cartoon Network
0100:6F6D|NC Num?ricable|TCM France
0100:6F6F|NC Num?ricable|Boomerang France
0100:6FEC|NC Num?ricable|MTV France
0100:6FEE|NC Num?ricable|MTV Hits
0100:6FEF|NC Num?ricable|MTV Dance
0100:6FF3|NC Num?ricable|MTV2 Europe
0100:6FF5|NC Num?ricable|MTV Base France
0100:7002|NC Num?ricable|MTV Pulse
0100:7003|NC Num?ricable|MTV Idol
0100:6FF0|NC Num?ricable|VH-1 (Video Hits One)
0100:6FF1|NC Num?ricable|VH-1 Classic
0100:6FF7|NC Num?ricable|Game One
0100:6FFC|NC Num?ricable|Nickelodeon France
0100:1F41|NC Num?ricable|Seasons
0100:1F42|NC Num?ricable|Cinecinema Émotion
0100:1F43|NC Num?ricable|Cinecinema Frisson
0100:1F45|NC Num?ricable|Paris Premi?re
0100:1F46|NC Num?ricable|Jimmy
0100:1F48|NC Num?ricable|La Cha?ne M?t?o
0100:1F49|NC Num?ricable|Sport +
0100:1F4B|NC Num?ricable|Histoire
0100:1FD7|NC Num?ricable|Eurosport France
0100:1FD8|NC Num?ricable|TMC (T?l? Monte Carlo)
0100:1FD9|NC Num?ricable|Plan?te
0100:1FDB|NC Num?ricable|Voyage
0100:1FDD|NC Num?ricable|Canal J
0100:1FDE|NC Num?ricable|Sci-Fi Channel France
0100:1FE0|NC Num?ricable|Cuisine.TV
0100:1FE1|NC Num?ricable|Filles TV
0100:1FE2|NC Num?ricable|TiJi
0100:1FEB|NC Num?ricable|TMC
0100:200E|NC Num?ricable|Cinecinema Premier
0100:200F|NC Num?ricable|Disney Channel France
0100:2011|NC Num?ricable|Equidia
0100:209F|NC Num?ricable|Cinecinema Club
0100:20A0|NC Num?ricable|MCM
0100:20A2|NC Num?ricable|MCM Pop
0100:20A3|NC Num?ricable|T?l? Maison
0100:20A6|NC Num?ricable|Virgin 17
0100:20AD|NC Num?ricable|MCM Top
0100:20AE|NC Num?ricable|TF 1
0100:20AF|NC Num?ricable|M6
0100:20B3|NC Num?ricable|TF1
0100:20B4|NC Num?ricable|M6
0100:20B6|NC Num?ricable|VIRGIN 17
0100:2136|NC Num?ricable|TV Breizh
0100:2138|NC Num?ricable|Planète Thalassa
0100:213C|NC Num?ricable|France O
0100:2144|NC Num?ricable|OMTV (Olympique Marseille)
0100:2145|NC Num?ricable|OLTV (Olympique Lyonnais)
0100:21FE|NC Num?ricable|Com?die !
0100:21FF|NC Num?ricable|13?me Rue
0100:2200|NC Num?ricable|Discovery Real Time France
0100:2201|NC Num?ricable|Disney XD France
0100:2202|NC Num?ricable|L´Equipe TV
0100:2203|NC Num?ricable|Plan?te No Limit
0100:2204|NC Num?ricable|National Geographic France
0100:2205|NC Num?ricable|Cinecinema Classic
0100:2206|NC Num?ricable|NRJ 12
0100:2207|NC Num?ricable|Cinecinema Famiz
0100:1F44|NC Num?ricable|NRJ 12
0100:2211|NC Num?ricable|NRJ 12
0100:2268|NC Num?ricable|T?l? M?lody
0100:226D|NC Num?ricable|ESPN Classic Sport France
0100:22C7|NC Num?ricable|Gulli
0100:22C9|NC Num?ricable|T?va
0100:22CA|NC Num?ricable|Disney Channel France +1
0100:22CB|NC Num?ricable|Playhouse Disney France
0100:22CC|NC Num?ricable|Disney Cinemagic France
0100:22CD|NC Num?ricable|Disney Cinemagic +1 France
0100:22CF|NC Num?ricable|E! Entertainment TV
0100:22D9|NC Num?ricable|GULLI
0100:24B9|NC Num?ricable|TPS Star
0100:24BA|NC Num?ricable|S?rie Club
0100:24BB|NC Num?ricable|W9
0100:24BC|NC Num?ricable|InfoSport
0100:24BD|NC Num?ricable|Cinecinema Star
0100:24BE|NC Num?ricable|T?l?toon
0100:24BF|NC Num?ricable|M6 Music Hits
0100:24C0|NC Num?ricable|Discovery Channel France
0100:24C1|NC Num?ricable|Pink TV
0100:24C2|NC Num?ricable|T?l?toon +1
0100:24CF|NC Num?ricable|W9
0100:251D|NC Num?ricable|TF 6
0100:251E|NC Num?ricable|Ushuaia TV
0100:251F|NC Num?ricable|Eurosport 2 France
0100:2521|NC Num?ricable|Cinecinema Premier 16/9
0100:2523|NC Num?ricable|Piwi
0100:2524|NC Num?ricable|Extreme Sports
```

## NC Num?ricable - LCI

```
#  NC Num?ricable - LCI
0100:1FDC|NC Num?ricable - LCI|La Cha?ne Info
```

## Orbit

```
#  Orbit
0668,0100:01F5|Orbit|Space Toon 1
0668,0100:01F6|Orbit|Super Movies
0668,0100:01F8|Orbit|Cinema City
0668,0100:0202|Orbit|MGM Multi c
0668,0100:0203|Orbit|Arabic Series Channel
0668,0100:0211|Orbit|Fashion TV
0668,0100:0218|Orbit|Bloomberg U.K.
0668,0100:0230|Orbit|TV Max
0668,0100:0231|Orbit|TV Max
0668,0100:0232|Orbit|TV Max
0668,0100:0233|Orbit|TV Max
0668,0100:0001|Orbit|Super Comedy
0668,0100:0002|Orbit|America Plus
0668,0100:0003|Orbit|CNBC U.S.
0668,0100:0005|Orbit|Music Now
0668,0100:0006|Orbit|C-Span
0668,0100:0007|Orbit|Orbit News 2
0668,0100:0008|Orbit|Al Riyadiyah
0668,0100:0009|Orbit|Fox News
0668,0100:0191|Orbit|Extreme Sports
0668,0100:0193|Orbit|EuroNews
0668,0100:0194|Orbit|Trace TV
0668,0100:0195|Orbit|Voom
0668,0100:0196|Orbit|Discovery Science Channel
0668,0100:0197|Orbit|Discovery Channel Middle-East +2
0668,0100:0198|Orbit|Pinoy Extreme
0668,0100:0199|Orbit|The Fun Channel
0668,0100:019A|Orbit|Playhouse Disney
0668,0100:019B|Orbit|C-Music
0668,0100:019D|Orbit|Nickelodeon Arabia
0668,0100:002C|Orbit|Animal Planet
0668,0100:00CA|Orbit|Boomerang
0668,0100:00CB|Orbit|Orbit News
0668,0100:00CC|Orbit|Cinema City +1
0668,0100:00CD|Orbit|Toon Disney
0668,0100:00CE|Orbit|Cartoon Network
0668,0100:00CF|Orbit|Super Comedy +2
0668,0100:00D0|Orbit|America Plus +2
0668,0100:00D1|Orbit|BBC Prime
0668,0100:00D2|Orbit|Discovery Travel & Living UK
0668,0100:00D3|Orbit|Discovery Channel
0668,0100:00D4|Orbit|Fox Sports Middle East
0668,0100:00D6|Orbit|Disney Channel Middle-East
0668,0100:00DF|Orbit|e-GMA DZBB
0668,0100:000F|Orbit|The History Channel
0668,0100:0011|Orbit|Cinema 1
0668,0100:0012|Orbit|Cinema 2
0668,0100:0017|Orbit|Pinoy Extreme
0668,0100:001B|Orbit|GMA Pinoy TV
0668,0100:0130|Orbit|Arabic Series +4
0668,0100:0131|Orbit|The Hollywood Channel
0668,0100:0132|Orbit|Super Movies +1
0668,0100:013A|Orbit|NBA TV
0668,0100:016A|Orbit|Al Yawm
0668,0100:016B|Orbit|Al Safwa
0668,0100:016C|Orbit|Fann
0668,0100:016D|Orbit|GMA Life TV
0668,0100:016E|Orbit|GMA DWLS FM
0668:01F7|Orbit|Super Movies +1
0668:021A|Orbit|Cartoon Network
```

## Orbit - TCM

```
#  Orbit - TCM
0668,0100:0133|Orbit - TCM|Turner Classic Movies
0668:0219|Orbit - TCM|Turner Classic Movies
```

## ABS-CBN - TFC

```
#  ABS-CBN - TFC
0604:006C|ABS-CBN - TFC|The Filipino Channel
0604:006D|ABS-CBN - TFC|The Filipino Channel
```

## ABS-CBN

```
#
# DVB-S - ABS-CBN - Atlantic Bird 3 5.0W
# Date: 2011-09-26
#
5604:006C|ABS-CBN 5.0W|TFC Middle-East|TV|Entertainment|
5604:006D|ABS-CBN 5.0W|TFC Europe|TV|General|
5604:006E|ABS-CBN 5.0W|ABS-CBN News Channel|TV|News|
5604:006F|ABS-CBN 5.0W|Cinema One|TV|Movies|
5604:0070|ABS-CBN 5.0W|Kapamilya Channel|TV|General|
5604:0073|ABS-CBN 5.0W|DZMM Teleradyo|TV|Music|
5604:0078|ABS-CBN 5.0W|TFC PPV|TV|Various|
5604:0071|ABS-CBN 5.0W|DZMM|RADIO||
5604:0072|ABS-CBN 5.0W|DWRR|RADIO||
```

## DigitAlb - TCM

```
#  DigitAlb - TCM
0B00:03F6|DigitAlb - TCM|Turner Classic Movies
```

## Digit?rk

```
#  Digit?rk
0664,0D00:00CA|Digit?rk|Lig TV HD
0664,0D00:00CE|Digit?rk|Eurosport HD
0664,0D00:00D0|Digit?rk|SporMax HD
0664,0D00:044E|Digit?rk|Halk TV
0664,0D00:0451|Digit?rk|Salonda ne var?
0664,0D00:0453|Digit?rk|ORT International (Perviy kanal Vsemirnaja set)
0664,0D00:0454|Digit?rk|SES TV
0664,0D00:0455|Digit?rk|Kanal B
0664,0D00:0456|Digit?rk|E! Entertainment TV
0664,0D00:0457|Digit?rk|Bug?n TV
0664,0D00:1D4D|Digit?rk|Fox Life Turkey
0664,0D00:1D4E|Digit?rk|Mezzo
0664,0D00:1D4F|Digit?rk|BBC Prime
0664,0D00:1D50|Digit?rk|Extreme Sports
0664,0D00:1D51|Digit?rk|Eurosport 2
0664,0D00:1D53|Digit?rk|EuroNews
0664,0D00:1D54|Digit?rk|MTV T?rkiye
0664,0D00:1D56|Digit?rk|E2
0664,0D00:1D58|Digit?rk|NTV Spor
0664,0D00:1D5B|Digit?rk|24
0664,0D00:1D5C|Digit?rk|TV Net
0664,0D00:1D5D|Digit?rk|Fashion TV
0664,0D00:05DD|Digit?rk|Dizi Max
0664,0D00:05E1|Digit?rk|ZoneReality
0664,0D00:05E6|Digit?rk|Lig TV
0664,0D00:05EC|Digit?rk|T?rkmax
0664,0D00:061A|Digit?rk|Show Plus
0664,0D00:061B|Digit?rk|Wedding TV
0D00:05F0|Digit?rk|testint
0D00:05F1|Digit?rk|test2
0664,0D00:14B5|Digit?rk|Baby TV
0664,0D00:14B6|Digit?rk|TV5 Monde Europe
0664,0D00:14B7|Digit?rk|iZ TV
0664,0D00:14B8|Digit?rk|Flash TV
0664,0D00:14BF|Digit?rk|Yumurcak TV
0664,0D00:14C3|Digit?rk|Crime & Investigation Network
0664,0D00:14C4|Digit?rk|Power Turk TV
0664,0D00:14C5|Digit?rk|Samanyolu Haber
0664,0D00:14C7|Digit?rk|BabyFirst
0664,0D00:14C8|Digit?rk|MASAL TV
0664,0D00:14D3|Digit?rk|DIGIPOSTA
0664,0D00:14D4|Digit?rk|DIGIAKTIF
0664,0D00:14D5|Digit?rk|HALKBANK
0664,0D00:14D6|Digit?rk|TV HAVA DURUMU
0664,0D00:14DA|Digit?rk|AJANS PRESS ITV
0664,0D00:14DB|Digit?rk|M??TER? H?ZMETLER?
0664,0D00:14DC|Digit?rk|DIGITURK TEKN?K SERV?S
0664,0D00:14DD|Digit?rk|YEMEK SEPET?
0664,0D00:14DE|Digit?rk|TURKCELL S?PER L?G B?LG? KANALI
0664,0D00:14DF|Digit?rk|JOJO
0664,0D00:14E0|Digit?rk|IBB Trafik ITV
0664,0D00:06A5|Digit?rk|NTV Turkey
0664,0D00:06A6|Digit?rk|KanalT?rk
0664,0D00:06A8|Digit?rk|CNBC-e
0664,0D00:06A9|Digit?rk|CNN T?rk
0664,0D00:06AA|Digit?rk|BBC World News
0664,0D00:06AB|Digit?rk|6 News
0664,0D00:06AC|Digit?rk|MovieMax 1 International
0664,0D00:06AE|Digit?rk|Cartoon Network Turkey
0664,0D00:06AF|Digit?rk|TV 8 Turkey
0664,0D00:06B0|Digit?rk|Bloomberg Europe
0664,0D00:06B1|Digit?rk|Kral TV
0664,0D00:1DB1|Digit?rk|Akilli TV
0664,0D00:1DB2|Digit?rk|Saudi Channel 1
0664,0D00:1DB3|Digit?rk|Kanal Biz
0664,0D00:1DB4|Digit?rk|Digit?rk Promo
0664,0D00:1DB5|Digit?rk|Kanal A
0664,0D00:1DB7|Digit?rk|Kanal T
0664,0D00:1DB8|Digit?rk|Cem TV
0664,0D00:08FD|Digit?rk|Show TV
0664,0D00:08FE|Digit?rk|Kanal D Turkiye
0664,0D00:0903|Digit?rk|Touch TV
0664,0D00:0905|Digit?rk|Salon 1
0664,0D00:0906|Digit?rk|Salon 2
0664,0D00:0907|Digit?rk|Jetix Russia & Balkan
0664,0D00:0909|Digit?rk|NBA TV
0664,0D00:0916|Digit?rk|Jetix Play
0664,0D00:0917|Digit?rk|VIP (Turkey)
0664,0D00:0924|Digit?rk|TOUCH
0664,0D00:0932|Digit?rk|Showmax
0664,0D00:0943|Digit?rk|KANAL 779
0664,0D00:0944|Digit?rk|KANAL 780
0664,0D00:1902|Digit?rk|CNN International Europe
0664,0D00:1903|Digit?rk|Rai Uno
0664,0D00:1904|Digit?rk|Haber Turk TV
0664,0D00:1906|Digit?rk|Goldmax 2
0664,0D00:1907|Digit?rk|SporMax
0664,0D00:1908|Digit?rk|Lig TV Ticarti
0664,0D00:190A|Digit?rk|Fenerbah?e TV
0664,0D00:190B|Digit?rk|MyMax
0664,0D00:1914|Digit?rk|TGRT Haber
0664,0D00:193D|Digit?rk|Fox Sports Middle East
0664,0D00:194C|Digit?rk|Al Jazeera English
0D00:194D|Digit?rk|test2.
0D00:194E|Digit?rk|test455
0664,0D00:1921|Digit?rk|H?PODROM iTV
0664,0D00:193C|Digit?rk|DIGIAKTIFtest
0664,0D00:1951|Digit?rk|Bilyoner.com
0664,0D00:1C85|Digit?rk|Star TV
0664,0D00:1C86|Digit?rk|Home TV
0664,0D00:1C88|Digit?rk|MCM Top
0664,0D00:1C8A|Digit?rk|VH-1 (Video Hits One)
0664,0D00:1C8B|Digit?rk|National Geographic UK
0664,0D00:1C8D|Digit?rk|NatGeo Wild
0664,0D00:1C8E|Digit?rk|Nickelodeon Turkey
0664,0D00:1CBF|Digit?rk|BTV2
0664,0D00:1CC0|Digit?rk|History Channel Turkey
0664,0D00:1CE9|Digit?rk|HOTTEST HITS
0664,0D00:1CEA|Digit?rk|SONGS OF LOVE
0664,0D00:1CEB|Digit?rk|2000 s HITS
0664,0D00:1CEC|Digit?rk|90 s HITS
0664,0D00:1CED|Digit?rk|80 s HITS
0664,0D00:1CEE|Digit?rk|70 s HITS
0664,0D00:1CEF|Digit?rk|50 s / 60 s HITS
0664,0D00:1CF0|Digit?rk|STANDARDS
0664,0D00:1CF1|Digit?rk|CLASSICAL MUSIC
0664,0D00:1CF2|Digit?rk|ALTERNATIVE ROCK
0664,0D00:1CF3|Digit?rk|HARD ROCK
0664,0D00:1CF4|Digit?rk|CLASSIC ROCK
0664,0D00:1CF5|Digit?rk|NU JAZZ
0664,0D00:1CF6|Digit?rk|JAZZ CLASSICS
0664,0D00:1CF7|Digit?rk|BLUES
0664,0D00:1CF8|Digit?rk|REGGAE
0664,0D00:1CF9|Digit?rk|LATIN
0664,0D00:1CFA|Digit?rk|DANCE CLASSICS
0664,0D00:1CFB|Digit?rk|DANCE
0664,0D00:1CFC|Digit?rk|CHILL OUT / LOUNGE
0664,0D00:1CFD|Digit?rk|HIP HOP R&B
0664,0D00:1CFE|Digit?rk|EASY LISTENING
0664,0D00:1CFF|Digit?rk|YOGA ZONE
0664,0D00:1D00|Digit?rk|INTERNATIONAL
0664,0D00:1D01|Digit?rk|R & B
0664,0D00:1D02|Digit?rk|SYMPHONIC
0664,0D00:1D09|Digit?rk|L?G RADYO
0664,0D00:1D0A|Digit?rk|RADYO SPOR
0664,0D00:1D0F|Digit?rk|MASAL RADYO
0664,0D00:1D10|Digit?rk|ARIONRADIO.COM
0664,0D00:1D03|Digit?rk|SMOOTH JAZZ
0664,0D00:1D06|Digit?rk|OPERA
0664,0D00:1CCD|Digit?rk|KANAL 532
0664,0D00:025A|Digit?rk|Yacht & Sail
0664,0D00:025B|Digit?rk|Actionmax (Turkey)
0664,0D00:025C|Digit?rk|GoldMax
0664,0D00:025D|Digit?rk|MGM Turkey
0664,0D00:0260|Digit?rk|ART Avrasya
0664,0D00:0263|Digit?rk|ProSieben Schweiz
0664,0D00:027C|Digit?rk|Intimacy
0664,0D00:027E|Digit?rk|Jojo
0664,0D00:028B|Digit?rk|BTV
0664,0D00:028C|Digit?rk|Kanal 1
0664,0D00:0294|Digit?rk|Jolly Tatil TV
0664,0D00:02B2|Digit?rk|EROT?K OYUNLAR
0664,0D00:10CD|Digit?rk|Fox Turk
0664,0D00:10CE|Digit?rk|ATV
0664,0D00:10CF|Digit?rk|Kanal 7
0664,0D00:10D0|Digit?rk|Dream TV
0664,0D00:10D1|Digit?rk|Eurosport
0664,0D00:10D2|Digit?rk|Disney Channel Turkey
0664,0D00:10D4|Digit?rk|Salon 3
0664,0D00:10DA|Digit?rk|MovieMax 2 International
0664,0D00:10DC|Digit?rk|ComedyMax
0664,0D00:10DD|Digit?rk|?lke TV
0664,0D00:111F|Digit?rk|KANAL 781
0664,0D00:1DB6|Digit?rk|.
0664,0D00:14F0|Digit?rk|Jojo
0664,0D00:14F1|Digit?rk|Intimacy
0664,0D00:0299|Digit?rk|Intimacy
0664,0D00:05E0|Digit?rk|T?rkmax
0664,0D00:150E|Digit?rk|iZ TV
0664:00CD|Digit?rk|MMAX HD
0664:00D2|Digit?rk|Dizimax HD
0664:0264|Digit?rk|MovieMax Festival
0664:05E2|Digit?rk|TRT1
0664:06B2|Digit?rk|VIP
0664:0911|Digit?rk|Blue Hustler
0664:14BE|Digit?rk|DIGI
0664:14C0|Digit?rk|Penthouse
0664:14C9|Digit?rk|PENTHOUSE
0664:14FB|Digit?rk|Kanal 205
0664:190C|Digit?rk|MovieMax Family
0664:1C8F|Digit?rk|Mehtap
0664:1D5E|Digit?rk|EPL (English Premier League)
0664:1D5F|Digit?rk|Playhouse Disney Middle-East & Africa
0664:1DB9|Digit?rk|Cine 5
0664:1E79|Digit?rk|Rai Uno
0664:1E7A|Digit?rk|Saudi Channel 1
0664:1E7C|Digit?rk|ORT International
0664:1E7D|Digit?rk|Wedding tv
0664:1E80|Digit?rk|Al Jazeera English
0664:1E81|Digit?rk|Bloomberg Europe
0664:1E82|Digit?rk|TV5
0664:1E83|Digit?rk|Babyfirst
0664:1E84|Digit?rk|Pro7
0664:1E85|Digit?rk|dream tv
0664:1E86|Digit?rk|France 24
0664:1EDD|Digit?rk|National Geographic T?rk HD
0664:1EDE|Digit?rk|DiziMax More HD
0664:1EE7|Digit?rk|Penthouse HD
0664:1EE8|Digit?rk|MovieMax Stars HD
0664:1EEA|Digit?rk|EPL HD (English Premier League)
0664:1F41|Digit?rk|Fox Sports HD Turkey
0664:1F42|Digit?rk|NatGeo Wild HD
0664:1F44|Digit?rk|VH-1
0664:1F45|Digit?rk|Extreme Sports
0664:1F46|Digit?rk|BBC Entertainment Europe
0664:1F48|Digit?rk|BBC World News
0664:1F49|Digit?rk|Euronews
0664:00CC|Digit?rk|National Geographic T?rk HD
```

## Digit?rk - STV

```
#  Digit?rk - STV
0664,0D00:05DE|Digit?rk - STV|Samanyolu TV
```

## D-Smart

```
#  D-Smart
092B:070B|D-Smart|D Max
092B:070D|D-Smart|D Spor
092B:070E|D-Smart|Futbol Smart
092B:070F|D-Smart|Beyazperde
092B:0711|D-Smart|Cool Smart
092B:0712|D-Smart|Dog TV
092B:0713|D-Smart|Bebe
092B:0714|D-Smart|Style Network EMEA
092B:0715|D-Smart|Sinema TV
092B:0716|D-Smart|Sinema TV 2
092B:0717|D-Smart|Sinema TV Aile
092B:0718|D-Smart|ESPN Classic Sport Europe
092B:071C|D-Smart|Soft TV
092B:071D|D-Smart|xPUSH1
092B:057B|D-Smart|FX Turkey
092B:057C|D-Smart|Da Vinci Learning
092B:057D|D-Smart|D Yesil?am
092B:057E|D-Smart|Movie Smart
092B:057F|D-Smart|D ?ocuk
092B:0580|D-Smart|Pembe Smart
092B:0581|D-Smart|Movies 24 Eastern Europe
092B:0582|D-Smart|Movies 24 Erotic
092B:0583|D-Smart|Loca1
092B:0584|D-Smart|Loca2
092B:0585|D-Smart|Loca3
092B:0587|D-Smart|Yesil?am XXX
092B:0589|D-Smart|Marc Dorcel TV
092B:011E|D-Smart|SMART RADYO
092B:000A|D-Smart|Dream Turk
092B:0022|D-Smart|Passion TV
092B:05E7|D-Smart|Discovery Channel Mediterranean
092B:05E8|D-Smart|Animal Planet Turkey
092B:05E9|D-Smart|Dream TV
092B:05EC|D-Smart|Discovery Travel & Living UK
092B:05ED|D-Smart|Eurosport
092B:05F0|D-Smart|Investigation Discovery Europe
092B:0641|D-Smart|Comedy Smart
092B:0642|D-Smart|Luli
092B:0643|D-Smart|ESPN America
092B:0644|D-Smart|KidsCo
092B:0655|D-Smart|Kanal D HD
092B:0656|D-Smart|Eurosport HD
092B:0657|D-Smart|HD Smart
092B:0658|D-Smart|Discovery HD Europe
```

## Bulsatcom

```
#  Bulsatcom
0604:0001|Bulsatcom|Diema Family
0604:0002|Bulsatcom|National Geographic UK
0604:0003|Bulsatcom|TV 1000 Balkan
0604:0004|Bulsatcom|Animal Planet Eastern Europe
0604:0005|Bulsatcom|Cinemax East Europe
0604:0006|Bulsatcom|BTV Cinema
0604:0007|Bulsatcom|Eurosport
0604:0008|Bulsatcom|bTV Comedy
0604:000A|Bulsatcom|Eurosport 2 budensliga
0604:000D|Bulsatcom|HBO Comedy Adria
0604:000F|Bulsatcom|PRO BG
0604:0010|Bulsatcom|AXN Central Europe
0604:0011|Bulsatcom|AXN Sci Fi
0604:0012|Bulsatcom|AXN Crime
0604:0015|Bulsatcom|Film+ HD
0604:0016|Bulsatcom|Eurosport HD
0604:001C|Bulsatcom|Fox Life Bulgaria
0604:001E|Bulsatcom|Fox Crime Bulgaria
0604:001F|Bulsatcom|Diva Universal Romania
0604:0022|Bulsatcom|Discovery Science Channel
0604:0023|Bulsatcom|Travel & Living Balkans
0604:0024|Bulsatcom|Discovery World
0604:0025|Bulsatcom|VH-1 (Video Hits One)
0604:0026|Bulsatcom|BNT Sat
0604:0028|Bulsatcom|Ring TV
0604:0029|Bulsatcom|Super 7
0604:002C|Bulsatcom|Pop Core
0604:002D|Bulsatcom|Disney Channel Romania & Bulgaria
0604:002E|Bulsatcom|Nova Sport Bulgaria
0604:0030|Bulsatcom|Film Plus
0604:0031|Bulsatcom|TV Evropa
0604:006F|Bulsatcom|Playboy TV/Viasat Explorer
0604:0070|Bulsatcom|Viasat History
0604:0071|Bulsatcom|Cartoon Network/TCM
0604:0072|Bulsatcom|Fashion TV/Free-X TV
0604:0073|Bulsatcom|Perviy Kanal
0604:0074|Bulsatcom|NatGeo Wild
0604:0075|Bulsatcom|Hustler TV
0604:0076|Bulsatcom|Fine Living Network
0604:0077|Bulsatcom|Folklor TV
0604:0078|Bulsatcom|MTV Europe
0604:0079|Bulsatcom|Fan TV
0604:007A|Bulsatcom|Boomerang
0604:007B|Bulsatcom|Balkanika
0604:007C|Bulsatcom|DM sat
0604:007D|Bulsatcom|CNN
0604:007E|Bulsatcom|Private Spice
0604:0081|Bulsatcom|City TV
0604:0082|Bulsatcom|Euro D
0604:0084|Bulsatcom|RTV International
0604:0088|Bulsatcom|Travel channel
0604:0089|Bulsatcom|MGM
0604:008A|Bulsatcom|Zone reality
0604:00CB|Bulsatcom|Hobby TV HD
0604:00CC|Bulsatcom|National Geographic Europe
0604:00CD|Bulsatcom|Discovery HD Europe
0604:00CE|Bulsatcom|Planeta HD
0604:00D0|Bulsatcom|History Channel Eastern Europe
0604:03EA|Bulsatcom|Planeta TV
0604:03EB|Bulsatcom|BNT 1
0604:03ED|Bulsatcom|HBO Bulgaria
0604:03EE|Bulsatcom|TV 7 Bulgaria
0604:03EF|Bulsatcom|BTV Bulgaria
0604:03F2|Bulsatcom|TV Plus
0604:03F4|Bulsatcom|Nova TV
0604:03F5|Bulsatcom|Diema 2
0604:03F6|Bulsatcom|Hobby TV
0604:046A|Bulsatcom|Diema
0604:03F8|Bulsatcom|Discovery Channel Bulgaria
0604:03F0|Bulsatcom|Private Spice
0604:002A|Bulsatcom|Zone Club
0604:002F|Bulsatcom|Evrokom Bulgaria
```

## OSN

```
#  OSN
0604:00C9|OSN|OSN Cinema 1
0604:00CA|OSN|OSN Cinema 2
0604:00CB|OSN|OSN Cinema 3
0604:00CC|OSN|America Plus
0604:00CD|OSN|E! Entertainment TV
0604:00CE|OSN|BBC Entertainment Europe
0604:00CF|OSN|OSN Shasha
0604:00D0|OSN|MBC+ Drama
0604:00D1|OSN|JimJam EMEA
0604:00D2|OSN|OSN Comedy
0604:00D3|OSN|Disney XD Middle-East
0604:00D4|OSN|ShowSeries 1
0604:00D5|OSN|Disney Channel Middle-East
0604:012D|OSN|ShowSports 4
0604:012E|OSN|Super Movies +2
0604:012F|OSN|ShowMovies 1
0604:0130|OSN|Super Movies
0604:0131|OSN|ShowMovies Action
0604:0132|OSN|ShowMovies Kids
0604:0133|OSN|ShowMovies Comedy
0604:0134|OSN|SPARE1
0604:0135|OSN|ShowSports 2
0604:0136|OSN|ShowSports 3
0604:0137|OSN|Cinema City
0604:01A5|OSN|Cartoon Network
0604:01A7|OSN|VH-1 (Video Hits One)
0604:01A8|OSN|Discovery Channel Middle-East
0604:01A9|OSN|BBC Lifestyle
0604:01AA|OSN|Travel channel
0604:01AB|OSN|BET U.K
0604:01AC|OSN|MTV Music
0604:01AD|OSN|CNBC Europe
0604:01AE|OSN|Investigation Discovery Europe
0604:01B0|OSN|Boomerang
0604:02C6|OSN|ART Sport 7
0604:01B1|OSN|KidsCo/Playhouse Disney
0604:03E9|OSN|NatGeo Wild
0604:03EE|OSN|Animal Planet
0604:03F0|OSN|Discovery Science Channel
0604:07D2|OSN|ShowMovies +2
0604:07D3|OSN|Fox Sports Middle East
0604:07D4|OSN|Extreme Sports
0604:07DB|OSN|Sky News International
0604:07DE|OSN|Showtime Open TV
0604:1195|OSN|Al Yawm
0604:1196|OSN|Al Safwa
0604:1197|OSN|Cinema1
0604:1198|OSN|Cinema2
0604:1199|OSN|Arabic Series +4
0604:119A|OSN|Fann
0604:119B|OSN|Fashion TV
0604:119C|OSN|Orbit news
0604:119D|OSN|Orbit news2
0604:119E|OSN|Pinoy Extreme
0604:119F|OSN|GMA Pinoy TV
0604:11A0|OSN|GMA Life TV
0604:11A1|OSN|MnL TV
0604:11FA|OSN|Trace TV
0604:11FB|OSN|Food Network
0604:11FC|OSN|OSN Variety
0604:11FD|OSN|OSN Arabia
0604:11FE|OSN|OSN Comedy +2
0604:11FF|OSN|MGM Middle-East
0604:1200|OSN|America Plus +2
0604:1201|OSN|The History Channel
0604:1202|OSN|Style Network EMEA
0604:1203|OSN|Arabic Series Channel
```

## OSN - TCM

```
#  OSN - TCM
0604:01A6|OSN - TCM|Turner Classic Movies
```

## ADD

```
#
# DVB-S - ADD - Atlantic Bird 2 7.0W
# Date: 2011-09-26
#
0604:0DB0|ADD 7.0W|Indus Vision|TV|General|
0604:0DB4|ADD 7.0W|ART Sport 7|TV|Sport|
0604:0DB7|ADD 7.0W|Jaya TV|TV|General|
0604:03E9|ADD 7.0W|NatGeo Wild|TV|Documentaries|
0604:03EA|ADD 7.0W|Ten Cricket|TV|Sport|
0604:03EB|ADD 7.0W|B4U Music|TV|Music|
0604:03EC|ADD 7.0W|B4U Movies|TV|Movies|
0604:03ED|ADD 7.0W|National Geographic Adventure|TV|Documentaries|
0604:03EE|ADD 7.0W|Animal Planet|TV|Documentaries|
0604:03EF|ADD 7.0W|Star Vijay|TV|General|
0604:03F0|ADD 7.0W|Sun TV|TV|Music|
0604:03F1|ADD 7.0W|Ary Digital UK|TV|General|
0604:03F3|ADD 7.0W|Asianet|TV|General|
0604:03F4|ADD 7.0W|Granada UK TV|TV|General|
0604:03F5|ADD 7.0W|Star One|TV|Entertainment|
0604:03F7|ADD 7.0W|Star News|TV|News|
0604:03F8|ADD 7.0W|Udaya TV|TV|Entertainment|
0604:06A5|ADD 7.0W|SET Max|TV|General|
0604:06A6|ADD 7.0W|Star Plus|TV|General|
0604:06A7|ADD 7.0W|Channel V India|TV|General|
0604:06A8|ADD 7.0W|Star Gold|TV|Movies|
0604:06A9|ADD 7.0W|Star World|TV|General|
0604:06AA|ADD 7.0W|Channel V International|TV|General|
0604:06AB|ADD 7.0W|National Geographic UK|TV|Documentaries|
0604:06AC|ADD 7.0W|Star Movies Middle East|TV|Movies|
0604:06AD|ADD 7.0W|Zee Cinema Asia|TV|Movies|
0604:06AE|ADD 7.0W|Zee News|TV|News|
0604:06AF|ADD 7.0W|Zee TV Asia|TV|General|
0604:06B0|ADD 7.0W|SET Middle East (Sony Entertainment TV)|TV|General|
0604:06B1|ADD 7.0W|Geo TV|TV|News|
0604:06B2|ADD 7.0W|NDTV 24x7|TV|News|
0604:06B3|ADD 7.0W|Colors|TV|Entertainment|
0604:0321|ADD 7.0W|Al Jazeera Sport +5|TV|Sport|
0604:0322|ADD 7.0W|Al Jazeera Sport +6|TV|Sport|
0604:0323|ADD 7.0W|Al Jazeera Sport +7|TV|Sport|
0604:0324|ADD 7.0W|Al Jazeera Sport +8|TV|Sport|
0604:07DB|ADD 7.0W|Sky News International|TV|News|
0604:02BE|ADD 7.0W|Surya TV|TV|General|
0604:02BF|ADD 7.0W|ART Hekayat Zaman|TV|General|
0604:02C0|ADD 7.0W|Sun TV Gemini|TV|Entertainment|
0604:02C1|ADD 7.0W|Al Hekayat 2|TV|General|
0604:02C2|ADD 7.0W|ART Aflam 1|TV|Movies|
0604:02C4|ADD 7.0W|ART Aflam 2|TV|Movies|
0604:02C5|ADD 7.0W|ART Cinema|TV|Movies|
0604:02C6|ADD 7.0W|Asianet News|TV|News|
0604:02C8|ADD 7.0W|Star Jalsha|TV|Entertainment|
0604:02CD|ADD 7.0W|Hekayat Kaman|TV|Various|
0604:01A5|ADD 7.0W|Cartoon Network|TV|Children|
0604:01B0|ADD 7.0W|Boomerang|TV|Children|
0604:0A8F|ADD 7.0W|Al Jazeera Sports +1|TV|Sport|
0604:0A90|ADD 7.0W|Al Jazeera Sports +2|TV|Sport|
0604:0A91|ADD 7.0W|Al Jazeera Sports +3|TV|Sport|
0604:0A92|ADD 7.0W|Al Jazeera Sports +4|TV|Sport|
0604:08FD|ADD 7.0W|Baby TV|TV|Children|
0604:08FE|ADD 7.0W|Neo Sports|TV|Sport|
0604:08FF|ADD 7.0W|Kairali TV|TV|General|
0604:0901|ADD 7.0W|Prime Sports Cricket|TV|Sport|
0604:0924|ADD 7.0W|Mathuram / TBO|TV|General|
0604:0929|ADD 7.0W|Dawn News|TV|News|
```

## NOVA

```
#  NOVA
0604:0069|NOVA|Mezzo
0604:012D|NOVA|R1
0604:012F|NOVA|R3
0604:0130|NOVA|R4
0604:0132|NOVA|R5
0604:0133|NOVA|R6
0604:0134|NOVA|Nova sport1 Cy
0604:013C|NOVA|DisneyXD greece
0604:013D|NOVA|Nova cinema1
0604:013E|NOVA|Nova sport1
0604:013F|NOVA|Mega channel
0604:0140|NOVA|ANT1
0604:0141|NOVA|Star channel
0604:0142|NOVA|Alter channel
0604:0144|NOVA|R13
0604:0145|NOVA|Alpha tv
0604:0146|NOVA|R11
0604:0147|NOVA|R12
0604:0149|NOVA|Nova cinema1 Cy
0604:015F|NOVA|Discovery Channel Greece
0604:0160|NOVA|R9
0604:0161|NOVA|Nova sport2
0604:0162|NOVA|TCM
0604:0163|NOVA|Big Brother
0604:0164|NOVA|R15
0604:0165|NOVA|R10
0604:0166|NOVA|R8
0604:0168|NOVA|Cartoon Network
0604:0169|NOVA|Macedonia TV
0604:016A|NOVA|Skai
0604:016B|NOVA|ET3
0604:016F|NOVA|R7
0604:0170|NOVA|Nova sport7
0604:0171|NOVA|Nova sport7 Cy
0604:0178|NOVA|NET
0604:0179|NOVA|Mad tv
0604:017A|NOVA|ET1
0604:017C|NOVA|Mad tv
0604:017D|NOVA|R14
0604:017F|NOVA|novasports2 Cy
0604:1BBD|NOVA|Games
0604:1BBE|NOVA|E!
0604:1BBF|NOVA|History channel
0604:1BC0|NOVA|Private spice
0604:1BC2|NOVA|Nova cinema3
0604:1BC3|NOVA|Nova sport4
0604:1BC4|NOVA|Nova sport Highlights
0604:1BC5|NOVA|Nova sport6
0604:1BC7|NOVA|Chasse et P?che
0604:1BC8|NOVA|Playboy tv
0604:1BC9|NOVA|Nova sport4 Cy
0604:1BCA|NOVA|Nova cinema3 Cy
0604:1BCB|NOVA|Playboy tv Cy
0604:1BCC|NOVA|Nova sport6 Cy
0604:1BCE|NOVA|Private spice Cy
0604:1BD0|NOVA|Alpha TV Cyprus
0604:1BD1|NOVA|Lumiere TV
0604:1BD2|NOVA|Boomerang
0604:1C85|NOVA|Motors tv
0604:1D4D|NOVA|Nova sport3
0604:1D4E|NOVA|VH-1
0604:1D4F|NOVA|MTV grecce
0604:1D51|NOVA|MGM greece
0604:1D52|NOVA|Animal planet
0604:1D53|NOVA|Nova cinema2
0604:1D54|NOVA|National geographic greece
0604:1D55|NOVA|Nova cinema2 Cy
0604:1D56|NOVA|A Test
0604:1D57|NOVA|Alpha TV Cy
0604:1D7E|NOVA|OTV test
0604:1D88|NOVA|Nova sport3 Cy
0604:1D8F|NOVA|Lumiere Tv
0604:1D97|NOVA|Travel channel
0604:1D99|NOVA|Mad greekz
0604:2011|NOVA|CNN
0604:3305|NOVA|Eurosport HD
0604:3307|NOVA|Eurosport Turk HD
0604:3308|NOVA|Eurosport Russian HD
0604:3309|NOVA|Eurosport Dutch HD
0604:330A|NOVA|Eurosport Czech HD
0604:330B|NOVA|Eurosport German HD
0604:330D|NOVA|Eurosport Portuguese HD
0604:330E|NOVA|Eurosport Polish HD
0604:330F|NOVA|Eurosport Hungarian HD
0604:3310|NOVA|Eurosport Bulgaria HD
0604:3311|NOVA|Eurosport Italy HD
0604:3312|NOVA|Eurosport Romanian HD
0604:3313|NOVA|Eurosport ECH HD
0604:3314|NOVA|Eurosport Spain HD
0604:3315|NOVA|Eurosport HD
0604:3316|NOVA|Eurosport Serbia HD
0604:3317|NOVA|Eurosport Greek HD
0604:35E9|NOVA|Eurosport2
0604:35EC|NOVA|Eurosport2 Test
0604:35ED|NOVA|Eurosport2 Greek
0604:35F5|NOVA|Eurosport2 Russian
0604:35FD|NOVA|Eurosport2 Portuguese
0604:3607|NOVA|Eurosport
0604:3608|NOVA|Eurosport Romanian
0604:3609|NOVA|Eurosport Dutch
0604:3610|NOVA|Eurosport Polish
0604:3611|NOVA|Eurosport Russian
0604:3612|NOVA|Eurosport Portuguese
0604:360D|NOVA|Eurosport Hungarian
0604:360F|NOVA|Eurosport Czech
0604:3613|NOVA|Eurosport2 Turk
0604:3614|NOVA|Eurosport Serbia
0604:3615|NOVA|Eurosport Turk
0604:3616|NOVA|Eurosport German
0604:3617|NOVA|Eurosport2 Serbia
0604:3914|NOVA|Investigation Discovery
0604:3915|NOVA|Travel & Living
0604:3C8D|NOVA|Disney Channel Middle-East
0604:3C8E|NOVA|Fox life greece
0604:3C8F|NOVA|National Geographic HD
0604:3C90|NOVA|Nova cinema summer
0604:3C91|NOVA|FX greece
0604:3C93|NOVA|Novacinema summer Cy
0604:3C94|NOVA|Nova Sport HD
0604:3C95|NOVA|Nova Cinema HD
```

## SCT

```
#  SCT
0604:35C0|SCT|D-XTV
0604:35C1|SCT|D-XTV2
0604:35C2|SCT|Satisfaction Plus
0604:35C3|SCT|SCT 5
0604:35C4|SCT|SCT 4
0604:35C6|SCT|Satisfaction Channel Television
0604:35C7|SCT|SCT 7
0604:35C8|SCT|Satisfaction Channel Television
```

## Arabesque

```
#  Arabesque
0500:35E9|Arabesque|Eurosport 2
0500:3607|Arabesque|Eurosport
0500:00CA|Arabesque|AB Moteurs
0500:00CB|Arabesque|Animaux
0500:00CF|Arabesque|Escales
0500:00D0|Arabesque|Toute l´Histoire
0500:00D2|Arabesque|Action
0500:00D3|Arabesque|Mangas
0500:00D4|Arabesque|Encyclopedia
0500:019A|Arabesque|Prime Sports
0500:01A4|Arabesque|ART Sport 5
0500:01AE|Arabesque|ART Aflam 1
0500:01B8|Arabesque|ART Aflam 2
0500:01C2|Arabesque|ART Sport 6
0500:01CC|Arabesque|LBC Europe
0500:01D8|Arabesque|ART Sport
0500:01DC|Arabesque|ART Cinema
0500:01DE|Arabesque|Showtime Maghreb
0500:01E0|Arabesque|ART Hekayat Zaman
0500:01E1|Arabesque|ART Sport 2
0500:01E3|Arabesque|ART Sport 3
0500:01E5|Arabesque|ART Sport 4
0500:01E7|Arabesque|ART Hekayat Zaman
```

## ADD - TCM

```
#  ADD - TCM
0604:01A6|ADD - TCM|Turner Classic Movies
```

## Orange 13E

```
#  Orange 13E
0500:00c8|Orange 13E|RTL 9
0500:00c9|Orange 13E|AB 1
0500:00ca|Orange 13E|AB Moteurs
0500:00cb|Orange 13E|Animaux
0500:00cc|Orange 13E|Chasse et P?che
0500:00cd|Orange 13E|XXL
0500:00ce|Orange 13E|TF 1
0500:00cf|Orange 13E|Escales
0500:00d0|Orange 13E|Toute l´Histoire
0500:00d1|Orange 13E|NT 1
0500:00d2|Orange 13E|Action
0500:00d3|Orange 13E|Mangas
0500:00d4|Orange 13E|Encyclopedia
0500:00d7|Orange 13E|XXL PL
0500:00d9|Orange 13E|France 5
0500:00da|Orange 13E|France O
0500:01f5|Orange 13E|M6 4
0500:01f6|Orange 13E|NRJ 12
0500:01f7|Orange 13E|France 2
0500:01f8|Orange 13E|W9 5
0500:01f9|Orange 13E|TMC (T?l? Monte Carlo)
0500:01fa|Orange 13E|Ciné Polar
0500:01fb|Orange 13E|Ciné FX
0500:01fd|Orange 13E|Virgin 17
0500:0201|Orange 13E|Gulli
0500:0218|Orange 13E|Orange Sport TV
0500:021a|Orange 13E|France 3 Sat
0500:021b|Orange 13E|France 4
0500:06b1|Orange 13E|Game One
0500:1251|Orange 13E|Private Spice
0500:1c39|Orange 13E|Equidia
0500:1c85|Orange 13E|Motors TV
0500:1fa5|Orange 13E|Orange Sport
0500:1fa6|Orange 13E|Boing
0500:1fa7|Orange 13E|KidsCo
0500:1fa8|Orange 13E|Test1
0500:1fa9|Orange 13E|Orange cin? max
0500:1faa|Orange 13E|Orange Cin? Happy
0500:1fab|Orange 13E|Orange Cin? Choc
0500:1fac|Orange 13E|Orange Cin? Novo
0500:1fad|Orange 13E|Orange Cin? G?ants
0500:1fb5|Orange 13E|M6 2
0500:1fb6|Orange 13E|W9 3
0500:1fb8|Orange 13E|Canal+
0500:1fb9|Orange 13E|i-T?l?
0500:1fba|Orange 13E|Test2
0500:1fc1|Orange 13E|Orange Sport HD
0500:1fc2|Orange 13E|Orange Cin? Max HD
0500:3786|Orange 13E|Dorcel TV
0500:448f|Orange 13E|M6
0500:4490|Orange 13E|W9
```

## Orange 13E - LCP

```
#  Orange 13E - LCP
0500:00db|Orange 13E - LCP|La Cha?ne Parlementaire
```

## ITV Partner

```
#  ITV Partner
0D06:0001|ITV Partner|BNT 1
0D06:0002|ITV Partner|Hustler TV
0D06:0003|ITV Partner|Premium Digital
0D06:0005|ITV Partner|Viasat History
0D06:0006|ITV Partner|Planeta TV
0D06:0007|ITV Partner|Baby TV
0D06:0008|ITV Partner|Jetix Eastern Europe
0D06:000A|ITV Partner|Fox Crime Bulgaria
0D06:000B|ITV Partner|Fox Crime Bulgaria
0D06:000D|ITV Partner|Discovery Channel Eastern Europe
0D06:000E|ITV Partner|TV Evropa
0D06:000F|ITV Partner|Fox Life Bulgaria
0D06:0010|ITV Partner|AXN CE Bulgaria
0D06:001D|ITV Partner|Fiesta TV
0D06:001E|ITV Partner|Fox Life Regional
0D06:0020|ITV Partner|Diema
0D06:0023|ITV Partner|Animal Planet
0D06:0024|ITV Partner|GTV
0D06:0025|ITV Partner|TV2 Bulgaria
0D06:0033|ITV Partner|HBO Serbia
0D06:0035|ITV Partner|Cinemax East Europe
0D06:03F2|ITV Partner|IT-Test
0D06:045A|ITV Partner|HBO Serbia
0D06:0516|ITV Partner|Viasat Explorer
0D06:0517|ITV Partner|TV 1000 Balkan
0D06:0518|ITV Partner|Free XTV 2
0D06:0519|ITV Partner|X-Dream TV
0D06:051A|ITV Partner|Free-X TV
0D06:0581|ITV Partner|Jetix Eastern Europe
0D06:07D6|ITV Partner|HBO Comedy Adria
0D06:083E|ITV Partner|VH-1 (Video Hits One)
0D06:3305|ITV Partner|Eurosport HD
0D06:3307|ITV Partner|ESP HD Turk
0D06:3308|ITV Partner|ESP HD Russian
0D06:3309|ITV Partner|ESP HD Dutch
0D06:330A|ITV Partner|ESP HD Czech
0D06:330B|ITV Partner|ESP HD German
0D06:330D|ITV Partner|ESP HD Portuguese
0D06:330E|ITV Partner|ESP HD Polish
0D06:330F|ITV Partner|ESP HD Hungarian
0D06:3310|ITV Partner|ESP HD Bulgaria
0D06:3311|ITV Partner|ESP HD Italy
0D06:35E9|ITV Partner|Eurosport 2
0D06:15E0|ITV Partner|MTVNHD
0D06:15E3|ITV Partner|Fashion One HD
0D06:15E4|ITV Partner|iConcerts HD
0D06:15E1|ITV Partner|NatGeo Wild HD
0D06:15E2|ITV Partner|Penthouse HD 2
0d06:17d4|ITV Partner|Deluxe Lounge HD
```

## Total TV

```
#  Total TV
091F:0001|Total TV|Eurosport
091F:0002|Total TV|Pink Extra
091F:0004|Total TV|Pink TV Bosnia Herzegovina
091F:0006|Total TV|Pink Srbija
091F:0007|Total TV|Pink Action
091F:0008|Total TV|Pink Movies
091F:0009|Total TV|Pink Film
091F:000A|Total TV|National Geographic UK
091F:000B|Total TV|Fox Crime Bulgaria
091F:000C|Total TV|Pink Family
091F:000D|Total TV|Discovery Channel Eastern Europe
091F:0018|Total TV|Sport Klub Slovenija
091F:001E|Total TV|Fox Life Regional
091F:0023|Total TV|Animal Planet
091F:0033|Total TV|HBO
091F:03EB|Total TV|BBC Prime
091F:044D|Total TV|Ultra
091F:044E|Total TV|B92
091F:044F|Total TV|Studio B
091F:0451|Total TV|Cinemania TV
091F:0452|Total TV|DoQ Klub
091F:0453|Total TV|Enter
091F:0454|Total TV|Sport Klub Serbia
091F:0455|Total TV|Film+
091F:0456|Total TV|Happy TV
091F:0457|Total TV|RTS 1
091F:0458|Total TV|RTS 2
091F:0459|Total TV|Disney XD
091F:045A|Total TV|HBO
091F:045B|Total TV|Radio B92
091f:045C|Total TV|B92 Info
091F:0515|Total TV|Viasat History
091F:0516|Total TV|Viasat Explorer
091F:0517|Total TV|TV 1000 Balkan
091F:0518|Total TV|Free XTV 2
091F:0519|Total TV|X-Dream TV
091F:051C|Total TV|Cinemax East Europe
091F:051D|Total TV|Eurosport
091F:051F|Total TV|Hallmark Central Europe
091F:0520|Total TV|Televizija S
091F:0521|Total TV|Sci Fi Channel
091f:0522|Total TV|E! Entertainment TV
091f:0523|Total TV|MiniMax Romania
091F:057A|Total TV|Cinemax 2
091F:057C|Total TV|Film+ Night
091F:057D|Total TV|B92 Info
091F:057F|Total TV|Zone Romantica
091F:0580|Total TV|Zone Reality UK
091F:0581|Total TV|Jetix Eastern Europe
091F:0584|Total TV|Fishing & Hunting
091f:0586|Total TV|MGM Eastern Europe
091f:0587|Total TV|Free-X TV
091f:0588|Total TV|MTV Adria
091f:0589|Total TV|Motors TV
091f:058B|Total TV|Golf Klub
091f:058C|Total TV|Pink Folk
091f:073A|Total TV|AXN Adria
091F:07D2|Total TV|Cinemax 2 East Europe
091F:07D4|Total TV|TV Avala
091F:07D5|Total TV|Fox TV
091F:07D6|Total TV|HBO Comedy Adria
091F:07D7|Total TV|Top Shop TV
091F:07D8|Total TV|Sport Klub +
091F:07D9|Total TV|Discovery Travel & Living Europe
091F:07DC|Total TV|RTRS
091F:07DD|Total TV|Alternativna TV
091f:07DF|Total TV|The History Channel
091F:0AF5|Total TV|TV Pika
091f:1131|Total TV|Pop TV Slovenia
091f:1132|Total TV|Kanal A Slovenia
091f:1133|Total TV|TV Pika
091f:1134|Total TV|TV 3 Slovenija
091f:1138|Total TV|Sport Klub Slovenija
091f:113A|Total TV|TV Slovenija 1
091f:11AB|Total TV|TV Slovenija 2
091F:1195|Total TV|ESPN America
091F:1196|Total TV|Disney Channel Polska
091F:1197|Total TV|Eurosport 2
091f:119A|Total TV|Palma Plus
091f:119B|Total TV|Arena Sport 1
091f:119C|Total TV|Arena Sport 2
091f:119D|Total TV|Arena Sport 3
091f:11A0|Total TV|SportKlub Hvratska
091f:11A1|Total TV|TV Alfa Sarajevo
091f:11A2|Total TV|Metropolis TV
091f:11A3|Total TV|SOS Kanal
091F:0005|Total TV|Animal Planet Eastern Europe
091f:058A|Total TV|Kanal D
091F:07DA|Total TV|HBO Adria
091f:1139|Total TV|BBC Entertainment Europe
```

## Total TV - OBN

```
#  Total TV - OBN
091F:07DB|Total TV - OBN|Open Broadcast Network
```

## Total TV - FTV

```
#  Total TV - FTV
091F:07DE|Total TV - FTV|Federalna Televizija
```

## VisionTV

```
#  VisionTV
0931:09C4|VisionTV|Hallmark Central Europe
0931:09CE|VisionTV|Cartoon Network Eastern Europe
0931:09D8|VisionTV|KidsCo
0931:09E2|VisionTV|Discovery Channel Eastern Europe
0931:09EC|VisionTV|NatGeo Wild
0931:09F6|VisionTV|ICTV
0931:0A00|VisionTV|Discovery World
0931:0A0A|VisionTV|Discovery Science Channel
0931:0A14|VisionTV|Viasat Explorer
0931:0A1E|VisionTV|Viasat History
0931:0A28|VisionTV|Ohota & Rybalka
0931:0A32|VisionTV|Russkij Illusion
0931:0A3C|VisionTV|National Geographic Russia
0931:0A46|VisionTV|Detski
0931:0A50|VisionTV|Fishing & Hunting
0931:0A5A|VisionTV|T E S T
0931:0A64|VisionTV|Drive
0931:0A6E|VisionTV|TV 1000 Action East
0931:0A78|VisionTV|Novy Kanal
0931:0A82|VisionTV|TV 1000 Russkoe Kino
0931:0A8C|VisionTV|Extreme Sports
0931:0A96|VisionTV|VH-1 (Video Hits One)
0931:0AA0|VisionTV|Zone Club
0931:0AAA|VisionTV|Nickelodeon
0931:0AB4|VisionTV|NatGeo Wild
0931:0ABE|VisionTV|24 Techno
0931:0AC8|VisionTV|TV 1000 East
0931:0AD2|VisionTV|Fox Crime Russia
0931:0ADC|VisionTV|Jetix Russia & Balkan
0931:0AE6|VisionTV|MGM Eastern Europe
0931:0AF0|VisionTV|Fox Life Russia
0931:0AFA|VisionTV|ZoneReality
0931:0B04|VisionTV|TV XXI
0931:0B0E|VisionTV|AXN Sci Fi
0931:0B18|VisionTV|Feniks-Art
0931:0B22|VisionTV|24 Techno
0931:0B2C|VisionTV|CNN International Europe
0931:0B36|VisionTV|Ukraina Telekanal
0931:0B40|VisionTV|ESPN Classic Sport Europe
0931:0B4A|VisionTV|Viasat Sport Baltic & Russia
```

## RCS DigiTV

```
#  RCS DigiTV
1801:0D48|RCS DigiTV|Fishing & Hunting
1801:0D70|RCS DigiTV|AXN Sci Fi
1801:0D7A|RCS DigiTV|AXN Crime
1801:0D84|RCS DigiTV|The Money Channel Romania
1801:0D8E|RCS DigiTV|Trinitas TV
1801:0D98|RCS DigiTV|HBO Comedy Central Europe
1801:0DA2|RCS DigiTV|NatGeo Wild Hungary
1801:0DAC|RCS DigiTV|TV 6 Hungary
1801:0DB6|RCS DigiTV|Mezzo
1801:0DC0|RCS DigiTV|Movies 24 Eastern Europe
1801:0DD4|RCS DigiTV|GSP TV
1801:0DDE|RCS DigiTV|Universal Eastern Europe
1801:0DE8|RCS DigiTV|NatGeo Wild Romania
1801:03ED|RCS DigiTV|TVR 2
1801:03F7|RCS DigiTV|Sport.ro
1801:03FD|RCS DigiTV|VH-1 (Video Hits One)
1801:0497|RCS DigiTV|Romantica Romania
1801:0550|RCS DigiTV|Cartoon Network
1801:0555|RCS DigiTV|Hallmark Central Europe
1801:055A|RCS DigiTV|Antena 3 Romania
1801:055C|RCS DigiTV|Euforia Lifestyle TV
1801:055F|RCS DigiTV|Favorit TV
1801:05E8|RCS DigiTV|Magyar ATV
1801:0604|RCS DigiTV|Duna TV
1801:060E|RCS DigiTV|SportKlub Romania
1801:0A82|RCS DigiTV|Sport Klub Hungary
1801:09EC|RCS DigiTV|InfoPRO
1801:09F6|RCS DigiTV|Guerrilla
1801:056E|RCS DigiTV|Animax
1801:0A0A|RCS DigiTV|Jetix Eastern Europe
1801:0A14|RCS DigiTV|MTV Hungary
1801:0A1E|RCS DigiTV|Viva TV Hungary
1801:0A28|RCS DigiTV|Zone Romantica
1801:0A32|RCS DigiTV|Sport 1 Hungary
1801:0A3C|RCS DigiTV|Sport 2 Hungary
1801:0A46|RCS DigiTV|HBO 2 Central Europe
1801:0A50|RCS DigiTV|4! Story TV
1801:0A64|RCS DigiTV|HBO Hungary
1801:0A6E|RCS DigiTV|Spektrum TV Hungary
1801:0A8C|RCS DigiTV|Magyar TV 2
1801:0FA1|RCS DigiTV|Juventus Radio
1801:0FAA|RCS DigiTV|Roxy Radio
1801:0C58|RCS DigiTV|TVR Info
1801:0C76|RCS DigiTV|HBO Comedy Adria
1801:0C80|RCS DigiTV|Fashion TV
1801:0C94|RCS DigiTV|B92
1801:0C9E|RCS DigiTV|TVR Cultural
1801:0CA8|RCS DigiTV|MTV Europe
1801:0CBC|RCS DigiTV|Kapital Network
1801:0CC6|RCS DigiTV|TVR 3
1801:0CD0|RCS DigiTV|Sport Klub +
1801:0CDA|RCS DigiTV|DoQ TV
1801:0CE4|RCS DigiTV|SportKlub Hvratska
1801:0CEE|RCS DigiTV|HBO Adria
1801:0E10|RCS DigiTV|Canal 1 Romania
1801:0D02|RCS DigiTV|Radio Roadstar
1801:0BB8|RCS DigiTV|Nova TV Croatia
1801:0BC2|RCS DigiTV|RTS 1 Serbia
1801:0BD6|RCS DigiTV|RTS 2
1801:0BE0|RCS DigiTV|RTV 1 (Vojvodina)
1801:0BEA|RCS DigiTV|RTL Hrvatska
1801:0BF4|RCS DigiTV|Otvorena TV
1801:0BFE|RCS DigiTV|DM Sat
1801:0C08|RCS DigiTV|TV Sljeme
1801:0C1C|RCS DigiTV|Croatian Music Channel
1801:0C26|RCS DigiTV|MTV Adria
1801:0C44|RCS DigiTV|Analog TV
1801:0C4E|RCS DigiTV|FTravel
1801:03EC|RCS DigiTV|TV Paprika
1801:03F5|RCS DigiTV|GSP TV
1801:040A|RCS DigiTV|Discovery Channel Romania
1801:0492|RCS DigiTV|Pro Cinema
1801:04A1|RCS DigiTV|Antena 2
1801:0A5A|RCS DigiTV|Playboy TV
1801:0B22|RCS DigiTV|Eurosport 2
1801:0B50|RCS DigiTV|National Geographic Europe
1801:0B86|RCS DigiTV|Kanal D Romania
1801:0B90|RCS DigiTV|Taraf TV
1801:0B9A|RCS DigiTV|Echo TV
1801:1770|RCS DigiTV|DigiFilm 1
1801:177A|RCS DigiTV|DigiFilm 2
1801:0407|RCS DigiTV|National Geographic Romania
1801:041A|RCS DigiTV|Pro TV
1801:0424|RCS DigiTV|Acas? TV
1801:049C|RCS DigiTV|AXN Central Europe
1801:04A6|RCS DigiTV|Hir TV
1801:054A|RCS DigiTV|Viasat Explorer
1801:0564|RCS DigiTV|TV 2 (Hungary)
1801:05E6|RCS DigiTV|RTL Klub
1801:05F0|RCS DigiTV|Film +
1801:05FA|RCS DigiTV|Cool TV
1801:0622|RCS DigiTV|Viasat 3
1801:09CE|RCS DigiTV|Radio S
1801:0FBE|RCS DigiTV|Sztar FM
1801:0A96|RCS DigiTV|Film + Czechia & Slovakia
1801:0AA0|RCS DigiTV|Discovery Channel Eastern Europe
1801:0AAA|RCS DigiTV|MusicBox
1801:0ABE|RCS DigiTV|ZoneReality
1801:0AC8|RCS DigiTV|Markiza TV
1801:0AD2|RCS DigiTV|J@J
1801:0ADC|RCS DigiTV|Ring TV (Slovakia)
1801:0AE6|RCS DigiTV|Animal Planet Eastern Europe
1801:0AFA|RCS DigiTV|HBO Czechia & Slovakia
1801:0B04|RCS DigiTV|Nova Sport
1801:0B0E|RCS DigiTV|?cko
1801:0B18|RCS DigiTV|Radio TV Severin
1801:0FC8|RCS DigiTV|National FM
1801:04B0|RCS DigiTV|Pro TV International
1801:0B36|RCS DigiTV|Sport 1 Czechia & Slovakia
1801:0B40|RCS DigiTV|STV 1
1801:0B4A|RCS DigiTV|STV 2
1801:0B54|RCS DigiTV|CT 1
1801:0B5E|RCS DigiTV|CT 2
1801:0B72|RCS DigiTV|CT4 Sport
1801:0B77|RCS DigiTV|Prima Televize
1801:0BA4|RCS DigiTV|TV Nova
1801:0C30|RCS DigiTV|Credo TV
1801:0C3A|RCS DigiTV|J@J Plus
1801:0C62|RCS DigiTV|STV 3
1801:0CF8|RCS DigiTV|Zone Romantica
1801:03E9|RCS DigiTV|TVR 1
1801:03EE|RCS DigiTV|Prima TV
1801:03EF|RCS DigiTV|Realitatea TV
1801:03F0|RCS DigiTV|Bucuresti 1 TV
1801:03F1|RCS DigiTV|National TV
1801:03F2|RCS DigiTV|N 24 Romania
1801:03F8|RCS DigiTV|Eurosport
1801:03F9|RCS DigiTV|Jetix Russia & Balkan
1801:03FA|RCS DigiTV|Animax
1801:03FB|RCS DigiTV|Kiss TV
1801:03FC|RCS DigiTV|MTV Romania
1801:03FE|RCS DigiTV|Etno TV
1801:0D0C|RCS DigiTV|Nova Cinema (Cz)
1801:0D16|RCS DigiTV|Eurosport 2
1801:0D20|RCS DigiTV|Sport 1 Romania
1801:0D2A|RCS DigiTV|Musicmax Adult
1801:0D34|RCS DigiTV|CNN International Europe
1801:0D3E|RCS DigiTV|TV5 Monde Europe
1801:0D52|RCS DigiTV|VTV Romania
1801:0D5C|RCS DigiTV|TV Neptun
1801:0E06|RCS DigiTV|TVS Oradea
1801:0E4C|RCS DigiTV|Top Shop TV
1801:03EB|RCS DigiTV|Antena 1
1801:03F4|RCS DigiTV|Hallmark Central Europe
1801:03FF|RCS DigiTV|Cinemax East Europe
1801:0400|RCS DigiTV|HBO Romania
1801:0402|RCS DigiTV|Discovery Channel Eastern Europe
1801:0403|RCS DigiTV|Animal Planet Eastern Europe
1801:0404|RCS DigiTV|Discovery World
1801:0405|RCS DigiTV|Discovery Science Channel
1801:0406|RCS DigiTV|Discovery Travel & Living UK
1801:0408|RCS DigiTV|ZoneReality
1801:0409|RCS DigiTV|Private Spice
1801:054E|RCS DigiTV|Viasat History
1801:062C|RCS DigiTV|TV 1000 Balkan
1801:09E2|RCS DigiTV|ProFM
1801:0DF2|RCS DigiTV|Romantic FM
1801:0DFC|RCS DigiTV|Radio Zu
```

## RCS DigiTV - TCM

```
#  RCS DigiTV - TCM
1801:0550|RCS DigiTV - TCM|Turner Classic Movies
```

## RCS DigiTV - M1

```
#  RCS DigiTV - M1
1801:0618|RCS DigiTV - M1|Magyar TV
```

## RCS DigiTV - NeT TV

```
#  RCS DigiTV - NeT TV
1801:0CB2|RCS DigiTV - NeT TV|Nezavisna Televizija
```

## RCS DigiTV - OBN

```
#  RCS DigiTV - OBN
1801:0BCC|RCS DigiTV - OBN|Open Broadcast Network
```

## CS Link

```
#  CS Link
0D0F:13AA|CS Link|NG Wild DUT
0D0F:13AB|CS Link|TV Barrandov
0D03,0D0F:13AC|CS Link|National Geographic Europe
0D0F:13AE|CS Link|NatGeo Wild Hungary
0D0F:13B7|CS Link|HBO HD Czech
0D0F:13BA|CS Link|Retro Music Television
0D0F:1F41|CS Link|Markiza TV
0D03,0D0F:1F42|CS Link|Prima Televize
0D03,0D0F:1F43|CS Link|CT1
0D03,0D0F:1F44|CS Link|CT2
0D03,0D0F:1F47|CS Link|CT4 Sport
0D03,0D0F:2329|CS Link|FilmBox
0D03,0D0F:232B|CS Link|FilmBox Extra
0D03,0D0F:232D|CS Link|Leo TV
0D03,0D0F:232E|CS Link|Spektrum Int
0D03,0D0F:2335|CS Link|Minimax Czechia
0D0F:2336|CS Link|Disney Channel Hungary & Czechia
0D0F:2337|CS Link|Universal Czechia
0D03,0D0F:332C|CS Link|CS Film/CS mini
0D03,0D0F:332D|CS Link|Sport 5
0D03,0D0F:332E|CS Link|Film + Czechia & Slovakia
0D03,0D0F:332F|CS Link|DoQ TV
0D03,0D0F:3330|CS Link|HBO Czechia & Slovakia
0D03,0D0F:3331|CS Link|Eurosport
0D03,0D0F:3333|CS Link|AXN Czech
0D03,0D0F:3334|CS Link|Fishing & Hunting
0D03,0D0F:3335|CS Link|HBO 2 Central Europe
0D03,0D0F:3336|CS Link|AXN Sci Fi
0D03,0D0F:3338|CS Link|Prima COOL/R1 tv
0D0F:3339|CS Link|Cinemax East Europe
0D0F:333A|CS Link|AXN Crime
0D0F:333B|CS Link|Daring!TV
0D0F:334A|CS Link|Nova HD
0D0F:334B|CS Link|J@J Plus
0D0F:334C|CS Link|Sport 1 Czechia & Slovakia
0D0F:334D|CS Link|Sport 1 Czechia & Slovakia
0D0F:334E|CS Link|J@J
0D0F:3351|CS Link|Nova Sport
0D0F:3352|CS Link|TV Nova
0D0F:3353|CS Link|Nova Cinema (Cz)
0D0F:3354|CS Link|MTV Czechia
0D0F:36F6|CS Link|CT HD
0D03:13AD|CS Link|Discovery Channel Eastern Europe
0D03:3332|CS Link|Nova Sport
0D03:232A|CS Link|TV Nova
0D03:232F|CS Link|Spice
0D03:2330|CS Link|Viasat History
0D03:2331|CS Link|Jim Jam
0D03:2332|CS Link|Nova Cinema (Cz)
0D03:2333|CS Link|Eurosport
0D03:2334|CS Link|Nostalgia
0D03:13B1|CS Link|Nova Sport HD
0D03:13b8|CS Link|Travel Channel HD
```

## Dolce TV

```
#  Dolce TV
092F:0068|Dolce TV|Euforia Lifestyle TV
092F:007B|Dolce TV|SportKlub Romania
092F:007C|Dolce TV|Kiss TV
092F:007D|Dolce TV|TVR 1
092F:007E|Dolce TV|TVR 2
092F:007F|Dolce TV|TVR Cultural
092F:0080|Dolce TV|Discovery Channel Romania
092F:0081|Dolce TV|Animal Planet Eastern Europe
092F:0083|Dolce TV|Discovery Science Channel
092F:0088|Dolce TV|Eurosport 2 Romania & Hungary
092F:009D|Dolce TV|Cinemax 2 Central Europe
092F:00A2|Dolce TV|AXN Sci Fi
092F:00A7|Dolce TV|VH-1 Classic
092F:00B0|Dolce TV|The Money Channel Romania
092F:00C2|Dolce TV|HBO Comedy Central Europe
092F:0065|Dolce TV|Antena 1
092F:0066|Dolce TV|Antena 2
092F:0067|Dolce TV|Antena 3 Romania
092F:0069|Dolce TV|AXN Central Europe
092F:006A|Dolce TV|Bucuresti 1 TV
092F:006C|Dolce TV|Favorit TV
092F:006D|Dolce TV|Animax
092F:006E|Dolce TV|N 24 Romania
092F:006F|Dolce TV|National TV
092F:0070|Dolce TV|OTV Romania
092F:0071|Dolce TV|Prima TV
092F:0072|Dolce TV|Pro TV International
092F:0073|Dolce TV|Pro TV
092F:0074|Dolce TV|Acas? TV
092F:0076|Dolce TV|Sport.ro
092F:0077|Dolce TV|Realitatea TV
092F:00BD|Dolce TV|X-Dream TV
092F:00F0|Dolce TV|CineStar (Romania)
092F:00FB|Dolce TV|TVRM Educational
092F:00FC|Dolce TV|TVR Info
092F:0109|Dolce TV|Universal Eastern Europe
092F:010A|Dolce TV|E! Entertainment TV
092F:010B|Dolce TV|Jetix Play
092F:010D|Dolce TV|Boom Sport One
092F:0084|Dolce TV|Discovery Travel & Living UK
092F:0086|Dolce TV|EuroNews
092F:008B|Dolce TV|CNN International Europe
092F:008D|Dolce TV|Hallmark Central Europe
092F:008E|Dolce TV|MTV Romania
092F:008F|Dolce TV|Private Spice
092F:0094|Dolce TV|Boomerang
092F:0095|Dolce TV|Cartoon Network Eastern Europe
092F:00A1|Dolce TV|AXN Crime
092F:00A5|Dolce TV|MTV Dance
092F:00A6|Dolce TV|MTV2 Europe
092F:00BB|Dolce TV|Free-X TV
092F:00BC|Dolce TV|Free XTV 2
092F:00BE|Dolce TV|Kanal D Romania
092F:00DF|Dolce TV|TCM Eastern Europe
092F:00E0|Dolce TV|Cartoon Network Eastern Europe
092F:0075|Dolce TV|Pro Cinema
092F:0078|Dolce TV|VH-1 (Video Hits One)
092F:0082|Dolce TV|Discovery World
092F:0087|Dolce TV|Eurosport
092F:008A|Dolce TV|National Geographic Romania
092F:008C|Dolce TV|Extreme Sports
092F:0092|Dolce TV|Telesport
092F:009B|Dolce TV|HBO Romania
092F:009C|Dolce TV|Cinemax East Europe
092F:00A4|Dolce TV|Fashion TV
092F:00AA|Dolce TV|Travel Channel
092F:00BA|Dolce TV|Trace TV
092F:00E7|Dolce TV|TV5 Monde Europe
092F:00F1|Dolce TV|ActionStar
092F:00D6|Dolce TV|Magyar TV 2
092F:00D7|Dolce TV|Duna TV
092F:00D8|Dolce TV|Film +
092F:00D9|Dolce TV|RTL Klub
092F:00DA|Dolce TV|Jetix Romania
092F:00DB|Dolce TV|Baby TV
092F:00DC|Dolce TV|KidsCo
092F:00DD|Dolce TV|Nickelodeon Hungary
092F:00DE|Dolce TV|Movies 24 Eastern Europe
092F:00E1|Dolce TV|Dolce Info
092F:00E2|Dolce TV|Trinitas TV
092F:00E5|Dolce TV|1 Music Channel
092F:00E8|Dolce TV|TVR 3
092F:00EA|Dolce TV|U (Romania)
092F:00F3|Dolce TV|ComedyStar
092F:00F5|Dolce TV|Dolce Info
```

## Dolce TV - M1

```
#  Dolce TV - M1
092F:00D5|Dolce TV - M1|Magyar TV
```

## Showtime Network

```
#  Showtime Network
0604:03EE|Showtime Network|Animal Planet
0604:03F0|Showtime Network|Discovery Science Channel
0604:00CE|Showtime Network|BBC Prime
0604:00CF|Showtime Network|E! Entertainment TV
0604:00D0|Showtime Network|ShowComedy Extra
0604:00D1|Showtime Network|ShowShasha
0604:00D2|Showtime Network|MBC+ Drama
0604:00D3|Showtime Network|Extreme Sports
0604:00D4|Showtime Network|Disney Channel Middle-East
0604:00D5|Showtime Network|NatGeo Wild
0604:07D2|Showtime Network|Showtime Home Cinema 1
0604:07D3|Showtime Network|Showtime Home Cinema 2
0604:07D4|Showtime Network|Showtime Home Cinema 3
0604:07D5|Showtime Network|Concierge TV
0604:07D7|Showtime Network|Bloomberg U.K.
0604:07DA|Showtime Network|Showtime Maghreb
0604:07DE|Showtime Network|Showtime Open TV
0604:07DF|Showtime Network|Style Network EMEA
0604:012D|Showtime Network|ShowSeries 1
0604:012E|Showtime Network|ShowSeries 1 Extra
0604:012F|Showtime Network|ShowSports 4
0604:0130|Showtime Network|ShowComedy
0604:0131|Showtime Network|ShowMovies 1
0604:0132|Showtime Network|ShowMovies 2
0604:0133|Showtime Network|ShowMovies Action
0604:0134|Showtime Network|ShowMovies Kids
0604:0135|Showtime Network|ShowMovies Comedy
0604:0136|Showtime Network|ShowSports 1
0604:0137|Showtime Network|ShowSports 2
0604:0138|Showtime Network|ShowSports 3
0604:01A5|Showtime Network|Cartoon Network
0604:01A7|Showtime Network|Discovery World
0604:01A8|Showtime Network|VH-1 (Video Hits One)
0604:01A9|Showtime Network|Hallmark Middle-East
0604:01AA|Showtime Network|BBC Lifestyle
0604:01AB|Showtime Network|Travel Channel
0604:01AC|Showtime Network|KidsCo
0604:01AD|Showtime Network|MTV Music
0604:01AE|Showtime Network|CNBC Europe
0604:01B0|Showtime Network|Boomerang
0604:01B1|Showtime Network|T433
```

## Showtime Network - TCM

```
#  Showtime Network - TCM
0604:01A6|Showtime Network - TCM|Turner Classic Movies
```

## Hello HD

```
#  Hello HD
0B00:014c|Hello HD|MelodyZen.tv HD
0BAA,0b00:0672|Hello HD|MelodyZen.tv HD
0BAA:014C|Hello HD|MelodyZen.tv HD
0BAA:0004|Hello HD|M1 HD
0BAA:0005|Hello HD|HBO HD Polska
0BAA:000A|Hello HD|HBO Hungary
0BAA:000B|Hello HD|HBO 2 Central Europe
0BAA:000F|Hello HD|HBO Comedy
0BAA:0013|Hello HD|Nickelodeon Hungary
0BAA:0019|Hello HD|FilmBox Extra
0BAA:001A|Hello HD|Hir TV
0BAA:001C|Hello HD|Eurosport 2 Romania & Hungary
0BAA:001E|Hello HD|Musicmax Adult
0BAA:001F|Hello HD|Minimax Hungary
0BAA:0020|Hello HD|Viasat 3
0BAA:0001|Hello HD|MTVNHD
0BAA:0002|Hello HD|National Geographic UK
0BAA:0003|Hello HD|The History Channel
0BAA:0008|Hello HD|Bebe TV HD
0BAA:000C|Hello HD|Magyar ATV
0BAA:000D|Hello HD|TV 2 (Hungary)
0BAA:000E|Hello HD|RTL Klub
0BAA:0010|Hello HD|Cinemax (Hungary)
0BAA:0011|Hello HD|TV 6 Hungary
0BAA:0012|Hello HD|AXN Central Europe
0BAA:0014|Hello HD|4! Story TV
0BAA:0382|Hello HD|Sport 1 Hungary
0BAA:3305|Hello HD|Eurosport HD
0baa:3b63|Hello HD|Eurosport 2 HD
0BAA:3A37|Hello HD|Eurosport 2 Romania & Hungary
0BAA:1A99|Hello HD|TV 2 (Hungary)
0BAA:1A97|Hello HD|RTL Klub
0BAA:1A9A|Hello HD|Viasat 3
0BAA:1A9B|Hello HD|4! Story TV
0BAA:1A93|Hello HD|Magyar ATV
0BAA:1A95|Hello HD|Hir TV
0BAA:1AF3|Hello HD|Filmbox HD
0BAA:1A91|Hello HD|FilmBox Extra
0BAA:1AA3|Hello HD|HBO Hungary
0BAA:1AA4|Hello HD|HBO 2 Central Europe
0BAA:1AA5|Hello HD|HBO Comedy
0BAA:1AA6|Hello HD|Cinemax (Hungary)
0BAA:1A9C|Hello HD|Cool TV
0BAA:1E9E|Hello HD|Film +
0BAA:1AA8|Hello HD|Universal Channel
0BAA:1A9d|Hello HD|DigiSport Hungary
0BAA:1A98|Hello HD|Sport 1 Hungary
0BAA:1AA7|Hello HD|SportKlub
0BAA:1A9F|Hello HD|Spektrum Int
0BAA:1AA9|Hello HD|The History Channel
0BAA:1AA1|Hello HD|Discovery Channel Hungary
0BAA:1AAA|Hello HD|Animal Planet Eastern Europe
0BAA:1AA2|Hello HD|NatGeo Wild Hungary
0BAA:0DAD|Hello HD|FTV HD
0BAA:1A96|Hello HD|Minimax Hungary
0BAA:439D|Hello HD|BabyTV
0BAA:0DAE|Hello HD|iConcerts
0BAA:0DB3|Hello HD|MEZZO
0BAA:1A94|Hello HD|M1
```



## Canal Digital Nordic

```
#  Canal Digital Nordic
0B00:0011|Canal Digital Nordic|YLE TV 1
0B00:0021|Canal Digital Nordic|YLE TV 2
0B00:0051|Canal Digital Nordic|YLE FST
0B00:0081|Canal Digital Nordic|Gospel Channel Europe
0B00:0091|Canal Digital Nordic|YLE Teema
0B00:0095|Canal Digital Nordic|TV 2 Nyhetskanalen
0B00:0099|Canal Digital Nordic|TV 2 Filmkanalen
0B00:009A|Canal Digital Nordic|TV 2 Sport
0B00:009F|Canal Digital Nordic|GO|Canal Digital Nordic
0B00:00A3|Canal Digital Nordic|TV 2 Bliss
0B00:00C9|Canal Digital Nordic|Nat Geo Nordic
0B00:00CA|Canal Digital Nordic|CNN International
0B00:00CB|Canal Digital Nordic|Travel Channel
0B00:00CC|Canal Digital Nordic|VH1
0B00:00CD|Canal Digital Nordic|MTV (N)
0B00:00CE|Canal Digital Nordic|Nickelodeon
0B00:00E3|Canal Digital Nordic|Adult channel
0B00:00E5|Canal Digital Nordic|Kanal 5 (DK)
0B00:00E9|Canal Digital Nordic|BBC Knowledge
0B00:012D|Canal Digital Nordic|C More First
0B00:012E|Canal Digital Nordic|C More Sport
0B00:0130|Canal Digital Nordic|Nelonen
0B00:0131|Canal Digital Nordic|MTV3 MAX Sport 1
0B00:0132|Canal Digital Nordic|C More Fotball
0B00:0133|Canal Digital Nordic|CANAL8 Sport
0B00:0134|Canal Digital Nordic|C More Series
0B00:0135|Canal Digital Nordic|C More Emotion
0B00:013D|Canal Digital Nordic|C More Hits
0B00:0140|Canal Digital Nordic|C More Fotboll
0B00:0141|Canal Digital Nordic|C More First
0B00:0142|Canal Digital Nordic|CANAL8 Sport
0B00:0191|Canal Digital Nordic|Nordic TCM
0B00:0192|Canal Digital Nordic|Cartoon Network
0B00:0193|Canal Digital Nordic|Kanal 5 Stockholm
0B00:0196|Canal Digital Nordic|Discovery (N)
0B00:0197|Canal Digital Nordic|Animal Planet
0B00:0199|Canal Digital Nordic|Discovery (S)
0B00:019B|Canal Digital Nordic|Cartoon Network Nordic
0B00:019C|Canal Digital Nordic|Discovery (D)
0B00:019D|Canal Digital Nordic|Voice (DK)
0B00:019E|Canal Digital Nordic|The Poker Channel
0B00:019F|Canal Digital Nordic|Discovery (F)
0B00:01A0|Canal Digital Nordic|TLC Norge
0B00:01A1|Canal Digital Nordic|TLC Sverige
0B00:01A2|Canal Digital Nordic|TLC Danmark
0B00:01F6|Canal Digital Nordic|TV Finland
0B00:0207|Canal Digital Nordic|CCTV News
0B00:0259|Canal Digital Nordic|DR1
0B00:025A|Canal Digital Nordic|DR2
0B00:025B|Canal Digital Nordic|dk4
0B00:0263|Canal Digital Nordic|TV2 Zulu
0B00:032F|Canal Digital Nordic|Viasat Sport HD (N)
0B00:0332|Canal Digital Nordic|Viasat Fotboll HD
0B00:0388|Canal Digital Nordic|BTV-1
0B00:0389|Canal Digital Nordic|Eurosport
0B00:03E6|Canal Digital Nordic|Swedbank
0B00:03E9|Canal Digital Nordic|BBC World News
0B00:03F5|Canal Digital Nordic|Sky News
0B00:03F6|Canal Digital Nordic|Discov World
0B00:03F7|Canal Digital Nordic|Discov Science
0B00:03F8|Canal Digital Nordic|TLC Europe
0B00:03FA|Canal Digital Nordic|VH1 Classic
0B00:03FF|Canal Digital Nordic|Motors TV
0B00:0400|Canal Digital Nordic|Nick-VH1C TS
0B00:0401|Canal Digital Nordic|Nickelodeon (S)
0B00:0402|Canal Digital Nordic|Nick (S)-VH1C TS
0B00:0403|Canal Digital Nordic|Comedy Central
0B00:0404|Canal Digital Nordic|Nick (S)-CC TS
0B00:040A|Canal Digital Nordic|TV 2 PL1 HD
0B00:040B|Canal Digital Nordic|TV 2 PL2 HD
0B00:040C|Canal Digital Nordic|TV 2 PL1 HD
0B00:040D|Canal Digital Nordic|TV 2 PL2 HD
0B00:040F|Canal Digital Nordic|NRK1 HD
0B00:0410|Canal Digital Nordic|NRK2 HD
0B00:0411|Canal Digital Nordic|NRK Super / NRK3 HD
0B00:0412|Canal Digital Nordic|NRK1 HD
0B00:0413|Canal Digital Nordic|NRK2 HD
0B00:0414|Canal Digital Nordic|Viasat Hockey HD
0B00:057C|Canal Digital Nordic|C More Sport HD
0B00:057D|Canal Digital Nordic|TV4 HD
0B00:057E|Canal Digital Nordic|SVT HD
0B00:057F|Canal Digital Nordic|C More First HD
0B00:0580|Canal Digital Nordic|C More Sport HD
0B00:0583|Canal Digital Nordic|CANAL9 HD (D)
0B00:0584|Canal Digital Nordic|C More Series HD
0B00:0585|Canal Digital Nordic|CANAL9 HD (D)
0B00:0586|Canal Digital Nordic|C More Series HD
0B00:05DD|Canal Digital Nordic|NRK1
0B00:05DE|Canal Digital Nordic|NRK2
0B00:05E4|Canal Digital Nordic|TV 2 (N)
0B00:05E5|Canal Digital Nordic|TVNorge
0B00:05E7|Canal Digital Nordic|Rikstoto Direkte
0B00:05EC|Canal Digital Nordic|NRK1 Tegnspr?k
0B00:05F0|Canal Digital Nordic|NRK1 ?stafjells
0B00:05F1|Canal Digital Nordic|NRK1 Nordnytt
0B00:0605|Canal Digital Nordic|Hustler TV
0B00:0608|Canal Digital Nordic|Disney Junior
0B00:060B|Canal Digital Nordic|JIM
0B00:060D|Canal Digital Nordic|Nat Geo (N)
0B00:0642|Canal Digital Nordic|TV4|Canal Digital Nordic
0B00:0648|Canal Digital Nordic|Eurosport 2
0B00:0649|Canal Digital Nordic|Star|Canal Digital Nordic
0B00:064E|Canal Digital Nordic|MTV3
0B00:0711|Canal Digital Nordic|Visjon Norge
0B00:0721|Canal Digital Nordic|TV2 Sport2
0B00:0726|Canal Digital Nordic|Bloomberg|Canal Digital Nordic
0B00:072F|Canal Digital Nordic|TV 2 Zebra
0B00:0736|Canal Digital Nordic|ESPN Classic
0B00:0737|Canal Digital Nordic|ESPN America
0B00:073A|Canal Digital Nordic|TV8
0B00:073B|Canal Digital Nordic|TV 2 Sport 5
0B00:073C|Canal Digital Nordic|Kino TV
0B00:073D|Canal Digital Nordic|TV 3 (N)
0B00:076E|Canal Digital Nordic|MSAT
0B00:0770|Canal Digital Nordic|TV LUX
0B00:0771|Canal Digital Nordic|CETV
0B00:0772|Canal Digital Nordic|Planeta TV
0B00:0775|Canal Digital Nordic|SKAT
0B00:0787|Canal Digital Nordic|PRO BG
0B00:0789|Canal Digital Nordic|McBox
0B00:078E|Canal Digital Nordic|RING BG
0B00:07D1|Canal Digital Nordic|DanToto|Canal Digital Nordic
0B00:07D2|Canal Digital Nordic|DR1 Syd
0B00:07D7|Canal Digital Nordic|DR2 Syd
0B00:07DE|Canal Digital Nordic|NRK1 Reserve
0B00:0838|Canal Digital Nordic|C More Live 2
0B00:0839|Canal Digital Nordic|C More Live 3
0B00:083B|Canal Digital Nordic|TV11
0B00:083C|Canal Digital Nordic|Sjuan
0B00:083D|Canal Digital Nordic|C More Live 4
0B00:083F|Canal Digital Nordic|Showtime
0B00:0841|Canal Digital Nordic|TV4 Guld
0B00:0842|Canal Digital Nordic|TV4 Komedi
0B00:0843|Canal Digital Nordic|TV4 Science Fiction
0B00:08FD|Canal Digital Nordic|Sub tv
0B00:0966|Canal Digital Nordic|6`eren
0B00:0967|Canal Digital Nordic|Boomerang
0B00:0968|Canal Digital Nordic|TV2 / Lorry
0B00:0969|Canal Digital Nordic|TV2 / Lorry
0B00:096A|Canal Digital Nordic|Nat Geo (D)
0B00:096B|Canal Digital Nordic|Canal9 (D)
0B00:096C|Canal Digital Nordic|TV2 News
0B00:09C5|Canal Digital Nordic|BBC Lifestyle
0B00:09C7|Canal Digital Nordic|MTV (S)
0B00:09CB|Canal Digital Nordic|St-Sh TS
0B00:09CF|Canal Digital Nordic|History Channel
0B00:09D0|Canal Digital Nordic|FEM
0B00:09D2|Canal Digital Nordic|Viasat 4
0B00:09D4|Canal Digital Nordic|Fox Crime
0B00:09D4|Canal Digital Nordic|TV3 Sport 1
0B00:0A8E|Canal Digital Nordic|SVT1
0B00:0A8F|Canal Digital Nordic|SVTB
0B00:0A90|Canal Digital Nordic|TV4 Film
0B00:0A92|Canal Digital Nordic|Kunskapskanalen
0B00:0A93|Canal Digital Nordic|TV4 Sport
0B00:0A95|Canal Digital Nordic|TV4 News
0B00:0A96|Canal Digital Nordic|TV4 Fakta
0B00:0AEF|Canal Digital Nordic|2799
0B00:0AF1|Canal Digital Nordic|TV2 Charlie
0B00:0AF6|Canal Digital Nordic|Lifestyle TV
0B00:0AF9|Canal Digital Nordic|TV2 Film
0B00:0AFB|Canal Digital Nordic|DR Update
0B00:0AFC|Canal Digital Nordic|RUV
0B00:0AFF|Canal Digital Nordic|DR Ramasjang
0B00:0B00|Canal Digital Nordic|DR K
0B00:0B5D|Canal Digital Nordic|Toto TV (MaxiSat)
0B00:0B60|Canal Digital Nordic|AlJazeera English
0B00:0B6C|Canal Digital Nordic|Kanal 5 HD
0B00:0B70|Canal Digital Nordic|Nelonen HD
0B00:0B71|Canal Digital Nordic|TV 2 Film HD
0B00:0B72|Canal Digital Nordic|Nelonen HD 21
0B00:0B73|Canal Digital Nordic|TV2 Film HD
0B00:0B77|Canal Digital Nordic|ESPN America HD
0B00:0B78|Canal Digital Nordic|ESPN America HD
0B00:0BB9|Canal Digital Nordic|SVT2
0B00:0BBA|Canal Digital Nordic|SVT2 Nordnytt
0B00:0BBB|Canal Digital Nordic|SVT2 V?sterbottenNytt
0B00:0BBC|Canal Digital Nordic|SVT2 MittNytt
0B00:0BBD|Canal Digital Nordic|SVT2 G?vledala
0B00:0BBE|Canal Digital Nordic|SVT2 V?rmlandsNytt
0B00:0BBF|Canal Digital Nordic|SVT2 Tv?rsNytt
0B00:0BC0|Canal Digital Nordic|SVT2 V?stNytt
0B00:0BC1|Canal Digital Nordic|SVT2 ?stNytt
0B00:0BC2|Canal Digital Nordic|SVT2 Sm?landsNytt
0B00:0BC3|Canal Digital Nordic|SVT2 SydNytt
0B00:0BC4|Canal Digital Nordic|SVT24
0B00:0BCF|Canal Digital Nordic|SVT2 G?vle
0B00:0BD0|Canal Digital Nordic|SVT2 J?mtland
0B00:0BD1|Canal Digital Nordic|SVT2 J?nk?ping
0B00:0BD2|Canal Digital Nordic|SVT1 Talande Textremsa
0B00:0BD3|Canal Digital Nordic|SVT2 Talande Textremsa
0B00:0BD4|Canal Digital Nordic|SVT1 NordNytt
0B00:0BD5|Canal Digital Nordic|SVT1 V?sterbottenNytt
0B00:0BD6|Canal Digital Nordic|SVT1 MittNytt
0B00:0BD7|Canal Digital Nordic|SVT1 G?vledala
0B00:0BD8|Canal Digital Nordic|SVT1 V?rmlandsNytt
0B00:0BD9|Canal Digital Nordic|SVT1 Tv?rsNytt
0B00:0BDA|Canal Digital Nordic|SVT1 V?stNytt
0B00:0BDB|Canal Digital Nordic|SVT1 ?stNytt
0B00:0BDC|Canal Digital Nordic|SVT1 Sm?landsNytt
0B00:0BDD|Canal Digital Nordic|SVT1 SydNytt
0B00:0BDE|Canal Digital Nordic|SVT1 G?vle
0B00:0BDF|Canal Digital Nordic|SVT1 J?mtland
0B00:0BE0|Canal Digital Nordic|SVT1 J?nk?ping
0B00:0C82|Canal Digital Nordic|VOX
0B00:0C82|Canal Digital Nordic|Voice (NO)
0B00:0C85|Canal Digital Nordic|MTV (D)
0B00:0C86|Canal Digital Nordic|Disney Channel (S/F)
0B00:0C87|Canal Digital Nordic|Disney XD (S/F)
0B00:0C89|Canal Digital Nordic|MTV (F)
0B00:0C8A|Canal Digital Nordic|Kanal 4 DK
0B00:0C8B|Canal Digital Nordic|Blue Hustler
0B00:0CEA|Canal Digital Nordic|C More First HD
0B00:0CEB|Canal Digital Nordic|C More Action
0B00:0CEC|Canal Digital Nordic|C More Tennis
0B00:0CEF|Canal Digital Nordic|TV2 Sport4
0B00:0CF0|Canal Digital Nordic|TV2 Sport3
0B00:0CF1|Canal Digital Nordic|Silver
0B00:0CF3|Canal Digital Nordic|C More Extreme
0B00:0CF6|Canal Digital Nordic|SF Kanalen
0B00:0CF7|Canal Digital Nordic|CANAL9 (N)
0B00:0CF8|Canal Digital Nordic|Canal+ Extra 4
0B00:0CFB|Canal Digital Nordic|C More Kids
0B00:0D4A|Canal Digital Nordic|TNT Nordic
0B00:0D4B|Canal Digital Nordic|Kanal 9
0B00:0D4C|Canal Digital Nordic|C More Hockey
0B00:0D4D|Canal Digital Nordic|C More Live
0B00:0D4F|Canal Digital Nordic|TV3 (S)
0B00:0D50|Canal Digital Nordic|Kanal 5 Mitt/Norr
0B00:0D51|Canal Digital Nordic|Kanal 5 V?st
0B00:0D52|Canal Digital Nordic|Kanal 5 Syd
0B00:0D52|Canal Digital Nordic|Kanal 5 (S)
0B00:0D5C|Canal Digital Nordic|Disney Channel (N)
0B00:0D5D|Canal Digital Nordic|Disney Channel (D)
0B00:0D5E|Canal Digital Nordic|Disney XD (N/D)
0B00:0DAE|Canal Digital Nordic|NRK1 Nordland
0B00:0DAF|Canal Digital Nordic|NRK1 Midtnytt
0B00:0DB0|Canal Digital Nordic|NRK1 M?re & Romsdal
0B00:0DB1|Canal Digital Nordic|NRK1 Vestlandsrevyen
0B00:0DB2|Canal Digital Nordic|NRK1 Rogaland
0B00:0DB3|Canal Digital Nordic|NRK1 S?rlandet
0B00:0DB4|Canal Digital Nordic|NRK1 ?stnytt
0B00:0DB5|Canal Digital Nordic|NRK1 ?stfold
0B00:0DB6|Canal Digital Nordic|NRK Super / NRK3
0B00:0DB8|Canal Digital Nordic|NRK Ekstra
0B00:0DBB|Canal Digital Nordic|NRK1 HD
0B00:0ED9|Canal Digital Nordic|SVT HD
0B00:0EDD|Canal Digital Nordic|Rush HD
0B00:0EDE|Canal Digital Nordic|Nat Geo HD
0B00:0EDF|Canal Digital Nordic|Nat Geo HD
0B00:0EE0|Canal Digital Nordic|Rush HD 19
0B00:0EE7|Canal Digital Nordic|Animal Planet HD
0B00:0EEC|Canal Digital Nordic|Viasat Sport HD
0B00:0FA1|Canal Digital Nordic|Musiq1
0B00:0FA5|Canal Digital Nordic|RTR Planeta
0B00:0FA6|Canal Digital Nordic|Jurnal TV
0B00:0FA7|Canal Digital Nordic|Dixi TV
0B00:0FA7|Canal Digital Nordic|STS Dixi
0B00:0FA8|Canal Digital Nordic|TNT Bravo
0B00:0FAC|Canal Digital Nordic|Pro TV Chisinau
0B00:0FAD|Canal Digital Nordic|NIT
0B00:0FAE|Canal Digital Nordic|Pervii Canal Moldova
0B00:0FAF|Canal Digital Nordic|Moldova 1
0B00:0FB0|Canal Digital Nordic|TV7
0B00:0FB1|Canal Digital Nordic|EU TV
0B00:0FB2|Canal Digital Nordic|N4
0B00:0FB3|Canal Digital Nordic|Mynele TV
0B00:0FB4|Canal Digital Nordic|SET
0B00:0FBD|Canal Digital Nordic|TV Patriot
0B00:0FBF|Canal Digital Nordic|TV8.SK
0B00:0FC8|Canal Digital Nordic|Viasat Film Hits
0B00:0FD4|Canal Digital Nordic|Viasat Film Family
0B00:0FD5|Canal Digital Nordic|Viasat Film Premiere HD
0B00:1005|Canal Digital Nordic|Eurosport HD
0B00:1006|Canal Digital Nordic|Discovery HD
0B00:1007|Canal Digital Nordic|TVNorge HD
0B00:1008|Canal Digital Nordic|BBC HD|Canal Digital Nordic
0B00:1009|Canal Digital Nordic|Eurosport HD
0B00:100A|Canal Digital Nordic|Discovery HD
0B00:100B|Canal Digital Nordic|Kanal 5 HD
0B00:100C|Canal Digital Nordic|BBC HC|Canal Digital Nordic
0B00:100D|Canal Digital Nordic|TV 3 HD (S)
0B00:100E|Canal Digital Nordic|TV 3 HD (S)
0B00:1067|Canal Digital Nordic|Eurosport HD
0B00:1069|Canal Digital Nordic|Silver HD
0B00:106A|Canal Digital Nordic|History Chnl HD
0B00:106B|Canal Digital Nordic|Animal Planet HD
0B00:106C|Canal Digital Nordic|TV4 HD
0B00:106D|Canal Digital Nordic|Silver HD 20
0B00:106E|Canal Digital Nordic|History Chnl HD
0B00:106F|Canal Digital Nordic|TVNorge HD
0B00:1070|Canal Digital Nordic|Animal Planet HD
0B00:1071|Canal Digital Nordic|History Chnl HD
0B00:10CE|Canal Digital Nordic|Eurosport
0B00:1147|Canal Digital Nordic|Viasat Motor
0B00:1152|Canal Digital Nordic|Viasat Fotball HD
0B00:115F|Canal Digital Nordic|Viasat Film Action HD
0B00:1161|Canal Digital Nordic|Viasat Series HD
0B00:1162|Canal Digital Nordic|Viasat Film Comedy HD
0B00:1195|Canal Digital Nordic|Liv
0B00:11FC|Canal Digital Nordic|Barclays PLHD
0B00:11FD|Canal Digital Nordic|Barclays PL HD
0B00:11FE|Canal Digital Nordic|MTVN HD
0B00:1200|Canal Digital Nordic|MTVN HD
0B00:125D|Canal Digital Nordic|TV 2 Nord
0B00:125E|Canal Digital Nordic|TV 2 Midt-Vest
0B00:125F|Canal Digital Nordic|TV 2 ostjylland
0B00:1260|Canal Digital Nordic|TV 2 Syd
0B00:1261|Canal Digital Nordic|TV 2 Fyn
0B00:1262|Canal Digital Nordic|TV 2 Ost
0B00:1263|Canal Digital Nordic|TV 2 Bornholm
0B00:12BF|Canal Digital Nordic|DVB Sub Test
0B00:12C1|Canal Digital Nordic|DR HD
0B00:12C2|Canal Digital Nordic|DR HD
0B00:12C5|Canal Digital Nordic|Nat Geo Wild HD
0B00:12C6|Canal Digital Nordic|Nat Geo Wild HD
0B00:12C7|Canal Digital Nordic|6`eren HD
0B00:12C8|Canal Digital Nordic|6`eren HD
0B00:12CB|Canal Digital Nordic|DR1 (720p50)
0B00:12CC|Canal Digital Nordic|DR1 (720p50)
0B00:12CD|Canal Digital Nordic|Kanal Global
0B00:12CE|Canal Digital Nordic|TV4 Sport Xtra
0B00:1325|Canal Digital Nordic|MTV3 Max
0B00:1326|Canal Digital Nordic|MTV3 Fakta
0B00:1327|Canal Digital Nordic|MTV3 Komedia
0B00:1328|Canal Digital Nordic|MTV3 Sarja
0B00:1329|Canal Digital Nordic|MTV3 Fakta XL
0B00:132A|Canal Digital Nordic|MTV3 Leffa
0B00:132B|Canal Digital Nordic|MTV3 Junior
0B00:132C|Canal Digital Nordic|URHO TV
0B00:132E|Canal Digital Nordic|Eurosport 2 (catv)
0B00:132F|Canal Digital Nordic|Discov World (catv)
0B00:1330|Canal Digital Nordic|Discov Science (catv)
0B00:1331|Canal Digital Nordic|Discov Tra&liv (catv)
0B00:1332|Canal Digital Nordic|Travel Channel (catv)
0B00:1333|Canal Digital Nordic|VH1 (catv)
0B00:1334|Canal Digital Nordic|Bloomberg (catv)
0B00:1335|Canal Digital Nordic|Sky News (catv)
0B00:1336|Canal Digital Nordic|Al Jazeera English (catv)
0B00:1374|Canal Digital Nordic|Test 0B02
0B00:1771|Canal Digital Nordic|France 24
0B00:1772|Canal Digital Nordic|MAX
0B00:1773|Canal Digital Nordic|Test S1
0B00:17D5|Canal Digital Nordic|Kanal 10 Norge
0B00:183A|Canal Digital Nordic|ESPN America
0B00:1901|Canal Digital Nordic|TV 2 HD (N)
0B00:1902|Canal Digital Nordic|TV 2 HD (N)
0B00:1904|Canal Digital Nordic|TV 2 PL3 HD
0B00:1905|Canal Digital Nordic|TV 2 PL3 HD
0B00:1965|Canal Digital Nordic|DUNA 1 HD
0B00:1966|Canal Digital Nordic|DUNA 1
0B00:1967|Canal Digital Nordic|DUNA 2
0B00:196A|Canal Digital Nordic|MTV3 MAX Sport 2
0B00:1A91|Canal Digital Nordic|Kanal 5 HD
0B00:1A94|Canal Digital Nordic|MTV 3 HD
0B00:1A96|Canal Digital Nordic|TV4 Fakta XL
0B00:1AF7|Canal Digital Nordic|C More Hits HD
0B00:1AF8|Canal Digital Nordic|C More Hits HD
0B00:1AF9|Canal Digital Nordic|HighTV 3D
0B00:1B59|Canal Digital Nordic|C More Fotball HD
0B00:1B5A|Canal Digital Nordic|C More Fotball HD
0B00:1B5B|Canal Digital Nordic|Nic Jr.
0B00:1BBD|Canal Digital Nordic|BBC Entertainment (N)
0B00:1C47|Canal Digital Nordic|Trace Urban HD
0B00:1CD7|Canal Digital Nordic|Viasat Sport Finland
0B00:1CFB|Canal Digital Nordic|TV3 Sport HD
0B00:1CFC|Canal Digital Nordic|ESportsTV HD
0B00:2702|Canal Digital Nordic|SVT1
0B00:3090|Canal Digital Nordic|Aged Care Channel
0B00:4292|Canal Digital Nordic|TV 2 Sport Premium 6 HD
0B00:4293|Canal Digital Nordic|TV 2 Sport Premium 7 HD
0B00:4294|Canal Digital Nordic|TV 2 Sport Premium 8 HD
```

## Canal Digital Nordic (catTV)

```
#  Canal Digital Nordic (catTV)
0B00:0001|Canal Digital cat|TRT TÜRK
0B00:0004|Canal Digital cat|TV2/Lorry (dk)
0B00:009A|Canal Digital cat|TV 2 Sport
0B00:00CA|Canal Digital cat|CNN International
0B00:00CB|Canal Digital cat|Travel Channel
0B00:00CC|Canal Digital cat|VH1
0B00:00CD|Canal Digital cat|MTV
0B00:00CE|Canal Digital cat|Nickelodeon
0B00:00D6|Canal Digital cat|Baby TV
0B00:00D7|Canal Digital cat|Investigation Discovery
0B00:00D8|Canal Digital cat|Playboy TV
0B00:00E3|Canal Digital cat|Adult Channel
0B00:00E9|Canal Digital cat|BBC Knowledge
0B00:012D|Canal Digital cat|C More First
0B00:0132|Canal Digital cat|C More Fotball
0B00:0134|Canal Digital cat|C More Series
0B00:0135|Canal Digital cat|C More Emotion
0B00:013D|Canal Digital cat|C More Hits
0B00:0191|Canal Digital cat|Nordic TCM
0B00:0192|Canal Digital cat|Cartoon Network
0B00:0196|Canal Digital cat|Discovery (N)
0B00:0197|Canal Digital cat|Animal Planet
0B00:01A0|Canal Digital cat|TLC Norge
0B00:01A4|Canal Digital cat|GINX
0B00:0259|Canal Digital cat|DR 1
0B00:02C4|Canal Digital cat|Al Jazeera
0B00:031E|Canal Digital cat|Disney XD
0B00:0320|Canal Digital cat|Disney Channel
0B00:0389|Canal Digital cat|Eurosport
0B00:03E9|Canal Digital cat|BBC World News
0B00:03F1|Canal Digital cat|Visningskanal
0B00:03F5|Canal Digital cat|Sky News
0B00:03F6|Canal Digital cat|Discov World
0B00:03F7|Canal Digital cat|Discov Science
0B00:03FA|Canal Digital cat|VH1 Classic
0B00:03FF|Canal Digital cat|Motors TV
0B00:044F|Canal Digital cat|BBC Entertainment
0B00:0474|Canal Digital cat|Viasat Film
0B00:047E|Canal Digital cat|Viasat Action
0B00:04AB|Canal Digital cat|Viasat Drama
0B00:04EB|Canal Digital cat|Visningskanal 2
0B00:04FB|Canal Digital cat|TV Øst
0B00:0502|Canal Digital cat|STAR Gold
0B00:0503|Canal Digital cat|STAR Life OK
0B00:0504|Canal Digital cat|STAR Plus
0B00:05DD|Canal Digital cat|NRK1 Østlandssendingen
0B00:05DE|Canal Digital cat|NRK2
0B00:05E4|Canal Digital cat|TV 2 (N)
0B00:05E5|Canal Digital cat|TV Norge
0B00:05E7|Canal Digital cat|Rikstoto Direkte
0B00:05EC|Canal Digital cat|NRK Tegnspråk
0B00:05F0|Canal Digital cat|NRK1 Østafjells
0B00:05F1|Canal Digital cat|NRK1 Nordnytt
0B00:0608|Canal Digital cat|Disney Junior
0B00:060D|Canal Digital cat|Nat Geo Channel
0B00:0642|Canal Digital cat|TV 4 Sverige
0B00:0648|Canal Digital cat|Eurosport 2
0B00:0649|Canal Digital cat|Star
0B00:06AC|Canal Digital cat|RTR Planeta
0B00:0711|Canal Digital cat|Visjon Norge
0B00:0721|Canal Digital cat|TV 2 Sport 2
0B00:0726|Canal Digital cat|Bloomberg
0B00:0736|Canal Digital cat|ESPN Classic
0B00:0737|Canal Digital cat|ESPN America
0B00:073B|Canal Digital cat|TV 2 Sport 5
0B00:073D|Canal Digital cat|TV 3 Norge
0B00:083E|Canal Digital cat|Nature/Crime
0B00:083F|Canal Digital cat|Showtime
0B00:08A8|Canal Digital cat|Kanal 10 Norge
0B00:0967|Canal Digital cat|Boomerang
0B00:09C5|Canal Digital cat|BBC Lifestyle
0B00:09CF|Canal Digital cat|History Channel
0B00:09D0|Canal Digital cat|FEM
0B00:09D2|Canal Digital cat|Viasat 4
0B00:09D4|Canal Digital cat|Fox Crime
0B00:0A8E|Canal Digital cat|SVT1
0B00:0B60|Canal Digital cat|AlJazeera English
0B00:0BB9|Canal Digital cat|SVT2
0B00:0C26|Canal Digital cat|Viasat Family
0B00:0C30|Canal Digital cat|Viasat Nordic
0B00:0C3A|Canal Digital cat|Viasat Classic
0B00:0C82|Canal Digital cat|VOX
0B00:0C8B|Canal Digital cat|Blue Hustler
0B00:0CEB|Canal Digital cat|C More Action
0B00:0CEC|Canal Digital cat|C More Tennis
0B00:0CEF|Canal Digital cat|TV 2 Sport 4
0B00:0CF0|Canal Digital cat|TV 2 Sport 3
0B00:0CF1|Canal Digital cat|Silver
0B00:0CF3|Canal Digital cat|C More Extreme
0B00:0CF6|Canal Digital cat|SF Kanalen
0B00:0CF7|Canal Digital cat|CANAL9
0B00:0CFB|Canal Digital cat|C More Kids
0B00:0D4A|Canal Digital cat|TNT
0B00:0D4C|Canal Digital cat|C More Hockey
0B00:0D4D|Canal Digital cat|C More Live
0B00:0DAE|Canal Digital cat|NRK1 Nordland
0B00:0DAF|Canal Digital cat|NRK1 Midtnytt
0B00:0DB0|Canal Digital cat|NRK1 Møre & Romsdal
0B00:0DB1|Canal Digital cat|NRK1 Vestlandsrevyen
0B00:0DB2|Canal Digital cat|NRK1 Rogaland
0B00:0DB3|Canal Digital cat|NRK1 Sørlandet
0B00:0DB4|Canal Digital cat|NRK1 Østnytt
0B00:0DB5|Canal Digital cat|NRK1 Østfold
0B00:0DB6|Canal Digital cat|NRK Super / NRK3
0B00:0DB8|Canal Digital cat|NRK Ekstra
0B00:0EDE|Canal Digital cat|Nat Geo HD
0B00:0FA0|Canal Digital cat|TV Chile
0B00:1130|Canal Digital cat|Viasat Golf
0B00:1133|Canal Digital cat|Nick Jr
0B00:114B|Canal Digital cat|MTV Music 24
0B00:12C5|Canal Digital cat|Nat Geo Wild HD
0B00:13ED|Canal Digital cat|TVP Polonia
0B00:1771|Canal Digital cat|France 24
0B00:1772|Canal Digital cat|MAX
0B00:17AC|Canal Digital cat|Viasat Sport
0B00:17B6|Canal Digital cat|Viasat Motor
0B00:1CB6|Canal Digital cat|ZEE TV
0B00:2203|Canal Digital cat|TVE Internacional
0B00:2337|Canal Digital cat|Rai Uno
0B00:2711|Canal Digital cat|Prime TV
0B00:2FD0|Canal Digital cat|TV 5 Europe
0B00:6D67|Canal Digital cat|3SAT
```

## Meo

```
#  Meo
0100:0191|Meo|AXN Portugal
0100:0192|Meo|AXN HD
0100:0193|Meo|Manchester United TV
0100:0194|Meo|Inter Channel
0100:0195|Meo|Bar?a TV
0100:0196|Meo|Real Madrid TV
0100:0197|Meo|Chelsea TV
0100:0198|Meo|Sci-Fi Portugal HD
0100:0065|Meo|RTP 1
0100:0066|Meo|RTP 2
0100:0067|Meo|RTP Africa
0100:0068|Meo|RTP Memoria
0100:0069|Meo|RTPN
0100:006A|Meo|RTP Madeira
0100:006B|Meo|RTP A?ores
0100:006C|Meo|Eurosport
0100:006D|Meo|Eurosport News
0100:006E|Meo|National Geographic Portugal
0100:006F|Meo|NatGeo Wild
0100:0070|Meo|Canal de Historia
0100:0071|Meo|Baby TV
0100:0072|Meo|TCM Portugal
0100:0073|Meo|Canal Hollywood Portugal
0100:0074|Meo|TVCine 2
0100:0075|Meo|Animax
0100:0076|Meo|E! Entertainment TV
0100:0077|Meo|NatGeo Music
0100:0078|Meo|C-Music
0100:0079|Meo|Sci-Fi Portugal
0100:007A|Meo|BBC World News
0100:007B|Meo|Private Spice
0100:007C|Meo|Style Network EMEA
0100:00C9|Meo|SIC
0100:00CA|Meo|SIC Noticias
0100:00CB|Meo|SIC Radical
0100:00CC|Meo|SIC Mulher
0100:00CD|Meo|Sport TV 2
0100:00CE|Meo|Eurosport 2
0100:00CF|Meo|ESPN America
0100:00D0|Meo|Eurosport HD
0100:00D1|Meo|Discovery Channel Spain & Portugal
0100:00D2|Meo|Odisseia
0100:00D3|Meo|Cartoon Network
0100:00D4|Meo|Sport TV 3
0100:00D5|Meo|SET Portugal
0100:00D6|Meo|MGM Spain
0100:00D7|Meo|TVCine 3
0100:00D8|Meo|Fuel TV
0100:00D9|Meo|Eurochannel (Brasil)
0100:00DA|Meo|Zone Reality UK
0100:00DB|Meo|Mezzo
0100:00DC|Meo|MCM Pop
0100:00DD|Meo|Bloomberg Europe
0100:00DE|Meo|CNBC Europe
0100:00E0|Meo|Playboy TV
0100:00E1|Meo|Disney Channel Portugal
0100:00E2|Meo|DW-TV (Deutsche Welle)
0100:00E3|Meo|AXN HD
0100:012D|Meo|TVI
0100:012E|Meo|SportTV
0100:012F|Meo|ESPN Classic Sport Europe
0100:0130|Meo|Motors TV
0100:0131|Meo|Benfica TV
0100:0132|Meo|National Geographic Portugal
0100:0133|Meo|Biography Channel Spain & Portugal
0100:0134|Meo|Travel Channel
0100:0135|Meo|Canal Panda
0100:0137|Meo|Fox Next Portugal
0100:0138|Meo|TVCine 1
0100:0139|Meo|TVCine 4
0100:013A|Meo|MTV Portugal
0100:013B|Meo|People and Arts
0100:013C|Meo|TV Globo Portugal
0100:013D|Meo|Trace TV
0100:013E|Meo|VH-1 (Video Hits One)
0100:013F|Meo|CNN International Europe
0100:0140|Meo|Fox News
0100:0141|Meo|Sky News International
0100:0142|Meo|BBC Prime
0100:0143|Meo|Fashion TV
0100:0145|Meo|SportTV 1 HD
0100:0146|Meo|JimJam EMEA
0100:0147|Meo|Sci-Fi Portugal HD
```

## NTV

```
#  NTV
0500:39D2|NTV|RTV International
0500:39D3|NTV|Detski Mir
0500:39D4|NTV|Nashe Kino
0500:39D7|NTV|RTVi Middle-East
```

## DMC

```
#  DMC
0D04:03F0|DMC|E! Entertainment TV
0D04:0002|DMC|ZoneReality
0D04:0003|DMC|Extreme Sports
0D04:0004|DMC|Zone Club
0D04:0014|DMC|JimJam Middle-East
0D04:0005|DMC|Extreme Sports
0D04:0006|DMC|ZoneReality
0D04:0007|DMC|National Geographic Romania
0D04:0008|DMC|Zone Club
0D04:000A|DMC|Playboy TV
0D04:000E|DMC|Zone Club Hungary
0D04:03E9|DMC|The History Channel
0D04:03EA|DMC|NatGeo Wild
0D04:03EB|DMC|ZoneReality
0D04:03EC|DMC|JimJam EMEA
```

## Multicanal

```
#  Multicanal
1800:0003|Multicanal|Canal Panda
1800:0006|Multicanal|Sol M?sica
1800:0007|Multicanal|Canal Hollywood Portugal
1800:0009|Multicanal|Canal Cocina
1800:000A|Multicanal|Decasa TV
1800:000B|Multicanal|Canal Hollywood
1800:000C|Multicanal|Odisea
1800:000F|Multicanal|Canal de Historia
1800:0012|Multicanal|Biography Channel Spain & Portugal
1800:001E|Multicanal|TEST
```

## Mediaset Premium

```
# Mediaset Premium
# updated on 2011-08-22 by kLe
1802,1804,1805:0015|Mediaset Premium|Discovery World|TV|Intrattenimento
1802,1804,1805:0065|Mediaset Premium|Calcio|TV|Calcio
1802,1804,1805:0066|Mediaset Premium|Calcio 1|TV|Calcio
1802,1804,1805:0067|Mediaset Premium|Calcio 2|TV|Calcio
1802,1804,1805:0068|Mediaset Premium|Calcio 3|TV|Calcio
1802,1804,1805:0069|Mediaset Premium|Calcio 4|TV|Calcio
1802,1804,1805:006A|Mediaset Premium|Calcio 5|TV|Calcio
1802,1804,1805:006B|Mediaset Premium|Calcio 6|TV|Calcio
1802,1804,1805:006C|Mediaset Premium|Calcio HD 1|TV|Calcio HD
1802,1804,1805:006D|Mediaset Premium|Disney Channel|TV|Bambini
1802,1804,1805:006F|Mediaset Premium|Joi|TV|Serie TV
1802,1804,1805:0070|Mediaset Premium|Mya|TV|Serie TV
1802,1804,1805:0075|Mediaset Premium|Cinema|TV|Cinema
1802,1804,1805:0076|Mediaset Premium|Studio Universal|TV|Cinema
1802,1804,1805:0081|Mediaset Premium|Menu|TV|Info
1802,1804,1805:0083|Mediaset Premium|Emotion|TV|Cinema
1802,1804,1805:0084|Mediaset Premium|Energy|TV|Cinema
1802,1804,1805:0085|Mediaset Premium|BBC Knowledge|TV|Intrattenimento
1802,1804,1805:0086|Mediaset Premium|Crime|TV|Serie TV
1802,1804,1805:0096|Mediaset Premium|Comedy|TV|Cinema
1802,1804,1805:0097|Mediaset Premium|Steel|TV|Serie TV
1802,1804,1805:009D|Mediaset Premium|Cartoon Network|TV|Bambini
1802,1804,1805:009E|Mediaset Premium|Disney Junior|TV|Bambini
1802,1804,1805:00A0|Mediaset Premium|Disney Channel +1|TV|Bambini
1802,1804,1805:00B3|Mediaset Premium|Moto GP|TV|Sport
1802,1804,1805:14B5|Mediaset Premium|Disney Channel +1|TV|Bambini
1802,1804,1805:14DB|Mediaset Premium|Calcio HD 2|TV|Calcio HD
1802,1804,1805:14DC|Mediaset Premium|Cinema HD|TV|Cinema
```

## Mediaset - La Fattoria

```
#  Mediaset - La Fattoria
1804,1803:0076|Mediaset - La Fattoria|Premium
```

## World TV

```
#  World TV
0614:0264|World TV|SET Asia (Sony Entertainment TV)
0614:0265|World TV|SET Max
0614:0266|World TV|Star Plus
0614:0267|World TV|Star One
0614:0268|World TV|Star Gold
0614:026A|World TV|Geo News International
0614:026B|World TV|Geo TV
0614:026C|World TV|Aaj Tak
0614:026D|World TV|NDTV 24x7
0614:0003|World TV|SET Asia (Sony Entertainment TV)
0614:0004|World TV|SET Max
0614:0005|World TV|Sahara One
0614:0006|World TV|Sahara Filmy
0614:0007|World TV|Star Plus
0614:0008|World TV|Star One
0614:0009|World TV|Star Gold
0614:000D|World TV|Geo News International
0614:000E|World TV|Geo TV
0614:000F|World TV|Aaj Tak
0614:0010|World TV|NDTV 24x7
```

## Tring Digital

```
#  Tring Digital
0BAA:0002|Tring Digital|Tring Super
0BAA:0003|Tring Digital|Tring Sport News
0BAA:0005|Tring Digital|Tring Comedy
0BAA:0007|Tring Digital|RTV 21 Sat
0BAA:0008|Tring Digital|Disney Channel
0BAA:0009|Tring Digital|Tring Tring
0BAA:000A|Tring Digital|National Geographic UK
0BAA:000B|Tring Digital|Fox Crime South East Europe
0BAA:000C|Tring Digital|Tring Planet
0BAA:000E|Tring Digital|Kohavision
0BAA:000F|Tring Digital|RV21 music
0BAA:0014|Tring Digital|Tring Life
0BAA:0015|Tring Digital|Tring Max
0BAA:001E|Tring Digital|E! Entertainment TV
0BAA:0021|Tring Digital|Cartoon Network Eastern Europe
0BAA:0038|Tring Digital|Tring Serial
0BAA:0042|Tring Digital|Tring World
0BAA:004D|Tring Digital|Scan TV
0BAA:0058|Tring Digital|Tring Shqip
0BAA:007D|Tring Digital|Folk Plus
0BAA:022B|Tring Digital|Tring X
0BAA:03E7|Tring Digital|Kanal 7
0BAA:083E|Tring Digital|VH-1
```

## Akta (Max TV)

```
#
# DVB-S - Akta (Max TV) - Astra 4A (4.8E)
# Date: 2011-09-26
#
0500:0001|Akta 4.8E|U (Romania)|TV|Music|
0500:0002|Akta 4.8E|Animal Planet Eastern Europe|TV|Documentaries|
0500:0003|Akta 4.8E|Sport.ro|TV|Sport|
0500:0004|Akta 4.8E|AXN Romania|TV|Series|
0500:0005|Akta 4.8E|Kanal D Romania|TV|General|
0500:0006|Akta 4.8E|Antena 3 Romania|TV|News|
0500:0008|Akta 4.8E|Discovery Channel Romania|TV|Documentaries|
0500:0009|Akta 4.8E|AXN Sci Fi|TV|Series|
0500:000A|Akta 4.8E|Prima TV|TV|General|
0500:000B|Akta 4.8E|TVR 2|TV|General|
0500:000C|Akta 4.8E|TVR 1|TV|General|
0500:000D|Akta 4.8E|GSP TV|TV|Sport|
0500:000E|Akta 4.8E|OTV Romania|TV|Various|
0500:000F|Akta 4.8E|Realitatea TV|TV|News|
0500:0020|Akta 4.8E|Eurosport|TV|Sport|
0500:0021|Akta 4.8E|AXN Crime|TV|Series|
0500:0037|Akta 4.8E|Diva Universal Romania|TV|Entertainment|
0500:0038|Akta 4.8E|TVR Cultural|TV|Cultural|
0500:0039|Akta 4.8E|Disney Channel Romania, Bulgaria & Ukraine|TV|Children|
0500:003A|Akta 4.8E|Euforia Lifestyle TV|TV|Lifestyle|
0500:003B|Akta 4.8E|Animax|TV|Children|
0500:003C|Akta 4.8E|Boomerang|TV|Children|
0500:003D|Akta 4.8E|Cartoon Network Eastern Europe|TV|Children|
0500:003E|Akta 4.8E|Antena 1|TV|General|
0500:0041|Akta 4.8E|Pro TV|TV|General|
0500:0042|Akta 4.8E|Antena 2|TV|General|
0500:0043|Akta 4.8E|Acasá TV|TV|General|
0500:0044|Akta 4.8E|TCM Eastern Europe|TV|Movies|
0500:0045|Akta 4.8E|Movies 24 Eastern Europe|TV|Movies|
0500:0046|Akta 4.8E|Pro Cinema|TV|Movies|
0500:0010|Akta 4.8E|TV 1000 Balkan|TV|Movies|
0500:0011|Akta 4.8E|Bucuresti 1 TV|TV|General|
0500:0012|Akta 4.8E|Dolce Sport|TV|Sport|
0500:0013|Akta 4.8E|National TV|TV|General|
0500:0015|Akta 4.8E|Cinemax East Europe|TV|Movies|
0500:0016|Akta 4.8E|Private Spice|TV|Porn|
0500:0017|Akta 4.8E|Daring! TV|TV|Porn|
0500:0018|Akta 4.8E|TV Paprika|TV|Cooking|
0500:0019|Akta 4.8E|Viasat History|TV|History|
0500:001A|Akta 4.8E|Viasat Explorer|TV|Documentaries|
0500:001B|Akta 4.8E|Discovery Travel & Living Europe|TV|Documentaries|
0500:001C|Akta 4.8E|Discovery World|TV|Documentaries|
0500:001D|Akta 4.8E|Discovery Science Channel|TV|Technology|
0500:001E|Akta 4.8E|HBO Comedy Central Europe|TV|Movies|
0500:001F|Akta 4.8E|HBO Romania|TV|Movies|
```

## HTB+

```
#  HTB+
0500:2b64|HTB+|AXN Sci Fi
0500:50e2|HTB+|Nickelodeon
0500:2a39|HTB+|Megasport
0500:2a3b|HTB+|Vremya
0500:2a36|HTB+|HTH
0500:2a37|HTB+|ICTV
0500:2a33|HTB+|Park Razvlicenii
0500:2a3a|HTB+|Pervy Kanal (Ukraine)
0500:2a31|HTB+|PTP-Planeta
0500:2a32|HTB+|Sovershenno Sekretno
0500:2a38|HTB+|5 Channel (Ukraine)
0500:2a34|HTB+|CCTV 4
0500:2a35|HTB+|CCTV 9
0500:2775|HTB+|Sport
0500:2776|HTB+|Footbal
0500:2777|HTB+|Premiera
0500:2778|HTB+|Kinoklub
0500:277a|HTB+|Pervy Kanal
0500:277d|HTB+|Kto est' kto
0500:277c|HTB+|REN TV
0500:278d|HTB+|Blue Hustler
0500:2b61|HTB+|Universal Channel
0500:2b60|HTB+|Sci Fi Channel
0500:2b5e|HTB+|Telekanal Domashniy
0500:2b62|HTB+|Kinoreys 1
0500:2b63|HTB+|Kinoreys 2
0500:2b5d|HTB+|Comedy TV
0500:2b5f|HTB+|Gameland TV
0500:27d9|HTB+|365 dnei TV
0500:27da|HTB+|TV Bulvar
0500:27db|HTB+|Komedia TV
0500:27dc|HTB+|Telekanal India
0500:27dd|HTB+|Russkaja Noch
0500:27de|HTB+|Telekanal La Minor
0500:27df|HTB+|Mnogo TV
0500:27e0|HTB+|Interesnoe TV
0500:27e1|HTB+|Kuhnya TV
0500:27e3|HTB+|Boets
0500:27e4|HTB+|Auto Plus
0500:27e5|HTB+|Zakon TV
0500:283d|HTB+|HTB
0500:283e|HTB+|THT
0500:283f|HTB+|MTV Russia
0500:2840|HTB+|Telekanal Rossiya
0500:2841|HTB+|Telekanal Kultura
0500:2842|HTB+|CTC
0500:2843|HTB+|Vesti
0500:2844|HTB+|Telekanal Spas
0500:2845|HTB+|Telekanal Zvezda
0500:284a|HTB+|Kino Soyuz
0500:284b|HTB+|24 DOK
0500:284c|HTB+|On-line
0500:791a|HTB+|Telenyanya
0500:791c|HTB+|Dom Kino
0500:791d|HTB+|Muzyka
0500:791f|HTB+|VH1 Russia
0500:7920|HTB+|Mir
0500:7921|HTB+|Perviy Meteo
0500:7922|HTB+|3 Kanal
0500:7923|HTB+|TV Centr
0500:7924|HTB+|Rusiya Al-Yaum
0500:7925|HTB+|Bibigon
0500:7926|HTB+|RBK TV
0500:7927|HTB+|TV Sale
0500:28a1|HTB+|Tennis
0500:28a2|HTB+|NBA TV
0500:28a3|HTB+|Sport Klassika
0500:28a4|HTB+|Nash Futbol
0500:28a5|HTB+|Sport Soyuz
0500:28a6|HTB+|Russkij Extreme
0500:28a7|HTB+|Muz TV
0500:28a8|HTB+|Telekanal Sport
0500:28a9|HTB+|HCT
0500:28aa|HTB+|Nostalgia
0500:5015|HTB+|Discovery Channel
0500:5016|HTB+|Hallmark Channel
0500:5018|HTB+|Animal Planet
0500:5017|HTB+|Jetix
0500:5019|HTB+|Discovery Travel & Living
0500:501a|HTB+|Eurosport
0500:501b|HTB+|Music Box
0500:501c|HTB+|Mezzo
0500:501f|HTB+|Zone Romantica
0500:5020|HTB+|TDK
0500:5021|HTB+|Jetix Play
0500:5022|HTB+|National Geographic
0500:5084|HTB+|VH1 Classic
0500:5085|HTB+|CNN International
0500:5086|HTB+|Cartoon Network/TCM
0500:5087|HTB+|Discovery World
0500:5088|HTB+|Discovery Science
0500:5089|HTB+|MGM
0500:508a|HTB+|MTV Dance
0500:508b|HTB+|Zone Reality
0500:508c|HTB+|MCM Top
0500:508d|HTB+|Extreme Sports Channel
0500:508e|HTB+|Nat Geo Wild
0500:508f|HTB+|Jim Jam
```

## Red Hot

```
#  Red Hot
0500:43b5|Red Hot|Sex TV 1
0500:43b6|Red Hot|Sex TV 2
0500:43b7|Red Hot|Sex TV 3
0500:43b8|Red Hot|Sex TV 4
0500:004A|Red Hot|Sex TV 3
0500:004B|Red Hot|Sex TV 4
0500:0082|Red Hot|Sex TV 1
0500:0086|Red Hot|Sex TV 2
```

## Cyfra + 13.0E

```
#  Cyfra + 13.0E
0100:00ca|Cyfra + 13.0E|AB Moteurs
0100:00cc|Cyfra + 13.0E|Chasse et P?che
0100:00cd|Cyfra + 13.0E|XXL
0100:00d7|Cyfra + 13.0E|XXL PL
0100:00d9|Cyfra + 13.0E|France 5
0100:00da|Cyfra + 13.0E|France ?
0100:01f7|Cyfra + 13.0E|France 2
0100:021a|Cyfra + 13.0E|France 3 Sat
0100:021b|Cyfra + 13.0E|France 4
0100:1147|Cyfra + 13.0E|INFO+/ C+ Sport2
0100:117c|Cyfra + 13.0E|DTV CABLE PL
0100:117d|Cyfra + 13.0E|DTV CABLE MI
0100:12e8|Cyfra + 13.0E|CYFRA+ RADIO
0100:12fe|Cyfra + 13.0E|tech
0100:12ff|Cyfra + 13.0E|tech 2
```

## ESP

```
#  ESP
0604,0500:360a|ESP|Poland
0604,0500:360b|ESP|Russia
0604,0500:360d|ESP|Hungary
0604,0500:360f|ESP|Czech
0500:3607|ESP|int'l
0604,0500:3608|ESP|Romania
0604,0500:3609|ESP|NL
0604,0500:3610|ESP|Greece
0604,0500:3611|ESP|Cyprus
0604,0500:3612|ESP|Bulgaria
0604,0500:3614|ESP|Serbia
0604,0500:3615|ESP|Turkey
```

## ESP2

```
#  ESP2
0604,0500:3a37|ESP2|RO/HU
0604,0500:3a39|ESP2|Croatia
0604,0500:3a38|ESP2|Hungary
0604,0500:35ea|ESP2|Poland
0604,0500:35ec|ESP2|Test (no audio)
0604,0500:35ed|ESP2|Greece
0500:35E9|ESP2|???
0604,0500:35f5|ESP2|Russia
0604,0500:35fd|ESP2|Romania
0604,0500:3613|ESP2|Turkey
0604,0500:3616|ESP2|Germany
0604,0500:3617|ESP2|Serbia
```

## ESP HD

```
#  ESP HD
0100:3307|ESP HD|Turk
0100:3308|ESP HD|Russian
0100:3309|ESP HD|Dutch
0100:330a|ESP HD|Czech
0100:330b|ESP HD|German
0100:330d|ESP HD|Portuguese
0100:330e|ESP HD|Polish
0100:330f|ESP HD|Hungarian
0100:3310|ESP HD|Bulgaria
0100:3311|ESP HD|Italy
0100:3312|ESP HD|Romania
0100:3313|ESP HD|ECH
0100:3314|ESP HD|Spain
0100:3315|ESP HD|???
0100:3316|ESP HD|Serbia
```

## Satellite BG ( 23.5E )

```
#  Satellite BG ( 23.5E )
#  Up-to-date check: 22/8/2012
#  Updated bY valbg

0B01:13a9|Satellite BG|Eurosport HD
0B01:13aa|Satellite BG|History Channel HD Nordic
0B01:1420|Satellite BG|History HD BG
0B01:1421|Satellite BG|Eurosport HD DUT
0B01:1422|Satellite BG|Eurosport HD BG
0B01:1519|Satellite BG|BNT 2
0B01:151a|Satellite BG|24Kitchen
0B01:151b|Satellite BG|Fiesta TV
0B01:151c|Satellite BG|City TV
0B01:1522|Satellite BG|Planeta HD
0B01:1525|Satellite BG|FightBOX HD
0B01:1526|Satellite BG|Erox HD
0B01:1527|Satellite BG|Filmbox HD
0B01:1528|Satellite BG|Filmbox Action HD
0B01:1529|Satellite BG|DocuBOX HD
0B01:152a|Satellite BG|FashionBOX HD
0B01:13d4|Satellite BG|History Channel Eastern Europe
0B01:13d6|Satellite BG|Duck TV
0B01:13da|Satellite BG|Viasat Explorer
0B01:13db|Satellite BG|Viasat History
0B01:13dc|Satellite BG|Viasat Nature CEE
0B01:1416|Satellite BG|Viasat Explorer/Spice BG
0B01:1417|Satellite BG|Viasat History BG
0B01:1418|Satellite BG|Viasat Nature BG
0B01:141b|Satellite BG|History channel BG
0B01:17d4|Satellite BG|Deluxe Lounge HD
0B01:17d5|Satellite BG|Unitel Classica HD
0B01:17d7|Satellite BG|AutoMotorSport HD
0B01:157c|Satellite BG|Luxe TV
0B01:157d|Satellite BG|Fashion One HD
0B01:157e|Satellite BG|BNT World
0B01:157f|Satellite BG|BNT 1
0B01:1580|Satellite BG|Nova TV
0B01:1581|Satellite BG|Nova Sport Bulgaria
0B01:1582|Satellite BG|Diema
0B01:1583|Satellite BG|Kino Nova
0B01:1584|Satellite BG|Diema Family
0B01:1585|Satellite BG|Fox Life Bulgaria
0B01:1586|Satellite BG|Fox Crime Bulgaria
0B01:1587|Satellite BG|National Geographic Bulgaria
0B01:1588|Satellite BG|Fine Living Network
0B01:1589|Satellite BG|BTV Bulgaria
0B01:158a|Satellite BG|TV 7 Bulgaria
0B01:158b|Satellite BG|TV 1000 East
0B01:158c|Satellite BG|Baby TV
0B01:158d|Satellite BG|Cartoon Network Eastern Europe
0B01:158e|Satellite BG|Super 7
0B01:158f|Satellite BG|Da Vinci Learning
0B01:1590|Satellite BG|Travel Channel
0B01:1591|Satellite BG|Ring BG
0B01:1592|Satellite BG|bTV Comedy
0B01:1593|Satellite BG|bTV Action
0B01:1594|Satellite BG|BTV Cinema
0B01:1595|Satellite BG|Satellite BG
0B01:1596|Satellite BG|BBC Entertainment
0B01:1597|Satellite BG|Boomerang
0B01:1598|Satellite BG|Disney Channel Romania, Bulgaria & Ukraine
0B01:13b1|Satellite BG|Eurosport HD
0B01:13b2|Satellite BG|History Channel HD Nordic
0B01:13b8|Satellite BG|Travel Channel HD
0B01:13c1|Satellite BG|HISTORY HD BG
0B01:13c8|Satellite BG|Travel Channel HD EE
0B01:13c9|Satellite BG|Eurosport HD BG
0B01:15e0|Satellite BG|MTV Live HD
0B01:15e1|Satellite BG|NatGeo Wild HD
0B01:15e2|Satellite BG|Penthouse HD 2
0B01:15e3|Satellite BG|Viasat Nature HD
0B01:15e4|Satellite BG|iConcert
0B01:15e5|Satellite BG|National Geographic HD UK
0B01:15e6|Satellite BG|Mezzo Live HD
0B01:15e7|Satellite BG|Penthouse  HD
0B01:15e8|Satellite BG|Penthouse HD 1
0B01:15e9|Satellite BG|Trace Sports HD
```

## Astro TV (91.5E)

```
#  Astro TV (91.5E)
09AC:0001|Astro|HBO|TV|Movies|
09AC:0002|Astro|Astro Wah Lai Toi|TV|Dynasty|
09AC:0006|Astro|Astro Prima|TV|Family|
09AC:0013|Astro|Astro Vaanavil|TV|Family|
09AC:0015|Astro|Disney Channel|TV|Kids|
09AC:0016|Astro|Astro AEC|TV|Family|
09AC:100D|Astro|SUN TV|TV|Maharaja|
09AC:2011|Astro|ABOM Tayangan Hebat 953|TV|
09AC:28A1|Astro|Astro OASIS|TV|Family|
09AC:28A2|Astro|Astro SuperSport|TV|Sports|
09AC:28A4|Astro|Astro Ria|TV|Family|
09AC:28A5|Astro|ESPN|TV|Sports|
09AC:28A7|Astro|ABO Event|TV|
09AC:2905|Astro|Astro First Guide 480|TV|
09AC:2906|Astro|Astro First 482|TV|
09AC:2907|Astro|Astro First|TV|
09AC:2908|Astro|Astro First 485|TV|
09AC:2909|Astro|Astro First 486|TV|
09AC:290A|Astro|Astro First SD 5 488|TV|
09AC:290B|Astro|Astro First 489|TV|
09AC:290C|Astro|Astro First 490|TV|
09AC:290D|Astro|Astro First 491|TV|
09AC:290E|Astro|Astro Tutor TV|TV|
09AC:290F|Astro|Astro Tutor TV|TV|
09AC:2915|Astro|Astro First|TV|
09AC:2969|Astro|STAR WORLD|TV|Variety|
09AC:296A|Astro|DIVA Universal|TV|Family|
09AC:296B|Astro|Bella|TV|Mustika|
09AC:296C|Astro|Bloomberg Television|TV|News|
09AC:296D|Astro|Golf Channel|TV|Sports|
09AC:296E|Astro|Astro @15|TV|Family|
09AC:296F|Astro|WATV|TV|Dynasty|
09AC:2970|Astro|ZEE VARIASI|TV|Family|
09AC:2971|Astro|Sun Music|TV|Maharaja|
09AC:2972|Astro|E! Entertainment|TV|Variety|
09AC:2973|Astro|Astro Awani|TV|Family|
09AC:2975|Astro|Jia Yu|TV|Family|
09AC:2976|Astro|Animax|TV|Variety|
09AC:300D|Astro|Astro HUA HEE DAI|TV|New Emperor|
09AC:300F|Astro|Astro Box Office Guide|TV|
09AC:3010|Astro|FOX Movies Premium|TV|Movies|
09AC:3011|Astro|National Geographic Channel|TV|Learning|
09AC:3012|Astro|Cartoon Network|TV|Kids|
09AC:3014|Astro|TVB Xing He|TV|Dynasty|
09AC:3019|Astro|Astro SuperSport 2|TV|Sports|
09AC:4003|Astro|STAR Sports|TV|Sports|
09AC:4E21|Astro|Astro On Demand Guide|TV|
09AC:4E22|Astro|Astro Tutor TV|TV|Family|
09AC:4E23|Astro|Astro On Demand Guide|TV|
09AC:4E25|Astro|Astro Citra|TV|Mustika|
09AC:4E2A|Astro|National Geographic Wild|TV|Family|
09AC:4E2B|Astro|Astro On Demand 921|TV|
09AC:4E2C|Astro|Astro On Demand Guide|TV|
09AC:4E2D|Astro|Astro On Demand 923|TV|
09AC:4E2E|Astro|Adithya|TV|Maharaja|
09AC:4E2F|Astro|The Biography Channel|TV|
09AC:4E30|Astro|Astro Vellithirai|TV|Family|
09AC:4E31|Astro|MAX|TV|Movies|
09AC:4E32|Astro|CNN|TV|News|
09AC:4E33|Astro|Astro SuperSport 3|TV|Sports|
09AC:4EE9|Astro|Astro On Demand Guide|TV|
09AC:4EEA|Astro|Bintang|TV|
09AC:4EEB|Astro|Astro Box Office Sport|TV|
09AC:4EEC|Astro|Pelangi|TV|
09AC:4EED|Astro|Astro Box Office|TV|
09AC:4EEE|Astro|Astro On Demand Guide|TV|
09AC:4EF0|Astro|ABOM Thangathirai|TV|
09AC:4EF1|Astro|ABOM Tayangan Hebat 952|TV|
09AC:4EF3|Astro|CCTV4|TV|Family|
09AC:4EF4|Astro|Asian Food Channel|TV|Family|
09AC:4EF5|Astro|Astro Arena|TV|Family|
09AC:4EF6|Astro|NTV7|TV|Family|
09AC:4EF9|Astro|BabyTV|TV|
09AC:4EFA|Astro|TV1|TV|Family|
09AC:4EFB|Astro|Astro Shuang Xing|TV|New Emperor|
09AC:4EFC|Astro|TVi|TV|Family|
09AC:4F4D|Astro|Astro On Demand 924|TV|
09AC:4F4E|Astro|Astro On Demand 925|TV|
09AC:4F4F|Astro|Astro On Demand 926|TV|
09AC:4F50|Astro|Astro On Demand Guide|TV|
09AC:4F55|Astro|MTV Asia|TV|Variety|
09AC:4F56|Astro|Discovery Science|TV|Learning|
09AC:4F57|Astro|Eurosport|TV|Sports|
09AC:4F58|Astro|BBC World|TV|News|
09AC:4F59|Astro|Animal Planet|TV|Learning|
09AC:4F5A|Astro|CNBC Asia|TV|News|
09AC:4F5B|Astro|Arabic Radio & TV Variety|TV|
09AC:4F5C|Astro|Phoenix InfoNews Channel|TV|New Emperor|
09AC:4F5D|Astro|CCTV News|TV|Family|
09AC:4F5E|Astro|Disney Junior|TV|Kids|
09AC:4F5F|Astro|AXN|TV|Family|
09AC:4F60|Astro|TVBS Asia|TV|Dynasty|
09AC:4FB2|Astro|TVB Classic|TV|Family|
09AC:4FB3|Astro|TV Al-Hijrah|TV|Family|
09AC:4FB4|Astro|Discovery Home and Health|TV|
09AC:4FB5|Astro|Al Jazeera English|TV|News|
09AC:4FB6|Astro|Discovery Turbo|TV|
09AC:4FB7|Astro|TV2|TV|Family|
09AC:4FB8|Astro|Astro On Demand iView|TV|Family|
09AC:4FB9|Astro|Crime and Investigation Network|TV|
09AC:4FBA|Astro|TV3|TV|Family|
09AC:4FBB|Astro|TLC|TV|Family|
09AC:4FBC|Astro|CTI Asia|TV|New Emperor|
09AC:4FBF|Astro|Celestial Movies|TV|New Emperor|
09AC:4FC0|Astro|Astro HITZ|TV|Family|
09AC:5079|Astro|NHK World|TV|Dynasty|
09AC:507A|Astro|History Channel|TV|Learning|
09AC:507C|Astro|Astro On Demand 901|TV|
09AC:507E|Astro|Astro On Demand 903|TV|
09AC:507F|Astro|Astro On Demand 904|TV|
09AC:5080|Astro|Astro On Demand 905|TV|
09AC:5081|Astro|Astro On Demand 906|TV|
09AC:5082|Astro|Astro On Demand Guide|TV|
09AC:5083|Astro|Astro On Demand 908|TV|
09AC:5084|Astro|8TV|TV|Family|
09AC:5085|Astro|Bernama TV|TV|Family|
09AC:5086|Astro|FOX|TV|Variety|
09AC:5087|Astro|ITV Granada|TV|
09AC:5089|Astro|Astro TVIQ|TV|Family|
09AC:59D9|Astro|KBS World|TV|Family|
09AC:59DA|Astro|Makkal TV|TV|Family|
09AC:59DB|Astro|TV9|TV|Family|
09AC:59DC|Astro|Astro Xiao Tai Yang|TV|Family|
09AC:59DD|Astro|Nickelodeon|TV|Kids|
09AC:59DE|Astro|Chutti TV|TV|Maharaja|
09AC:59E1|Astro|Australia Network|TV|News|
09AC:59E2|Astro|Astro Warna|TV|Mustika|
09AC:59E3|Astro|iMUS|TV|
09AC:59E4|Astro|Discovery Channel|TV|Learning|
09AC:59E5|Astro|Astro Ceria|TV|Family|
09AC:59E6|Astro|Phoenix Chinese Channel|TV|New Emperor|
09AC:59E7|Astro|TVB Entertainment|TV|Dynasty|
09AC:59E8|Astro|ESPNews|TV|Sports|
```



## Indovision (108,2E)

```
# Indovision SES 7 (108,2E)
# As Built 06 July 2012
#
# Attention :
# Since on 108,2E have 3 different sattellites...
# ...please make sure/change and rescan if necessarry...
# ...your current SES 7 (S Band) position to 1081 on sattellites.xml...
# ...in order to get the correct service reference as below.
# And the LNB LOF/LOL/THERESHOLD must set to 3620 instead of 5150

09C1:1CF5|Indovision|8i|TV
09C1:07E6|Indovision|AFC|TV
09C1:0807|Indovision|AL Jazeera Int'l|TV
09C1:07E4|Indovision|Animal Planet|TV
09C1:07FC|Indovision|Animax|TV
09C1:0825|Indovision|ANTV|TV
09C1:1DB9|Indovision|Arirang|TV
09C1:07FF|Indovision|Australia Network|TV
09C1:07FA|Indovision|AXN|TV
09C1:1C27|Indovision|BBC Knowledge|TV
09C1:0809|Indovision|BBC World|TV
09C1:1DB3|Indovision|beTV|TV
09C1:1DB5|Indovision|Biography|TV
09C1:1E82|Indovision|Bloomberg|TV
09C1:1DB7|Indovision|Boomerang|TV
09C1:07F0|Indovision|Cartoon Network|TV
09C1:1EDE|Indovision|CBeebies|TV
09C1:1DBA|Indovision|CCTV News|TV
09C1:1E18|Indovision|CCTV-4|TV
09C1:1DBD|Indovision|Celestial Classic Movies|TV
09C1:07DC|Indovision|Celestial Movies|TV
09C1:080F|Indovision|Channel [V]|TV
09C1:0816|Indovision|Channel News Asia|TV
09C1:1DB2|Indovision|CI|TV
09C1:03F0|Indovision|Cinemax|TV
09C1:1C8D|Indovision|CNBC Asia|TV
09C1:1D59|Indovision|CNBC Asia|TV
09C1:080A|Indovision|CNNI|TV
09C1:1E79|Indovision|Disc. Home Helath|TV
09C1:1E81|Indovision|Disc. Science|TV
09C1:07E2|Indovision|Discovery|TV
09C1:1F46|Indovision|Discovery Kids|TV
09C1:1E7E|Indovision|Discovery Turbo|TV
09C1:1CE9|Indovision|Disney|TV
09C1:07EE|Indovision|Disney Junior|TV
09C1:07FD|Indovision|DIVA Universal|TV
09C1:1E7B|Indovision|DW-TV A+|TV
09C1:07FE|Indovision|E!|TV
09C1:07F4|Indovision|ESPN|TV
09C1:1F42|Indovision|ESPN HD|TV
09C1:1DB8|Indovision|Euronews|TV
09C1:1CEA|Indovision|Eurosport|TV
09C1:0800|Indovision|Fashion TV|TV
09C1:1EE2|Indovision|Food Network|TV
09C1:1EE8|Indovision|Fox Channel|TV
09C1:1E15|Indovision|FOX Family Movies|TV
09C1:07DB|Indovision|FOX Movies Premium|TV
09C1:1F45|Indovision|FOX Movies Premium HD|TV
09C1:1C29|Indovision|Fox News|TV
09C1:1CEC|Indovision|Fox Crime|TV
09C1:1E16|Indovision|FX|TV
09C1:1EE4|Indovision|Ginx|TV
09C1:1D51|Indovision|Global TV|TV
09C1:1EE6|Indovision|Golf Channel|TV
09C1:03EF|Indovision|HBO|TV
09C1:1EDD|Indovision|HBO Family|TV
09C1:1F41|Indovision|HBO HD|TV
09C1:1DBC|Indovision|HBO Hits|TV
09C1:07D6|Indovision|HBO Signature|TV
09C1:1BC5|Indovision|History|TV
09C1:1E84|Indovision|i-Concerts|TV
09C1:1F44|Indovision|i-Concerts HD|TV
09C1:0828|Indovision|Indosiar|TV
09C1:1E7A|Indovision|Jim Jam|TV
09C1:0814|Indovision|KBS World|TV
09C1:1E80|Indovision|Kids Co|TV
09C1:1E1C|Indovision|KIX|TV
09C1:1E83|Indovision|KTV|TV
09C1:1E7C|Indovision|Li TV|TV
09C1:0815|Indovision|Life|TV
09C1:0823|Indovision|Metro TV|TV
09C1:1DB1|Indovision|MGM|TV
09C1:1EDF|Indovision|MNC Business|TV
09C1:1E20|Indovision|MNC Comedy|TV
09C1:1C2D|Indovision|MNC Drama|TV
09C1:082A|Indovision|MNC Ent.|TV
09C1:1EE1|Indovision|MNC Life Style|TV
09C1:1E85|Indovision|MNC Movie|TV
09C1:080D|Indovision|MNC Music Channel|TV
09C1:1EE9|Indovision|MNC Muslim|TV
09C1:1D50|Indovision|MNC News|TV
09C1:1D5A|Indovision|MNC Sports1|TV
09C1:0428|Indovision|MNC Sports1|TV
09C1:1E1B|Indovision|MNC Sports2|TV
09C1:1D55|Indovision|MNCTV|TV
09C1:1E17|Indovision|NatGeo Adv|TV
09C1:1CF3|Indovision|NatGeo Music|TV
09C1:1DB4|Indovision|NatGeo Wild|TV
09C1:07E3|Indovision|NGC|TV
09C1:1F43|Indovision|NGC HD|TV
09C1:0813|Indovision|NHK|TV
09C1:07F1|Indovision|Nickelodeon|TV
09C1:1BC8|Indovision|One Channel|TV
09C1:1BC7|Indovision|RCTI|TV
09C1:1E1E|Indovision|RED|TV
09C1:1E1F|Indovision|Russia Today|TV
09C1:0821|Indovision|SCTV|TV
09C1:1CF4|Indovision|SET|TV
09C1:1EE3|Indovision|Sindo TV|TV
09C1:1CEB|Indovision|Sky News|TV
09C1:07F5|Indovision|STAR Sports|TV
09C1:07FB|Indovision|STAR World|TV
09C1:1E1A|Indovision|Syfy|TV
09C1:1EE7|Indovision|The Style Network|TV
09C1:1E1D|Indovision|Thrill|TV
09C1:07E5|Indovision|TLC|TV
09C1:1E7F|Indovision|Trace|TV
09C1:0827|Indovision|Trans 7|TV
09C1:0824|Indovision|Trans TV|TV
09C1:1DBB|Indovision|TV One|TV
09C1:1E7D|Indovision|TV5 Monde Asia|TV
09C1:082D|Indovision|TVRI|TV
09C1:0BC5|Indovision|Universal Channel|TV
09C1:07D2|Indovision|Vision 2 Drama|TV
09C1:07D3|Indovision|Vision 3 Baby|TV
09C1:1E19|Indovision|Warner TV|TV
09C1:1EE0|Indovision|YoYo TV Asia|TV
09C1:0BC4|Indovision|Zee Cinema|TV
09C1:04C7|Indovision|BBC World Service|Radio
09C1:08A5|Indovision|ARH Global|Radio
09C1:04C6|Indovision|Australia|Radio
09C1:04B2|Indovision|Dangdut Indonesia|Radio
09C1:08A6|Indovision|Hard Rock FM|Radio
09C1:08A8|Indovision|I-Radio|Radio
09C1:04B5|Indovision|Kis FM|Radio
09C1:04B4|Indovision|LITE FM|Radio
09C1:08A3|Indovision|Mustang|Radio
09C1:04B6|Indovision|Pas FM|Radio
09C1:08B0|Indovision|RFI|Radio
09C1:04B8|Indovision|Smart FM|Radio
09C1:089F|Indovision|Sonora|Radio
09C1:08A7|Indovision|Trax FM|Radio
09C1:04B1|Indovision|Sindo|Radio
09C1:184F|Indovision|V|Radio
09C1:0849|Indovision|VoA|Radio
```

## Telkom Vision (108,2E)

```
# Telkom Vision (108,2E)
# As Built 06 July 2012

# Attention :
# Since on 108,2E have 3 different sattellites...
# ...please make sure/change and rescan if necessarry...
# ...your current Telkom 1 (C Band) position to 1083 on sattellites.xml...
# ...in order to get the correct service reference as below.

0604:022A|Telkom Vision|Al Jazeera|TV
0604:022C|Telkom Vision|Allegro|TV
0604:0237|Telkom Vision|ASN|TV
0604:022B|Telkom Vision|Australia Network|TV
0604:0239|Telkom Vision|Biography|TV
0604:0233|Telkom Vision|Bloomberg|TV
0604:023A|Telkom Vision|Discovery Science|TV
0604:022F|Telkom Vision|DWTV Asia +|TV
0604:023C|Telkom Vision|Eurosport|TV
0604:0247|Telkom Vision|Fashion TV|TV
0604:0248|Telkom Vision|Fox Family Movies|TV
0604:0244|Telkom Vision|France 24|TV
0604:0231|Telkom Vision|HBO Family|TV
0604:023F|Telkom Vision|HBO HD|TV
0604:0232|Telkom Vision|HBO Hits|TV
0604:023B|Telkom Vision|History|TV
0604:0234|Telkom Vision|KBS World|TV
0604:023E|Telkom Vision|KIX|TV
0604:0227|Telkom Vision|MNCTV|TV
0604:0243|Telkom Vision|MTV Asia|TV
0604:022D|Telkom Vision|NHK Premium|TV
0604:0236|Telkom Vision|Nick Jr|TV
0604:0235|Telkom Vision|Nickelodeon|TV
0604:0238|Telkom Vision|ONE|TV
0604:0245|Telkom Vision|Outdoor Channel|TV
0604:0246|Telkom Vision|Qur'an Tazkiah|TV
0604:0240|Telkom Vision|SyFy|TV
0604:023D|Telkom Vision|Thrill|TV
0604:0228|Telkom Vision|TV Edukasi|TV
0604:0229|Telkom Vision|TVRI|TV
0604:0241|Telkom Vision|Universal|TV
0604:0236|Telkom Vision|AFC|TV
0604:091F|Telkom Vision|Alif TV|TV
0604:025A|Telkom Vision|Animal Planet|TV
0604:00CD|Telkom Vision|Animax|TV
0604:0322|Telkom Vision|Arena|TV
0604:0325|Telkom Vision|AXN|TV
0604:02BE|Telkom Vision|BBC World|TV
0604:0198|Telkom Vision|beTV|TV
0604:00C9|Telkom Vision|Cartoon Network|TV
0604:006B|Telkom Vision|Celestial Movies|TV
0604:01F5|Telkom Vision|Channel [V]|TV
0604:0066|Telkom Vision|Cinemax|TV
0604:02BF|Telkom Vision|CNBC|TV
0604:02BD|Telkom Vision|CNN Intl|TV
0604:025D|Telkom Vision|Discovery Channel|TV
0604:025B|Telkom Vision|Discovery Turbo|TV
0604:00CB|Telkom Vision|Disney Channel|TV
0604:019B|Telkom Vision|Disney Junior|TV
0604:006C|Telkom Vision|Diva Universal|TV
0604:0328|Telkom Vision|E! Entertainment|TV
0604:01F6|Telkom Vision|ESPN|TV
0604:019C|Telkom Vision|FOX|TV
0604:019A|Telkom Vision|FOX Crime|TV
0604:0069|Telkom Vision|FOX Movies Premium|TV
0604:0327|Telkom Vision|FX|TV
0604:0196|Telkom Vision|Global TV|TV
0604:0064|Telkom Vision|Goal TV 1|TV
0604:0199|Telkom Vision|Goal TV 2|TV
0604:0065|Telkom Vision|HBO|TV
0604:0067|Telkom Vision|HBO Signature|TV
0604:00CA|Telkom Vision|Jim Jam|TV
0604:0192|Telkom Vision|Kompas TV|TV
0604:0193|Telkom Vision|Metro TV|TV
0604:019D|Telkom Vision|MGM|TV
0604:0259|Telkom Vision|Nat Geo|TV
0604:019E|Telkom Vision|NatGeo Adventure|TV
0604:0321|Telkom Vision|NatGeo Wild|TV
0604:0197|Telkom Vision|SCTV|TV
0604:012D|Telkom Vision|Star Sports|TV
0604:0323|Telkom Vision|Star World|TV
0604:025E|Telkom Vision|TLC|TV
0604:012F|Telkom Vision|Trans TV|TV
0604:0386|Telkom Vision|Carrefour|Radio
0604:0388|Telkom Vision|Rodja|Radio
0604:0385|Telkom Vision|Marketers|Radio
0604:0387|Telkom Vision|Trial|Radio
```