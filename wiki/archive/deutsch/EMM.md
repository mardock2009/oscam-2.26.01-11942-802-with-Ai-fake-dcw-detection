> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# EMM

## Inhaltsverzeichnis

+   [1 EMM - How to block, save, select and write with OSCam](#EMM_-_How_to_block,_save,_select_and_write_with_OSCam)
    +   [1.1 Begriffsbestimmung](#Begriffsbestimmung)
    +   [1.2 Aufbau einer EMM](#Aufbau_einer_EMM)
    +   [1.3 EMM-Management](#EMM-Management)
        +   [1.3.1 block](#block)
        +   [1.3.2 save](#save)
        +   [1.3.3 select](#select)
        +   [1.3.4 write](#write)
    +   [1.4 Beispiel NDS/Videogard V14 SmartCard](#Beispiel_NDS/Videogard_V14_SmartCard)
        +   [1.4.1 FAQ](#FAQ)
            +   [1.4.1.1 Unpair](#Unpair)
            +   [1.4.1.2 Pair](#Pair)
            +   [1.4.1.3 Erste Inbetriebnahme](#Erste_Inbetriebnahme)
        +   [1.4.2 Karte und Sender freischalten](#Karte_und_Sender_freischalten)
        +   [1.4.3 block](#block_2)
        +   [1.4.4 save](#save_2)
        +   [1.4.5 select](#select_2)
        +   [1.4.6 write](#write_2)
        +   [1.4.7 Fusebyte](#Fusebyte)
        +   [1.4.8 Payload](#Payload)
        +   [1.4.9 Script für Fusebyte und Payload](#Script_für_Fusebyte_und_Payload)
            +   [1.4.9.1 Installation des Scripts](#Installation_des_Scripts)
        +   [1.4.10 Konfigurationen](#Konfigurationen)
            +   [1.4.10.1 easymouse 2](#easymouse_2)
            +   [1.4.10.2 serial](#serial)
            +   [1.4.10.3 smargo](#smargo)
    +   [1.5 OSCar-EMM-Analyse-Programm](#OSCar-EMM-Analyse-Programm)

# EMM - How to block, save, select and write with OSCam

## Begriffsbestimmung

EMM = **E**ntitlement **M**anagement **M**essages werden mit dem TV-Stream ausgesendet und lösen durch Zusammenwirken von SmartCard und CardReader (ggf mit entsprechenden Interfaces) auf der Empfängerseite bestimmte Aktionen aus, wie z.B.

+   Aktivieren bzw. Freischalten der SmartCard
+   Verlängerungen der Gültigkeit
+   Hinzuwählen von bestimmten Sendungen
+   Pairen (verheiraten) mit einem bestimmten Receiver


OSCam unterscheidet vier Arten von EMM:

+   **u**nique = nur für eine ganz bestimmte SmartCard eines Providers
+   **s**hared = für eine bestimmte Gruppe von SmartCards eines Providers
+   **g**lobal = für alle SmartCards eines Providers
+   **unknown** = unbekannte EMM



Dieses Wiki befasst sich mit den Möglichkeiten von OSCam, eingehende EMM für SmartCards auf dem Cardserver zu

+   blocken (**block**)
+   sichern (**save**)
+   filtern (**select**) und schließlich manuell auf die SmartCard zu
+   schreiben (**write**)



## Aufbau einer EMM

Die von Oscam abgespeicherten EMMs in der \*emm.log-Datei (s.u.) kann man sich mit einem Texteditor anschauen und sehen beispielsweise so aus:

1970/01/01 23:59:59 0123456789ABCDEF 8270**20**XXXXXXXXXX**02**FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDC

Erläuterung: Datum und Uhrzeit des Empfangs ("1970/01/01 23:59:59") der EMM dürften klar sein. Danach kommt der dritte Block ("0123456789ABCDEF"), welcher (bei Unique-EMM) eure Smartcard-Seriennummer enthält, falls ihr zB im Forum EMMs postet, solltet ihr diesen Block also unkenntlich machen, zB aus-x-en.

Der vierte Block beginnt immer mit 8270 gefolgt von der Länge der EMM in Hexadezimal (hier **20**, d.h. die Länge ist 20 in Hex, was in Dezimal 32 entspricht). Dementsprechend kommen danach also 64 Zeichen, denn jeweils 2 Zeichen entsprechen einem Byte. Dabei kommt zuerst ein Bereich ("XXXXXXXXXX") in welchem nocheinmal eure Smartcard-Seriennummer stehen kann (also ggfs aus-x-en), gefolgt von **02** und danach bis zum Ende der verschlüsselte Teil, in welchem der Provider die eigentlichen Befehle für die Karte "versteckt". Auch darin kann die Serial enthalten sein, deshalb sollte man, wenn überhaupt, EMMs nur in dieser Form posten: 827020XXXXXXXXXX02. So kann man den Typ, die Länge und den Aufbau erkennen.

Steht dort anstatt **02** ein **07**, spricht man vom 07er-Aufbau und diese gelten höchstwahrscheinlich als Pairing-EMMs. Solche EMMs werden deshalb von Oscam seit Revision 9884 als Unknown-EMM weiterverarbeitet, also zB als solche geblockt (siehe [fix07](/wiki/OSCam/de/Config/oscam.server#fix07 "OSCam/de/Config/oscam.server")).

Beginnt der vierte Block stattdessen mit 8200, wurde diese EMM von einem CCcam-Clienten empfangen. CCcam filtert außerdem die Smartcard-Seriennummer heraus, was dazu führt, daß die EMM-Länge um 4 Bytes kleiner ist. In unserem obigen Beispiel würde der vierte Block also mit 82001C beginnen (Hexadezimal 1C plus 4 ergibt wieder 20). Dies müsst ihr unbedingt beachten, wenn ihr in den diversen Längen-Listen nachschaut, ob eine EMM "gut" oder "böse" ist.

## EMM-Management

Die Configuration der [oscam.server](/wiki/OSCam/de/Config/oscam.server#block_and_save "OSCam/de/Config/oscam.server") ermöglicht dem CardReader, die beim Client eingehenden EMM auf unterschiedliche Weise zu behandeln.

### block

Hiermit wird die Weiterleitung der EMM an die SmartCard blockiert. Sie wird also nicht auf die Karte geschrieben. Man kann die einzelnen EMM-Arten separat mit Setzen einer 1 blockieren:

+   **blockemm-u** = blockiert nur unique EMM
+   **blockemm-s** = blockiert nur shared EMM
+   **blockemm-g** = blockiert nur global EMM
+   **blockemm-unknown** = blockiert nur unbekannte EMM


Der Default-Wert ist bei allen 4 Parametern 0, also nicht geblockt!

**Will man alle EMM an einer Weiterleitung zur SmartCard hindern, muss bei allen vier obengenannten Parametern eine 1 gesetzt werden!**


Eine Sonderstellung nimmt folgender Parameter ein:

+   **blockemm-bylen**


Damit können EMM aller oben aufgeführten Arten mit einer bestimmten Länge blockiert werden. Eine Kombination zwischen den 4 EMM-Arten und blockemm-bylen ist nicht nur möglich sondern auch zweckmäßig.

```
Beispiel:
blockemm-u      =  0
blockemm-s      =  1
blockemm-g      =  1
blockemm-unknown = 1
blockemm-bylen = 50-60,100-110
```

Es werden alle unique EMM auf die SmartCard geschrieben mit Ausnahme der Längen 50 bis 60 und 100 bis 110.



[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung:** Es ist zweckmäßig, einen Range in blockemm-bylen **nicht mit einer 0** zu beginnen! Bei einer 0 am Anfang eines Ranges haben User negative Erfahrungen mit dem *Durchrutschen* unerwünschter EMM gemacht. **Besser die 1 wählen!**


### save

In bestimmten Fällen ist es zweckmäßig, die EMM zu prüfen, bevor sie auf die SmartCard geschrieben werden. Das kann man nicht, wenn man sie nur, wie oben beschrieben, blockt. Sie müssen also zunächst gesichert werden, damit man sie prüfen und ggf. manuell auf die SmartCard schreiben kann.

**Vorbedingung** ist, dass in [oscam.conf\[global\]](/wiki/OSCam/de/Config/oscam.conf#emmlogdir "OSCam/de/Config/oscam.conf") ein **Pfad für die Sicherung** der Logdaten festgelegt ist:

```
Beispiel:
/var/log/oscam/emm.log/
```

Oder im WebIF.
[![](/images/8/8e/Ausschnitt_oscam.conf-global%29.jpg)](/wiki/Datei:Ausschnitt_oscam.conf-global\).jpg)

**Wenn dort nichts eingetragen wird, gilt als Default-Wert das Verzeichnis, in dem die Config steht!**



* * *

[![](/images/0/00/MessageS.png)](/wiki/Datei:MessageS.png) **Info:**

Das Verzeichnis wird nicht von Oscam erstellt. Es muss bereits auf der Festplatte vorhanden sein.

* * *

In der [oscam.server](/wiki/OSCam/de/Config/oscam.server#saveemm-u "OSCam/de/Config/oscam.server") stehen folgende Speichermöglichkeiten zur Verfügung:

+   **saveemm-u** = speichern der unique EMM
+   **saveemm-s** = speichern der share EMM
+   **saveemm-g** = speichern der global EMM
+   **saveemm-unknown** = speichern der unknown EMM


Defaultwert ist für alle 0 = keine Speicherung. Mit dem Setzen von 1 wird eine Speicherung unter dem in [oscam.conf\[global\]](/wiki/OSCam/de/Config/oscam.conf#emmlogdir "OSCam/de/Config/oscam.conf") festgelegten Pfad vorgenommen.
Diese Parameter können auch im WebIf verwaltet werden:
[![](/images/7/7b/Ausschnitt_oscam.server_-block-save-.jpg)](/wiki/Datei:Ausschnitt_oscam.server_-block-save-.jpg)

### select

Aus den gespeicherten EMM kann man nun die EMM heraussuchen, die man auf die SmartCard schreiben möchte. Das macht man am besten mit copy&paste (siehe nächster Abschnitt!).


### write

Das WebIf bietet unter dem Tab **Reader** die Möglichkeit, einzelne EMM manuell auf die SmartCard zu schreiben:
[![](/images/2/2d/Ausschnitt_oscam.server_-Tab1-.jpg)](/wiki/Datei:Ausschnitt_oscam.server_-Tab1-.jpg)


Man erhält dann folgendes Bild:
[![](/images/c/cf/Ausschnitt_Server_Tab2_leer.jpg)](/wiki/Datei:Ausschnitt_Server_Tab2_leer.jpg)


In den oberen Abschnitt fügt man die gewünschte EMM mit copy&paste ein.

```
Die CAID muss nicht eingetragen werden!
```



**Erläuterung:**(Schelle76 StB)
Einen Pfad muss man nur angeben, wenn man eine EMM aus einer Datei (z.B. var/log/oscam/emm.log) schreiben will. Solange man es nur händisch macht, benötigt man keinen Pfad.


## Beispiel NDS/Videogard V14 SmartCard

Anhand einer V14 SmartCard (NDS/Videogard) soll die praktische Anwendung des EMM-Management beschrieben werden. Die nachfolgenden Ausführungen sind eine Zusammenfassung der wesentlichen Erkenntnisse aus diesem sehr umfangreichen [Streamboard-Thread](http://board.streamboard.tv/forum/thread/40364-neue-sky-v14-l%C3%A4uft-nur-noch-im-original-receiver/)

### FAQ

##### Unpair

Q: Ist eine "Trennung" zwischen Karte und Receiver möglich?

A: **Nein** (Stand 23.08.2014)

##### Pair

Q: Mit welcher Hardware kann die Karte überhaupt gepaired werden?

A: Pairing ist nur mit Sky NDS zertifizierten HD Receivern / Sky CI+ möglich. Die Pairingaktivierung per EMM ist jedoch in **jedem Videoguard (Soft)CAM möglich!**

##### Erste Inbetriebnahme

Q: Werden Karte und Receiver bereits "gepaired" geliefert?

A: **Nein** (Stand 23.08.2014)

Q: Was ist zu beachten, wenn ich die neue Karte und den neuen Receiver erhalten habe?

A: Karte erst in einen Receiver, CAM oder Cardreader stecken, nachdem sichergestellt ist, dass die EMMs geblockt werden. Das gilt z.B. auch für einen OSCam-Reader, erst alle EMMs **[blocken](/wiki/OSCam/de/Config/oscam.server#block_and_save "OSCam/de/Config/oscam.server")**, dann Karte einstecken.



### Karte und Sender freischalten

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Alle Angaben ohne Gewähr!**

Nachfolgende Tabelle führt die **Längen in Hex** von **Unique**\-EMMs auf, die bisher erfolgreich zur Aktivierung der Karte und anschließender Aktivierung/Verlängerung der Tiers genutzt worden sind.

**Beispiel** 0x85/0x32: Eine EMM mit Länge 0x85 wurde geloggt und manuell auf die Karte geschrieben, was die Karte aktivierte. Danach folgte irgendwann eine EMM mit Länge 0x32, die ebenso manuell auf die Karte geschrieben wurde und die letztendlich die *Erleuchtung* brachte, sprich die Tiers aktivierte/verlängerte.

Stand: 06.09.2014

| EMM-Length activate Card | EMM-Length activate Programs (Tiers) |
| --- | --- |
| 51 | 33 |
| 6D | 34 |
| 84 | 2f |
| 84 | 35 |
| 8C | 35 |
| 85 | 32 |
| 85 | 34 |
| 85 | 36 |
| 88 | 33 |
| 88 | 34 |
| 88 | 35 |
| 91 | 33 |



### block

Da die EMM, die die

+   Aktivierung bzw. Freischaltung
+   Verlängerung
+   Entitlements
+   Select Bestellungen
+   Pairing

auf der SmartCard veranlassen, alle kartenspezifisch, also unique sind, können die übrigen EMM-Arten geblockt werden.


[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung:**

Eine unique EMM erkennt man auch daran, dass sie die Serial-Nr. der SmartCard enthält!


Die oscam.server wird daher wie folgt konfiguriert:

```
blockemm-unknown              = 1
blockemm-s                    = 1
blockemm-g                    = 1
```

```
Vor Version 9881:
blockemm-u                    = 0 (Besser auf 1 setzen und EMM manuell schreiben! (Siehe Forum))
blockemm-bylen                = 1-38,40,42-44,65-124,126-127,131,139-255
```

```
Nach Version 9881:
blockemm-u                    = 0 (Besser auf 1 setzen und EMM manuell schreiben! (Siehe Forum))
```

Damit wird folgendes erreicht:

+   Alle unbekannten (unknown), geteilten (shared) und globalen (global) EMM werden geblockt
+   Zur SmartCard werden nur die unique EMM durch gelassen (Besser nicht!)
+   Diese unique EMM werden über blockemm-bylen (veraltet!) oder den seit Version 9881 per default aktivierten fix07 so gefiltert, dass nur *gute* EMM auf die SmartCard gelangen.

Mit diesen Vorkehrungen hat man *nach dem augenblicklichen Stand der Erkenntnisse* eigentlich schon alles getan, um eine *Hochzeit* zwischen SmartCard und Receiver bzw. CI zu verhindern.

### save

Falls sich etwas bei den EMM von Provider-Seite ändert, ist es gut, wenn man sich diese EMM anschauen und bei Bedarf manuell auf die Smartcard schreiben kann.

Daher folgender Eintrag in die oscam.server:

```
saveemm-u = 1
```

Es besteht keine Notwendigkeit, auch die übrigen EMM (s,g,unknown) zu loggen und zu speichern


Hier ein FileZilla-Ausschnit, der anzeigt, was dort gespeichert wird:

[![altes Format für emm-log](/images/5/54/Ausschnitt_Log-Verzeichnis.jpg)](/wiki/Datei:Ausschnitt_Log-Verzeichnis.jpg "altes Format für emm-log")



+   Auf der **\*.bin** sind die Logdaten im bin-Format. Diese Datei wird eigentlich nirgendwo mehr benötigt. Sie sollte im Rahmen der weiteren Programmpflege von OSCam wegfallen, da sie nur irritiert!
+   Die **\*.log** sind die mit **saveemm** und ggf. mit **blockemm-bylen** gefilterten EMM. Die kann kann man sich am besten mit Wordpad oder einem anderen Editor anschauen und die ausgesuchten EMM dann mit copy&paste auf die Karte schreiben.


[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung: Ab Revision 9741 von OSCam werden separate Log-Dateien für die die einzelnen EMM-Arten (unknown, unique, share und global) ausgegeben!**

[![neues Format für emm-log](/images/1/1a/Shared_emm_log%28neu%29.png)](/wiki/Datei:Shared_emm_log\(neu\).png "neues Format für emm-log")



### select

pepo83 hat [hier](http://board.streamboard.tv/forum/thread/40831-sky-v14-emm-sammelliste/?postID=507903#post507903) eine Liste im Streamboard-Forum angelegt, die etwas über die *guten* und *bösen* EMM aussagt.

### write

Wenn man keine Filterung über den Parameter blockemm-bylen vornimmt, sondern auch die unique EMM mit blockemm-u blockt, muss man die erforderlichen EMM anhand der Liste von pepo83 aus den mit saveemm-u gespeicherten EMM einzeln heraussuchen, auf die SmartCard schreiben (siehe oben!) und schauen, was dann passiert. Dies ist eine Methode, mit der man sich vorsichtig an die *guten* EMM herantasten kann und die auch bei der Schaffung dieser Liste im o.g. Thread Pate gestanden hat.


Hier noch eine Faustregel von **derdaa** aus dem StB:

**EMM-BLOCK und LOG**

+   Freischalten lassen
+   40 Minuten Warten
+   Log Auslesen, die EMM die nach 30 Minuten nicht mehr kommt Schreiben (das ist die Freischaltung)
+   die Kürzeste EMM (Im HEX 20-40 gesammt 108 Zeichen ist die Verlängerung)

Mehr nicht machen; da hat man dann meist um die 3 Monate Ruhe und bis dahin gibt es evtl schon was neues!



### Fusebyte

Das Fusebyte gibt darüber Auskunft, in welchem Aktivierungszustand sich die SmartCard befindet:

```
Format
15 48 xx
      00 nicht aktiviert
      05 aktiviert
      25 gepairt (mit Receiver verheiratet) <--- was wir unter allen Umständen vermeiden wollen!
```

Das Fusebyte findet man, wenn man im WebIF auf der Status-Seite unten den Debug-Modus **ALL** auswählt, danach den Reader neu startet und nach der Folge **15 48 XX** sucht.


[![](/images/d/df/Debug_ALL.jpg)](/wiki/Datei:Debug_ALL.jpg)


Sollte **Switch Debug from 0 to 0 1 2 4 8 16 32 64 128 256 512 1024 2048 4096 ALL** auf der Status Seite nicht angezeigt werden, dann unter Config -> WebIf -> Show/Hide in Status -> **Show** aktivieren!

Alternativ dazu kann der Debug Modus auch im LiveLog geändert werden. Dazu muss dort der Button **Einstellungen anzeigen** gedrückt werden.



```
Ein Tipp von User kaggee aus dem StB:
Für alle, die das Fusebyte im Oscamlog nicht finden:
Die Standardgröße für das OSCam.log von 256 KB auf 1.500 KB erhöhen, dann kann man das Fusebyte sehen!
```

### Payload

Zeigt zuverlässig den Kartenstatus.

Sichtbar wird es im Log, wenn im WebIF Status-Seite unten im Debug-Level die Ziffern 2 und 4 ausgewählt werden:


[![](/images/9/91/Debug_2-4.jpg)](/wiki/Datei:Debug_2-4.jpg)


Dann erscheint in der 2. Logzeile nach \[videogard2\]Decrypted eine HEX-Ziffernfolge

```
0F 06 02 30 20 -> Karte komplett neu und nackt (nicht mit EMMs versorgt) *
0F 06 00 10 20 -> Karte aktiviert (1. EMM geschrieben) aber noch ohne Entitlements (2. EMM fehlt) /ODER/ Karte war schon hell, Entitlements abgelaufen **
0F 06 00 00 00 -> Karte aktiviert und mit Entitlements versorgt
0F 06 00 10 00 -> Karte gepairt ***
0F 06 00 00 20 -> Karte mit falschem/verfälschtem EMM kaputt geschrieben /ODER/ Karte deaktiviert/gesperrt (meistens mit 827029) /ODER/ Kein Tier für den Kanal vorhanden auf dem der Payload ausgelesen wird ****
```


OScam Log (seit r9782?):

(\*) sky \[videoguard2\] classD3 ins54: no cw --> Card isn't active sky \[videoguard2\] classD3 ins54: no cw --> Card is paired

(\*\*) sky \[videoguard2\] classD3 ins54: no cw --> Card is paired

(\*\*\*) sky \[videoguard2\] classD3 ins54: no cw --> Card is paired

(\*\*\*\*) \[videoguard2\] classD3 ins54: status 90 00 = ok but cw=00 tag 0F: 00 00 20 00 00 03, please report to the developers with decrypted ins54

OScam schreibt im Log "Card is paired" nach Syntax xx xx xx 10 xx und zeigt daher keinen Unterschied zwischen "Aktiviert, aber ohne Entitlements" und "gepairt".


Den Status kann man auch auf die V13 anwenden, allerdings muss dann im Log nach "0F 04" gesucht werden, z.B. 0F 04 00 00 00 für "Karte aktiviert und mit Entitlements versorgt".

### Script für Fusebyte und Payload

**brain666** vom Stb hat ein [script](http://board.streamboard.tv/forum/thread/40364-neue-sky-v14-l%C3%A4uft-nur-noch-im-original-receiver/?postID=511102&highlight=Fusebyte%2Bund%2BPayload#post511102) entwickelt, das das Ermitteln und Auslesen von Fusebyte und Payload erleichtert

Download: [Fusebyte-Payload-Script](http://www.streamboard.tv/wbb2/portal_subdb.php?dbid=44)


[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung:** es muss *curl* im Image vorhanden sein, zur Not muss es nachinstalliert werden. *curl* ist ein Hilfsprogramm, um über die Kommandozeile Webinformationen abrufen zu können. Hier im Skript wird das Webinterface von OSCAM abgefragt.


Nachinstallation von *curl* wenn nötig mit

```
code
opkg update
opkg install curl
```


<syntaxhighlight lang="bash">

1.  !/bin/sh

TEMP="/tmp/tempfile" LOGIN="benutzer" PW="passwort" IP="127.0.0.1" PORT="12345" KARTE="sky.v14.lokal1" LOGPFAD="/opt/lampp/htdocs/oscam17000/os17000.log"

PLATZ="################################" curl -s --digest -o - -u $LOGIN:$PW "[http://$IP:$PORT/status.html?debug=65535](http://$IP:$PORT/status.html?debug=65535)" > $TEMP printf "switching debug to 65535 ... \\n"; rm -f $TEMP

curl -s --digest -o - -u $LOGIN:$PW "[http://$IP:$PORT/readers.html?label=$KARTE&action=disable](http://$IP:$PORT/readers.html?label=$KARTE&action=disable)" > $TEMP printf "$KARTE DISABLED ... waiting 1 sec. \\n"; rm -f $TEMP sleep 1 curl -s --digest -o - -u $LOGIN:$PW "[http://$IP:$PORT/readers.html?label=$KARTE&action=enable](http://$IP:$PORT/readers.html?label=$KARTE&action=enable)" > $TEMP printf "$KARTE ENABLED ... waiting 15 sec. until Card finished \\n"; rm -f $TEMP sleep 15 printf "$PLATZ \\n"; printf "## checking fusebyte \\n";

1.  grep -A 3 -B 1 "15 48 " $LOGPFAD |tail -n 1

grep -A 2 -B 1 "15 48 " $LOGPFAD | grep -A 1 "Answer from cardreader" | grep -A 1 " $KARTE " | tail -n 2 > $TEMP cat $TEMP | tail -n 2 rm -f $TEMP printf "$PLATZ \\n"; printf "15 48 00 = Virgin \\n"; printf "15 48 05 = Active \\n"; printf "15 48 25 = Married/Activated \\n"; curl -s --digest -o - -u $LOGIN:$PW "[http://$IP:$PORT/status.html?debug=0](http://$IP:$PORT/status.html?debug=0)" > $TEMP rm -f $TEMP printf "$PLATZ \\n"; printf "## checking Payload \\n"; cat $LOGPFAD | grep -A 0 -B 3 "00 0F 06 " | grep Dec | tail -n 1 >> $TEMP cat $LOGPFAD | grep -A 0 -B 3 "00 0F 06 " | tail -n 1 >> $TEMP cat $TEMP | tail -n 2 rm -f $TEMP printf "$PLATZ \\n"; printf "0F 06 02 30 = vor dem Aktivieren der Karte \\n"; printf "0F 06 02 10 = nach dem Aktivieren der Karte \\n"; printf "0F 06 02 00 = beim Schreiben der Tiers \\n"; printf "$PLATZ \\n"; printf "$PLATZ \\n"; printf "switching debug to 0 ... done \\n"; exit 1 </syntaxhighlight>


so sieht dann ein Ergebnis aus:

```
root@Linux:/opt/check.sh
switching debug to 65535 ...
sky.v14.lokal1 DISABLED ... waiting 1 sec.
sky.v14.lokal1 ENABLED ... waiting 15 sec. until Card finished
################################
## checking fusebyte
2014/05/10 17:53:11  8BB7658 r sky.v14.lokal1 [mouse] Answer from cardreader:
2014/05/10 17:53:11  8BB7658    15 48 25 00 63 xxxxxxxxxxxxxxxxx
################################
15 48 00 = Virgin
15 48 05 = Active
15 48 25 = Married/Activated
################################
## checking Payload
2014/05/10 17:53:23  8BB7658 r sky.v14.lokal1 [videoguard2] Decrypted payload
2014/05/10 17:53:23  8BB7658    00 00 0E 02 03 00 0F 06 02 00 xxxxxxxxxxxxx   <----
################################
0F 06 02 30 = vor dem Aktivieren der Karte
0F 06 02 10 = nach dem Aktivieren der Karte
0F 06 02 00 = beim Schreiben der Tiers
################################
################################
switching debug to 0 ... done
```


[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung: Die Parameter im Script müssen natürlich User-spezifisch angepasst werden!**



#### Installation des Scripts

Hier eine [Anleitung](http://board.streamboard.tv/forum/thread/40364-neue-sky-v14-l%C3%A4uft-nur-noch-im-original-receiver/?postID=511957#post511957) von **Basti756** aus dem StB:

Das Script muss auf das Gerät kopiert werden, auf dem OSCAM mit der V14 Karte auf einem Smartcardreader läuft und ausführbar gemacht werden (chmod 755 script.sh). Das Verzeichnis in dem das Script liegt, spielt keine Rolle. Anschließend müssen die folgenden Variablen an die lokalen Gegebenheiten angepasst werden (Anführungszeichen nicht entfernen!):

```
code
1: TEMP="/tmp/tempfile"                               #muss nicht angepasst werden
2: LOGIN="benutzer"                                   #Benutzer für die Anmeldung am OSCAM WebIf
3: PW="passwort"                                      #Passwort des Benutzers für die Anmeldung am OSCAM WebIf
4: IP="127.0.0.1"                                     #muss nicht angepasst werden
5: PORT="12345"                                       #Port auf dem das WebIf lauscht
6: KARTE="sky.v14.lokal1"                             #Readername der Sky V14
7: LOGPFAD="/opt/lampp/htdocs/oscam17000/os17000.log" #Pfad im Dateisystem zur Logdatei von OSCAM
```

Die Ausführung des Scripts geschieht auf der Kommandozeile:

```
code:
1: sh /pfad/zum/script.sh
```

Das Script gibt nun die gefundenen Werte des Fusebytes und der decrypted Payload inkl. ihrer Bedeutung aus.


[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung:**

Der Receiver muss natürlich auf einem entsprechenden Pay-Channel eingestellt sein!

### Konfigurationen

Nachfolgend einige Muster-Konfigurationen für die oscam.server

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung:**

+   die mit \*\*\* gekennzeichneten Parameter sind benutzerspezifisch!



#### easymouse 2

```
[reader]
label                         = SkyDE_V13
protocol                      = mouse
device                        = ***
services                      = ***
caid                          = 09C4
boxid                         = 12345678
ins7e11                       = 15
detect                        = cd
group                         = ***
emmcache                      = 1,1,2
blockemm-unknown              = 1
blockemm-u                    = 0 (Besser auf 1 setzen und EMM manuell schreiben! (Siehe Forum))
blockemm-s                    = 1
blockemm-g                    = 1
#blockemm-bylen               = 1-38,40,42-44,65-124,126-127,131,139-255 (Nicht mehr notwendig mindestens seit Version 9881.)
saveemm-u                     = 1
ndsversion                    = 2
```

```
[reader]
label                         = SkyDE_V14
protocol                      = mouse
device                        = ***
services                      = ***
caid                          = 098C
boxid                         = 12345678
ins7e11                       = 15
detect                        = cd
group                         = ***
emmcache                      = 1,1,2
blockemm-unknown              = 1
blockemm-u                    = 0 (Besser auf 1 setzen und EMM manuell schreiben! (Siehe Forum))
blockemm-s                    = 1
blockemm-g                    = 1
#blockemm-bylen               = 1-38,40,42-44,65-124,126-127,131,139-255 (Nicht mehr notwendig mindestens seit Version 9881.)
saveemm-u                     = 1
ndsversion                    = 2
```

#### serial

```
[reader]
label                         = SkyDE_V13
protocol                      = smartreader
device                        = ***
services                      = ***
autospeed                     = 0
caid                          = 09C4
boxid                         = 12345678
ins7e11                       = 15
detect                        = cd
mhz                           = 480
cardmhz                       = 369
group                         = ***
emmcache                      = 1,1,2
blockemm-unknown              = 1
blockemm-u                    = 0 (Besser auf 1 setzen und EMM manuell schreiben! (Siehe Forum))
blockemm-s                    = 1
blockemm-g                    = 1
#blockemm-bylen               = 1-38,40,42-44,65-124,126-127,131,139-255 (Nicht mehr notwendig mindestens seit Version 9881.)
saveemm-u                     = 1
ndsversion                    = 2
```

```
[reader]
label                         = SkyDE_V14
protocol                      = smartreader
device                        = ***
services                      = ***
autospeed                     = 0
caid                          = 098C
boxid                         = 12345678
ins7e11                       = 15
detect                        = cd
mhz                           = 480
cardmhz                       = 369
group                         = ***
emmcache                      = 1,1,2
blockemm-unknown              = 1
blockemm-u                    = 0 (Besser auf 1 setzen und EMM manuell schreiben! (Siehe Forum))
blockemm-s                    = 1
blockemm-g                    = 1
#blockemm-bylen               = 1-38,40,42-44,65-124,126-127,131,139-255 (Nicht mehr notwendig mindestens seit Version 9881.)
saveemm-u                     = 1
ndsversion                    = 2
```

#### smargo

```
# Sky V14 im Smargo FTDI muss aktiv sein
[reader]
Label                   = SkyV14
device                  = /dev/ttyUSB0
protocol                = mouse
caid                    = 098C
boxid                   = 12345678
ins7e11                 = 13
smargopatch             = 1
detect                  = cd
cardmhz                 = 368
mhz                     = 480
autospeed               = 0
group                   = 1
emmcache                = 1,1,2
saveemm-u               = 1
blockemm-unknown        = 1
blockemm-g              = 1
blockemm-s              = 1
blockemm-bylen          = 1-38,40,42-44,65-124,126-127,131,139-255
ndsversion              = 2
```



```
# Sky V14 im Smargo USB:ID mit z.B. list_smargo auslesen
[reader]
Label                   = SkyV14
device                  = USB:ID
protocol                = smartreader
caid                    = 098C
boxid                   = 12345678
ins7e11                 = 13
detect                  = cd
cardmhz                 = 368
mhz                     = 480
autospeed               = 0
group                   = 1
emmcache                = 1,1,2
saveemm-u               = 1
blockemm-unknown        = 1
blockemm-g              = 1
blockemm-s              = 1
blockemm-bylen          = 1-38,40,42-44,65-124,126-127,131,139-255
ndsversion              = 2
```

Dank an **Bulldog** vom StB

## OSCar-EMM-Analyse-Programm


**mcmagic2** vom StB hat ein Programm geschrieben, mit dem man die EMM-Logdaten von OSCam analysieren kann. [In diesem Thread](http://board.streamboard.tv/forum/thread/41441-emm-oscar-download) stehen die Programmversionen für Windows und MAC zum Download zur Verfügung. Hier wird auch über die Testergebnisse und Weiterentwicklung diskutiert.

Es ist beabsichtigt, diese Programme in die **Database von Streamboard** aufzunehmen.

Erklärungen und ein How-To werden an dieser Stelle folgen!