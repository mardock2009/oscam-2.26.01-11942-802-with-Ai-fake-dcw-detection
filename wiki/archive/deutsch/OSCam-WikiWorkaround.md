> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/WikiWorkaround

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung:** Dieses Kapitel dient den Autoren von OSCam-Wiki als Werkbank zur Abstimmung der Versionen und Beiträge!

## Inhaltsverzeichnis

+   [1 **Legende**](#Legende)
+   [2 **Kapitel ohne Dateibezug - Chapter without file reference - Chapitre sans un fichier de référence - Capitulo senza file di riferimento**](#Kapitel_ohne_Dateibezug_-_Chapter_without_file_reference_-_Chapitre_sans_un_fichier_de_référence_-_Capitulo_senza_file_di_riferimento)
+   [3 **changesets for Doku**](#changesets_for_Doku)
+   [4 **oscam.conf**](#oscam.conf)
    +   [4.1 \[global\]](#[global])
    +   [4.2 \[monitor\]](#[monitor])
    +   [4.3 \[lcd\]](#[lcd])
    +   [4.4 \[webif\]](#[webif])
    +   [4.5 \[cache\]](#[cache])
    +   [4.6 \[csp\]](#[csp])
    +   [4.7 \[camd33\]](#[camd33])
    +   [4.8 \[cs357x\]](#[cs357x])
    +   [4.9 \[cs378x\]](#[cs378x])
    +   [4.10 \[serial\]](#[serial])
    +   [4.11 \[newcamd\]](#[newcamd])
    +   [4.12 \[scam\]](#[scam])
    +   [4.13 \[radegast\]](#[radegast])
    +   [4.14 \[cccam\]](#[cccam])
    +   [4.15 \[pandora\]](#[pandora])
    +   [4.16 \[gbox \]](#[gbox_])
    +   [4.17 \[dvbapi\]](#[dvbapi])
    +   [4.18 \[anticasc\]](#[anticasc])
+   [5 **oscam.server**](#oscam.server)
+   [6 **oscam.user**](#oscam.user)
+   [7 **Dateien ohne Parametervorlagen - Files without Parametervorlagen - Les fichiers sans paramètres - Parametro file senza modelli**](#Dateien_ohne_Parametervorlagen_-_Files_without_Parametervorlagen_-_Les_fichiers_sans_paramètres_-_Parametro_file_senza_modelli)
+   [8 **Werkbank**](#Werkbank)
    +   [8.1 Indexierung Parameter für oscam.conf](#Indexierung_Parameter_für_oscam.conf)

## **Legende**

| Symbol | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| + | Parameter kommentiert und übersetzt | Parameters annotated and translatet | Paramètre commenté et traduit | Parametro commentati e tradotto |  |
| \- | Parameter nicht kommentiert und übersetzt | Parameters not annotated and translated | Paramètre non commenté, ni traduit | Parametro non commentato e tradotto |  |
| ? | Parameter muss überarbeitet werden | Parameter must be revised | Paramètre doit être revu | Parametro deve essere rivisto |  |
| Link | Doppelklick auf Symbol | double-clicking icon | double-cliquant sur l'icone | Farre doppio clic sull'icona |  |




## **Kapitel ohne Dateibezug - Chapter without file reference - Chapitre sans un fichier de référence - Capitulo senza file di riferimento**

| Kapitel | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| Inhaltsverzeichnis - Table of Content - Table des matières - Indice | [+](/wiki/OSCam/de "OSCam/de") | [+](/wiki/OSCam/en "OSCam/en") | [+](/wiki/OSCam/fr "OSCam/fr") | [+](/wiki/OSCam/it "OSCam/it") |  |
| Was kann OSCam? - What is OSCam? - Qu'est OSCam - Cosa sa fare OSCam?! | [+](/wiki/OSCam/de/What_is_OSCam "OSCam/de/What is OSCam") | [+](/wiki/OSCam/en/What_is_OSCam "OSCam/en/What is OSCam") | [+](/wiki/OSCam/fr/What_is_OSCam "OSCam/fr/What is OSCam") | [+](/wiki/OSCam/it/What_is_OSCam "OSCam/it/What is OSCam") |  |
| Plattformen - Plattforms - plate-formes | [+](/wiki/OSCam/de/Which_plattforms_are_supported "OSCam/de/Which plattforms are supported") | [+](/wiki/OSCam/en/Which_plattforms_are_supported "OSCam/en/Which plattforms are supported") | [+](/wiki/OSCam/fr/Which_plattforms_are_supported "OSCam/fr/Which plattforms are supported") | [\-](/wiki/OSCam/it/Which_plattforms_are_supported "OSCam/it/Which plattforms are supported") | No solution for cygwin as service on Windows 7! |
| Protokolle, Reader, Cards | [+](/wiki/OSCam/de/Which_protocols_Card_Reader_and_Cards_are_supported "OSCam/de/Which protocols Card Reader and Cards are supported") | [+](/wiki/OSCam/en/Which_protocols_Card_Reader_and_Cards_are_supported "OSCam/en/Which protocols Card Reader and Cards are supported") | [+](/wiki/OSCam/fr/Which_protocols_Card_Reader_and_Cards_are_supported "OSCam/fr/Which protocols Card Reader and Cards are supported") | [+](/wiki/OSCam/it/Which_protocols_Card_Reader_and_Cards_are_supported "OSCam/it/Which protocols Card Reader and Cards are supported") | svn9478:01/31/2014 add logginglevels to -d |
| Monitoring | [+](/wiki/OSCam/de/Monitoring "OSCam/de/Monitoring") | [+](/wiki/OSCam/en/Monitoring "OSCam/en/Monitoring") | [+](/wiki/OSCam/fr/Monitoring "OSCam/fr/Monitoring") | [\-](/wiki/OSCam/it/Monitoring "OSCam/it/Monitoring") |  |
| AU (AutoUpdate) | [+](/wiki/OSCam/de/AU "OSCam/de/AU") | [+](/wiki/OSCam/en/AU "OSCam/en/AU") | [+](/wiki/OSCam/fr/AU "OSCam/fr/AU") | [\-](/wiki/OSCam/it/AU "OSCam/it/AU") |  |
| Loadbalancing | [+](/wiki/OSCam/de/Loadbalancing "OSCam/de/Loadbalancing") | [+](/wiki/OSCam/en/Loadbalancing "OSCam/en/Loadbalancing") | [+](/wiki/OSCam/fr/Loadbalancing "OSCam/fr/Loadbalancing") | [\-](/wiki/OSCam/it/Loadbalancing "OSCam/it/Loadbalancing") |  |
| OSCam and VPN | [+](/wiki/OSCam/de/OSCam_and_VPN "OSCam/de/OSCam and VPN") | [\-](/wiki/OSCam/en/OSCam_and_VPN "OSCam/en/OSCam and VPN") | [\-](/wiki/OSCam/fr/OSCam_and_VPN "OSCam/fr/OSCam and VPN") | [\-](/wiki/OSCam/it/OSCam_and_VPN "OSCam/it/OSCam and VPN") |  |
| Conf Beispiele, Examples **DBox2** | [+](/wiki/OSCam/de/examples/A_simple_DBox2-Linux-Server-combination "OSCam/de/examples/A simple DBox2-Linux-Server-combination") | [+](/wiki/OSCam/en/examples/A_simple_DBox2-Linux-Server-combination "OSCam/en/examples/A simple DBox2-Linux-Server-combination") | [+](/wiki/OSCam/fr/examples/A_simple_DBox2-Linux-Server-combination "OSCam/fr/examples/A simple DBox2-Linux-Server-combination") | [\-](/wiki/OSCam/it/examples/A_simple_DBox2-Linux-Server-combination "OSCam/it/examples/A simple DBox2-Linux-Server-combination") |  |
| Conf Beispiele, Examples **Sky HD, MTV, HD+, TNTSAT** | [+](/wiki/OSCam/de/examples/Sky_HD_and_MTV-Unlimited "OSCam/de/examples/Sky HD and MTV-Unlimited") | [+](/wiki/OSCam/en/examples/Sky_HD_and_MTV-Unlimited "OSCam/en/examples/Sky HD and MTV-Unlimited") | [\-](/wiki/OSCam/fr/examples/Sky_HD_and_MTV-Unlimited "OSCam/fr/examples/Sky HD and MTV-Unlimited") | [\-](/wiki/OSCam/it/examples/Sky_HD_and_MTV-Unlimited "OSCam/it/examples/Sky HD and MTV-Unlimited") |  |
| Conf Beispiele, Examples **OSCam <---> ACamd and vPlug** | [+](/wiki/OSCam/de/examples/OSCam_with_ACamd "OSCam/de/examples/OSCam with ACamd") | [\-](/wiki/OSCam/en/examples/OSCam_with_ACamd "OSCam/en/examples/OSCam with ACamd") | [\-](/wiki/OSCam/fr/examples/OSCam_with_ACamd "OSCam/fr/examples/OSCam with ACamd") | [\-](/wiki/OSCam/it/examples/OSCam_with_ACamd "OSCam/it/examples/OSCam with ACamd") | hint: en = only part is translated, fr + it = not yet translated |
| Reader | [+](/wiki/OSCam/de/examples/Reader "OSCam/de/examples/Reader") | [+](/wiki/OSCam/en/examples/Reader "OSCam/en/examples/Reader") | [\-](/wiki/OSCam/fr/examples/Reader "OSCam/fr/examples/Reader") | [\-](/wiki/OSCam/it/examples/Reader "OSCam/it/examples/Reader") | added gbox DE EN FR IT |
| Overclocking | [+](/wiki/OSCam/de/examples/Overclocking "OSCam/de/examples/Overclocking") | [+](/wiki/OSCam/en/examples/Overclocking "OSCam/en/examples/Overclocking") | [+](/wiki/OSCam/fr/examples/Overclocking "OSCam/fr/examples/Overclocking") | [\-](/wiki/OSCam/it/examples/Overclocking "OSCam/it/examples/Overclocking") |  |
| XML API | [+](/wiki/OSCam/de/XML_API "OSCam/de/XML API") | [+](/wiki/OSCam/en/XML_API "OSCam/en/XML API") | [\-](/wiki/OSCam/fr/XML_API "OSCam/fr/XML API") | [\-](/wiki/OSCam/it/XML_API "OSCam/it/XML API") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn4835 03/18/211 |
| Shell Commands | [+](/wiki/OSCam/de/ShellCommands "OSCam/de/ShellCommands") | [+](/wiki/OSCam/en/ShellCommands "OSCam/en/ShellCommands") | [+](/wiki/OSCam/fr/ShellCommands "OSCam/fr/ShellCommands") | [\-](/wiki/OSCam/it/ShellCommands "OSCam/it/ShellCommands") |  |
| OSCam selbstgemacht | [+](/wiki/OSCam/de/Self-made "OSCam/de/Self-made") | [+](/wiki/OSCam/en/Self-made "OSCam/en/Self-made") | [\-](/wiki/OSCam/fr/Self-made "OSCam/fr/Self-made") | [\-](/wiki/OSCam/it/Self-made "OSCam/it/Self-made") |  |
| Scripts **DBox2** | [+](/wiki/OSCam/de/scripts/DBox2 "OSCam/de/scripts/DBox2") | [+](/wiki/OSCam/en/scripts/DBox2 "OSCam/en/scripts/DBox2") | [\-](/wiki/OSCam/fr/scripts/DBox2 "OSCam/fr/scripts/DBox2") | [\-](/wiki/OSCam/it/scripts/DBox2 "OSCam/it/scripts/DBox2") |  |
| Scripts **Dreambox** | [+](/wiki/OSCam/de/scripts/Dreambox "OSCam/de/scripts/Dreambox") | [+](/wiki/OSCam/en/scripts/Dreambox "OSCam/en/scripts/Dreambox") | [+](/wiki/OSCam/fr/scripts/Dreambox "OSCam/fr/scripts/Dreambox") | [\-](/wiki/OSCam/it/scripts/Dreambox "OSCam/it/scripts/Dreambox") |  |
| Scripts **Kathrein** | [+](/wiki/OSCam/de/scripts/Kathrein "OSCam/de/scripts/Kathrein") | [+](/wiki/OSCam/en/scripts/Kathrein "OSCam/en/scripts/Kathrein") | [+](/wiki/OSCam/fr/scripts/Kathrein "OSCam/fr/scripts/Kathrein") | [\-](/wiki/OSCam/it/scripts/Kathrein "OSCam/it/scripts/Kathrein") |  |
| **Small Helpful Scripts** | [+](/wiki/OSCam/de/SmallHelpfulScripts "OSCam/de/SmallHelpfulScripts") | [+](/wiki/OSCam/en/SmallHelpfulScripts "OSCam/en/SmallHelpfulScripts") | [+](/wiki/OSCam/fr/SmallHelpfulScripts "OSCam/fr/SmallHelpfulScripts") | [+](/wiki/OSCam/it/SmallHelpfulScripts "OSCam/it/SmallHelpfulScripts") |  |
| **Central Logging** | [+](/wiki/OSCam/de/CentralLogging "OSCam/de/CentralLogging") | [+](/wiki/OSCam/en/CentralLogging "OSCam/en/CentralLogging") | [\-](/wiki/OSCam/fr/CentralLogging "OSCam/fr/CentralLogging") | [\-](/wiki/OSCam/it/CentralLogging "OSCam/it/CentralLogging") |  |
| **Longtime Logging** | [+](/wiki/OSCam/de/Langzeitlog "OSCam/de/Langzeitlog") | [\-](/wiki/OSCam/en/CentralLogging "OSCam/en/CentralLogging") | [\-](/wiki/OSCam/fr/CentralLogging "OSCam/fr/CentralLogging") | [\-](/wiki/OSCam/it/CentralLogging "OSCam/it/CentralLogging") |  |




## **changesets for Doku**

| svn | file | parameter | changes | since | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| 4787 | oscam.conf \[global\] | lb\_nbest\_percaid | new | 03/04/2011 |  |
| 4788 | oscam.server | cccmindown | new | 03/04/2011 |  |
| 4797 | oscam.conf \[cccam\] | updateinterval | obsolet | 03/03/2011 | **with svn 5093 renewed!!!** |
| 4812 | oscam.server | mg-encrypted | new | 03/15/2011 | **for GBox!** |
| 4841 | oscam.server | cccreshare | new | 03/19/2011 |  |
| 4841 | oscam.user | cccreshare | change | 03/19/2011 |  |
| 4862 | oscam.server | emmcache | change | 03/28/2011 | **types of caching obsolet** |
| 4869 | oscam.conf \[cccam\] | reshare | change | 03/31/2011 | **parameter description** |
| 4873 | oscam.conf \[global\] | dropdups | new | 04/01/2011 |  |
| 4873 | oscam.conf \[global\] | lb\_retrylimits | new | 04/01/2011 |  |
| 4873 | oscam.conf \[global\] | lb\_noproviderforcaid | new | 04/01/2011 |  |
| 4925 | oscam.conf \[dvbapi\] | ignore, priority | obsolet | 04/05/2011 | **detached by oscam.dvbapi!** |
| 4929 | oscam.conf \[camd35, cs375x, cs378x\] | suppresscmd08 | change | 04/05/2011 |  |
| 4938 | oscam.conf \[cs375x, cs378x\] | suppresscmd08 | change | 04/06/2011 | Typo |
| 4950 | oscam.server | ident | change | 04/07/2011 | Typo |
| 4971 | oscam.server | cccreshare, cccignorereshare | change | 04/10/2011 | **parameter description** |
| 4971 | oscam.server | cccstealth | new | 04/10/2011 |  |
| 5006 | oscam.conf \[monitor\] | port | change | 04/15/2011 | **Typo** |
| 5006 | oscam.server | logport | change | 04/15/2011 | **Typo** |
| 5006 | oscam.user | sleepsend, AU | change | 04/15/2011 | **Typo** |
| 5016 | oscam.conf \[webif\] | httpenhancedstatuscccam | new | 04/15/2011 | **prepare!** |
| 5019 | oscam.dvbapi | syntax P | tip | 04/15/2011 |  |
| 5041 | oscam.conf \[webif\] | httpenhancedstatuscccam | obsolet | 04/18/2011 |  |
| 5044 | oscam.conf \[global\] | lb\_max\_readers | new | 04/18/2011 |  |
| 5058 | oscam.conf \[global\] | lb\_auto\_betatunnel | new | 04/27/2011 |  |
| 5068 | oscam.conf \[global\] | loghistorysize | new | 04/21/2011 |  |
| 5093 | oscam.conf \[cccam\] | updateinterval | renewed | 04/27/2011 | **svn 4797 obsolet!!!** |
| 5097 | oscam.server, oscam.user | caid | change | 04/27/2011 | **parameter description** |
| 5102 | oscam.conf \[global\] | lb\_reopen\_mode | new | 04/28/2011 |  |
| 5137 | oscam.server | ecmwhitelist | new | 04/30/2011 | **svn 5147 = update examples** |
| 5156 | oscam.server | ecmwhitelist | change | 05/1/2011 | **change format** |
| 5157 | oscam.conf \[global\] | waitforcards\_extra\_delay | new | 05/01/2011 |  |
| 5182 | oscam.conf \[global\] | maxlogsize | change | 05/05/2011 | **added 0 = unlimited Size and = 10 (default)** |
| 5208 | oscam.user | ident, class, chid | change | 05/09/2011 | **parameter description** |
| 5208 | oscam.server | ident, class | change | 05/09/2011 | **parameter description** |
| 5224 | oscam.conf \[global\] | lb\_mode | change | 05/11/2011 | **parameter description** |
| 5244 | oscam.dvbapi | Parameter L | change | 05/16/2011 | **decimal to hex** |
| 5258 | oscam.server | ecmwhitelist | change | 05/18/2011 | **add hint** |
| 5259 | oscam.conf \[cccam\] | nodeid | new | 05/18/2011 |  |
| 5265 | oscam.server | ccchop | new | 05/19/2011 |  |
| 5281 | oscam.conf \[global\] | emmlogdir | new | 05/24/2011 |  |
| 5314 | oscam.conf \[lcd\] | lcd\_outputpath, lcd\_hideidle, lcd\_writeinterval | new | 05/28/2011 | **new section!** |
| 5357 | oscam.conf \[global\] | disablemail, mailfile | new | 06/05/2011 |  |
| 5467 | oscam.server | description | new | 06/22/2011 |  |
| 5472 | oscam.dvbapi | Parameter S | change | 06/23/2011 |  |
| 5526 | oscam.server | dropbadcws | new | 07/03/2011 |  |
| 5550 | oscam.server | blockemm-bylen | new | 07/06/2011 |  |
| 5584 | oscam.dvbapi | Parameter L | change | 07/10/2011 | example parameter L **allready changed with svn 5244** |
| **5640** | **stable** | **version** | **1.10** | **07/15/2011** | **contains all builds before!** |
| 5662 | oscam.user | allowedprotocols | new | 07/17/2011 |  |
| 5698 | oscam.server | emmcache | change | 07/21/2011 | mask <logging> = + value 16 |
| 5754 | oscam.conf \[global\] | lb\_nbest\_percaid, lb\_retrylimits | change | 07/31/2011 | add description wildcards |
| 5758 | oscam.conf \[global\] | lb\_noproviderforcaid | change | 08/01/2011 | add description wildcards |
| 5821/24 | oscam.server | resetcycle | new | 08/12/2011 |  |
| 5875 | oscam.server | provid | delete | 08/16/2011 | **Parameter hatte zu keiner Zeit Bedeutung!** |
| 5893 | oscam.conf \[global\] | lb\_nbest\_percaid | change | 08/19/2011 | **change examples** |
| 5946 | oscam.server | cooldown | new | 09/09/2011 |  |
| 5947 | oscam.server | saveemm-\[u,s,g,unknown\] | new | 09/09/2011 |  |
| 5947 | oscam.server | savenano | obsolet | 09/09/2011 |  |
| 5959 | oscam.server | ins7e | new | 09/22/2011 |  |
| 5972 | oscam.server | inactivitytimeout | change | 10/04/2011 | now for all TCP based remote readers |
| 5987 | oscam.server | saveemm-\[u,s,g,unknown\] | change | 10/14/2011 | default-value changed from \[blank\] to 0 |
| 5988 | oscam.conf | \[pandora\] | new | 10/14/2011 | **dummy** for new section with parameters: pand\_skip\_send\_dw,
pand\_allowed, pand\_usr, pand\_pass, pand\_ecm, pand\_post, pand\_srvid

 |
| 5988 | oscam.conf \[gbox\] | hostname | obsolet | 10/14/2011 |  |
| 5988 | oscam.conf \[gbox\] | gsmsfile | new | 10/14/2011 |  |
| 5992 | oscam.server | dropbadcws | change | 10/22/2011 |  |
| 6002 | oscam.conf\[gbox\] | hostname, port, password | change | 10/24/2011 |  |
| 6002 | oscam.server | mg-encrypted | obsolet | 10/24/2011 |  |
| 6004 | oscam.server | disablecrccws | new | 10/26/2011 |  |
| 6032 | oscam.conf \[anticasc\] | fakedelay | change | 11/19/2011 | add min and max value |
| 6039 | oscam.user,oscam.server | cacheex | new | 11/26/2011 |  |
| 6044 | oscam.server | cacheex | new | 11/27/2011 |  |
| 6045 | oscam.conf \[global\] | lb\_auto\_betatunnel\_prefer\_beta | new | 11/27/2011 |  |
| 6056 | oscam.conf \[global\] | cacheexwaittime | new | 11/30/2011 |  |
| 6059 | oscam.dvbapi | sev. parameters | change | 12/01/2011 |  |
| 6064 | oscam.server | ins7e11 | new | 12/06/2011 |  |
| 6077 | oscam.server, oscam.user | cacheex | change | 12/12/2011 | parameter description |
| 6087 | oscam.server, oscam.user | cacheex | change | 12/15/2011 | add CCcam protocol |
| 6103 | oscam.server, oscam.user | group | change | 12/21/2011 |  |
| 6110 | oscam.server, oscam.user | cacheex | change | 12/21/2011 | add 3 = reversepush |
| 6111 | oscam.conf \[global\] | cacheexwaittime | new | 12/22/2011 |  |
| 6124 | oscam.conf \[csp\] | port, serverip | new | 12/23/2011 | **new section** |
| 6142 | oscam.conf \[csp\] | wait\_time | new | 12/25/2011 |  |
| 6161 | oscam.conf \[global\] | cacheexenablestats | new | 12/28/2011 |  |
| 6166 | oscam.conf \[global\] | lb\_use\_locking | obsolet | 12/28/2011 |  |
| 6169/72 | oscam.whitelist | configfile | new | 12/28/2011 | **new configfile** |
| 6207 | oscam.conf \[cccam\] | port | change | 01/07/2012 | **more ports** |
| 6252 | oscam.cacheex | matching table | new | 01/07/2012 | **new configfile** |
| 6253 | oscam.server | cool\_timeout\_after\_init | new | 01/17/2012 |  |
| 6285 | oscam.conf \[global\] | enableled | new | 01/23/2012 |  |
| 6285 | oscam.conf \[lcd\] | enablelcd | new | 01/23/2012 |  |
| 6286 | oscam.server | cool\_timeout\_init | new | 01/23/2012 |  |
| 6305 | oscam.conf \[global\] | max\_cache\_time, max\_cache\_count | new | 01/26/2012 |  |
| 6321 | oscam.conf \[webif\] | httpforcesslv3 | new | 01/30/2012 |  |
| 6348 | oscam.dvbapi | cw\_delay, reopenonzap | new | 02/05/2012 |  |
| 6370 | oscam.server | cccreconnect | new | 02/10/2012 |  |
| 6402 | oscam.server | smargopatch, sc8in1\_dtrrts\_patch | new | 02/16/2012 |  |
| 6412 | oscam.conf \[camd35-cs357x\] | port, supressmode | change | 02/18/2012 | camd35-cs357x |
| 6412 | oscam.conf \[newcamd\] | keepalive | change | 02/18/2012 | default corrected |
| 6441 | oscam.server | cccreconnect | obsolete | 02/23/2012 |  |
| 6447 | oscam.conf/server/user | alle Parameter | change | 02/24/2012 | **New sorting of parameters** |
| 6520 | oscam.conf \[global\] | clientmaxidle | change | 03/14/2012 | idle disconnect disable |
| 6558 | oscam.conf \[webif\] | httpdyndns | change | 03/21/2012 | more than 1 host |
| 6560 | oscam.conf \[global\] | Log | new | 03/22/2012 | new logformat |
| 6586 | oscam.conf \[global\] | Log | add | 04/02/2012 | debug-level |
| 6602 | oscam.server | inactivitytimeout | change | 04/13/2012 | default= \[none\] to 0 |
| 6608 | oscam.whitelist | new parameter "m" | add | 04/14/2012 |  |
| 6624 | oscam.server | showcls | obsolet | 04/23/2012 |  |
| 6648 | oscam.conf\[webif\] | httpshowpicons | new | 05/01/2012 |  |
| 6649+6653 | oscam.conf \[global\] | ecmfmt | new | 05/01/2012 |  |
| 6691 | oscam.server oscam.user | cacheex\_maxhop | new | 05/07/2012 |  |
| 6806+6825 | oscam.conf \[WebIf\] | http\_prepend\_embedded, httpjscript | new | 05/14/2012 |  |
| 6808 | oscam.conf \[dvbapi\] | delayer | new | 05/14/2012 |  |
| 6809 | oscam.server | cardmhz | change | 05/14/2012 | default 357 ---> 500 |
| 6915 | oscam.conf \[global\] | max\_cache\_time | change | 05/22/2012 | add hint |
| 6864 | oscam.server | cardmhz | change | 05/17/2012 | reverse svn6809 |
| 6929 | oscam.conf\[global\] | CACHE EXCHANGE LOGGING | new | 05/24/2012 | add log parameter |
| 7043 | oscam.server | rsakey | change | 06/12/2012 | add Conax |
| 7045, 7046, 7047 | oscam.server | cardmhz, mhz | change | 06/12-14/2012 | parameter description |
| 7083 | oscam.conf \[webif\] | httptpl | change | 06/25/2012 | parameter description |
| 7128 | oscam.conf \[global\] | saveinithistory | obsolet | 07/02/2012 |  |
| 7215 | oscam.conf \[global\] | block\_same\_ip, block\_same\_name | new | 07/27/2012 |  |
| 7237 | oscam.conf \[global\] | double\_check\_caid | new | 08/05/2012 |  |
| 7244 | oscam.server | reconnecttimeout | change | 08/07/2012 | small documentation update |
| 7289 | oscam.conf \[global\] | unlockparentel | change | 08/27/2012 | add Viaccess |
| 7417 | oscam.conf \[Monitor\] | aulow | change | 09/11/2012 |  |
| 7480 | oscam.server | ecmheaderwhitelist | new | 09/21/2012 |  |
| 7564 | oscam.conf\[global\] | lb\_auto\_timeout, lb\_auto\_timeout\_p, lb\_auto\_timeout\_t | new | 10/02/2012 |  |
| 7653 | oscam.conf\[dvbapi\] | decodeforever | new | 10/08/2012 |  |
| 7672 | oscam.conf\[cccam\] | recv\_timeout | new | 10/09/2012 |  |
| 7768 | oscam.conf\[global\] | lb\_auto\_betatunnel\_prefer\_beta | change | 10/21/2012 | parameter description |
| 7772 | oscam.user | failban | change | 10/21/2012 | parameter description |
| 7784 | oscam.conf\[global\] | lb\_auto\_betatinnel\_mode | add | 10/22/2012 |  |
| 7785 | oscam.user | fakedelay | change | 10/22/2012 |  |
| 7850 | oscam.server | cooldown | change | 11/01/2012 | update explanation |
| 7852 | oscam.conf\[global\] | section cs357x UDP | change | 11/03/2012 | delete "camd35" |
| 7975 | Overclocking | smargo smartreader+ | change | 12/21/2012 |  |
| 8013 | oscam.sever | device\_out\_endpoint | change | 12/29/2012 |  |
| 8056 | oscam.conf\[global\] | ecmfmt | change | 01/03/2013 |  |
| 8057+8059 | oscam.server | device | change | 01/04/2013 |  |
| 8097-8099 | oscam.dvbapi | Syntax | change | 01/13/2013 | add J, A and X |
| 8131 | oscam.server | account | obsolet | 01/20/2013 |  |
| 8176 | oscam.conf \[global\] | pidfile | new | 01/24/2013 |  |
| 8235 | oscam.server | connectoninit | new | 01/29/2013 |  |
| 8290 | oscam.conf \[global\] | logduplicatelines | new | 02/05/2013 |  |
| 8315 | oscam.server | ecmnotfoundlimit | new | 02/07/2013 |  |
| 8358 | oscam.conf | \[cache\] | **new section** | 02/16/2013 |  |
| 8491 | oscam.server | ecmunique | new | 03/06/2013 |  |
| 8492 | oscam.server | srvidholdseconds | new | 03/06/2013 |  |
| 8493 | oscam.server | emmreassembly | new | 03/06/2013 |  |
| 8505 | oscam.server | emmreassembly | change | 03/07/2013 | value for default = 1 |
| 8509 | oscam.conf \[cache\] | cwcycle\_sensitive | new | 03/07/2013 |  |
| 8541 | oscam.conf \[golbal\] | serialreadertimeout | cancel | 03/13/2013 |  |
| 8591 | oscam.server, oscam.user | emmreassembly | cancel in oscam.server, add in oscam.user | 04/01/2013 |  |
| 8615 | oscam.server | blockemm-bylen | change | 04/12/2013 |  |
| 8642 | oscam.conf\[global\] | lb\_reopen\_mode | delete | 05/10/2013 |  |
| 8642 | oscam.user | lb\_nbest\_readers, lb\_nbest\_percaid | new | 05/10/2013 |  |
| 8662 | oscam.conf \[gbox\] | port for gbox | new | 05/24/2013 |  |
| 8662 | oscam.server \[gbox\] | user for gbox | new | 05/24/2013 |  |
| 8683 | oscam.conf \[dvbapi\] | decodeforever | obsolete | 06/06/2013 |  |
| 8725 | oscam.server | use\_ssl | new | 06/25/2013 |  |
| 8733 | oscam.conf \[webif\] | httpallowed | change | 06/25/2013 | parameter **::1** resolving IPv6 added |
| 8831 | oscam.conf \[global\] | ecmfmt | change | 08/11/2013 | add new parameter |
| 8842 | oscam.conf \[webif\] | httpallowed | change | 08/17/2013 | add default value |
| 8869 | oscam.ratelimit |  | new | 08/25/2013 | new conf-file |
| 8896 | oscam.conf \[global\] | fallbacktimeout\_percaid | new | 09/04/2013 |  |
| 8896 | oscam.server | fallback\_percaid | new | 09/04/2013 |  |
| 8906 | oscam.ratelimit |  | change | 09/08/2013 | typo |
| 8910 | oscam.conf\[cache\] | max\_hit\_time | new | 09/10/2013 |  |
| 8911 | oscam.server | device | change | 09/10/2013 | add video ID |
| 8929 | oscam.user | umaxidle | new | 09/25/2013 |  |
| 8930 | oscam.conf \[cache\] | cwcycle\_allowbadfromffb | new | 09/25/2013 |  |
| 8937 | oscam.conf \[webif\] | httphidetype | new | 09/27/2013 |  |
| 9038 | oscam.conf \[cache\] | cwcycle\_usecwcfromse | new | 11/18/2013 |  |
| 9068 | oscam.server | autospeed | new | 12/01/2013 |  |
| 9072 | oscam.conf \[dvbapi\] | reopenonzap | delete | 12/05/2013 |  |
| 9078 | oscam.server | ratelimittime, srvidholdtime | new | 09/13/2013 | **old parameters ratelimitseconds and svridholdseconds are obsolet!** |
| 9099 | oscam.server | cardmhz,mhz | change | 12/13/2013 | **new definitions!** |
| 9163 | oscam.server | gbox\_group | delete | 12/31/2013 |  |
| 9163 | oscam.server, oscam.conf \[gbox\] | gbox\_my\_password | deleted in oscam.server, new in oscam.conf \[gbox\] | 12/31/2013 | **moved from oscam.server to oscam.conf \[gbox\]** |
| 9197 | oscam.server | device | change | 01/06/2014 | **new definition for CW-file-format** |
| 9463 | oscam.conf \[webif\] | httposcamlabel | new | 01/28/2014 |  |
| 9486 | oscam.conf \[cache\] | wait\_until\_ctimeout | new | 02/03/2014 |  |
| 9494 | oscam.conf \[gbox\] | my\_password, hostname | change | 02/04/2014 | name of parameters |
| 9574 | oscam.conf \[dvbapi\] | listen\_port | new | 03/20/2014 |  |
| 9605 | oscam.conf \[global\] | preferlocalcards | change | 03/29/2014 |  |
| 9645 | oscam.conf \[gbox\] | my\_vers | new | 04/09/2014 |  |
| 9712 | oscam.conf \[gbox\] | my\_cpu\_api | new | 05/11/2014 |  |
| 9714 | oscam.conf \[gbox\] | gsms\_disable | new | 05/11/2014 |  |
| 9721 | oscam.conf \[gbox\] | proxy\_card | new | 05/15/2014 |  |
| 9722 | oscam.conf \[gbox\] | ccc\_reshare | new | 05/15/2014 |  |
| 9739 | oscam.server | lb\_force\_fallback | new | 05/19/2014 |  |
| 9740 | oscam.user | acosc\_max\_active\_sids, acosc\_zap\_limit, acosc\_penalty, acosc\_penalty\_duration | new | 05/20/2014 |  |
| 9761 | oscam.conf\[Cccam\] | tmp\_dir | new | 06/05/2014 |  |
| 9761 | oscam.conf\[anticasc\] | acosc\_enable, acosc\_max\_active\_sids, acosc\_zap\_limit, acosc\_penalty, acosc\_penalty\_duration, acosc\_delay | new | 06/05/2014 |
| 9771 | oscam.dvbapi | fix for broken P | change | 06/21/2014 |
| 9801 | oscam.user | umaxidle | change | 07/17/2014 |
| 9810 | oscam.server | keepalive | new | 07/22/2014 |
| 9811 | oscam.dvbapi | Parameter P and I | change | 07/22/2014 |
| 9828 | oscam.conf\[webif\] | httplocale | new | 08/15/2014 |
| 9843 | oscam.server | via\_emm\_global | new | 09/05/2014 |
| 9851 | oscam.dvbapi | Syntax A | change | 09/17/2014 |
| 9858 | oscam.conf\[webif\] | httpoverwritebakfile | new | 09/21/2014 |
| 9878 | oscam.conf\[scam\] | port | new section | 09/21/2014 |
| 9884 | oscam.server | fix07 | new | 09/30/2014 |
| 9885 | oscam.conf\[global\] | lb\_reopen\_invalid, lb\_force\_reopenalways | new | 09/30/2014 |
| 10003 | oscam.conf\[global\] | nds\_swap\_cw | new | 11/17/2014 |
| 10048 | oscam.conf\[global\] | nds\_swap\_cw | delete | 11/30/2014 |
| 10049 | oscam.user | cwc\_disable | new | 11/30/2014 |
| 10050 | oscam.user | preferlocalcards | new | 11/30/2014 |
| 10050 | oscam.conf\[global\] | cacheex\_mode1\_delay | new | 11/30/2014 |
| 10094 | oscam.conf\[webif\] | httpiconpath | new | 12/21/2014 |




## **oscam.conf**

### \[global\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfGlobalParameter "Vorlage:OSCamConfGlobalParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| serverip | [+](/wiki/OSCam/de/Config/oscam.conf#serverip "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#serverip "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#serverip "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#serverip "OSCam/it/Config/oscam.conf") |  |
| cachedelay | [+](/wiki/OSCam/de/Config/oscam.conf#cachedelay "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cachedelay "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#cachedelay "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#cachedelay "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO moved to \[cache\] svn8358:02/16/2013 |
| max\_cache\_time | [+](/wiki/OSCam/de/Config/oscam.conf#max_cache_time "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#max_cache_time "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#max_cache_time "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#max_cache_time "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO moved to \[cache\] svn8358:02/16/2013 |
| max\_cache\_count | [+](/wiki/OSCam/de/Config/oscam.conf#max_cache_count "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#max_cache_count "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#max_cache_count "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#max_cache_count "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO moved to \[cache\] svn8358:02/16/2013 |
| pidfile | [+](/wiki/OSCam/de/Config/oscam.conf#pidfile "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#pidfile "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#pidfile "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#pidfile "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8176:01/24/2013 |
| logfile | [+](/wiki/OSCam/de/Config/oscam.conf#logfile "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#logfile "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#logfile "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#logfile "OSCam/it/Config/oscam.conf") |  |
| ecmfmt | [+](/wiki/OSCam/de/Config/oscam.conf#ecmfmt "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#ecmfmt "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#ecmfmt "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#ecmfmt "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn6649+53:05/01/2012
ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn8831:08/11/2013

 |
| nds\_swap\_cw | [+](/wiki/OSCam/de/Config/oscam.conf#nds_swap_cw "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#nds_swap_cw "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#nds_swap_cw "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#nds_swap_cw "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn10003:11/17/2014

VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn10048:11/30/2014

 |
| loghistorysize | [+](/wiki/OSCam/de/Config/oscam.conf#loghistorysize "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#loghistorysize "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#loghistorysize "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#loghistorysize "OSCam/it/Config/oscam.conf") |  |
| enableled | [+](/wiki/OSCam/de/Config/oscam.conf#enableled "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#enableled "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#enableled "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#enableled "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn6285:01/23/2012 |
| logduplicatelines | [+](/wiki/OSCam/de/Config/oscam.conf#logduplicatelines "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#logduplicatelines "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#logduplicatelines "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#logduplicatelines "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8290:02/05/2013 |
| disablelog | [+](/wiki/OSCam/de/Config/oscam.conf#disablelog "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#disablelog "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#disablelog "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#disablelog "OSCam/it/Config/oscam.conf") |  |
| usrfile | [+](/wiki/OSCam/de/Config/oscam.conf#usrfile "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#usrfile "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#usrfile "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#usrfile "OSCam/it/Config/oscam.conf") |  |
| disableuserfile | [+](/wiki/OSCam/de/Config/oscam.conf#disableuserfile "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#disableuserfile "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#disableuserfile "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#disableuserfile "OSCam/it/Config/oscam.conf") |  |
| usrfileflag | [+](/wiki/OSCam/de/Config/oscam.conf#usrfileflag "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#usrfileflag "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#usrfileflag "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#usrfileflag "OSCam/it/Config/oscam.conf") |  |
| cwlogdir | [+](/wiki/OSCam/de/Config/oscam.conf#cwlogdir "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cwlogdir "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#cwlogdir "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#cwlogdir "OSCam/it/Config/oscam.conf") |  |
| emmlogdir | [+](/wiki/OSCam/de/Config/oscam.conf#emmlogdir "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#emmlogdir "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#emmlogdir "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#emmlogdir "OSCam/it/Config/oscam.conf") |  |
| clienttimeout | [+](/wiki/OSCam/de/Config/oscam.conf#clienttimeout "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#clienttimeout "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#clienttimeout "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#clienttimeout "OSCam/it/Config/oscam.conf") |  |
| fallbacktimeout | [+](/wiki/OSCam/de/Config/oscam.conf#fallbacktimeout "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#fallbacktimeout "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#fallbacktimeout "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#fallbacktimeout "OSCam/it/Config/oscam.conf") | **hint for use with loadbalancer not yet translated in en/fr/it!** |
| clientmaxidle | [+](/wiki/OSCam/de/Config/oscam.conf#clientmaxidle "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#clientmaxidle "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#clientmaxidle "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#clientmaxidle "OSCam/it/Config/oscam.conf") |  |
| bindwait | [+](/wiki/OSCam/de/Config/oscam.conf#bindwait "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#bindwait "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#bindwait "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#bindwait "OSCam/it/Config/oscam.conf") |  |
| netprio | [+](/wiki/OSCam/de/Config/oscam.conf#netprio "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#netprio "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#netprio "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#netprio "OSCam/it/Config/oscam.conf") |  |
| resolvegethostbyname | [+](/wiki/OSCam/de/Config/oscam.conf#resolvegethostbyname "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#resolvegethostbyname "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#resolvegethostbyname "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#resolvegethostbyname "OSCam/it/Config/oscam.conf") |  |
| failbancount | [+](/wiki/OSCam/de/Config/oscam.conf#failbancount "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#failbancount "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#failbancount "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#failbancount "OSCam/it/Config/oscam.conf") |  |
| failbantime | [+](/wiki/OSCam/de/Config/oscam.conf#failbantime "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#failbantime "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#failbantime "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#failbantime "OSCam/it/Config/oscam.conf") |  |
| dropdups | [+](/wiki/OSCam/de/Config/oscam.conf#dropdups "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#dropdups "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#dropdups "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#dropdups "OSCam/it/Config/oscam.conf") |  |
| fallbacktimeout\_percaid | [+](/wiki/OSCam/de/Config/oscam.conf#fallbacktimeout_percaid "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#fallbacktimeout_percaid "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#fallbacktimeout_percaid "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#fallbacktimeout_percaid "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8896:09/04/2013 |
| sleep | [+](/wiki/OSCam/de/Config/oscam.conf#sleep "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#sleep "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#sleep "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#sleep "OSCam/it/Config/oscam.conf") |  |
| unlockparental | [+](/wiki/OSCam/de/Config/oscam.conf#unlockparental "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#unlockparental "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#unlockparental "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#unlockparental "OSCam/it/Config/oscam.conf") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn7289:08/27/2012 |
| nice | [+](/wiki/OSCam/de/Config/oscam.conf#nice "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#nice "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#nice "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#nice "OSCam/it/Config/oscam.conf") |  |
| serialreadertimeout | [+](/wiki/OSCam/de/Config/oscam.conf#serialreadertimeout "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#serialreadertimeout "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#serialreadertimeout "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#serialreadertimeout "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn8541:03/13/2013 |
| maxlogsize | [+](/wiki/OSCam/de/Config/oscam.conf#maxlogsize "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#maxlogsize "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#maxlogsize "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#maxlogsize "OSCam/it/Config/oscam.conf") |  |
| waitforcards | [+](/wiki/OSCam/de/Config/oscam.conf#waitforcards "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#waitforcards "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#waitforcards "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#waitforcards "OSCam/it/Config/oscam.conf") |  |
| waitforcards\_extra\_delay | [+](/wiki/OSCam/de/Config/oscam.conf#waitforcards_extra_delay "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#waitforcards_extra_delay "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#waitforcards_extra_delay "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#waitforcards_extra_delay "OSCam/it/Config/oscam.conf") |  |
| preferlocalcards | [+](/wiki/OSCam/de/Config/oscam.conf#preferlocalcards "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#preferlocalcards "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#preferlocalcards "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#preferlocalcards "OSCam/it/Config/oscam.conf") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn9605:03/29/2014 |
| readerrestartseconds | [+](/wiki/OSCam/de/Config/oscam.conf#readerrestartseconds "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#readerrestartseconds "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#readerrestartseconds "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#readerrestartseconds "OSCam/it/Config/oscam.conf") |  |
| block\_same\_ip | [+](/wiki/OSCam/de/Config/oscam.conf#block_same_ip "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#block_same_ip "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#block_same_ip "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#block_same_ip "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn7215:07/27/2012 |
| block\_same\_name | [+](/wiki/OSCam/de/Config/oscam.conf#block_same_name "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#block_same_name "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#block_same_name "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#block_same_name "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn7215:07/27/2012 |
| saveinithistory | [+](/wiki/OSCam/de/Config/oscam.conf#saveinithistory "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#saveinithistory "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#saveinithistory "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#saveinithistory "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn7128:07/02/2012 |
| double\_check | [+](/wiki/OSCam/de/Config/oscam.conf#double_check "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#double_check "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#double_check "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#double_check "OSCam/it/Config/oscam.conf") |  |
| double\_check\_caid | [+](/wiki/OSCam/de/Config/oscam.conf#double_check_caid "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#double_check_caid "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#double_check_caid "OSCam/fr/Config/oscam.conf") | [?](/wiki/OSCam/it/Config/oscam.conf#double_check_caid "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn:7237/08/05/2012 |
| suppresscmd08 | [+](/wiki/OSCam/de/Config/oscam.conf#suppresscmd08 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#suppresscmd08 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#suppresscmd08 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#suppresscmd08 "OSCam/it/Config/oscam.conf") |  |
| cacheexwaittime | [+](/wiki/OSCam/de/Config/oscam.conf#cacheexwaittime "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cacheexwaittime "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#cacheexwaittime "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cacheexwaittime "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO moved to \[cache\] svn8358:02/16/2013 |
| cacheexenablestats | [+](/wiki/OSCam/de/Config/oscam.conf#cacheexenablestats "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cacheexenablestats "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#cacheexenablestats "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cacheexenablestats "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO moved to \[cache\] svn8358:02/16/2013 |
| lb\_mode | [+](/wiki/OSCam/de/Config/oscam.conf#lb_mode "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_mode "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_mode "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#lb_mode "OSCam/it/Config/oscam.conf") |  |
| lb\_save | [+](/wiki/OSCam/de/Config/oscam.conf#lb_save "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_save "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_save "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#lb_save "OSCam/it/Config/oscam.conf") |  |
| lb\_nbest\_readers | [+](/wiki/OSCam/de/Config/oscam.conf#lb_nbest_readers "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#ln_nbest_readers "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#ln_nbest_readers "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#ln_nbest_readers "OSCam/it/Config/oscam.conf") |  |
| lb\_nfb\_readers | [+](/wiki/OSCam/de/Config/oscam.conf#lb_nfb_readers "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_nfb_readers "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_nfb_readers "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#lb_nfb_readers "OSCam/it/Config/oscam.conf") |  |
| lb\_reopen\_mode | [+](/wiki/OSCam/de/Config/oscam.conf#lb_reopen_mode "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_reopen_mode "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_reopen_mode "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_reopen_mode "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn8642:05/10/2013 |
| lb\_nbest\_percaid | [+](/wiki/OSCam/de/Config/oscam.conf#lb_nbest_percaid "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_nbest_percaid "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_nbest_percaid "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_nbest_percaid "OSCam/it/Config/oscam.conf") |  |
| lb\_reopen\_invalid | [+](/wiki/OSCam/de/Config/oscam.conf#lb_reopen_invalid "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_reopen_invalid "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#lb_reopen_invalid "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_reopen_invalid "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn:9885/09/30/2014 |
| lb\_force\_reopenalways | [+](/wiki/OSCam/de/Config/oscam.conf#lb_force_reopenalways "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_force_reopenalways "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#lb_force_reopenalways "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_force_reopenalways "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn:9885/09/30/2014 |
| lb\_min\_ecmcount | [+](/wiki/OSCam/de/Config/oscam.conf#lb_min_ecmcount "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_min_ecmcount "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_min_ecmcount "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#lb_min_ecmcount "OSCam/it/Config/oscam.conf") |  |
| lb\_max\_ecmcount | [+](/wiki/OSCam/de/Config/oscam.conf#lb_max_ecmcount "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_max_ecmcount "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_max_ecmcount "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#lb_max_ecmcount "OSCam/it/Config/oscam.conf") |  |
| lb\_reopen\_seconds | [+](/wiki/OSCam/de/Config/oscam.conf#lb_reopen_seconds "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_reopen_seconds "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_reopen_seconds "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#lb_reopen_seconds "OSCam/it/Config/oscam.conf") |  |
| lb\_retrylimit | [+](/wiki/OSCam/de/Config/oscam.conf#lb_retrylimit "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_retrylimit "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_retrylimit "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#lb_retrylimit "OSCam/it/Config/oscam.conf") |  |
| lb\_savepath | [+](/wiki/OSCam/de/Config/oscam.conf#lb_savepath "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_savepath "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_savepath "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#lb_savepath "OSCam/it/Config/oscam.conf") |  |
| lb\_stat\_cleanup | [+](/wiki/OSCam/de/Config/oscam.conf#lb_stat_cleanup "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_stat_cleanup "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_stat_cleanup "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#lb_stat_cleanup "OSCam/it/Config/oscam.conf") |  |
| lb\_use\_locking | [+](/wiki/OSCam/de/Config/oscam.conf#lb_use_locking "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_use_locking "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_use_locking "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#lb_use_locking "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn6166:12/28/2011 |
| lb\_retrylimits | [+](/wiki/OSCam/de/Config/oscam.conf#lb_retrylimits "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_retrylimits "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_retrylimits "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_retrylimits "OSCam/it/Config/oscam.conf") |  |
| lb\_noproviderforcaid | [+](/wiki/OSCam/de/Config/oscam.conf#lb_noproviderforcaid "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_noproviderforcaid "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_noproviedrforcaid "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_noproviderforcaid "OSCam/it/Config/oscam.conf") |  |
| lb\_auto\_timeout | [+](/wiki/OSCam/de/Config/oscam.conf#lb_auto_timeout "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_auto_timeout "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#lb_auto_timeout "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_auto_timeout "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn:7564/10/02/2012 |
| lb\_auto\_timeout\_p | [+](/wiki/OSCam/de/Config/oscam.conf#lb_auto_timeout_p "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_auto_timeout_p "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#lb_auto_timeout_p "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_auto_timeout_p "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn:7564/10/02/2012 |
| lb\_auto\_timeout\_t | [+](/wiki/OSCam/de/Config/oscam.conf#lb_auto_timeout_t "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_auto_timeout_t "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#lb_auto_timeout_t "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_auto_timeout_t "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn:7564/10/02/2012 |
| lb\_max\_readers | [+](/wiki/OSCam/de/Config/oscam.conf#lb_max_readers "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_max_readers "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_max_readers "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_max_readers "OSCam/it/Config/oscam.conf") |  |
| lb\_auto\_betatunnel | [+](/wiki/OSCam/de/Config/oscam.conf#lb_auto_betatunnel "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_auto_betatunnel "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_auto_betatunnel "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_auto_betatunnel "OSCam/it/Config/oscam.conf") |  |
| lb\_auto\_betatunnel\_mode | [+](/wiki/OSCam/de/Config/oscam.conf#lb_auto_betatunnel_mode "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_auto_betatunnel_mode "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#lb_auto_betatunnel_mode "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_auto_betatunnel_mode "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn7784:10/22/2012 |
| lb\_auto\_betatunnel\_prefer\_beta | [+](/wiki/OSCam/de/Config/oscam.conf#lb_auto_betatunnel_prefer_beta "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lb_auto_betatunnel_prefer_beta "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lb_auto_betatunnel_prefer_beta "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lb_auto_betatunnel_prefer_beta "OSCam/it/Config/oscam.conf") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn 7768:10/21/2012 |
| disablemail | [+](/wiki/OSCam/de/Config/oscam.conf#disablemail "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#disablemail "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#disablemail "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#disablemail "OSCam/it/Config/oscam.conf") |  |
| mailfile | [+](/wiki/OSCam/de/Config/oscam.conf#mailfile "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#mailfile "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#mailfile "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#mailfile "OSCam/it/Config/oscam.conf") |  |
| cacheex\_mode1\_delay | [+](/wiki/OSCam/de/Config/oscam.conf#cacheex_mode1_delay "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cacheex_mode1_delay "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cacheex_mode1_delay "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cacheex_mode1_delay "OSCam/it/Config/oscam.conf") |  |



### \[monitor\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfMonitorParameter "Vorlage:OSCamConfMonitorParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| port | [+](/wiki/OSCam/de/Config/oscam.conf#port "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#port "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#port "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#port "OSCam/it/Config/oscam.conf") |  |
| serverip | [+](/wiki/OSCam/de/Config/oscam.conf#serverip_2 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#serverip_2 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#serverip_2 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#serverip_2 "OSCam/it/Config/oscam.conf") |  |
| nocrypt | [+](/wiki/OSCam/de/Config/oscam.conf#nocrypt "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#nocrypt "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#nocrypt "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#nocrypt "OSCam/it/Config/oscam.conf") |  |
| aulow | [+](/wiki/OSCam/de/Config/oscam.conf#aulow "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#aulow "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#aulow "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#aulow "OSCam/it/Config/oscam.conf") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn7417:09/11/2012 |
| monlevel | [+](/wiki/OSCam/de/Config/oscam.conf#monlevel "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#monlevel "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#monlevel "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#monlevel "OSCam/it/Config/oscam.conf") |  |
| hideclient\_to | [+](/wiki/OSCam/de/Config/oscam.conf#hideclient_to "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#hideclient_to "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#hideclient_to "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#hideclient_to "OSCam/it/Config/oscam.conf") |  |
| appendchaninfo | [+](/wiki/OSCam/de/Config/oscam.conf#appendchaninfo "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#appendchaninfo "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#appendchaninfo "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#appendchaninfo "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn8546:03/13/2013 |



### \[lcd\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfLCDParameter "Vorlage:OSCamConfLCDParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| enablelcd | [+](/wiki/OSCam/de/Config/oscam.conf#enablelcd "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#enablelcd "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#enablelcd "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#enablelcd "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn6285:01/23/2012 |
| lcd\_outputpath | [+](/wiki/OSCam/de/Config/oscam.conf#lcd_outputpath "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lcd_outputpath "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lcd_outputpath "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lcd_outputpath "OSCam/it/Config/oscam.conf") |  |
| lcd\_hideidle | [+](/wiki/OSCam/de/Config/oscam.conf#lcd_hideidle "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#lcd_hideidle "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#lcd_hideidle "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#lcd_hideidle "OSCam/it/Config/oscam.conf") |  |
| lcd\_writeinterval | [+](/wiki/OSCam/de/Config/oscam.conf#writeinterval "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#writeinterval "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#writeinterval "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#writeinterval "OSCam/it/Config/oscam.conf") |  |



### \[webif\]

**[Parametervorlage](/wiki/Vorlage:OScamConfWebIfParameter "Vorlage:OScamConfWebIfParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti



 |
| --- | --- | --- | --- | --- | --- |
| httpport | [+](/wiki/OSCam/de/Config/oscam.conf#httpport "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpport "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httpport "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httpport "OSCam/it/Config/oscam.conf") |  |
| httpcert | [+](/wiki/OSCam/de/Config/oscam.conf#httpcert "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpcert "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httpcert "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httpcert "OSCam/it/Config/oscam.conf") |  |
| httpuser | [+](/wiki/OSCam/de/Config/oscam.conf#httpuser "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpuser "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httpuser "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httpuser "OSCam/it/Config/oscam.conf") |  |
| httppwd | [+](/wiki/OSCam/de/Config/oscam.conf#httppwd "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httppwd "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httppwd "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httppwd "OSCam/it/Config/oscam.conf") |  |
| httpcss | [+](/wiki/OSCam/de/Config/oscam.conf#httpcss "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpcss "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httpcss "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httpcss "OSCam/it/Config/oscam.conf") |  |
| http\_prepend\_embedded | [+](/wiki/OSCam/de/Config/oscam.conf#http_prepend_embedded "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#http_prepend_embedded "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#http_prepend_embedded "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#http_prepend_embedded "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn6806:05/14/2012 |
| httptpl | [+](/wiki/OSCam/de/Config/oscam.conf#httptpl "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httptpl "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httptpl "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httptpl "OSCam/it/Config/oscam.conf") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn7083:06/25/2012 |
| httpoverwritebakfile | [+](/wiki/OSCam/de/Config/oscam.conf#httpoverwritebakfile "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpoverwritebakfile "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#httpoverwritebakfile "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#httpoverwritebakfile "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9858:09/21/2012 |
| httplocale | [+](/wiki/OSCam/de/Config/oscam.conf#httplocale "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httplocale "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#httplocale "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#httplocale "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9828:08/15/2012 |
| httpjscript | [+](/wiki/OSCam/de/Config/oscam.conf#httpjscript "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpjscript "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httpjscript "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#httpjscript "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn6806:05/14/2012 |
| httprefresh | [+](/wiki/OSCam/de/Config/oscam.conf#httprefresh "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httprefresh "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httprefresh "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httprefresh "OSCam/it/Config/oscam.conf") |  |
| httppollrefresh | [+](/wiki/OSCam/de/Config/oscam.conf#httppollrefresh "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httppollrefresh "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#httppollrefresh "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#httppollrefresh "OSCam/it/Config/oscam.conf") |  |
| httpshowpicons | [+](/wiki/OSCam/de/Config/oscam.conf#httprefresh "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httprefresh "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#httprefresh "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#httprefresh "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn6648;05/01/2012 |
| httphideidleclients | [+](/wiki/OSCam/de/Config/oscam.conf#httphideidleclients "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httphideidleclients "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httphideidleclients "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httphideidleclients "OSCam/it/Config/oscam.conf") |  |
| httphidetype | [+](/wiki/OSCam/de/Config/oscam.conf#httphidetype "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httphidetype "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#httphidetype "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#httphidetype "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8937:09/27/2013 |
| httpscript | [+](/wiki/OSCam/de/Config/oscam.conf#httpscript "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpscript "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httpscript "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httpscript "OSCam/it/Config/oscam.conf") |  |
| httpallowed | [+](/wiki/OSCam/de/Config/oscam.conf#httpallowed "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpallowed "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httpallowed "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httpallowed "OSCam/it/Config/oscam.conf") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn8733:06/27/2013

ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn8842:08/17/2013

 |
| httpdyndns | [+](/wiki/OSCam/de/Config/oscam.conf#httpdyndns "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpdyndns "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httpdyndns "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httpdyndns "OSCam/it/Config/oscam.conf") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA |
| httpsavefullcfg | [+](/wiki/OSCam/de/Config/oscam.conf#httpsavefullcfg "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpsavefullcfg "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httpsavefullcfg "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httpsavefullcfg "OSCam/it/Config/oscam.conf") |  |
| httpforcesslv3 | [+](/wiki/OSCam/de/Config/oscam.conf#httpforcesslv3 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpforcesslv3 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httpforcesslv3 "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#httpforcesslv3 "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn6321:01/30/2012 |
| httpreadonly | [+](/wiki/OSCam/de/Config/oscam.conf#httpreadonly "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpreadonly "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httpreadonly "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httpreadonly "OSCam/it/Config/oscam.conf") |  |
| httpiconpath | [+](/wiki/OSCam/de/Config/oscam.conf#httpiconpath "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httpiconpath "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#httpiconpath "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#httpiconpath "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn10094:12/21/2014 |
| httphelplang | [+](/wiki/OSCam/de/Config/oscam.conf#httphelplang "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httphelplang "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#httphelplang "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#httphelplang "OSCam/it/Config/oscam.conf") |  |
| httposcamlabel | [+](/wiki/OSCam/de/Config/oscam.conf#httposcamlabel "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#httposcamlabel "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#httposcamlabel "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#httposcamlabel "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9463:01/28/2014 |




### \[cache\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfCacheParameter "Vorlage:OSCamConfCacheParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| delay | [+](/wiki/OSCam/de/Config/oscam.conf#delay "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#delay "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#delay "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#delay "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| max\_time | [+](/wiki/OSCam/de/Config/oscam.conf#max_time "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#max_time "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#max_time "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#max_time "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| max\_hit\_time | [+](/wiki/OSCam/de/Config/oscam.conf#max_hit_time "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#max_hit_time "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#max_hit_time "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#max_hit_time "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8910:09/10/2013 |
| max\_count | [+](/wiki/OSCam/de/Config/oscam.conf#max_count "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#max_count "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#max_count "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#max_count "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn8907:09/09/2013 |
| wait\_time | [+](/wiki/OSCam/de/Config/oscam.conf#wait_time "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#wait_time "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#wait_time "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#wait_time "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| cacheex\_cw\_check | [+](/wiki/OSCam/de/Config/oscam.conf#cacheex_cw_check "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cacheex_cw_check "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cacheex_cw_check "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cacheex_cw_check "OSCam/it/Config/oscam.conf") |  |
| cwcycle\_allowbadfromffb | [+](/wiki/OSCam/de/Config/oscam.conf#cwcycle_allowbadfromffb "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cwcycle_allowbadfromffb "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cwcycle_allowbadfromffb "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cwcycle_allowbadfromffb "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8930:09/25/2013 |
| cacheexenablestats | [+](/wiki/OSCam/de/Config/oscam.conf#cacheexenablestats "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cacheexenablestats "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cacheexenablestats "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cacheexenablestats "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| csp\_port | [+](/wiki/OSCam/de/Config/oscam.conf#csp_port "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#csp_port "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#csp_port "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#csp_port "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| csp\_serverip | [+](/wiki/OSCam/de/Config/oscam.conf#csp_serverip "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#csp_serverip "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#csp_serverip "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#csp_serverip "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| csp\_ecm\_filter | [+](/wiki/OSCam/de/Config/oscam.conf#csp_ecm_filter "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#csp_ecm_filter "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#csp_ecm_filter "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#csp_ecm_filter "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| csp\_allow\_request | [+](/wiki/OSCam/de/Config/oscam.conf#csp_allow_request "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#csp_allow_request "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#csp_allow_request "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#csp_allow_request "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| cwcycle\_check\_enable | [+](/wiki/OSCam/de/Config/oscam.conf#cwcycle_check_enable "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cwcycle_check_enable "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cwcycle_check_enable "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cwcycle_check_enable "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| cwcycle\_check\_caid | [+](/wiki/OSCam/de/Config/oscam.conf#cwcycle_check_caid "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cwcycle_check_caid "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cwcycle_check_caid "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cwcycle_check_caid "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| cwcycle\_maxelist | [+](/wiki/OSCam/de/Config/oscam.conf#cwcycle_check_maxelist "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cwcycle_check_maxelist "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cwcycle_check_maxelist "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cwcycle_check_maxelist "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| cwcycle\_keeptime | [+](/wiki/OSCam/de/Config/oscam.conf#cwcycle_keeptime "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cwcycle_keeptime "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cwcycle_keeptime "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cwcycle_keeptime "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| cwcycle\_onbad | [+](/wiki/OSCam/de/Config/oscam.conf#cwcycle_onbad "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cwcycle_onbad "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cwcycle_onbad "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cwcycle_onbad "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| cwcycle\_dropold | [+](/wiki/OSCam/de/Config/oscam.conf#cwcycle_dropold "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cwcycle_dropold "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cwcycle_dropold "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cwcycle_dropold "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8358:02/16/2013 |
| cwcycle\_sensitive | [+](/wiki/OSCam/de/Config/oscam.conf#cwcycle_sensitive "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cwcycle_sensitive "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cwcycle_sensitive "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cwcycle_sensitive "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8509:03/07/2013 |
| cwcycle\_usecwcfromse | [+](/wiki/OSCam/de/Config/oscam.conf#cwcycle_usecwcfromse "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cwcycle_usecwcfromse "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cwcycle_usecwcfromse "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cwcycle_usecwcfromse "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9038:11/18/2013 |
| wait\_until\_ctimeout | [+](/wiki/OSCam/de/Config/oscam.conf#wait_until_ctimeout "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#wait_until_ctimeout "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#wait_until_ctimeout "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#wait_until_ctimeout "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9486:02/03/2013 |



### \[csp\]

VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn8358:02/16/2013 look at **\[cache\]**!

**[Parametervorlage](/wiki/Vorlage:OSCamConfcspParameter "Vorlage:OSCamConfcspParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| port | [+](/wiki/OSCam/de/Config/oscam.conf#port_2 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#port_2 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#port_2 "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#port_2 "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn6124:12/23/2011 |
| serverip | [+](/wiki/OSCam/de/Config/oscam.conf#serverip_3 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#serverip_3 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#serverip_3 "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#serverip_3 "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn6124:12/23/2011 |
| wait\_time | [+](/wiki/OSCam/de/Config/oscam.conf#wait_time "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#wait_time "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#wait_time "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#wait_time "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn6142:12/25/2011 |



### \[camd33\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfCamd33Parameter "Vorlage:OSCamConfCamd33Parameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| port | [+](/wiki/OSCam/de/Config/oscam.conf#port_3 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#port_3 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#port_3 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#port_3 "OSCam/it/Config/oscam.conf") |  |
| serverip | [+](/wiki/OSCam/de/Config/oscam.conf#serverip_4 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#serverip_4 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#serverip_4 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#serverip_4 "OSCam/it/Config/oscam.conf") |  |
| nocrypt | [+](/wiki/OSCam/de/Config/oscam.conf#nocrypt_2 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#nocrypt_2 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#nocrypt_2 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#nocrypt_2 "OSCam/it/Config/oscam.conf") |  |
| passive | [+](/wiki/OSCam/de/Config/oscam.conf#passive "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#passive "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#passive "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#passive "OSCam/it/Config/oscam.conf") |  |
| key | [+](/wiki/OSCam/de/Config/oscam.conf#key "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#key "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#key "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#key "OSCam/it/Config/oscam.conf") |  |



### \[cs357x\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfCamd35Parameter "Vorlage:OSCamConfCamd35Parameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| port | [+](/wiki/OSCam/de/Config/oscam.conf#port_4 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#port_4 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#port_4 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#port_4 "OSCam/it/Config/oscam.conf") |  |
| serverip | [+](/wiki/OSCam/de/Config/oscam.conf#serverip_5 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#serverip_5 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#serverip_5 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#serverip_5 "OSCam/it/Config/oscam.conf") |  |
| suppresscmd08 | [+](/wiki/OSCam/de/Config/oscam.conf#suppresscmd08_2 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#suppresscmd08_2 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#suppresscmd08_2 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#suppresscmd08_2 "OSCam/it/Config/oscam.conf") |  |



### \[cs378x\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfCs378xParameter "Vorlage:OSCamConfCs378xParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| port | [+](/wiki/OSCam/de/Config/oscam.conf#port_5 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#port_5 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#port_5 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#port_5 "OSCam/it/Config/oscam.conf") |  |
| serverip | [+](/wiki/OSCam/de/Config/oscam.conf#serverip_6 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#serverip_6 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#serverip_6 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#serverip_6 "OSCam/it/Config/oscam.conf") |  |
| suppresscmd08 | [+](/wiki/OSCam/de/Config/oscam.conf#suppresscmd08_3 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#suppresscmd08_3 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#suppresscmd08_3 "OSCam/fr/Config/oscam.conf") | [?](/wiki/OSCam/it/Config/oscam.conf#suppresscmd08_3 "OSCam/it/Config/oscam.conf") |  |



### \[serial\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfSerialParameter "Vorlage:OSCamConfSerialParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| device | [+](/wiki/OSCam/de/Config/oscam.conf#device "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#device "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#device "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#device "OSCam/it/Config/oscam.conf") |  |



### \[newcamd\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfNewcamdParameter "Vorlage:OSCamConfNewcamdParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| mgclient | [+](/wiki/OSCam/de/Config/oscam.conf#mgclient "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#mgclient "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#mgclient "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#mgclient "OSCam/it/Config/oscam.conf") |  |
| key | [+](/wiki/OSCam/de/Config/oscam.conf#key_2 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#key_2 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#key_2 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#key_2 "OSCam/it/Config/oscam.conf") |  |
| port | [+](/wiki/OSCam/de/Config/oscam.conf#port_6 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#port_6 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#port_6 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#port_6 "OSCam/it/Config/oscam.conf") |  |
| serverip | [+](/wiki/OSCam/de/Config/oscam.conf#serverip_7 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#serverip_7 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#serverip_7 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#serverip_7 "OSCam/it/Config/oscam.conf") |  |
| allowed | [+](/wiki/OSCam/de/Config/oscam.conf#allowed "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#allowed "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#allowed "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#allowed "OSCam/it/Config/oscam.conf") |  |
| keepalive | [+](/wiki/OSCam/de/Config/oscam.conf#keepalive "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#keepalive "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#keepalive "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#keepalive "OSCam/it/Config/oscam.conf") | svn6412:**change parameter default = 0** |



### \[scam\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfSCamParameter "Vorlage:OSCamConfSCamParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| port | [+](/wiki/OSCam/de/Config/oscam.conf#port_7 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#port_7 "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#port_7 "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#port_7 "OSCam/it/Config/oscam.conf") |  |




### \[radegast\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfRadegastParameter "Vorlage:OSCamConfRadegastParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| port | [+](/wiki/OSCam/de/Config/oscam.conf#port_7 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#port_7 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#port_7 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#port_7 "OSCam/it/Config/oscam.conf") |  |
| serverip | [+](/wiki/OSCam/de/Config/oscam.conf#serverip_8 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#serverip_8 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#serverip_8 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#serverip_8 "OSCam/it/Config/oscam.conf") |  |
| allowed | [+](/wiki/OSCam/de/Config/oscam.conf#allowed_2 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#allowed_2 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#allowed_2 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#allowed_2 "OSCam/it/Config/oscam.conf") |  |
| user | [+](/wiki/OSCam/de/Config/oscam.conf#user "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#user "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#user "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#user "OSCam/it/Config/oscam.conf") |  |



### \[cccam\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfCccamParameter "Vorlage:OSCamConfCccamParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| port | [+](/wiki/OSCam/de/Config/oscam.conf#port_8 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#port_8 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#port_8 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#port_8 "OSCam/it/Config/oscam.conf") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn6206:01/07/2012 |
| version | [+](/wiki/OSCam/de/Config/oscam.conf#version "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#version "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#version "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#version "OSCam/it/Config/oscam.conf") |  |
| reshare | [+](/wiki/OSCam/de/Config/oscam.conf#reshare "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#reshare "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#reshare "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#reshare "OSCam/it/Config/oscam.conf") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn8607:04/10/2013 |
| reshare\_mode | [+](/wiki/OSCam/de/Config/oscam.conf#reshare_mode "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#reshare_mode "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#reshare_mode "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#reshare_mode "OSCam/it/Config/oscam.conf") |  |
| ignorereshare | [+](/wiki/OSCam/de/Config/oscam.conf#ignorereshare "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#ignorereshare "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#ignorereshare "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#ignorereshare "OSCam/it/Config/oscam.conf") |  |
| stealth | [+](/wiki/OSCam/de/Config/oscam.conf#stealth "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#stealth "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#stealth "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#stealth "OSCam/it/Config/oscam.conf") |  |
| minimizecards | [+](/wiki/OSCam/de/Config/oscam.conf#minimizecards "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#minimizecards "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#minimizecards "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#minimizecards "OSCam/it/Config/oscam.conf") |  |
| updateinterval | [+](/wiki/OSCam/de/Config/oscam.conf#updateinterval "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#updateinterval "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#updateinterval "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#updateinterval "OSCam/it/Config/oscam.conf") | **renewed with svn 5093** |
| keepconnected | [+](/wiki/OSCam/de/Config/oscam.conf#keepconnected "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#keepconnected "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#keepconnected "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#keepconnected "OSCam/it/Config/oscam.conf") |  |
| forward\_origin\_card | [+](/wiki/OSCam/de/Config/oscam.conf#forward_origin_card "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#forward_origin_card "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#forward_origin_card "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#forward_origin_card "OSCam/it/Config/oscam.conf") |  |
| recv\_timeout | [+](/wiki/OSCam/de/Config/oscam.conf#recv_timeout "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#recv_timeout "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#recv_timeout "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#recv_timeout "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn7672:10/09/2012 |
| nodeid | [+](/wiki/OSCam/de/Config/oscam.conf#nodeid "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#nodeid "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#nodeid "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#nodeid "OSCam/it/Config/oscam.conf") |  |



### \[pandora\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfPandoraParameter "Vorlage:OSCamConfPandoraParameter")**

**Die nachfolgenden Parameter wurden aufgrund svn5988 als Platzhalter (dummies) für die spätere Verwendung eingestellt!**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| pand\_skip\_send\_dw | [](/wiki/OSCam/de/Config/oscam.conf#pand_skip_send_dw "OSCam/de/Config/oscam.conf") | [](/wiki/OSCam/en/Config/oscam.conf#pand_skip_send_dw "OSCam/en/Config/oscam.conf") | [](/wiki/OSCam/fr/Config/oscam.conf#pand_skip_send_dw "OSCam/fr/Config/oscam.conf") | [](/wiki/OSCam/it/Config/oscam.conf#pand_skip_send_dw "OSCam/it/Config/oscam.conf") | dummy |
| pand\_allowed | [](/wiki/OSCam/de/Config/oscam.conf#pand_allowed "OSCam/de/Config/oscam.conf") | [](/wiki/OSCam/en/Config/oscam.conf#pand_allowed "OSCam/en/Config/oscam.conf") | [](/wiki/OSCam/fr/Config/oscam.conf#pand_allowed "OSCam/fr/Config/oscam.conf") | [](/wiki/OSCam/it/Config/oscam.conf#pand_allowed "OSCam/it/Config/oscam.conf") | dummy |
| pand\_usr | [](/wiki/OSCam/de/Config/oscam.conf#pand_usr "OSCam/de/Config/oscam.conf") | [](/wiki/OSCam/en/Config/oscam.conf#pand_usr "OSCam/en/Config/oscam.conf") | [](/wiki/OSCam/fr/Config/oscam.conf#pand_usr "OSCam/fr/Config/oscam.conf") | [](/wiki/OSCam/it/Config/oscam.conf#pand_usr "OSCam/it/Config/oscam.conf") | dummy |
| pand\_pass | [](/wiki/OSCam/de/Config/oscam.conf#pand_pass "OSCam/de/Config/oscam.conf") | [](/wiki/OSCam/en/Config/oscam.conf#pand_pass "OSCam/en/Config/oscam.conf") | [](/wiki/OSCam/fr/Config/oscam.conf#pand_pass "OSCam/fr/Config/oscam.conf") | [](/wiki/OSCam/it/Config/oscam.conf#pand_pass "OSCam/it/Config/oscam.conf") | dummy |
| pand\_ecm | [](/wiki/OSCam/de/Config/oscam.conf#pand_ecm "OSCam/de/Config/oscam.conf") | [](/wiki/OSCam/en/Config/oscam.conf#pand_ecm "OSCam/en/Config/oscam.conf") | [](/wiki/OSCam/fr/Config/oscam.conf#pand_ecm "OSCam/fr/Config/oscam.conf") | [](/wiki/OSCam/it/Config/oscam.conf#pand_ecm "OSCam/it/Config/oscam.conf") | dummy |
| pand\_port | [](/wiki/OSCam/de/Config/oscam.conf#pand_port "OSCam/de/Config/oscam.conf") | [](/wiki/OSCam/en/Config/oscam.conf#pand_port "OSCam/en/Config/oscam.conf") | [](/wiki/OSCam/fr/Config/oscam.conf#pand_port "OSCam/fr/Config/oscam.conf") | [](/wiki/OSCam/it/Config/oscam.conf#pand_port "OSCam/it/Config/oscam.conf") | dummy |
| pand\_srvid | [](/wiki/OSCam/de/Config/oscam.conf#pand_srvid "OSCam/de/Config/oscam.conf") | [](/wiki/OSCam/en/Config/oscam.conf#pand_srvid "OSCam/en/Config/oscam.conf") | [](/wiki/OSCam/fr/Config/oscam.conf#pand_srvid "OSCam/fr/Config/oscam.conf") | [](/wiki/OSCam/it/Config/oscam.conf#pand_srvid "OSCam/it/Config/oscam.conf") | dummy |



### \[gbox \]

**[Parametervorlage](/wiki/Vorlage:OScamConfGboxParameter "Vorlage:OScamConfGboxParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| my-password | [+](/wiki/OSCam/de/Config/oscam.conf#my-password "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#my-password "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#my-password "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#my-password "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9163:12/31/2013**moved from oscam.server**
ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn9494:02/04/2014

 |
| hostname | [+](/wiki/OSCam/de/Config/oscam.conf#hostname "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#hostname "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#hostname "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#hostname "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8350:02/15/2013

ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn9494:02/04/2014

 |
| port | [+](/wiki/OSCam/de/Config/oscam.conf#port_9 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#port_9 "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#port_9 "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#port_9 "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn8350:05/24/2013 |
| my\_vers | [+](/wiki/OSCam/de/Config/oscam.conf#my_vers "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#my_vers "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#my_vers "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#my_vers "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9645:04/09/2014 |
| my\_cpu\_api | [+](/wiki/OSCam/de/Config/oscam.conf#my_cpu_api "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#my_cpu_api "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#my_cpu_api "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#my_cpu_api "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9712:05/11/2014 |
| gsms\_disable | [+](/wiki/OSCam/de/Config/oscam.conf#gsms_disable "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#gsms_disable "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#gsms_disable "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#gsms_disable "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9714:05/11/2014 |
| proxy\_card | [+](/wiki/OSCam/de/Config/oscam.conf#proxy_card "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#proxy_card "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#proxy_card "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#proxy_card "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9721:05/15/2014 |
| ccc\_reshare | [+](/wiki/OSCam/de/Config/oscam.conf#ccc_reshare "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#ccc_reshare "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#ccc_reshare "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#ccc_reshare "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9722:05/15/2014 |
| tmp\_dir | [+](/wiki/OSCam/de/Config/oscam.conf#tmp_dir "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#tmp_dir "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#tmp_dir "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#tmp_dir "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9761:06/05/2014 |



### \[dvbapi\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfDVBapiParameter "Vorlage:OSCamConfDVBapiParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| enabled | [+](/wiki/OSCam/de/Config/oscam.conf#enabled "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#enabled "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#enabled "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#enabled "OSCam/it/Config/oscam.conf") |  |
| user | [+](/wiki/OSCam/de/Config/oscam.conf#user_2 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#user_2 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#user_2 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#user_2 "OSCam/it/Config/oscam.conf") |  |
| au | [+](/wiki/OSCam/de/Config/oscam.conf#au "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#au "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#au "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#au "OSCam/it/Config/oscam.conf") |  |
| pmt\_mode | [+](/wiki/OSCam/de/Config/oscam.conf#pmt_mode "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#pmt_mode "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#pmt_mode "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#pmt_mode "OSCam/it/Config/oscam.conf") |  |
| request\_mode | [+](/wiki/OSCam/de/Config/oscam.conf#request_mode "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#request_mode "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#request_mode "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#request_mode "OSCam/it/Config/oscam.conf") |  |
| listen\_port | [+](/wiki/OSCam/de/Config/oscam.conf#listen_port "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#listen_port "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#listen_port "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#listen_port "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9574:03/20/2014 |
| boxtype | [+](/wiki/OSCam/de/Config/oscam.conf#boxtype "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#boxtype "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#boxtype "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#boxtype "OSCam/it/Config/oscam.conf") |  |
| cw\_delay | [+](/wiki/OSCam/de/Config/oscam.conf#cw_delay "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#cw_delay "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#cw_delay "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#cw_delay "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn6348:02/05/2012 |
| delayer | [+](/wiki/OSCam/de/Config/oscam.conf#delayer "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#delayer "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#delayer "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#delayer "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn6808:05/014/2012 |
| reopenonzap | [+](/wiki/OSCam/de/Config/oscam.conf#reopenonzap "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#reopenonzap "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#reopenonzap "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#reopenonzap "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn9072:12/08/2013 |
| decodeforever | [+](/wiki/OSCam/de/Config/oscam.conf#decodeforever "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#decodeforever "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#decodeforever "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#decodeforever "OSCam/it/Config/oscam.conf") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn8683:06/06/2013 |



### \[anticasc\]

**[Parametervorlage](/wiki/Vorlage:OSCamConfAnticascParameter "Vorlage:OSCamConfAnticascParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| enabled | [+](/wiki/OSCam/de/Config/oscam.conf#enabled_2 "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#enabled_2 "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#enabled_2 "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#enabled_2 "OSCam/it/Config/oscam.conf") |  |
| numusers | [+](/wiki/OSCam/de/Config/oscam.conf#numusers "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#numusers "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#numusers "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#numusers "OSCam/it/Config/oscam.conf") |  |
| sampletime | [+](/wiki/OSCam/de/Config/oscam.conf#sampletime "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#sampletime "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#sampletime "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#sampletime "OSCam/it/Config/oscam.conf") |  |
| samples | [+](/wiki/OSCam/de/Config/oscam.conf#samples "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#samples "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#samples "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#samples "OSCam/it/Config/oscam.conf") |  |
| penalty | [+](/wiki/OSCam/de/Config/oscam.conf#penalty "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#penalty "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#penalty "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#penalty "OSCam/it/Config/oscam.conf") |  |
| aclogfile | [+](/wiki/OSCam/de/Config/oscam.conf#aclogfile "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#aclogfile "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#aclogfile "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#aclogfile "OSCam/it/Config/oscam.conf") |  |
| fakedelay | [+](/wiki/OSCam/de/Config/oscam.conf#fakedelay "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#fakedelay "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#fakedelay "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#fakedelay "OSCam/it/Config/oscam.conf") | **svn 6032:11/19/2011 added min and max value** |
| denysamples | [+](/wiki/OSCam/de/Config/oscam.conf#denysamples "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#denysamples "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#denysamples "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#denysamples "OSCam/it/Config/oscam.conf") |  |
| acosc\_enable | [+](/wiki/OSCam/de/Config/oscam.conf#acosc_enable "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#acosc_enable "OSCam/en/Config/oscam.conf") | [+](/wiki/OSCam/fr/Config/oscam.conf#acosc_enable "OSCam/fr/Config/oscam.conf") | [+](/wiki/OSCam/it/Config/oscam.conf#acosc_enable "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9761:06/05/2014 |
| acosc\_max\_active\_sids | [+](/wiki/OSCam/de/Config/oscam.conf#acosc_max_active_sids "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#acosc_max_active_sids "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#acosc_max_active_sids "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#acosc_max_active_sids "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9761:06/05/2014 |
| acosc\_zap\_limit | [+](/wiki/OSCam/de/Config/oscam.conf#acosc_zap_limit "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#acosc_zap_limit "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#acosc_zap_limit "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#acosc_zap_limit "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9761:06/05/2014 |
| acosc\_penalty | [+](/wiki/OSCam/de/Config/oscam.conf#acosc_penalty "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#acosc_penalty "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#acosc_penalty "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#acosc_penalty "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9761:06/05/2014 |
| acosc\_penalty\_duration | [+](/wiki/OSCam/de/Config/oscam.conf#acosc_penalty_duration "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#acosc_penalty_duration "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#acosc_penalty_duration "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#acosc_penalty_duration "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9761:06/05/2014 |
| acosc\_delay | [+](/wiki/OSCam/de/Config/oscam.conf#acosc_delay "OSCam/de/Config/oscam.conf") | [+](/wiki/OSCam/en/Config/oscam.conf#acosc_delay "OSCam/en/Config/oscam.conf") | [\-](/wiki/OSCam/fr/Config/oscam.conf#acosc_delay "OSCam/fr/Config/oscam.conf") | [\-](/wiki/OSCam/it/Config/oscam.conf#acosc_delay "OSCam/it/Config/oscam.conf") | NEU - NEW - NOUVEAU - NUOVO svn9761:06/05/2014 |




## **oscam.server**

**\[reader\]**

**[Parametervorlage](/wiki/Vorlage:OSCamServerParameter "Vorlage:OSCamServerParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| device | [+](/wiki/OSCam/de/Config/oscam.server#device "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#device "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#device "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#device "OSCam/it/Config/oscam.server") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn8057+8059:01/04/2013+svn8911:09/10/2013 |
| device\_out\_endpoint | [+](/wiki/OSCam/de/Config/oscam.server#device_out_endpoint "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#device_out_endpoint "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#device_out_endpoint "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#device_out_endpoint "OSCam/it/Config/oscam.server") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn8013:12/29/12 |
| enable | [+](/wiki/OSCam/de/Config/oscam.server#enable "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#enable "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#enable "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#enable "OSCam/it/Config/oscam.server") |  |
| key | [+](/wiki/OSCam/de/Config/oscam.server#key "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#key "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#key "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#key "OSCam/it/Config/oscam.server") |  |
| premium | [+](/wiki/OSCam/de/Config/oscam.server#premium "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#premium "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#premium "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#premium "OSCam/it/Config/oscam.server") | for GBox |
| user | [+](/wiki/OSCam/de/Config/oscam.server#user "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#user "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#user "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#user "OSCam/it/Config/oscam.server") |  |
| password | [+](/wiki/OSCam/de/Config/oscam.server#password "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#password "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#password "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#password "OSCam/it/Config/oscam.server") |  |
| mg-encrypted | [+](/wiki/OSCam/de/Config/oscam.server#mg-encrypted "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#mg-encrypted "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#mg-encrypted "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#mg-encrypted "OSCam/it/Config/oscam.server") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO |
| services | [+](/wiki/OSCam/de/Config/oscam.server#services "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#services "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#services "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#services "OSCam/it/Config/oscam.server") | **changes in description en/fr not yet adapted, it= no translation** |
| inactivitytimeout | [+](/wiki/OSCam/de/Config/oscam.server#inactivitytimeout "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#inactivitytimeout "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#inactivitytimeout "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#inactivitytimeout "OSCam/it/Config/oscam.server") |  |
| reconnecttimeout | [+](/wiki/OSCam/de/Config/oscam.server#reconnecttimeout "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#reconnecttimeout "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#reconnecttimeout "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#reconnecttimeout "OSCam/it/Config/oscam.server") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn7244:08/07/2012 |
| connectoninit | [+](/wiki/OSCam/de/Config/oscam.server#connectoninit "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#connectoninit "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#connectoninit "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#connectoninit "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn8235:01/29/2013 |
| keepalive | [+](/wiki/OSCam/de/Config/oscam.server#keepalive "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#keepalive "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#keepalive "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#keepalive "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn9810:07/22/2014 |
| disableserverfilter | [+](/wiki/OSCam/de/Config/oscam.server#disableserverfilter "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#disableserverfilter "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#disableserverfilter "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#disableserverfilter "OSCam/it/Config/oscam.server") |  |
| smargopatch | [+](/wiki/OSCam/de/Config/oscam.server#smargopatch "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#smargopatch "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#smargopatch "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#smargopatch "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn6402:02/16/2012 |
| sc8in1\_dtrrts\_patch | [+](/wiki/OSCam/de/Config/oscam.server#sc8in1_dtrrts_patch "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#sc8in1_dtrrts_patch "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#sc8in1_dtrrts_patch "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#sc8in1_dtrrts_patch "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn6402:02/16/2012 |
| label | [+](/wiki/OSCam/de/Config/oscam.server#label "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#label "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#label "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#label "OSCam/it/Config/oscam.server") |  |
| description | [+](/wiki/OSCam/de/Config/oscam.server#description "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#description "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#description "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#description "OSCam/it/Config/oscam.server") |  |
| fallback | [+](/wiki/OSCam/de/Config/oscam.server#fallback "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#fallback "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#fallback "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#fallback "OSCam/it/Config/oscam.server") | **hint for use with loadbalancer not yet translated in en/it!** |
| fallback\_percaid | [+](/wiki/OSCam/de/Config/oscam.server#fallback_percaid "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#fallback_percaid "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#fallback_percaid "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#fallback_percaid "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn68896:09/04/2013 |
| emmreassembly | [+](/wiki/OSCam/de/Config/oscam.server#emmreassembly "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#emmreassembly "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#emmreassembly "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#emmreassembly "OSCam/it/Config/oscam.server") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn8591:04/01/2013 switched to oscam.user! |
| cacheex | [+](/wiki/OSCam/de/Config/oscam.server#cacheex "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#cacheex "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#cacheex "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#cacheex "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn6044:11/27/2011 |
| cacheex\_maxhop | [+](/wiki/OSCam/de/Config/oscam.server#cacheex_maxhop "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#cacheex_maxhop "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#cacheex_maxhop "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#cacheex_maxhop "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn6691:05/05/2012 |
| logport | [+](/wiki/OSCam/de/Config/oscam.server#logport "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#logport "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#logport "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#logport "OSCam/it/Config/oscam.server") |  |
| caid | [+](/wiki/OSCam/de/Config/oscam.server#caid "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#caid "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#caid "OSCam/fr/Config/oscam.server") | [?](/wiki/OSCam/it/Config/oscam.server#caid "OSCam/it/Config/oscam.server") |  |
| audisabled | [+](/wiki/OSCam/de/Config/oscam.server#audisabled "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#audisabled "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#audisabled "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#audisabled "OSCam/it/Config/oscam.server") |  |
| auprovid | [+](/wiki/OSCam/de/Config/oscam.server#auprovid "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#auprovid "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#auprovid "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#auprovid "OSCam/it/Config/oscam.server") |  |
| ecmwhitelist | [+](/wiki/OSCam/de/Config/oscam.server#ecmwhitelist "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#ecmwhitelist "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#ecmwhitelist "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#ecmwhitelist "OSCam/it/Config/oscam.server") |  |
| ecmheaderwhitelist | [+](/wiki/OSCam/de/Config/oscam.server#ecmheaderwhitelist "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#ecmheaderwhitelist "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#ecmheaderwhitelist "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#ecmheaderwhitelist "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn7480:09-21-2012 |
| detect | [+](/wiki/OSCam/de/Config/oscam.server#detect "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#detect "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#detect "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#detect "OSCam/it/Config/oscam.server") |  |
| cardmhz | [+](/wiki/OSCam/de/Config/oscam.server#cardmhz "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#cardmhz "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#cardmhz "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#cardmhz "OSCam/it/Config/oscam.server") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn7046:06/12/12 |
| mhz | [+](/wiki/OSCam/de/Config/oscam.server#mhz "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#mhz "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#mhz "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#mhz "OSCam/it/Config/oscam.server") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn7045+7047:06/12-14/12 |
| autospeed | [+](/wiki/OSCam/de/Config/oscam.server#autospeed "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#autospeed "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#autospeed "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#autospeed "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn9064:12/01/2013 |
| deprecated | [+](/wiki/OSCam/de/Config/oscam.server#deprecated "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#deprecated "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#deprecated "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#deprecated "OSCam/it/Config/oscam.server") |  |
| cool\_timeout\_init | [+](/wiki/OSCam/de/Config/oscam.server#cool_timeout_init "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#cool_timeout_init "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#cool_timeout_init "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#cool_timeout_init "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn6286:01/23/2012 |
| ecmnotfoundlimit | [+](/wiki/OSCam/de/Config/oscam.server#ecmnotfoundlimit "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#ecmnotfoundlimit "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#ecmnotfoundlimit "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#ecmnotfoundlimit "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn8315:02/07/2013 |
| resetcycle | [+](/wiki/OSCam/de/Config/oscam.server#resetcycle "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#resetcycle "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#resetcycle "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#resetcycle "OSCam/it/Config/oscam.server") |  |
| mode | [+](/wiki/OSCam/de/Config/oscam.server#mode "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#mode "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#mode "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#mode "OSCam/it/Config/oscam.server") |  |
| cool\_timeout\_after\_init | [+](/wiki/OSCam/de/Config/oscam.server#cool_timeout_after_init "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#cool_timeout_after_init "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#cool_timeout_after_init "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#cool_timeout_after_init "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn6253:01/17/2012 |
| protocol | [+](/wiki/OSCam/de/Config/oscam.server#protocol "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#protocol "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#protocol "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#protocol "OSCam/it/Config/oscam.server") |  |
| ident | [+](/wiki/OSCam/de/Config/oscam.server#ident "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#ident "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#ident "OSCam/fr/Config/oscam.server") | [?](/wiki/OSCam/it/Config/oscam.server#ident "OSCam/it/Config/oscam.server") |  |
| class | [+](/wiki/OSCam/de/Config/oscam.server#class "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#class "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#class "OSCam/fr/Config/oscam.server") | [?](/wiki/OSCam/it/Config/oscam.server#class "OSCam/it/Config/oscam.server") |  |
| group | [+](/wiki/OSCam/de/Config/oscam.server#group "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#group "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#group "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#group "OSCam/it/Config/oscam.server") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn6103:12/21/2011 |
| emmcache | [+](/wiki/OSCam/de/Config/oscam.server#emmcache "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#emmcache "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#emmcache "OSCam/fr/Config/oscam.server") | [?](/wiki/OSCam/it/Config/oscam.server#emmcache "OSCam/it/Config/oscam.server") |  |
| ratelimitecm | [+](/wiki/OSCam/de/Config/oscam.server#ratelimitecm "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#ratelimitecm "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#ratelimitecm "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#ratelimitecm "OSCam/it/Config/oscam.server") |  |
| ratelimittime | [+](/wiki/OSCam/de/Config/oscam.server#ratelimittime "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#ratelimittime "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#ratelimittime "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#ratelimittime "OSCam/it/Config/oscam.server") | **changed from ratelimitseconds - svn9078!** |
| ecmunique | [+](/wiki/OSCam/de/Config/oscam.server#ecmunique "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#ecmunique "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#ecmunique "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#ecmunique "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn8491:03/06/2013 |
| srvidholdtime | [+](/wiki/OSCam/de/Config/oscam.server#srvidholdtime "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#srvidholdtime "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#srvidholdtime "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#srvidholdtime "OSCam/it/Config/oscam.server") | **changed from srvidholdseconds - svn9078!** |
| cooldowndelay | [+](/wiki/OSCam/de/Config/oscam.server#cooldowndelay "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#cooldowndelay "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#cooldowndelay "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#cooldowndelay "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn5946:09/09/2011 |
| blocknano | [+](/wiki/OSCam/de/Config/oscam.server#blocknano "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#blocknano "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#blocknano "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#blocknano "OSCam/it/Config/oscam.server") |  |
| blockemm-u | [+](/wiki/OSCam/de/Config/oscam.server#blockemm-u "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#blockemm-u "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#blockemm-u "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#blockemm-u "OSCam/it/Config/oscam.server") |  |
| blockemm-s | [+](/wiki/OSCam/de/Config/oscam.server#blockemm-s "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#blockemm-s "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#blockemm-s "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#blockemm-s "OSCam/it/Config/oscam.server") |  |
| blockemm-g | [+](/wiki/OSCam/de/Config/oscam.server#blockemm-g "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#blockemm-g "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#blockemm-g "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#blockemm-g "OSCam/it/Config/oscam.server") |  |
| blockemm-unknown | [+](/wiki/OSCam/de/Config/oscam.server#blockemm-unknown "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#blockemm-unknown "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#blockemm-unknown "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#blockemm-unknown "OSCam/it/Config/oscam.server") |  |
| blockemm-bylen | [+](/wiki/OSCam/de/Config/oscam.server#blockemm-bylen "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#blockemm-bylen "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#blockemm-bylen "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#blockemm-bylen "OSCam/it/Config/oscam.server") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn8615:04/12/2013 |
| via\_emm\_global | [+](/wiki/OSCam/de/Config/oscam.server#via_emm_global "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#via_emm_global "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#via_emm_global "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#via_emm_global "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn9843:09/05/2014 |
| saveemm-u | [+](/wiki/OSCam/de/Config/oscam.server#saveemm-u "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#saveemm-u "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#saveemm-u "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#saveemm-u "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn5947:09/09/2011 |
| saveemm-s | [+](/wiki/OSCam/de/Config/oscam.server#saveemm-s "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#saveemm-s "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#saveemm-s "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#saveemm-s "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn5947:09/09/2011 |
| saveemm-g | [+](/wiki/OSCam/de/Config/oscam.server#saveemm-g "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#saveemm-g "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#saveemm-g "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#saveemm-g "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn5947:09/09/2011 |
| saveemm-unknown | [+](/wiki/OSCam/de/Config/oscam.server#saveemm-unknown "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#saveemm-unknown "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#saveemm-unknown "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#saveemm-unknown "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn5947:09/09/2011 |
| savenano | [+](/wiki/OSCam/de/Config/oscam.server#savenano "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#savenano "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#savenano "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#savenano "OSCam/it/Config/oscam.server") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn5947:09/09/2011 |
| dropbadcws | [+](/wiki/OSCam/de/Config/oscam.server#dropbadcws "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#dropbadcws "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#dropbadcws "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#dropbadcws "OSCam/it/Config/oscam.server") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn5992/10/22/2011 |
| readnano | [+](/wiki/OSCam/de/Config/oscam.server#readnano "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#readnano "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#readnano "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#readnano "OSCam/it/Config/oscam.server") |  |
| use\_ssl | [+](/wiki/OSCam/de/Config/oscam.server#use_ssl "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#use_ssl "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#use_ssl "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#use_ssl "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn8725:06/25/2013 |
| disablecrccws | [+](/wiki/OSCam/de/Config/oscam.server#disablecrccws "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#disablecrccws "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#disablecrccws "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#disablecrccws "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn6004:10/26/2011 |
| lb\_weight | [+](/wiki/OSCam/de/Config/oscam.server#lb_weight "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#lb_weight "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#lb_weight "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#lb_weight "OSCam/it/Config/oscam.server") |  |
| cccversion | [+](/wiki/OSCam/de/Config/oscam.server#cccversion "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#cccversion "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#cccversion "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#cccversion "OSCam/it/Config/oscam.server") |  |
| cccmaxhops | [+](/wiki/OSCam/de/Config/oscam.server#cccmaxhops "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#cccmaxhops "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#cccmaxhops "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#cccmaxhops "OSCam/it/Config/oscam.server") |  |
| ccchop | [+](/wiki/OSCam/de/Config/oscam.server#ccchop "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#ccchop "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#ccchop "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#ccchop "OSCam/it/Config/oscam.server") |  |
| cccreshare | [+](/wiki/OSCam/de/Config/oscam.server#cccreshare "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#cccreshare "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#cccreshare "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#cccreshare "OSCam/it/Config/oscam.server") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn8607:04/10/2013 |
| cccwantemu | [+](/wiki/OSCam/de/Config/oscam.server#cccwantemu "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#cccwantemu "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#cccwantemu "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#cccwantemu "OSCam/it/Config/oscam.server") |  |
| ccckeepalive | [+](/wiki/OSCam/de/Config/oscam.server#ccckeepalive "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#ccckeepalive "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#ccckeepalive "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#ccckeepalive "OSCam/it/Config/oscam.server") |  |
| cccreconnect | [+](/wiki/OSCam/de/Config/oscam.server#cccreconnect "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#cccreconnect "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#cccreconnect "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#cccreconnect "OSCam/it/Config/oscam.server") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO svn6441:02/23/2012 |
| cccmindown | [+](/wiki/OSCam/de/Config/oscam.server#cccmindown "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#cccmindown "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#cccmindown "OSCam/fr/Config/oscam.server") | [?](/wiki/OSCam/it/Config/oscam.server#cccmindown "OSCam/it/Config/oscam.server") |  |
| pincode | [+](/wiki/OSCam/de/Config/oscam.server#pincode "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#pincode "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#pincode "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#pincode "OSCam/it/Config/oscam.server") |  |
| chid | [+](/wiki/OSCam/de/Config/oscam.server#chid "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#chid "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#chid "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#chid "OSCam/it/Config/oscam.server") |  |
| ins7e | [+](/wiki/OSCam/de/Config/oscam.server#ins7e "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#ins7e "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#ins7e "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#ins7e "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn5959:09/22/2011 |
| ins7e11 | [+](/wiki/OSCam/de/Config/oscam.server#ins7e11 "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#ins7e11 "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#ins7e11 "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#ins7e11 "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn6064:12/06/2011 |
| fix07 | [+](/wiki/OSCam/de/Config/oscam.server#fix07 "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#fix07 "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#fix07 "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#fix07 "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn9884:09/30/2014 |
| force\_irdeto | [+](/wiki/OSCam/de/Config/oscam.server#force_irdeto "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#force_irdeto "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#force_irdeto "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#force_irdeto "OSCam/it/Config/oscam.server") |  |
| nagra\_read | [+](/wiki/OSCam/de/Config/oscam.server#nagra_read "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#nagra_read "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#nagra_read "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#nagra_read "OSCam/it/Config/oscam.server") |  |
| rsakey | [+](/wiki/OSCam/de/Config/oscam.server#rsakey "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#rsakey "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#rsakey "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#rsakey "OSCam/it/Config/oscam.server") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn7043:06/12/12 |
| fix9993 | [+](/wiki/OSCam/de/Config/oscam.server#fix9993 "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#fix9993 "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#fix9993 "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#fix9993 "OSCam/it/Config/oscam.server") |  |
| boxkey | [+](/wiki/OSCam/de/Config/oscam.server#rsakey "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#rsakey "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#rsakey "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#rsakey "OSCam/it/Config/oscam.server") |  |
| aeskeys | [+](/wiki/OSCam/de/Config/oscam.server#aeskeys "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#aeskeys "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#aeskeys "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#aeskeys "OSCam/it/Config/oscam.server") |  |
| showcls | [+](/wiki/OSCam/de/Config/oscam.server#showcls "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#showcls "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#showcls "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#showcls "OSCam/it/Config/oscam.server") |  |
| boxid | [+](/wiki/OSCam/de/Config/oscam.server#boxid "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#boxid "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#boxid "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#boxid "OSCam/it/Config/oscam.server") |  |
| ndsversion | [+](/wiki/OSCam/de/Config/oscam.server#ndsversion "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#ndsversion "OSCam/en/Config/oscam.server") | [+](/wiki/OSCam/fr/Config/oscam.server#ndsversion "OSCam/fr/Config/oscam.server") | [+](/wiki/OSCam/it/Config/oscam.server#ndsversion "OSCam/it/Config/oscam.server") |  |
| device (für gbox) | [+](/wiki/OSCam/de/Config/oscam.server#device_2 "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#device_2 "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#device_2 "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#device_2 "OSCam/it/Config/oscam.server") |  |
| password (für gbox) | [+](/wiki/OSCam/de/Config/oscam.server#password_2 "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#password_2 "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#password_2 "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#password_2 "OSCam/it/Config/oscam.server") |  |
| gbox\_my\_password | [+](/wiki/OSCam/de/Config/oscam.server#gbox_my_password "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#gbox_my_password "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#gbox_my_password "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#gbox_my_password "OSCam/it/Config/oscam.server") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO **moved to oscam.conf \[gbox\]** |
| gbox\_reshare | [+](/wiki/OSCam/de/Config/oscam.server#gbox_reshare "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#gbox_reshare "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#gbox_reshare "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#gbox_reshare "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn8350:02/15/2013 |
| gbox\_max\_distance | [+](/wiki/OSCam/de/Config/oscam.server#gbox_max_distance "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#gbox_max_distance "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#gbox_max_distance "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#gbox_max_distance "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn8350:02/15/2013 |
| gbox\_max\_ecm\_send | [+](/wiki/OSCam/de/Config/oscam.server#gbox_max_ecm_send "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#gbox_max_ecm_send "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#gbox_max_ecm_send "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#gbox_max_ecm_send "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn8350:02/15/2013 |
| gbox\_group | [+](/wiki/OSCam/de/Config/oscam.server#gbox_group "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#gbox_group "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#gbox_group "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#gbox_group "OSCam/it/Config/oscam.server") | VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO |
| user (für gbox) | [+](/wiki/OSCam/de/Config/oscam.server#user_2 "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#user_2 "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#user_2 "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#user_2 "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn8662:05/24/2013 |
| lb\_force\_fallback | [+](/wiki/OSCam/de/Config/oscam.server#lb_force_fallback "OSCam/de/Config/oscam.server") | [+](/wiki/OSCam/en/Config/oscam.server#lb_force_fallback "OSCam/en/Config/oscam.server") | [\-](/wiki/OSCam/fr/Config/oscam.server#lb_force_fallback "OSCam/fr/Config/oscam.server") | [\-](/wiki/OSCam/it/Config/oscam.server#lb_force_fallback "OSCam/it/Config/oscam.server") | NEU - NEW - NOUVEAU - NUOVO svn9739:05/19/2014 |




## **oscam.user**

**\[account\]**

**[Parametervorlage](/wiki/Vorlage:OSCamUserParameter "Vorlage:OSCamUserParameter")**

| Parameter | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| user | [+](/wiki/OSCam/de/Config/oscam.user#user "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#user "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#user "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#user "OSCam/it/Config/oscam.user") |  |
| pwd | [+](/wiki/OSCam/de/Config/oscam.user#pwd "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#pwd "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#pwd "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#pwd "OSCam/it/Config/oscam.user") |  |
| description | [+](/wiki/OSCam/de/Config/oscam.user#description "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#description "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#description "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#description "OSCam/it/Config/oscam.user") |  |
| hostname | [+](/wiki/OSCam/de/Config/oscam.user#hostname "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#hostname "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#hostname "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#hostname "OSCam/it/Config/oscam.user") |  |
| betatunnel | [+](/wiki/OSCam/de/Config/oscam.user#betatunnel "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#betatunnel "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#betatunnel "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#betatunnel "OSCam/it/Config/oscam.user") |  |
| emmreassembly | [+](/wiki/OSCam/de/Config/oscam.user#emmreassembly "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#emmreassembly "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#emmreassembly "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#emmreassembly "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn8591:04/01/2013 |
| uniq | [+](/wiki/OSCam/de/Config/oscam.user#uniq "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#uniq "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#uniq "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#uniq "OSCam/it/Config/oscam.user") |  |
| lb\_nbest\_readers | [+](/wiki/OSCam/de/Config/oscam.user#lb_nbest_readers "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#lb_nbest_readers "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#lb_nbest_readers "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#lb_nbest_readers "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn8642:05/10/2013 |
| lb\_nbest\_percaid | [+](/wiki/OSCam/de/Config/oscam.user#lb_nbest_percaid "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#lb_nbest_percaid "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#lb_nbest_percaid "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#lb_nbest_percaid "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn8642:05/10/2013 |
| preferlocalcards | [+](/wiki/OSCam/de/Config/oscam.user#preferlocalcards "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#preferlocalcards "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#preferlocalcards "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#preferlocalcards "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn10050:11/30/2014 |
| cwc\_disable | [+](/wiki/OSCam/de/Config/oscam.user#cwc_disable "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#cwc_disable "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#cwc_disable "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#cwc_disable "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn10049:11/30/2014 |
| cacheex | [+](/wiki/OSCam/de/Config/oscam.user#cacheex "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#cacheex "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#cacheex "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#cacheex "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn6039:11/26/2011 |
| cacheex\_maxhop | [+](/wiki/OSCam/de/Config/oscam.user#cacheex_maxhop "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#cacheex_maxhop "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#cacheex_maxhop "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#cacheex_maxhop "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn6691:05/07/2012 |
| sleep | [+](/wiki/OSCam/de/Config/oscam.user#sleep "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#sleep "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#sleep "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#sleep "OSCam/it/Config/oscam.user") |  |
| sleepsend | [+](/wiki/OSCam/de/Config/oscam.user#sleepsend "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#sleepsend "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#sleepsend "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#sleepsend "OSCam/it/Config/oscam.user") |  |
| caid | [+](/wiki/OSCam/de/Config/oscam.user#caid "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#caid "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#caid "OSCam/fr/Config/oscam.user") | [?](/wiki/OSCam/it/Config/oscam.user#caid "OSCam/it/Config/oscam.user") |  |
| allowedprotocols | [+](/wiki/OSCam/de/Config/oscam.user#allowedprotocols "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#allowedprotocols "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#allowedprotocols "OSCam/fr/Config/oscam.user") | [?](/wiki/OSCam/it/Config/oscam.user#allowedprotocols "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn 5662:04/10/2011 |
| au | [+](/wiki/OSCam/de/Config/oscam.user#au "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#au "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#au "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#au "OSCam/it/Config/oscam.user") |  |
| group | [+](/wiki/OSCam/de/Config/oscam.user#group "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#group "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#group "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#group "OSCam/it/Config/oscam.user") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn6103:12/21/2011 |
| services | [+](/wiki/OSCam/de/Config/oscam.user#services "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#services "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#services "OSCam/fr/Config/oscam.user") | [?](/wiki/OSCam/it/Config/oscam.user#services "OSCam/it/Config/oscam.user") | **change in description it not yet adapted** |
| ident | [+](/wiki/OSCam/de/Config/oscam.user#ident "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#ident "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#ident "OSCam/fr/Config/oscam.user") | [?](/wiki/OSCam/it/Config/oscam.user#ident "OSCam/it/Config/oscam.user") |  |
| class | [+](/wiki/OSCam/de/Config/oscam.user#class "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#class "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#class "OSCam/fr/Config/oscam.user") | [?](/wiki/OSCam/it/Config/oscam.user#class "OSCam/it/Config/oscam.user") |  |
| chid | [+](/wiki/OSCam/de/Config/oscam.user#chid "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#chid "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#chid "OSCam/fr/Config/oscam.user") | [?](/wiki/OSCam/it/Config/oscam.user#chid "OSCam/it/Config/oscam.user") |  |
| monlevel | [+](/wiki/OSCam/de/Config/oscam.user#monlevel "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#monlevel "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#monlevel "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#monlevel "OSCam/it/Config/oscam.user") |  |
| expdate | [+](/wiki/OSCam/de/Config/oscam.user#expdate "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#expdate "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#expdate "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#expdate "OSCam/it/Config/oscam.user") |  |
| disabled | [+](/wiki/OSCam/de/Config/oscam.user#disabled "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#disabled "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#disabled "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#disabled "OSCam/it/Config/oscam.user") |  |
| allowedtimeframe | [+](/wiki/OSCam/de/Config/oscam.user#allowedtimeframe "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#allowedtimeframe "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#allowedtimeframe "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#allowedtimeframe "OSCam/it/Config/oscam.user") |  |
| numusers | [+](/wiki/OSCam/de/Config/oscam.user#numusers "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#numusers "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#numusers "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#numusers "OSCam/it/Config/oscam.user") |  |
| penalty | [+](/wiki/OSCam/de/Config/oscam.user#penalty "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#penalty "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#penalty "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#penalty "OSCam/it/Config/oscam.user") |  |
| fakedelay | [+](/wiki/OSCam/de/Config/oscam.user#fakedelay "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#fakedelay "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#fakedelay "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#fakedelay "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn 7785:10/22/2012 |
| failban | [+](/wiki/OSCam/de/Config/oscam.user#failban "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#failban "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#failban "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#failban "OSCam/it/Config/oscam.user") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn7772:10/21/2012 |
| suppresscmd08 | [+](/wiki/OSCam/de/Config/oscam.user#suppresscmd08 "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#suppresscmd08 "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#suppresscmd08 "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#suppresscmd08 "OSCam/it/Config/oscam.user") |  |
| keepalive | [+](/wiki/OSCam/de/Config/oscam.user#keepalive "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#keepalive "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#keepalive "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#keepalive "OSCam/it/Config/oscam.user") |  |
| umaxidle | [+](/wiki/OSCam/de/Config/oscam.user#umaxidle "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#umaxidle "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#umaxidle "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#umaxidle "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn8929:09/25/2013
ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn8901:07/17/2014

 |
| cccmaxhops | [+](/wiki/OSCam/de/Config/oscam.user#cccmaxhops "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#cccmaxhops "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#cccmaxhops "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#cccmaxhops "OSCam/it/Config/oscam.user") |  |
| cccreshare | [+](/wiki/OSCam/de/Config/oscam.user#cccreshare "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#cccreshare "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#cccreshare "OSCam/fr/Config/oscam.user") | [+](/wiki/OSCam/it/Config/oscam.user#cccreshare "OSCam/it/Config/oscam.user") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn8608:04/10/2013 |
| cccignorereshare | [+](/wiki/OSCam/de/Config/oscam.user#cccignorereshare "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#cccignorereshare "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#cccignorereshare "OSCam/fr/Config/oscam.user") | [?](/wiki/OSCam/it/Config/oscam.user#cccignorereshare "OSCam/it/Config/oscam.user") |  |
| cccstealth | [+](/wiki/OSCam/de/Config/oscam.user#cccstealth "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#cccstealth "OSCam/en/Config/oscam.user") | [+](/wiki/OSCam/fr/Config/oscam.user#cccstealth "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#cccstealth "OSCam/it/Config/oscam.user") |  |
| acosc\_max\_active\_sids | [+](/wiki/OSCam/de/Config/oscam.user#acosc_max_active_sids "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#acosc_max_active_sids "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#acosc_max_active_sids "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#acosc_max_active_sids "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn9740:05/20/2014 |
| acosc\_zap\_limit | [+](/wiki/OSCam/de/Config/oscam.user#acosc_zap_limit "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#acosc_zap_limit "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#acosc_zap_limit "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#acosc_zap_limit "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn9740:05/20/2014 |
| acosc\_penalty | [+](/wiki/OSCam/de/Config/oscam.user#acosc_penalty "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#acosc_penalty "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#acosc_penalty "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#acosc_penalty "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn9740:05/20/2014 |
| acosc\_penalty\_duration | [+](/wiki/OSCam/de/Config/oscam.user#acosc_penalty_duration "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#acosc_penalty_duration "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#acosc_penalty_duration "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#acosc_penalty_duration "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn9740:05/20/2014 |
| acosc\_delay | [+](/wiki/OSCam/de/Config/oscam.user#acosc_penalty_delay "OSCam/de/Config/oscam.user") | [+](/wiki/OSCam/en/Config/oscam.user#acosc_penalty_delay "OSCam/en/Config/oscam.user") | [\-](/wiki/OSCam/fr/Config/oscam.user#acosc_penalty_delay "OSCam/fr/Config/oscam.user") | [\-](/wiki/OSCam/it/Config/oscam.user#acosc_penalty_delay "OSCam/it/Config/oscam.user") | NEU - NEW - NOUVEAU - NUOVO svn9740:05/20/2014 |




## **Dateien ohne Parametervorlagen - Files without Parametervorlagen - Les fichiers sans paramètres - Parametro file senza modelli**

| Datei/File/Fichier | [![](/images/6/61/LanguageDE_S.png)](/wiki/Datei:LanguageDE_S.png) | [![](/images/0/0c/LanguageEN_S.png)](/wiki/Datei:LanguageEN_S.png) | [![](/images/d/dc/LanguageFR_S.png)](/wiki/Datei:LanguageFR_S.png) | [![](/images/1/1b/LanguageIT_S.png)](/wiki/Datei:LanguageIT_S.png) | Bemerkungen - Notes - Note - Commenti |
| --- | --- | --- | --- | --- | --- |
| oscam.ac | [+](/wiki/OSCam/de/Config/oscam.ac "OSCam/de/Config/oscam.ac") | [+](/wiki/OSCam/en/Config/oscam.ac "OSCam/en/Config/oscam.ac") | [+](/wiki/OSCam/fr/Config/oscam.ac "OSCam/fr/Config/oscam.ac") | [+](/wiki/OSCam/it/Config/oscam.ac "OSCam/it/Config/oscam.ac") |  |
| oscam.dvbapi | [+](/wiki/OSCam/de/Config/oscam.dvbapi "OSCam/de/Config/oscam.dvbapi") | [+](/wiki/OSCam/en/Config/oscam.dvbapi "OSCam/en/Config/oscam.dvbapi") | [+](/wiki/OSCam/fr/Config/oscam.dvbapi "OSCam/fr/Config/oscam.dvbapi") | [+](/wiki/OSCam/it/Config/oscam.dvbapi "OSCam/it/Config/oscam.dvbapi") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn9171:06/21/2014
ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn9811:07/22/2014

ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn9851:09/17/2014

 |
| oscam.cert | [+](/wiki/OSCam/de/Config/oscam.cert "OSCam/de/Config/oscam.cert") | [+](/wiki/OSCam/en/Config/oscam.cert "OSCam/en/Config/oscam.cert") | [+](/wiki/OSCam/fr/Config/oscam.cert "OSCam/fr/Config/oscam.cert") | [+](/wiki/OSCam/it/Config/oscam.cert "OSCam/it/Config/oscam.cert") |  |
| oscam.tiers | [+](/wiki/OSCam/de/Config/oscam.tiers "OSCam/de/Config/oscam.tiers") | [+](/wiki/OSCam/en/Config/oscam.tiers "OSCam/en/Config/oscam.tiers") | [+](/wiki/OSCam/fr/Config/oscam.tiers "OSCam/fr/Config/oscam.tiers") | [\-](/wiki/OSCam/it/Config/oscam.tiers "OSCam/it/Config/oscam.tiers") |  |
| oscam.guess | [+](/wiki/OSCam/de/Config/oscam.guess "OSCam/de/Config/oscam.guess") | [+](/wiki/OSCam/en/Config/oscam.guess "OSCam/en/Config/oscam.guess") | [+](/wiki/OSCam/fr/Config/oscam.guess "OSCam/fr/Config/oscam.guess") | [+](/wiki/OSCam/it/Config/oscam.guess "OSCam/it/Config/oscam.guess") |  |
| oscam.provid | [+](/wiki/OSCam/de/Config/oscam.provid "OSCam/de/Config/oscam.provid") | [+](/wiki/OSCam/en/Config/oscam.provid "OSCam/en/Config/oscam.provid") | [+](/wiki/OSCam/fr/Config/oscam.provid "OSCam/fr/Config/oscam.provid") | [+](/wiki/OSCam/it/Config/oscam.provid "OSCam/it/Config/oscam.provid") |  |
| oscam.ird | [+](/wiki/OSCam/de/Config/oscam.ird "OSCam/de/Config/oscam.ird") | [+](/wiki/OSCam/en/Config/oscam.ird "OSCam/en/Config/oscam.ird") | [+](/wiki/OSCam/fr/Config/oscam.ird "OSCam/fr/Config/oscam.ird") | [+](/wiki/OSCam/it/Config/oscam.ird "OSCam/it/Config/oscam.ird") |  |
| oscam.services | [+](/wiki/OSCam/de/Config/oscam.services "OSCam/de/Config/oscam.services") | [+](/wiki/OSCam/en/Config/oscam.services "OSCam/en/Config/oscam.services") | [+](/wiki/OSCam/fr/Config/oscam.services "OSCam/fr/Config/oscam.services") | [+](/wiki/OSCam/it/Config/oscam.services "OSCam/it/Config/oscam.services") |  |
| oscam.srvid | [+](/wiki/OSCam/de/Config/oscam.srvid "OSCam/de/Config/oscam.srvid") | [+](/wiki/OSCam/en/Config/oscam.srvid "OSCam/en/Config/oscam.srvid") | [+](/wiki/OSCam/fr/Config/oscam.srvid "OSCam/fr/Config/oscam.srvid") | [+](/wiki/OSCam/it/Config/oscam.srvid "OSCam/it/Config/oscam.srvid") |  |
| oscam.whitelist | [+](/wiki/OSCam/de/Config/oscam.whitelist "OSCam/de/Config/oscam.whitelist") | [+](/wiki/OSCam/en/Config/oscam.whitelist "OSCam/en/Config/oscam.whitelist") | [\-](/wiki/OSCam/fr/Config/oscam.whitelist "OSCam/fr/Config/oscam.whitelist") | [\-](/wiki/OSCam/it/Config/oscam.whitelist "OSCam/it/Config/oscam.whitelist") | ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA svn6227:01/11/2012 |
| oscam.cacheex | [+](/wiki/OSCam/de/Config/oscam.whitelist "OSCam/de/Config/oscam.whitelist") | [+](/wiki/OSCam/en/Config/oscam.whitelist "OSCam/en/Config/oscam.whitelist") | [\-](/wiki/OSCam/fr/Config/oscam.whitelist "OSCam/fr/Config/oscam.whitelist") | [\-](/wiki/OSCam/it/Config/oscam.whitelist "OSCam/it/Config/oscam.whitelist") | NEU - NEW - NOUVEAU - NUOVO svn6252:01/17/2012 |
| oscam.ratelimit | [+](/wiki/OSCam/de/Config/oscam.ratelimit "OSCam/de/Config/oscam.ratelimit") | [+](/wiki/OSCam/en/Config/oscam.ratelimit "OSCam/en/Config/oscam.ratelimit") | [\-](/wiki/OSCam/fr/Config/oscam.ratelimit "OSCam/fr/Config/oscam.ratelimit") | [\-](/wiki/OSCam/it/Config/oscam.ratelimit "OSCam/it/Config/oscam.ratelimit") | NEU - NEW - NOUVEAU - NUOVO svn8869:08/25/2013 |




## **Werkbank**

### Indexierung Parameter für oscam.conf

Wegen Mehrfachverwendung in einer Datei - Because of multiple use in a file - en raison de l'utilisation multiple dans un fichier

```
port_2      =   [csp]
port_3      =   [camd33]
port_4      =   [camd35]
port_5      =   [cs378x]
port_6      =   [newcamd]
port_7      =   [radegast]
port_8      =   [cccam]
port_9      =   [gbox]
```

```
serverip_2  =   [monitor]
serverip_3  =   [csp]
serverip_4  =   [camd33]
serverip_5  =   [camd35]
serverip_6  =   [cs378x]
serverip_7  =   [newcamd]
serverip_8  =   [radegast]
```

```
nocrypt_2   =   [camd33]
```

```
suppresscmd08_2   =   [cs357x] + [camd35]
suppresscmd08_3   =   [cs378x]
```

```
key_2       =   [newcamd]
```

```
allowed_2   =   [radegast]
```

```
user_2      =   [gbox]
```

```
enabled_2   =   [anticasc]
```

```
device_2    =   [gbox]
```

```
password_2  =   [gbox]
```