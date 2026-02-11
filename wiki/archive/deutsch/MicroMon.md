> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# MicroMon

## Inhaltsverzeichnis

+   [1 Einleitung](#Einleitung)
    +   [1.1 Was ist microMon](#Was_ist_microMon)
    +   [1.2 Wer entwickelt microMon](#Wer_entwickelt_microMon)
    +   [1.3 Was kann microMon](#Was_kann_microMon)
    +   [1.4 Systemvoraussetzungen](#Systemvoraussetzungen)
        +   [1.4.1 Windows](#Windows)
        +   [1.4.2 Linux](#Linux)
+   [2 GUI](#GUI)
    +   [2.1 Aufteilung der Elemente](#Aufteilung_der_Elemente)
        +   [2.1.1 Statusfenster](#Statusfenster)
        +   [2.1.2 Logfenster](#Logfenster)
        +   [2.1.3 Detailfenster](#Detailfenster)
+   [3 Setup](#Setup)
    +   [3.1 Profile](#Profile)
    +   [3.2 MPCS Setup](#MPCS_Setup)
        +   [3.2.1 IP Adresse/Hostname](#IP_Adresse/Hostname)
        +   [3.2.2 MPCS Port](#MPCS_Port)
        +   [3.2.3 MPCS Username | MPCS Password](#MPCS_Username_|_MPCS_Password)
    +   [3.3 Statusview Setup](#Statusview_Setup)
    +   [3.4 Logwindow Setup](#Logwindow_Setup)
        +   [3.4.1 Filterregel erstellen](#Filterregel_erstellen)
            +   [3.4.1.1 Name](#Name)
            +   [3.4.1.2 Suchmuster](#Suchmuster)
            +   [3.4.1.3 Farben](#Farben)
            +   [3.4.1.4 Font](#Font)
            +   [3.4.1.5 Action](#Action)
        +   [3.4.2 Filterregel entfernen](#Filterregel_entfernen)
    +   [3.5 NewCS Setup](#NewCS_Setup)
    +   [3.6 G/Mbox Trace Setup](#G/Mbox_Trace_Setup)
    +   [3.7 Chart Setup](#Chart_Setup)
    +   [3.8 Watchdog](#Watchdog)
    +   [3.9 Mail](#Mail)
    +   [3.10 Actions Setup](#Actions_Setup)
        +   [3.10.1 Action erstellen](#Action_erstellen)
        +   [3.10.2 Action entfernen](#Action_entfernen)
        +   [3.10.3 blockieren](#blockieren)
        +   [3.10.4 Sound](#Sound)
        +   [3.10.5 Mail](#Mail_2)
        +   [3.10.6 Macro](#Macro)
    +   [3.11 Macro Setup](#Macro_Setup)
        +   [3.11.1 Macro erstellen](#Macro_erstellen)
        +   [3.11.2 Macro entfernen](#Macro_entfernen)
        +   [3.11.3 Telnet Macro](#Telnet_Macro)
        +   [3.11.4 Windows Macro](#Windows_Macro)
    +   [3.12 Misc Options Setup](#Misc_Options_Setup)
        +   [3.12.1 Monitor bei Programmstart verbinden](#Monitor_bei_Programmstart_verbinden)
        +   [3.12.2 Automatisch auf Updates prüfen](#Automatisch_auf_Updates_prüfen)
        +   [3.12.3 Profilauswahl bei Programmstart](#Profilauswahl_bei_Programmstart)
        +   [3.12.4 ProcessPriority](#ProcessPriority)
        +   [3.12.5 SRVID](#SRVID)
+   [4 Changelog](#Changelog)
+   [5 Changerequests / Featurerequests](#Changerequests_/_Featurerequests)
    +   [5.1 Changerequests](#Changerequests)
        +   [5.1.1 Request 1](#Request_1)
    +   [5.2 Featurerequests](#Featurerequests)
        +   [5.2.1 Fensteranordnung frei wählbar](#Fensteranordnung_frei_wählbar)
        +   [5.2.2 Debug Fenster moveable](#Debug_Fenster_moveable)
        +   [5.2.3 Chart](#Chart)
        +   [5.2.4 Userfenster (Sortierung)](#Userfenster_\(Sortierung\))
        +   [5.2.5 Reader Fenster](#Reader_Fenster)

# Einleitung

## Was ist microMon

MicroMon ist ein universeller Monitor zur Darstellung diverser Logs, Erhebung von Statistiken und Beurteilung der korrekten Funktion diverser Server.

## Wer entwickelt microMon

Der microMon wurde zu erst non Public von mir allein entwickelt. Vornehmlich nutzte Ich microMon zum Überwachen des Status meines [MPCS](/wiki/MPCS "MPCS"). Nachdem mir einige Streamboardler ans Herz gelegt hatten das Programm zu veröffentlichen, tat ich das dann. Im Zuge vieler Feature Requests kamen immer mehr neue Funktionen hinzu. Irgendwann sprach mich der Streamboard User pattex an, ob er sich an der Entwicklung beteiligen könne. Der Vorteil lag auf der Hand (doppelte Manpower, frische Ideen und Lösungsansätze) sodaß ich recht schnell zusagte. Es wurde ein privates SVN aufgesetzt, mit Welchem wir nun arbeiten. Mit pattex hinzukommen wurde derart viel geändert, das wir uns für ein neues Major Release entschieden (2.0 aka Thunderstorm). Der Name ist Programm. Wie bei einem echten Thunderstorm kamen in der 2.0 von Revision zu Revision neue Features bzw. vielen alte Begrenzungen weg. Eigentlich hätte jede Revision fast ein Minor Release sein können.

**Back to Topic:**

Entwickler:

```
Alno, pattex (SB)
```

Unterstützung Mirrors/ Doku:

```
Deas, Schlappohr, holly2, Apollo (SB)
```

Unterstützung Software crypt (Delphi):

```
wonderdoc, rudirabbit (SB)
```

Gnadenlose Tester und Ideenlieferanten aus dem SB:

```
-=HSKc=-Robby, Token u.v.a
```

## Was kann microMon

+   Liveauswertung der Logdaten des mpcs mit Datenbankfunktionalität
+   über Profile ist es möglich die Daten mehrerer Servern zu verwalten
+   Logzeilen mit definiertem Inhalt können farbig unterlegt werden, für eine bessere Übersicht
+   Über die Logfilter können bestimmte Events (Actions) ausgelöst werden. z.B. Alarmierung per Email
+   Logausgaben können nach definiertem Inhalt gefiltert werden, um bestimmte Events zu überwachen
+   es werden Statistiken angelegt über z.B. Onlinezeiten der User und Nutzungszeiten der Kanäle uvm.
+   Logausgaben anderer Komponenten können angezeigt werden, z.B. camd3 Syslog
+   Micromon kann Prozesse auf dem lokalen System überwachen und neu starten (Watchdog)
+   Readerperformance kann grafisch dargestellt werden
+   Über die Macrofunktion können Telnet und Windows Komandos ausgelöst werden
+   MPCS Userverwaltung

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

## Systemvoraussetzungen

### Windows

MicroMon basiert auf dem .NET2.x Framework. Das Framework ist erhältlich für alle Windowsversionen ab W2K. Sollte .NET2.x Framework nicht installiert sein, bietet der Installer den Download an. Für die Speicherung der historischen Daten wird der sogenannte JET Treiber benötigt. Dieser sollte ab Windows XP standardmäßig vorhanden sein. Der Installer prüft auch das Vorhandensein des JET Treibers und bietet ggf. den Download an. NET2.x und auch der JET Treiber stehen kostenlos bei Microsoft zur Verfügung.

### Linux

Eine Installation unter Linux ist mittels Wine ebenfalls möglich. Allerdings muss in diesem Fall auf das automatische Nachinstallieren der .NET Frameworks, des Jet Treibers und auch der MDACs verzichtet werden. Diese installiert man am besten vorher:

Am besten startet man mit einer sauberen Wine-Konfiguration (also ~/.wine löschen und mit Wine winecfg konfigurieren). Dann lädt man sich aus dem WineHQ das [Winetricks](http://wiki.winehq.org/winetricks) Shellscript runter und macht das mittels

```
chmod 755 winetricks
```

ausführbar. Anschließend einfach ./winetricks aufrufen und NET20, Jet 4.0 und MDAC 2.7 installieren. Danach kann man den microMon Installer benutzen um das Programm zu installieren.

Bei openSUSE ist das Script winetricks Bestandteil des wine-Paketes und kann direkt mit dem Aufruf

```
winetricks
```

in der Konsole gestartet werden. (nicht als root und nicht mit sudo)

Einige Funktionen des microMon sind unter wine etwas eingeschränkt (z.B. Gruppierungen). Machbare Anpassungen sind in Arbeit.

# GUI

## Aufteilung der Elemente

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

### Statusfenster

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

### Logfenster

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

### Detailfenster

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

# Setup

## Profile

Außer wenigen globalen Einstellungen ("Misc Options Setup" --> "Einstellungen alle Profile"), werden die Einstellungen bzw. Daten in sogenannten Profilen gespeichert. Das default Profil hat den Namen "Standard", es wird bereits beim ersten Start des microMon angelegt. Sollen weitere Server mit dazugehörigen Logs von [Camd3](/wiki/Camd3 "Camd3"), Gbox, Mbox ... sowie visuelle Einstellungen abgespeichert werden, müssen weitere Profile angelegt werden. Dazu wird, nach dem Ändern der Einstellungen (Settings), der Button "Speichern unter" ("Save Profile As") betätigt und ein aussagekräftiger Name für das neue Profil eingegeben.
Für das Laden eines Profils beim Start des microMon gibt es 2 Möglichkeiten. Zum einen kann in den Einstellungen (Settings) unter "Misc Options Setup" die Option "Select Profile on Startup" gesetzt werden. Bei jedem Start des microMon wir nun eine Auswahl der Profile angezeigt. Des weiteren kann das Profil auch als Parameter an den microMon übergeben werden. Der Aufruf des microMon mit einem Profil erfolgt wie folgt.

```
C:\microMon\mpcs_microMon.exe  /profile=<Profilname>   !!! ohne Dateiendung *.mmp !!!
```

Die Angabe eines Profils als Parameter hat gegenüber dem gesetzten "Select Profile on Startup" Vorrang. Die Auswahl erscheint somit nicht.
Beim Laden eines Profils, werden auch die zum Profil gehörenden User aus der Userdatenbank (Clients.mmgp) geladen und angezeigt.
Ist ein Profil geladen, werden alle Änderungen der Einstellungen (Settings) und einige visuelle Einstellungen wieder in dieses Profil gespeichert.


Speicherort der Profile:

```
C:\Dokumente und Einstellungen\<WindowsUser>\Anwendungsdaten\microMon   (XP)
C:\Users\<WindowsUser>\AppData\Roaming\microMon                         (Vista)
```

Erklärung der Dateiendungen:

```
*.mmp  - microMon Profile (Einzelprofile)
*.mmgp - microMon global Profile (Profil für alle Instanzen)
```

Eine Besonderheit:

```
Clients.mmgp - hier sind alle clients gespeichert die irgendwann mal erfaßt wurden
```

## MPCS Setup

[![](/images/thumb/c/c8/MPCS.png/300px-MPCS.png)](/wiki/Datei:MPCS.png)

Setup - MPCS Einstellungen

#### IP Adresse/Hostname

IP oder Hostname des zu überwachenden MPCS-Servers

```
192.168.0.1
```

oder

```
mein.dyndns.org
```

#### MPCS Port

Port des zu überwachenden MPCS-Servers. Der Port ist in der mpcs.conf im Abschnitt \[monitor\] angegeben bzw. kann dort geändert werden.

```
15000
```

#### MPCS Username | MPCS Password

Zugangsdaten für den Monitorzugang des zu überwachenden MPCS-Servers. Für den Monitorzugang kann jeder Useraccount aus der mpcs.user genutzt werden, der über einen entsprechenden "MonLevel" verfügt. Der "MonLevel" kann auch in der mpcs.conf im Abschnitt \[monitor\] global vergeben sein, dies gilt dann für alle Useraccounts ohne Angabe eines "MonLevel".

```
Monitor
```

**Die weiteren Angaben sind optional und werden für die reine Logfunktion nicht benötigt**



[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

## Statusview Setup

[![](/images/thumb/b/b7/MicroMon_Setup_Status_View.png/300px-MicroMon_Setup_Status_View.png)](/wiki/Datei:MicroMon_Setup_Status_View.png)

Setup - Statusview



















[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

## Logwindow Setup

[![](/images/thumb/4/4c/LogWindowsSetup.png/300px-LogWindowsSetup.png)](/wiki/Datei:LogWindowsSetup.png)

Setup - Logwindow

### Filterregel erstellen

Die Filterregeln beziehen sich auf die MPCS Logs. Mit regulären Ausdrücken (RegEx) kann hier nach Situationen im Log gefahndet werden. Mit "Hinzufügen" wird eine neue Regel erstellt. !!Achtung!! Wenn zwei oder mehr Regeln (Suchmuster) auf eine Logmessage zutreffen wird die **letzte** zutreffende Regel gewertet. Die programmtechnisch letzte zutreffende Regel ist Die, welche auch in der Liste (Setup) am tiefsten steht.

#### Name

Die Regel muß einen eindeutigen tragen. Bei mehreren gleichnamigen Regeln wird nur die erste Regel ausgeführt.

#### Suchmuster

In einem Eintrag können mehrere Suchmuster mit "|" (pipe) als logisch "oder" verknüpft werden.

```
anonymous|unknown|fake
```

Eine logische "und" Verknüpfung würde wie folgt aussehen

```
found.*reader
```

Natürlich kann man auch Beides verknüpfen

```
(not found|ignored|timeout|rejected).*reader
```

[Reguläre Ausdrücke](http://de.wikipedia.org/wiki/Regul%C3%A4rer_Ausdruck) sind ein mächtiges und sehr flexibles Werkzeug zur Erkennung von Mustern in Zeichenketten. Damit stehen Euch alle Möglichkeiten offen.

#### Farben

Mit den beiden Farbfeldern werden Vordergrund- und Hintergrundfarbe der gefundenen Logmeldung eingestellt. Nach Speichern der Regel wird in der Übersicht die Regel in den gewählten Farben dargestellt.

#### Font

Unter Font kann die Schriftart der gefundenen Logmeldung eingestellt werden. Mit einem Doppelklick auf den Fontnamen öffnet sich der von Windows bekannten Font- Auswahl Dialog. Nach dem Speichern der Regel wird der Font auf das Übersichtsfenster oben übertragen. Mit "Reset Font" kann der Ursprungszustand wieder hergestellt werden. !!Achtung!! Die Logmeldungshöhe paßt sich nicht der Fontgröße an. Ein zu groß gewählter Font macht die Logmeldung unleserlich.

#### Action

Wenn eine, den Kriterien entsprechende, Logmeldung gefunden wird kann zusätzlich zur Formatierung auch eine Action ausgeführt werden. Die zur Verfügung stehenden Actions werden in der Auswahlbox angezeigt sobald "Action" angehakt wird. Die beiden Felder neben der Actionauswahl sind der Initial Count und der Wiederholungs Count. Dabei gelten folgende Regeln:

```
Initialcount=5         Action wird nach 5 maligem auftreten des Musters erstmalig ausgelöst
Wiederholungscount=0   Action wird nicht wieder ausgelöst
```

```
Initialcount=5         Action wird nach 5 maligem auftreten des Musters erstmalig ausgelöst
Wiederholungscount=10  Action wird danach aller 10 auftreten des Musters erneut ausgelöst
```

### Filterregel entfernen

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

## NewCS Setup

[![](/images/thumb/6/6e/NewCS_Setup.png/300px-NewCS_Setup.png)](/wiki/Datei:NewCS_Setup.png)

Setup - newCS Einstellungen

















[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

## G/Mbox Trace Setup

[![](/images/thumb/5/57/MicroMon_Setup_Gmbox1.png/300px-MicroMon_Setup_Gmbox1.png)](/wiki/Datei:MicroMon_Setup_Gmbox1.png)

Setup - Gbox / Mbox Trace Einstellungen


Ein neues Trace wird mit "Add" hinzugefügt. Sobald ein Trace hinzugefügt ist, kann man im Config Fenster die einstellungen vornehmen.

+   Name (frei wählbar aber unique - jeder Name darf nur einmal existieren)
+   Description (Beschreibung - hat für das Trace keine Bedeutung)
+   Port (Zahl zwischen 0 und 64000 - jeder Port darf nur einmal belegt werden)
+   Logtyp (GBox, MBox - hat momentan keinen Einfluß auf das Programm kann aber intern später genutzt werden)
+   Enabled (nur wenn ein Trace "enabled" ist wird ein Logregister dargestellt. So kann man selten genutzte Traces ausblenden ohne Sie zu löschen)

Mit "Save" wird das Trace gespeichert.

Löschen kann man ein Trace durch markierung in der Liste und Klick auf "Remove"

Der Name eines Trace kann nach dem Speichern nicht mehr geändert werden.

## Chart Setup

[![](/images/thumb/8/81/Chart_Setup.png/300px-Chart_Setup.png)](/wiki/Datei:Chart_Setup.png)

Setup - Chart Einstellungen












Im Chart Setup kann festegelgt werden:

+   Maximalwert der Y Achse
+   Schrittweite der Y Achse

## Watchdog

[![](/images/thumb/f/f4/WatchDog.png/300px-WatchDog.png)](/wiki/Datei:WatchDog.png)

Setup - Watchdog Einstellungen















Watchdogs können das lokale System überwachen. Wenn ein Watchdog aktiv ist, wird das angegebene Programm überwacht und falls der Prozess nicht mehr läuft neu gestartet.

```
Beispiel einer MPCS Überwachung:
Watchdog Name: MPCS
Computername:
Filename: c:\programme\mpcs\mpcs.exe
Parameter: -b
```

Der Parameter -b schickt den mpcs sofort in den Hintergrund.

Geplant ist auch hier noch die Verknüpfung mit Actions.

## Mail

[![](/images/thumb/f/fe/Mail.png/300px-Mail.png)](/wiki/Datei:Mail.png)

Setup - Maileinstellungen








Dieses Setupfenster ist eigentlich selbsterklärend:

+   SMTP Server -> Dein Mailserver
+   Port -> Der SMTP Port Deines Mailservers
+   Username -> Dein SMTP Username
+   Passwort -> Dein SMTP Passwort
+   Absenderadresse -> Deine Absender Email Adresse

## Actions Setup

[![](/images/thumb/b/bf/Actions_Setup1.png/300px-Actions_Setup1.png)](/wiki/Datei:Actions_Setup1.png)

Setup - Actions Setup

### Action erstellen

Actions sind im MicroMon die "Handler" (Ausführer). Eine Action kann deffiniert werden als:

+   Sound
+   Mail
+   Macro

Mehrfachbelegung ist möglich. Z.B. kann ein Macro ausgeführt werden und gleichzeitige eine Mail versandt werden. Um eine Neue Action anzulegen einfach auf "Hinzufügen" klicken.

### Action entfernen

Eine Action kann gelöscht werden indem Sie markiert wird und "Entfernen" geklickt wird. MicroMon überprüft dabei ob die Action in Verwendung ist. Ist die Action z.B. mit einer Log Regel verknüpft wird das Löschen abgebrochen und die erste Logregel, mit der die Action verknüpft, ist angezeigt. Die Verknüpfung muß erst aufgelöst werden.

### blockieren

In dieses Feld kann eine Blockierungsdauer in Sekunden eingetragen werden. Diese Blockierung ist für den Fall gedacht, das ein Suchmuster plötzlich sehr oft gefunden gefunden wird und der Wiederholungscount beispielsweise alle 5 Sekunden eine Action auslöst. Ist diese Action eine Mail- Action würde alle 5 Sekunden eine Mail verschickt werden. Die Blockierung schützt davor. Wenn hier zum Beispiel eine 120 eingetragen wird, ist die Action 2 Minuten geblockt. Auch wenn die Action alle 5 Sekunden ausgelöst wird, wird sie nur alle 2 Minuten (120 Sekunden) ausgeführt.

### Sound

Um mit der Action einen Sound abzuspielen, muß "Sound" angehakt sein. Mit einem Doppelklick auf das Feld für den Pfad wird ein Auswahldialog geöffnet. Wenn eine \*.wav Datei ausgewählt ist, kann Diese mit dem Button Test abgespielt werden.

### Mail

[![](/images/thumb/f/f2/Actions_Setup_Mail_Setup.png/300px-Actions_Setup_Mail_Setup.png)](/wiki/Datei:Actions_Setup_Mail_Setup.png)

Setup - Actions - Mail Setup



Um einer Action eine Mail zuzufügen, muß "Mail" angehakt werden. Mit einem Doppelklick auf das Betreff Feld öffnet sich das Mail Setup. Dort kann die Empfängeradresse, die Betreffzeile und der Text festgelegt werden. Zusätzlich besteht die Möglichkeit Logzeilen aus dem Hauptlog mitzusenden. Die Anzahl der Logzeilen wird als Anzahl von unten angegeben. Ein Wert von 50 liefert also die letzten 50 Logzeilen. Sollten Im Hauptlog weniger Logzeilen vorhanden sein als angegeben, werden alle vorhandenen Logzeilen geschickt.

Voraussetzung für den Mailversand sind korrekte Serverdaten im Setup "Mail"

Wenn der Mailassistent fertiggestellt ist, kann mit "Test" diese Mail ausgelöst werden.

### Macro

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

## Macro Setup

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

### Macro erstellen

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

### Macro entfernen

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

### Telnet Macro

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

### Windows Macro

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

## Misc Options Setup

[![](/images/thumb/6/67/Misc_Options_Setup1.png/300px-Misc_Options_Setup1.png)](/wiki/Datei:Misc_Options_Setup1.png)

Setup - Misc Options Setup

#### Monitor bei Programmstart verbinden

Bei der Verwendung von Profilen bzw. bei Überwachung eines einzigen Servers kann diese Funktion aktiviert werden, damit beim aufrufen des microMon sofort eine Verbindung zum Server aufgebaut wird.

#### Automatisch auf Updates prüfen

Dies ist eine globale Funktion und ist daher unabhängig vom geladenen Profil.
Bei Problemen mit der Internetverbindung sollte diese Funktion deaktiviert werden. Ein manuelles Prüfen auf Updates unter "Extras" -> "Softwareaktualisierung" ist weiterhin möglich.

#### Profilauswahl bei Programmstart

Dies ist eine globale Funktion und ist daher unabhängig vom geladenen Profil.
Ist diese Funktion aktiviert, wird beim Start des microMon ein Auswahlfenster mit den verfügbaren Profilen Angezeigt. Hier kann nun das gewünschte Profil, welches geladen werden soll, ausgewählt werden. Bei der Verwendung nur eines Profils (Servers) kann diese Funktion deaktiviert werden. Wird der microMon mit dem Parameter "/profile=<Profilname>" aufgerufen wird das angegebene Profil sofort geladen, das Auswahlfenster erscheint nicht.

#### ProcessPriority

(nicht im Bild)
Dies ist eine globale Funktion und ist daher unabhängig vom geladenen Profil.
Hier Kann die Systempriorität des Programms in 6 Stufen eingestellt werden. Empfehlung: Normal

#### SRVID

Hier kann zwischen Verwendung der alten mpcs.svrid und der neuen [microMon.srvid](/wiki/Srvid#microMon.srvid "Srvid") gewählt werden. Jeweilige Datei muß im im gleichen Pfad liegen wie Profildateien (\*.mmp).

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

# Changelog

```

2.1.0.878
Add:	new variables Caid and Sid for SrvId Naming
Fix:	Fix possible crash when connection to mpcs is lost
Upd:	Update micromon.srvid file
Add:	New Column GeoInfo in the clientwindow (Provider:http://freegeoip.appspot.com)

2.1.0.871
Upd:	Update mpcs.srvid file

2.1.0.870
Chg:	the internet address in the clientview ist now shown for inactive clients
Add:	New Button in Statistics that shows some user counts over time
Fix:	Memory Leak in Diagram
Add:	New Option to delete database entries after x days in the settings menue under database

2.1.0.858
Fix:	Some translation issues fixed
Fix:	mpcs.srvid parsing was broken

2.1.0.854
Add:	New Menue Entry under Extras -> ServiceIds File reload
Add:	New Column "Days payed left" in ClientView
Chg:	The databaseformat for the channelhistory is now sqlite
Upd:	Update micromon.srvid file
Add:	it is now possible to add the networkid to the caid in the micromon.srvid file

2.1.0.835
Add:	Active and Online Clients are now counted separately in Group Label

2.1.0.833
Chg:	Option crypted connection is now on per default
Chg:	Option SRVID uses microMon.srvid per default
Fix:	Log Entry "filter" is now processed and counted as "ignored"

2.1.0.825
Add:	New Statuslabel that shows the overall ecms per minute
Chg:	mailing the last n loglines now includes the line that fires the event
Chg:	microMon.srvid updated. thx to -=HSKc=-Robby@streamboad

2.1.0.819
Fix:	Wrong Template for Server status Channels now really fixed

2.1.0.817
Fix:	Wrong Template usage for channels in client window
add:	Timerange for History Entries for faster display

2.1.0.811
Fix:	Resolving of Services (CAID/SRVID)
Add:	New Column in Clientview that shows the last FOUND channel
Add:	It is now possible to send commands to mpcs via macros
Chg:	Ping Status takes less space now
Chg:	microMon.srvid updated. thx to -=HSKc=-Robby@streamboad

2.1.0.801
Fix:	Log dateparsing now bruteforce with German region settings (VNC issue)
Add:	Log parsing "expiered date" shown in log and counted under "r" (rejected)
Chg:	Toaster re- enabled under OStype "Wine"
Fix:	Manually added email addresses in action dialog settings now saved correctly
Fix:	After Resume from Hibernate the reconnect to the server waits for a valid connection or 30 seconds
Chg:	the reconnect is immediately after cardserver down detected thrown.
Add:	you can now change the connection timeout to the server in the settings dialog under mpcs

2.1.0.779
Chg:	Crypting now with own Code, no external dlls required
Chg:	New micromon.srvid format. Multiple CAIDS allowed, see wiki
Fix:	Channelname was sometimes wrong with new .srvid format in clientview
Fix:	Max User Info is now resetted correctly on double click.

2.1.0.766
Fix:	Onlineupdate autocheck
Fix:	Crypt checkbox shows status also if disabled
Fix:	Actions mailsend
Add:	Mailassistant - clientaddresses selectable
Chg:	Mailclient prepared internally for multi TO
Chg:	Play sound on action moved to a background thread
Add:	Srvid assignment with microMon.srvid over templates (Design up to user)
Add:	Change each log backcolor black <-> white (button in each head of log)
Chg:	Webinterface - Macros avail again.
Fix:	Wine environment detection
Add:	WebIf Client section
Add:	Min Responsetime and Current Responsetime columns added to Clients Section
Fix:	Memleak fixed
Add:	Prozesspriority can now be set under Settings -> Misc Options Setup
Chg:	MaxClients is now set whenever the count is hit.
Add:	WebIf Channel history for clients (clientname is link)

2.1.0.722
Chg:	microMon.srvid updated THX Robby
Add:	cryptcache - every command become encoded only one time externaly
Chg:	New rudirabbit encoding.dll
Add:	Button for setting standard pathes
Fix:	Memleak removed
Add:	Basic filemanager to perform fileactions to applicationfolder

2.1.0.693
Fix:	Crash after closing microMon

2.1.0.683
Fix:	Splitter Position not saved after restart
Add:	Enhanced debugmessage for rudi crypt

2.1.0.665
Fix: 	Exception in chart changing/ setting Y Values
Add: 	New microMon.srvid supported
Add: 	Some Wine compatibility
Add:	MPCS crypt connection - THX @ rudirabbit / wonderdoc
Fix:	Exception after changing minimize to tray in settings window

2.0.0.611
Fix:	Columnsizes are now saved
Fix:	Crash when no Entry is selected in Clientinfo and contextmenu is opened
Add:	security.dll is now included in Distribution. No function yet.
Add:	Some new Client Data in ClientView Contextmenue
Add:	it is now possible to hide the elements in the mainscreen via Menu View
Chg:	Autoupdate Servers are now selected by there response time

2.0.0.585
Fix:	GBox / MBox could not connect after disconnect - fixed in UDP core
Fix:    Exception on Telnettest if plink path not exist

2.0.0.580
Add:	Cleanup for V1.n Settings in "Misc Options"
Add:	Ping timeout configurable in "Misc Options". Default 2000mS
Chg:	Moved Ping to a separate thread
Chg:	GBox / MBox setup section comletely restructured
Chg:	GBox / MBox logging moved to new UDP Core and new Logoutput
Add:	Help window with Wiki page (Thanks @ Streamboard)

2.0.0.559
Chg:	Complete restructure of macro setup
Add:	Unlimited number of macros possible now
Alert:	Webinterface works not with the new macros -> commands disabled until solution found
Add:	Macros are avail in Action Setup
Add: 	Logrules have a complete Fontsetup now (smaller Fonts maybe for Netbooks useful)
Fix:	Exception in set split containers (minimize to tray)
Fix:	Minimize to tray issues
Fix: 	some code optimization - maybe fixing an invisible memleak
Fix:	Possible deadlock in syslog core
Chg:	Syslog/ camd3 Log moved to new Log output (less CPU Load)
Chg: Some cosmetic in Setup form

2.0.0.527
Fix:	NewCS Port causes Error if not numeric
Fix:	120dpi windows setting support
Add:	Instant UDP Log
Add:	Block Action for n Seconds (especially for mail to avoid flood)
Fix:	Action repeatcount = 0 avoid repeat
Add:	Some grouping in Clientdetails/ Channel History
Chg:	mpcs.srvid will not longer overwritten while install if exist
add:	new translation of some controls to german

2.0.0.478
Fix:	German Language was not displayed for some controls
Fix:	Removing of a Client works now
Fix:	Window Sizes with 120dpi

2.0.0.451
Fix:	cache0 causes sometimes error
Add:	Some more translations
Add:	In all Log Windows you can now copy all entries to clipboard
Fix:	lookup of hostnames in clientview was sometimes unknown host

2.0.0.443
Fix:	Custom Log works again
Fix:	Parsing of 0D05&FFFFFF (FFFFFF became ignored)
Add:	LogColor Font bold added
Fix:	On simulating log a nameles client could be created which raises an exeption on next start
Add:	the status of logwindows (play,pause,stop) is now saved
Add:	LogColors Count activated - shows how often a RegEx has matched
Add: 	LogColors Context added to delete all counts
Add:	LogColors Action selector
Add:	Actions Config - Actions can become used in LogColors as Alerthandler
Add: 	Mailsetup sender address
Fix:	Ping timout causes a hanging Stats refresh (I---- Messages) Ping get 3 Chances now
Add:	Partial Multilanguage Support (englisch,deutsch) not all is translated jet

2.0.0.356
Add:	DB Path per profile configurable (Setup "Logsettings")
Chg:    Path config for default logpath moved to setup "Logsettings"
Chg:    Standardpath for DB is now Applicationdata in userspace (MS conform)
Fix:	Watchdog stats refresh now on activate tab (only on firing WD before)
Add:	Plink.exe Path configurable
Add:	Watchdog stats columnsize saved per profile
Add:	New User changeable field "EMail" per Clientinfo
Chg:	New Configuration for coloring the log. the old settings are lost.
Fix:	Problem with icon column in clientview fixed

2.0.0.325
Fix:	Clientlist grows up on each save
Chg:	ClientInfo window - stats ordered by date descending
Fix:	Problem with database under 64bit os solved
Add:	the debuglevel can now be set with the contextmenue in the logwindows
Chg:	Reorganisation of the ClientInfo Window
Add:	New User changeable fields "Name" and "notice" per ClientInfo

2.0.0.300
Fix:	Autoupdate now working with all client security settings
Fix:	Crash with command line parameters
Chg:    sleeping clients are shown in clientdetails as "inactive"
Add:	Watchdog Stats Refresh active
Chg:	Clientload per profile

2.0.0.282
Add:	if an error ocurred while updating micromon, the errormessage now shows the filename of the updater
Chg:	client settings saved in extra file.
Add:	Additional Infos in show client info dialog
Add:	Zapping History in show client info dialog

2.0.0.271
Add:	changelog added

2.0.0.265
Add:	New Column in Clientview lastactive
Add:	New Column in Clientview clientaddress
Add:	New Column in Clientview maxtime
Add:	Column Channel ist now colored red when more than 10 seconds no ecm received
Add:	Column time is now colored if responsetime bad
Add:	Column maxtime is now colored if responsetime bad
Add:	you can now hide the column in Clientview by right clicking and go to Columns entry
Fix:	invalid ecm responses are now mapped to ignored to show them in column i in clientview
Add:	New Register Watchdog
Fix:	In Userconfig the Button to download is now enabled only if the connection is established
Add:	the toaster info to update the software is now clickable
Add:	the watchdog states can be changed with a new menuentry
```

# Changerequests / Featurerequests

## Changerequests

### Request 1

```
Request Detail:

Signed: user1, user2,
```

## Featurerequests

### Fensteranordnung frei wählbar

```
Request Detail: Ich weiß ist schwierig, aber der ein super feature.
Die Fensteranordnung frei wählbar, wie x-Dateien/Fenster in Word .... Dann auch mit Fenster-anordnen, überlappend, nebeneinander, übereinander ..

[saruman]: Oder vielleicht zwei alternative Fensterlayouts anbieten? Das Originale (so wie jetzt)
und zusätzlich vielleicht eines das oben den Status hat, als nächstes die Userliste und unten die Logs?

[Apollo]: Die Fenster alle untereinander als alternatives Layout währe für eine geringe Bildschirmauflösung durchaus von Vorteil.
Und das dann noch als Windows Mobile Version.

Signed: der Hase, saruman, Apollo
```

### Debug Fenster moveable

**You can hide not needed Tabs in Settings "Misc"** [MicroMon#Misc\_Options\_Setup](#Misc_Options_Setup)

```
Request Detail: Die Fenstersortierung verschiebbar zu machen.
Damit könnte man die Reihenfolgen der Debugfenster änder.
Entweder verschiebbare Reiter oder per ini.datei die Sortierung einstellbar.

Hintergrund: bei Auflösungen von ~1024 sind mpcs und gbox nicht mehr auf
             einer Seite und so ein wechsel von einem debug zum anderen recht umständlich

Signed: der Hase
```

### Chart

```
Request Detail: Für jeden User einen eigenen Graphen mit den Antwortzeiten erstellen.
Kann in meinen Augen ruhig alles in einen Graphen, allerdings die einzelnen
Antwortzeiten dann farbig abgesetzt (also jedem User eine Farbe zuordnen).

Signed: saruman
```



### Userfenster (Sortierung)

```
Request Detail: Kann für wine die Sortierung der User nach Status eingebaut werden?
Wenn ich das richtig gelesen habe, funktioniert die Sortierung nicht zusammen mit der Gruppierung,
aber unter wine wird ja nicht gruppiert.

[saruman]: Ja, nach Status und innerhalb dieser Sortierung dann alphabetisch. Das wär klasse.

Signed: Apollo, saruman
```



### Reader Fenster

```
Sortierung in den Reader Fenster zulassen (durch klick auf die Spaltenname);

Dann könnte man die chid nach dem Start bzw. auch wahlweise nach dem Enddatum sortieren!

Signed: der Hase
```