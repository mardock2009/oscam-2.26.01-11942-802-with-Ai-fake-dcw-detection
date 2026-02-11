> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/Picons

## Inhaltsverzeichnis

+   [1 Channeldarstellung im WebIf](#Channeldarstellung_im_WebIf)
+   [2 Picons](#Picons)
    +   [2.1 Vorgefertigte Picons](#Vorgefertigte_Picons)
        +   [2.1.1 Implementierung der Picons](#Implementierung_der_Picons)
            +   [2.1.1.1 Einen Speicherplatz für die Picons auf dem Server festlegen](#Einen_Speicherplatz_für_die_Picons_auf_dem_Server_festlegen)
            +   [2.1.1.2 Picons in das Verzeichnis hochladen](#Picons_in_das_Verzeichnis_hochladen)
            +   [2.1.1.3 Configuration von WebIf anpassen](#Configuration_von_WebIf_anpassen)
            +   [2.1.1.4 Picons ausführbar machen](#Picons_ausführbar_machen)
        +   [2.1.2 Picons im WebIf-Status](#Picons_im_WebIf-Status)
        +   [2.1.3 Picons und Styles](#Picons_und_Styles)
    +   [2.2 Picons selbst erstellen](#Picons_selbst_erstellen)

# Channeldarstellung im WebIf

Wenn man im WebIf die Tabs **Status** oder **User** anklickt, dann erhält man in etwa (je nach style) folgende Darstellung:


[![](/images/1/12/Tab_User_ohne_Picon.png)](/wiki/Datei:Tab_User_ohne_Picon.png)


Verwendet man Picons, in denen die jeweiligen Senderlogos grafisch hinterlegt sind, sieht das so aus:


[![](/images/e/eb/Tab_User_Picon.png)](/wiki/Datei:Tab_User_Picon.png)


Man kann also die Ausgabe der Channel-Information im WebInterface graphisch *aufhübschen*, wenn man von Picons Gebrauch macht. Dazu muss **mindestens ein build ab OSCAM 1.20 # 6678** verwendet werden.


# Picons



## Vorgefertigte Picons

Eine Reihe von Usern des Streamboards, insbesondere *Darksniper*, *timeline*, *blacksnake* und *hook* haben sich die Mühe gemacht, entsprechende Picons für die verschiedenen Provider grafisch für das WebIf zu entwickeln und in diesem Thread zur Verfügung zu stellen [Streamboard-Thread](http://www.streamboard.tv/wbb2/thread.php?threadid=34274 "streamboard-thread:34274")

Die Diskussion über Picons und die Anpassung bzw. Neuschaffung von Styles findet hier statt [Streamboard-Thread](http://www.streamboard.tv/wbb2/thread.php?threadid=34240 "streamboard-thread:34240")

Timeline hat einen **Picon-Viewer** verfasst, den man [hier](http://www.streamboard.tv/wbb2/thread.php?postid=410845#post410845 "streamboard-post:410845") herunter laden kann . Mit diesem Viewer kann man sich die einzelnen Templates anschauen.





### Implementierung der Picons



#### Einen Speicherplatz für die Picons auf dem Server festlegen

Je nach verwendeter Server-Hardware und zur Verfügung stehender Speichergröße ist es zweckmäßig, einen Speicherplatz zu suchen, wo noch Platz zur Verfügung steht. In diesem Beispielfall wurde das Verzeichnis hier angelegt: **\\var\\Picons\\**


#### Picons in das Verzeichnis hochladen

Wie schon bei den Ausführungen zu *services* erwähnt, sollten auch bei den Picons nur die Templates hochgeladen werden, die man nach den vorhandenen SC's bzw. Proxies benötigt. Gerade Server, die über einen geringen Speicherplatz verfügen, würden hier überfordert, wenn man nach dem Motto "viel hilft viel" möglichst alle verfügbaren Templates hochlädt.

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung:** Wer für A02 und S02 Karten Betatunnel benutzt, muss nicht nur die Picons für CAID 1702 sondern auch für CAID 1833 hochladen!


#### Configuration von WebIf anpassen

Nun muss dem WebIf aber noch gesagt werden, wo die Picons zu finden sind. In unserem Beispiel sieht die Zeile in der WebIf-Configuration so aus:

[![](/images/c/c5/Conf_WebIf_Http_tpl_Ausschnitt.png)](/wiki/Datei:Conf_WebIf_Http_tpl_Ausschnitt.png)

**save** nicht vergessen und danach entweder mit F5 oder manuell einen Restart anstoßen!


#### Picons ausführbar machen

Damit OSCam diese Picons jetzt auch zeigt, muss in der WebIf-Configuration noch ein Haken gesetzt werden, so:

[![](/images/b/b3/Conf_WebIf_Http_tpl_Auschnitt_enable.png)](/wiki/Datei:Conf_WebIf_Http_tpl_Auschnitt_enable.png)

**save** nicht vergessen und danach entweder mit F5 oder manuell einen Restart anstoßen!


### Picons im WebIf-Status

Mit den vorher beschriebenen Aktivitäten wurden die Voraussetzungen dafür geschaffen, dass die Channel-Logos im Tab **Users** angezeigt werden.

Wenn diese Picons auch im Tab **Status** angezeigt werden sollen, muss in das Verzeichnis für die Picons (im Beispielfall \\var\\Picons\\) noch ein besonderes Template eingefügt werden:

```
CLIENTSTATUSBIT.tpl
```

Hier kann man das Template herunterladen [Download](http://www.streamboard.tv/wbb2/thread.php?postid=413989#post413989 "streamboard-post:413989").


### Picons und Styles

Da die Picons sowohl hinsichtlich Spaltenbreite und Zeilenhöhe sowie Hintergrund und Transparenz nicht mit jedem der bisher angebotenen Custom-Styles gut harmonieren, sollte man die aktuelleren Styles wie z.B.

```
skin-colorbutton.css von hook hier download
blacksnake_grey@timeline.css von blacksnake hier download
```

verwenden. Die Beispiele wurden mit skin-colorbutton.css erstellt.

Hier findet Ihr was über [Templates and Logos](http://www.streamboard.tv/wbb2/thread.php?threadid=34514 "streamboard-thread:34514")

## Picons selbst erstellen

[![](/images/c/c8/UnderConstruction.jpg)](/wiki/Datei:UnderConstruction.jpg) **Baustelle**

Wer sich etwas besser mit Grafiken und Codieren auskennt, kann sich natürlich auch selbst seine Picons bauen. Da spielen aber eine Menge von zusätzlichen Faktoren mit, die im Diskussions-Thread (s.o.) ausführlich erörtert werden. Sehr oft ist mit dem Wunsch nach **eigenen** Picons auch eine Umgestaltung des Styles für das WebIf verbunden. Manche möchten gerne in der Hauptseite des WebIf ihre eigene Server-Hardware abgebildet finden, andere Themen aus Filmen oder ihr Lieblingsauto.

Da dies alles eine Frage des persönlichen Geschmacks ist, würde es zu weit führen, alle diese Sonderwünsche und -wege hier im Wiki nachzuvollziehen. Es bleibt den Interessierten unbenommen, ihre Vorstellungen in diese Baustelle einzufügen!

Für die, die es einmal selbst versuchen wollen hier noch einige Hinweise:

**timeline** hat das Tool base64picon geschrieben, das [hier](http://www.streamboard.tv/wbb2/thread.php?postid=410690#post410690 "streamboard-post:410690") zu finden ist.

**w33dburner** hat für das Erstellen von Picons ein Tool geschrieben, das [hier](http://www.streamboard.tv/wbb2/thread.php?postid=411153#post411153 "streamboard-post:411153") zu finden ist.