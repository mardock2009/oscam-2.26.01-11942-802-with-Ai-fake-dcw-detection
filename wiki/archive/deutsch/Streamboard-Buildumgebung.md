> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Streamboard Buildumgebung

## Inhaltsverzeichnis

+   [1 Streamboard VMWare Beta-Buildumgebung](#Streamboard_VMWare_Beta-Buildumgebung)
    +   [1.1 (optional) VMWare Tools installieren](#\(optional\)_VMWare_Tools_installieren)
    +   [1.2 (optional) Mausunterstützung in der Konsole](#\(optional\)_Mausunterstützung_in_der_Konsole)
    +   [1.3 (optional) Einloggen mit Putty](#\(optional\)_Einloggen_mit_Putty)

### Streamboard VMWare Beta-Buildumgebung

Um das Erstellen eines Images zu erleichtern, steht testweise eine Buildumgebung für VMWare bereit.

```
StreamboardVMware241120060203.exe (70MB)
```

Diese basiert auf einem minimalen Debian-System und sollte bereits alle nötigen Pakete beinhalten. Es ist keine GUI installiert um die Downloadgröße gering zu halten. Diese kann aber mittels aptitude bzw. apt-get (vgl. [Debian-Abschnitt](/wiki/HowTo_-_Vom_Auschecken_bis_zum_Image#Debian "HowTo - Vom Auschecken bis zum Image")) mit nur wenigen Befehlen nachinstalliert werden.

Die Installation unter Windows erfolgt sehr einfach:

1.  Download und Installation des [VMWare-Players](http://www.vmware.com/de/download/player/) (Freeware) oder [VMWare Workstation](http://www.vmware.com/de/download/ws/) (benötigt nach 30 Tagen eine Lizenz)
2.  Entpacken der StreamboardVMware241120060203.exe in ein beliebiges Verzeichnis (auf ausreichend Speicherplatz achten! Später wird das Ganze ca. 2-3GB groß)
3.  Mit einem Doppelklick auf die entpackte StreamboardBuildumgebung.vmx sollte der VMWare-Player bzw. Workstation starten und sich die Buildumgebung automatisch öffnen.
4.  Nach dem Start von Debian kann man sich dann mittels dem Usernamen "sb" und Passwort "kalibo" einloggen. Das Passwort für den root-Zugang (nötig für die Installation weiterer Software) lautet "Streamboard". Diese Informationen werden auch beim Starten angezeigt.

Im Anschluss daran kann man mit dem Imagebau laut diesem Howto beginnen. Es sollten keine weiteren Vorbereitungen nötig sein und somit kann gleich [hier](/wiki/HowTo_-_Vom_Auschecken_bis_zum_Image#Vorbereitungen_zum_Compilieren "HowTo - Vom Auschecken bis zum Image") angefangen werden!

In der Buildumgebung läuft bereits ein fertig eingerichteter SSH-Server (für einfacheres Copy-and-Paste zwischen eurem Windows-System und der Buildumgebung) sowie auch ein FTP-Server zum Datenaustausch. Zum Verbinden werden hierzu die normalen Benutzerdaten (siehe oben!) verwendet. Die IP wird dynamisch vergeben und beim Starten angezeigt; ihr erhaltet sie aber auch später indem ihr entweder

```
sb@build:~# sudo ifconfig
```

bzw. als root-User einfach nur

```
root@build:~# ifconfig
```

eingebt. Hierbei seht ihr auch schön die Funktion des Befehls *sudo*: Wenn ihr diesen vor ein Kommando stellt, so wird dieser Befehl als root ausgeführt. Ihr braucht euch also nicht umständlich erst als root anmelden bzw. mittels dem Befehl "su" zum root-Account wechseln falls hier im Wiki manche Befehle root-Rechte benötigen!

Unter Umständen ist es noch nötig, mittels *Manage Virtual Networks* (im Startmenü von VMWare enthalten) im Reiter *NAT* für das Netzwerkinterface ein entsprechendes Portforwarding einzurichten sowie *Aktives FTP* zu aktivieren. Im Allgemeinen ist dies allerdings nicht notwendig!

Das Streamboard-Team würde sich über Rückmeldungen im Forum sehr freuen! Es können durchaus noch Bugs enthalten sein, da das Paket noch nicht ausreichend getestet werden konnte.

#### (optional) VMWare Tools installieren

VMWare bietet unter dem Namen VMWare Tools für viele gängige Betriebssysteme spezielle Treiber an. Diese verbessern die Performance (z.B. des Netzwerks) oder bringen zusätzliche Features (z.B. direkte Integration von Ordnern des Hostbetriebssystems). Sie sind für den Betrieb nicht notwendig aber grundsätzlich ist die Installation empfehlenswert.

Zur Installation müssen zunächst die sogenannten "Kernel-Header" mittels folgendem Befehl installiert werden:

```
root@build:~# echo deb http://ftp.de.debian.org/debian sarge main >> /etc/apt/sources.list
root@build:~# apt-get update
root@build:~# apt-get install kernel-headers-2.4.27-3-386
```

Anschließend benötigt ihr noch das eigentliche Treiberpaket. Hierfür gibt es 2 Möglichkeiten:

1\. Ihr ladet unter [Datei:VMwareTools.exe](/wiki/Datei:VMwareTools.exe "Datei:VMwareTools.exe") das Archiv herunter und extrahiert die TAR-Datei. Mit einem FTP Client könnt ihr diese dann in die Buildumgebung nach */usr/src* hineinkopieren. Anschließend führt ihr folgende Befehle aus um die Dateien zu entpacken

```
root@build:~#  tar -xf VMwareTools*.tar
```

2\. Ihr nutzt den in VMWare-Workstation integrierten Button unter dem Menüpunkt VM. Die Tools werden dann als virtuelle CD-Rom ins System eingebunden. Über folgende Befehle kann man diese dann entpacken:

```
root@build:~# mount /cdrom
root@build:~# tar -zxf /cdrom/VMWareTools*.tar.gz
```

Anschließend geht es an die eigentliche Installation.

```
root@build:~# cd vmware-tools-distrib
root@build:~# ./vmware-install.pl
```

Die entsprechenden Meldungen sind allesamt einfach nur mit **\[Enter\]** zu bestätigen. Das ganze sollte dann problemlos durchlaufen und spätestens nach einem Neustart sind die VMWare Tools aktiv.

Um nun einen Ordner zu integrieren, muss man diesen zur Konfigurationsdatei von VMWare erst hinzufügen. In VMware Workstation geht dies ganz einfach über die entsprechenden Menüs in den Einstellungen der StreamboardBuildumgebung. Für den VMWare-Player müssen in der Datei *StreamboardBuildumgebung.vmx* mit einem Texteditor folgende Zeilen manuell hinzugefügt werden, damit der gesamte Ordner *C:\\* unter Linux über den Ordner */mnt/hgfs/Festplatte* verfügbar ist:

```
sharedFolder0.present = "TRUE"
sharedFolder0.enabled = "TRUE"
sharedFolder0.readAccess = "TRUE"
sharedFolder0.writeAccess = "TRUE"
sharedFolder0.hostPath = "C:\"
sharedFolder0.guestName = "Festplatte"
sharedFolder0.expiration = "never"
sharedFolder.maxNum = "1"
```

#### (optional) Mausunterstützung in der Konsole

Um auch in der Konsole mit Mausunterstützung arbeiten zu können, müsst ihr euch das Tool gpm installieren.

```
root@build:# apt-get install gpm
```

Bei den meisten Sytemen sieht die Konfigurationsdatei /etc/gpm.conf so aus.

```
#  /etc/gpm.conf - configuration file for gpm(1)
device=/dev/psaux
responsiveness=
repeat_type=none
type=imps2
append=
sample_rate=
```

Nach einem Neustart kann man innerhalb der Konsole von nun an recht einfach mittels Copy&Paste arbeiten.

#### (optional) Einloggen mit [Putty](http://de.wikipedia.org/wiki/Putty)

Da der VMware Player einige Einschränkungen hat, ist es von Vorteil, sich mittels SSH (bzw. dem Programm Putty) in seine Buildumgebung einzuloggen. Man kann die Konsole verbreitern und leichter zwischen Windows und Linux hinundher kopieren:

```
Windows2Linux: Den Text mit der Maus kopieren, dann CTRL-C drücken (bzw. Rechtsklick=>Kopieren)
               und in der Linux Umgebung mit der rechten Maustaste einfügen.
Linux2Windows: Unter Linux den Text markieren und mit CTRL-V (bzw. Rechtsklick=>Einfügen) unter
               Windows einfügen.
```

Zuerst muss die IP der Build Umgebung festgestellt werden; dies geht mit

```
sb@build:~# sudo ifconfig
```

(weiter oben im Text wurde dies schon einmal erklärt)

Dann ladet euch von [hier](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) das Programm Putty runter und startet es. Im Feld "Host Name (or IP address)" dann die eben herausgefundene IP eingeben und auf Open klicken. Es erscheint nun eine Loginabfrage. Hier müssen die Benutzerdaten bzw. das Passwort genauso eingegeben werden wie in VMWare. Hinweis: Beim ersten Verbinden per SSH erscheint eine Frage, ob der RSA fingerprint akzeptiert werden soll. Dies ist mit "Yes" bzw. "Ja" zu beantworten!