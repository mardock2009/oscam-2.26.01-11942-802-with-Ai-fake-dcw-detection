> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/Loadbalancing

## Loadbalancing

### Wie funktioniert der Loadbalancer?

Wenn man auf ein verschlüsseltes Programm schaltet, muß OSCam eine dem Programm entsprechende Karte finden, die sich hinter einem Reader befindet. Es wird also ein ECM request an einen gültigen Reader geschickt.

Nach folgenden Bedingungen lernt der Loadbalancer, welche srvids (Programme) auf welchen readern zu Verfügung stehen.

[![](/images/c/c5/Lb_weight_calc2.png)](/wiki/Datei:Lb_weight_calc2.png)

### Wie ermittelt OSCam einen gültigen Reader?

Für jeden ECM Request werden zuerst die gültigen reader ermittelt. Dies geschieht durch:

+   Gruppe des account passt zu Gruppe reader
+   reader ist enabled und nicht gelöscht
+   reader caids passen zu ECM request oder reader hat keine caids
+   reader services passen zu ECM request oder reader hat keine services
+   reader idents passen zu ECM request oder reader hat keine idents
+   reader chids passen zu ECM request oder reader hat keine chids
+   bei caid 0500 zusätzliche Prüfung auf nanos

Wenn all diese Prüfungen positiv sind, dann wird der reader für diesen ECM Request ausgewählt. Diese Prüfung wird für alle Reader durchgeführt und der Loadbalancer erhält so eine Liste aller möglichen reader für diesen ECM Request.

Ist nun der loadbalancer aktiviert, so ermittelt er aus dieser Menge die Loadbalancer Werte (LB\_WERT).

Für jeden Reader (aus der Liste der gültigen) wird dann der LB\_WERT ermittelt, indem

lb\_mode=1: die durchschnittliche Antwortzeit des readers für diesen service durch das lb\_weight geteilt wird.

lb\_mode=2: die Letzte Antwortzeit relativ zur frühesten Antwortzeit gemessen wird.

lb\_mode=3: das usagelevel (Idlezeit im Verhältnis der ECM-Verarbeitungszeit) gemessen wird.

Die ermittelten Reader werden dann nach diesem LB\_WERT sortiert (kleinster zuerst) und zugeordnet:

+   Ist "Prefer local cards" aktiviert, werden zuerst lb\_nbest Reader zugeordnet, die keine Proxies sind
+   Ist lb\_nbest Reader noch nicht erreicht, so werden die verbleibenden Reader der reihe nach zugeordnet, bist lb\_nbest Reader erreicht ist.
+   Danach werden lb\_nfb Reader als Fallback-Reader zugeordnet

Normalerweise sollte lb\_nbest readers = 1 sein, da es nicht notwendig ist, mehr als einen reader anzufragen.

Nebenbedinungen, die zusätzlich Reader auswählen:

+   Keine Statistik vorhanden: Reader wird ausgewählt
+   Statistik vorhanden aber lb\_min\_ECMcount nocht nicht erreicht: Reader wird ausgewählt
+   Statistik vorhanden, ECM Anzahl > lb\_max\_ECMcount: Reader wird ausgewählt, wenn durchschnittliche Antwortzeit > lb\_retrylimit und die Stats werden resetet.

Der ECM Request wird dann ausgeführt und an die entsprechenden reader geschickt.


**Antwortet ein Reader mit "not found", so wird dieser geblockt.**

**Antwortet ein Reader 5x nacheinander nicht auf ECM-Requests (timeout), so wird dieser geblockt.** (siehe lb\_min\_ecmcount)

**Antwortet ein Reader korrekt, so wird dessen Zeit für die Antwort gemessen und in die Statistik eingetragen.**

**Sind Service oder Ident vorhanden, werden ECM-Requests für die zugeordneten Reader immer ausgeführt.**