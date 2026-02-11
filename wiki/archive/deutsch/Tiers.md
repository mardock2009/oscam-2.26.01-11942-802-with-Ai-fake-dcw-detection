> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Tiers

## Info

+   If you can help, dont hesitate to edit this page! Use the comment line below the editwindow and leave, before saving, a short summary note what was done for the log.
+   [Hier gibts eine](http://board.streamboard.tv/forum/thread/33511-oscam-tiers-f%C3%BCr-nds-karten-ermitteln/) Erklärung, wie man die Tiers bei NDS-Karten herausfinden kann, um so diese Liste zu erstellen/pflegen.
+   Ab OSCam 1.20-unstable r5920 mit WebIF: Wenn in der oscam.tiers keine Tier-/CHID-Zuweisungen gefunden werden, werden im WebIF die CAID-/Provider-Zuweisungen aus der oscam.provid, falls vorhanden, angezeigt.

## oscam.tiers

[![](/images/0/00/MessageS.png)](/wiki/Datei:MessageS.png) Sortierung "innerhalb" der Karten bitte aufsteigend nach der Tier-ID

```
# oscam.tiers **********************************************
# 12.12.2015
# http://www.streamboard.tv/wiki/Tiers
#
# Debug auf 4 und danach 11 + 12 Byte direkt in der Zeile unterhalb Decrypted (Payload) checken
# grep -ia -A1 'Decrypted' /tmp/oscam.log | tail -n 1 | sed 's/  */ /g' | cut -d " " -f16,17 | sed 's/ //g'
# **********************************************************
# DESCRIPTION
#   CAID[,CAID]...:TIER ID|description
#   mapping between CAID, TIER ID and description of TIER
# EXAMPLES
#   0001,0002,0003:000a|my TIER 1
#   0004:000b|my TIER 2
#   0005:000b|my TIER 3
#
#
# **********************************************************
# Sky - V1[3|4] - 12.12.2015
# unknown / new...
09C4,098C:0037|Sky Starter
09C4,098C:0038|Sky Starter
09C4,098C:003A|Sky Entertainment SD + HD
09C4,098C:003B|Sky Entertainment (Pro7FUN HD)
09C4,098C:003C|Sky Cinema
09C4,098C:003D|Sky Cinema (kabel1classics)
09C4,098C:003E|Sky Cinema HD
# scanned
09C4,098C:0046|HD+ / Big Brother
09C4,098C:007D|Sky Sport SD / Sport Austria SD
09C4,098C:0081|Sky Bundesliga SD
09C4,098C:008E|Beate-Uhse.TV
09C4,098C:00C0|Sky Starter
09C4,098C:00C7|Sky Starter
09C4,098C:00C8|Sky Cinema SD
09C4,098C:00C9|Sky Entertainment HD
09C4,098C:00CA|Sky Cinema HD
09C4,098C:00E4|Sky Bundesliga HD
09C4,098C:00E5|Sky Sport HD / Sport Austria HD
09C4,098C:00F3|Sky Blue Movie
# old stuff?!
09C4,098C:0047|ORF HD-Austria
09C4,098C:0051|Telecolumbus HD Basic
09C4,098C:0056|Sky 3D Welt
09C4,098C:0057|Sky 3D Film
09C4,098C:0058|Sky 3D Sport
09C4,098C:005A|Sky Sport HD Extra
09C4,098C:0066|Sky HD Bundesliga Fanzone
09C4,098C:007B|Sky AT/DE / 19.2E / de
09C4,098C:007C|Sky Film / Starter
09C4,098C:0082|Sky Film / Starter
09C4,098C:008F|Sky Film / Starter
09C4,098C:00BC|ORF
09C4,098C:00BD|ORF ATV
09C4,098C:00BE|ORF Puls4
09C4,098C:00C4|Sportdigital
09C4,098C:00CB|Sky Sport HD
09C4,098C:00D4|HD+ (Abo)
09C4,098C:00F0|Erstkarte
09C4,098C:00FA|Sky Blue Movie HD
09C4,098C:00FF|Sky AT/DE / 19.2E / de
09C4,098C:DBB5|Sky Select Bestellung
#
#
# **********************************************************
# Sky - [S|A|P|D]02 - 09.06.2014
1702,1833,1722,1834:000F|Sky Sport Portal
1702,1833,1722,1834:00F0|Sky Bundesliga
1702,1833,1722,1834:026C|Sky Welt Extra 1
1702,1833,1722,1834:028A|Sky Welt Extra 2
1702,1833,1722,1834:0276|Sky Welt Extra 3
1702,1833,1722,1834:03DE|Blue Movie Portal
1702,1833,1722,1834:03F2|Goldstar/Heimatkanal
1702,1833,1722,1834:03FD|Sky Big Brother
1702,1833,1722,1834:04BA|Sky Sport-Paket (alt)
1702,1833,1722,1834:04C4|Sky Fussball-Paket (alt)
1702,1833,1722,1834:04CE|Sky Sport CL
1702,1833,1722,1834:05DC|Sky [always active]
1702,1833,1722,1834:05DD|Sky Welt ...?
1702,1833,1722,1834:05DE|Sky Welt ...?
1702,1833,1722,1834:05DF|Sky Welt ...?
1702,1833,1722,1834:05E7|Blue Movie Portal
1702,1833,1722,1834:05E8|Goldstar / Heimatkanal
1702,1833,1722,1834:05F1|Sky Welt HD
1702,1833,1722,1834:05F2|3D ...?
1702,1833,1722,1834:05F4|3D ...?
1702,1833,1722,1834:05F5|3D ...?
1702,1833,1722,1834:05F6|3D ...?
1702,1833,1722,1834:05FB|HD ...?
1702,1833,1722,1834:05FC|3D Sport
1702,1833,1722,1834:0605|...?
1702,1833,1722,1834:0606|3D ...?
1702,1833,1722,1834:0609|Sky Sport HD Extra
1702,1833,1722,1834:0614|Sky Sport News [SD/HD]
1702,1833,1722,1834:7D21|Sky Welt
1702,1833,1722,1834:7D22|Sky Film
1702,1833,1722,1834:7D23|Sky Sport
1702,1833,1722,1834:7D27|Beate-Uhse.tv
#
#
# **********************************************************
# HD+ - HD0[1|2] - 04.02.2014
1830,1843:0064|HD+ Gratisjahr (HD01)
1830,1843:0065|HD+ ungenutzt
1830,1843:0066|HD+ Gratisjahr (HD02)
1830,1843:0067|HD+ ungenutzt
1830,1843:0BEA|Jahresabo HD+
1830,1843:0BB8|Monatsabo HD+
#
#
# **********************************************************
# ORF - ICE - 09.06.2014
0648,0650,0D95,0D98:0001|ORF
0648,0650,0D95,0D98:0002|ATV / Private
0648,0650,0D95,0D98:000D|ORF/ATV 30 Tage
0648,0650,0D95,0D98:0010|ATV
0648,0650,0D95,0D98:0015|HD-Austria
0648,0650,0D95,0D98:001D|HD-Austria Demo (3 Monate)
0648,0650,0D95,0D98:002A|Austriasat
0648,0650,0D95,0D98:002B|Austriasat XXX Channels
0648,0650,0D95,0D98:002C|Austriasat XXX Channels
0648,0650,0D95,0D98:0031|Austriasat
0648,0650,0D95,0D98:7FF7|ORF/ATV/Puls 4
0648,0650,0D95,0D98:7FFB|30 Tage
0648,0650,0D95,0D98:F000|ORF/ATV 30 Tage
0648,0650,0D95,0D98:FFD8|30 Tage
0648,0650,0D95,0D98:FFE0|ORF regional HD
#
#
# **********************************************************
# MTV Unlimited - Conax - 09.03.2014
0B00:6020|Conax MTV Unlimited PPV
```