> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de

## Inhaltsverzeichnis

+   [Was kann OSCam?](/wiki/OSCam/de/What_is_OSCam "OSCam/de/What is OSCam")
+   [Welche Plattformen werden unterstützt?](/wiki/OSCam/de/Which_plattforms_are_supported "OSCam/de/Which plattforms are supported")
+   [Welche Protokolle, Card Reader und Cards werden unterstützt?](/wiki/OSCam/de/Which_protocols_Card_Reader_and_Cards_are_supported "OSCam/de/Which protocols Card Reader and Cards are supported")
+   Konfiguration:
    +   [oscam.conf](/wiki/OSCam/de/Config/oscam.conf "OSCam/de/Config/oscam.conf")
    +   [oscam.server](/wiki/OSCam/de/Config/oscam.server "OSCam/de/Config/oscam.server")
    +   [oscam.user](/wiki/OSCam/de/Config/oscam.user "OSCam/de/Config/oscam.user")
    +   [oscam.dvbapi](/wiki/OSCam/de/Config/oscam.dvbapi "OSCam/de/Config/oscam.dvbapi")
    +   [oscam.ac](/wiki/OSCam/de/Config/oscam.ac "OSCam/de/Config/oscam.ac")
    +   [oscam.cert](/wiki/OSCam/de/Config/oscam.cert "OSCam/de/Config/oscam.cert")
    +   [oscam.guess](/wiki/OSCam/de/Config/oscam.guess "OSCam/de/Config/oscam.guess")
    +   [oscam.ird](/wiki/OSCam/de/Config/oscam.ird "OSCam/de/Config/oscam.ird")
    +   [oscam.provid](/wiki/OSCam/de/Config/oscam.provid "OSCam/de/Config/oscam.provid")
    +   [oscam.ratelimit](/wiki/OSCam/de/Config/oscam.ratelimit "OSCam/de/Config/oscam.ratelimit")
    +   [oscam.services](/wiki/OSCam/de/Config/oscam.services "OSCam/de/Config/oscam.services")
    +   [oscam.srvid](/wiki/OSCam/de/Config/oscam.srvid "OSCam/de/Config/oscam.srvid")
    +   [oscam.srvid2](/index.php?title=OSCam/de/Config/oscam.srvid2&action=edit&redlink=1 "OSCam/de/Config/oscam.srvid2 (Seite nicht vorhanden)")
    +   [oscam.tiers](/wiki/OSCam/de/Config/oscam.tiers "OSCam/de/Config/oscam.tiers")
    +   [oscam.whitelist](/wiki/OSCam/de/Config/oscam.whitelist "OSCam/de/Config/oscam.whitelist")
    +   [oscam.cacheex](/wiki/OSCam/de/Config/oscam.cacheex "OSCam/de/Config/oscam.cacheex")
+   [Monitoring](/wiki/OSCam/de/Monitoring "OSCam/de/Monitoring")
+   [Picons für das WebInterface (WebIf)](/wiki/OSCam/de/Picons "OSCam/de/Picons")
+   [AU (AutoUpdate)](/wiki/OSCam/de/AU "OSCam/de/AU")
+   [Loadbalancing](/wiki/OSCam/de/Loadbalancing "OSCam/de/Loadbalancing")
+   [OSCam und VPN](/wiki/OSCam/de/OSCam_and_VPN "OSCam/de/OSCam and VPN")
+   [OSCam und SSL](/wiki/OSCam/de/OSCam_and_SSL "OSCam/de/OSCam and SSL")
+   Beispiel-Konfigurationen:
    +   [Dreambox](/wiki/OSCam/de/examples/Config_Dreambox "OSCam/de/examples/Config Dreambox")
    +   [Einfache DBox2-Linux-Server-Kombination](/wiki/OSCam/de/examples/A_simple_DBox2-Linux-Server-combination "OSCam/de/examples/A simple DBox2-Linux-Server-combination")
    +   [Sky HD, MTV-Unlimited, HD+ und TNTSAT](/wiki/OSCam/de/examples/Sky_HD_and_MTV-Unlimited "OSCam/de/examples/Sky HD and MTV-Unlimited")
    +   [OSCam <---> ACamd mit vPlug oder OSEmu](/wiki/OSCam/de/examples/OSCam_with_ACamd "OSCam/de/examples/OSCam with ACamd")
    +   [Reader](/wiki/OSCam/de/examples/Reader "OSCam/de/examples/Reader")
    +   [Overclocking](/wiki/OSCam/de/examples/Overclocking "OSCam/de/examples/Overclocking")
+   [XML API](/wiki/OSCam/de/XML_API "OSCam/de/XML API")
+   [Shell-Befehle](/wiki/OSCam/de/ShellCommands "OSCam/de/ShellCommands")
+   [OSCam selbstgemacht](/wiki/OSCam/de/Self-made "OSCam/de/Self-made")
+   Skripte für Deinen Receiver:
    +   [DBox2](/wiki/OSCam/de/scripts/DBox2 "OSCam/de/scripts/DBox2")
    +   [Dreambox](/wiki/OSCam/de/scripts/Dreambox "OSCam/de/scripts/Dreambox")
    +   [Kathrein](/wiki/OSCam/de/scripts/Kathrein "OSCam/de/scripts/Kathrein")
+   [Kleine hilfreiche Skripte](/wiki/OSCam/de/SmallHelpfulScripts "OSCam/de/SmallHelpfulScripts")
+   [Central logging](/wiki/OSCam/de/CentralLogging "OSCam/de/CentralLogging")
+   [Langzeit Log](/wiki/OSCam/de/Langzeitlog "OSCam/de/Langzeitlog")
+   [Glossar (Begriffserklärungen)](/wiki/Glossar "Glossar")
+   [Tiers](/wiki/Tiers "Tiers")

* * *

+   Für OSCam Wiki-Autoren - For OSCam wiki authors - Pour les auteurs wiki Oscam - Per autori del OSCam wiki
    +   [Wiki Formatierungen](/wiki/HowTo_-_Wiki_Formatierungen "HowTo - Wiki Formatierungen")
    +   [Workaround](/wiki/OSCam/WikiWorkaround "OSCam/WikiWorkaround")

## Versionen

OSCam-Wiki liegt die stable **OSCam Version 1.10 mit Build 5640** zugrunde. Letzte Fortschreibung **svn 10094**. OSCam wird täglich fleißig weiterentwickelt, dennoch keine Sorge, wenn die Wiki-Version einigen Build\`s hinterherhinkt.

**Ab svn 5640 (stable 1.10)** werden Änderungen, Ergänzungen und Löschungen von Parametern mit Gültigkeitshinweis (Format: mm/tt/jjjj) in die Parametervorlagen aufgenommen, die den Kommentaren für die jeweilige Datei vorangehen. Die Kommentare zu den entsprechenden Parametern erhalten ebenfalls einen entsprechenden Hinweis. Außerdem werden alle changesets, die eine Änderung, Ergänzung oder Löschung von Parametern zur Folge haben, in einer entsprechenden Tabelle innerhalb des Workaround fortgeschrieben [Workaround](/wiki/OSCam/WikiWorkaround#changesets_for_Doku "OSCam/WikiWorkaround")



## Einschlägige Links

+   [StreamBoard OSCam-Wiki-Thread](http://www.streamboard.tv/wbb2/thread.php?threadid=30385 "streamboard-thread:30385")
+   [OSCam Dokumente](http://www.streamboard.tv/svn/oscam/trunk/Distribution/doc/txt/ "streamboard:svn/oscam/trunk/Distribution/doc/txt/")
+   [OSCam Versionsverwaltung](http://www.streamboard.tv/oscam/browser "streamboard:oscam/browser")



## Fehler in diesem Wiki

Dieses Wiki ist eine Gemeinschaftsarbeit zahlreicher User des StreamBoard. Selbstverständlich schleichen sich in die Kommentare immer wieder Fehler ein:

+   Fehler in der Rechtschreibung und Interpunktion,
+   Fehler in der Sache.

Außerdem gibt es eine Reihe von Baustellen bei Parametern, die einer Ergänzung bedürfen. Diese Parameter sind als "Under Construction" gekennzeichnet.

Jeder Leser wird gebeten, die Verfasser bei der Beseitigung oder Berichtigung von Fehlern sowie Ergänzung der Kommentierung zu unterstützen. Das geschieht am besten durch einen entsprechenden Post im Thread für dieses Wiki: [Streamboard-Thread](http://www.streamboard.tv/wbb2/thread.php?threadid=30385 "streamboard-thread:30385")

Das ist die zentrale Stelle für die Sammlung von Fehlern, Anregungen und Ergänzungen für dieses Wiki.