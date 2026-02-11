> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Seagate Dockstar

## Inhaltsverzeichnis

+   [1 Einleitung](#Einleitung)
    +   [1.1 Hardware Vorbereitung](#Hardware_Vorbereitung)
    +   [1.2 Software Vorbereitung](#Software_Vorbereitung)
        +   [1.2.1 Sicherung des Originals](#Sicherung_des_Originals)
+   [2 Installation Debian](#Installation_Debian)
    +   [2.1 Basisinstallation](#Basisinstallation)
        +   [2.1.1 Installation für Einsteiger](#Installation_für_Einsteiger)
            +   [2.1.1.1 Vorraussetzung](#Vorraussetzung)
            +   [2.1.1.2 DHCP-Server](#DHCP-Server)
            +   [2.1.1.3 Grundsätzliches zu den jetzt folgenden Linux-Eigenheiten](#Grundsätzliches_zu_den_jetzt_folgenden_Linux-Eigenheiten)
            +   [2.1.1.4 USB-Stick oder USB-Festplatte vorbereiten für die Sicherung](#USB-Stick_oder_USB-Festplatte_vorbereiten_für_die_Sicherung)
            +   [2.1.1.5 Seagate Freeagent Dockstar sichern](#Seagate_Freeagent_Dockstar_sichern)
            +   [2.1.1.6 Pogoplug-Software deaktivieren](#Pogoplug-Software_deaktivieren)
            +   [2.1.1.7 Debian installieren](#Debian_installieren)
            +   [2.1.1.8 Zusatz-Pakete installieren](#Zusatz-Pakete_installieren)
            +   [2.1.1.9 Oscam ins System integrieren](#Oscam_ins_System_integrieren)
            +   [2.1.1.10 Nützliches und "kleine" Spielereien](#Nützliches_und_"kleine"_Spielereien)
            +   [2.1.1.11 Tipps und Tricks](#Tipps_und_Tricks)
        +   [2.1.2 Auto-Installation per Script](#Auto-Installation_per_Script)
    +   [2.2 Zusatzpakete](#Zusatzpakete)
        +   [2.2.1 Editor Joe](#Editor_Joe)
            +   [2.2.1.1 Installation](#Installation)
            +   [2.2.1.2 Funktion](#Funktion)
        +   [2.2.2 killall nachinstallieren](#killall_nachinstallieren)
            +   [2.2.2.1 Installation](#Installation_2)
    +   [2.3 Kernel tauschen](#Kernel_tauschen)
    +   [2.4 LEDs benutzen](#LEDs_benutzen)
    +   [2.5 Oscam Installieren](#Oscam_Installieren)
    +   [2.6 Tips/ Tricks](#Tips/_Tricks)
        +   [2.6.1 Feste Zuordnung der Reader über Udev-Rules](#Feste_Zuordnung_der_Reader_über_Udev-Rules)
        +   [2.6.2 USB Festplatten - Automatischer Spin-Down](#USB_Festplatten_-_Automatischer_Spin-Down)
        +   [2.6.3 NFS Server einrichten](#NFS_Server_einrichten)
        +   [2.6.4 Statische IP einstellen](#Statische_IP_einstellen)
        +   [2.6.5 Zeitzone einstellen](#Zeitzone_einstellen)
        +   [2.6.6 Fehlende Hardwareuhr "nachrüsten"](#Fehlende_Hardwareuhr_"nachrüsten")
        +   [2.6.7 Debian auf deutsch einstellen](#Debian_auf_deutsch_einstellen)
        +   [2.6.8 Apache SSL einrichten und Proxy für Oscam](#Apache_SSL_einrichten_und_Proxy_für_Oscam)
        +   [2.6.9 Eine Desktopverbindung(XFCE4) über FreeNX herstellen](#Eine_Desktopverbindung\(XFCE4\)_über_FreeNX_herstellen)
        +   [2.6.10 Eine Desktopoberfläche installieren und per VNC darauf connecten](#Eine_Desktopoberfläche_installieren_und_per_VNC_darauf_connecten)
+   [3 Installation Open WRT](#Installation_Open_WRT)
    +   [3.1 Basisinstallation](#Basisinstallation_2)
    +   [3.2 Zusatzpakete](#Zusatzpakete_2)
    +   [3.3 Kernel kompilieren](#Kernel_kompilieren)
    +   [3.4 Oscam Installieren](#Oscam_Installieren_2)
    +   [3.5 Tips/ Tricks](#Tips/_Tricks_2)
+   [4 Dockstar retten - neu flashen](#Dockstar_retten_-_neu_flashen)
+   [5 uBoot (mtd0) selbst erstellen](#uBoot_\(mtd0\)_selbst_erstellen)
    +   [5.1 Erstellen](#Erstellen)
    +   [5.2 Sichern des Originals](#Sichern_des_Originals)
    +   [5.3 Flashen](#Flashen)

# Einleitung

## Hardware Vorbereitung

## Software Vorbereitung

### Sicherung des Originals

Zur Sicherung nutzen wir nanddump, damit wir die Fehler-korrektur ausschalten können. Pogoplug booten, dann USB-Stick (am besten ext2 oder ext3 formatiert) dran stecken und:

```
cd /tmp
mkdir usb
mount /dev/sda1 /tmp/usb
wget http://jeff.doozan.com/debian/uboot/nanddump
chmod +x nanddump
./nanddump -nf usb/mtd0 /dev/mtd0
./nanddump -nf usb/mtd1 /dev/mtd1
./nanddump -nf usb/mtd2 /dev/mtd2
umount /dev/sda1
```

# Installation Debian

## Basisinstallation

### Installation für Einsteiger

#### Vorraussetzung

1) Eine "jungfräuliche" Seagate Freeagent Dockstar

2) USB-Stick (4GB oder 8GB) oder eine USB-Festplatte

3) Ein DHCP-Server ohne Internet-Zugang (kurzfristig, später wird Internet benötigt)

4) "putty" oder "telnet" für Windows

5) eine Linux-Version auf einem PC (nur wenn Sicherung des Dockstars gewünscht)

6) Einen Zahnstocher (der passt übrigens sehr schön in den oberen Mini-USB)

7) Geduld und Nerven, Kanne Kaffee und eine Packung Zigarretten oder andere "Drogen"

#### DHCP-Server

1) DHCP-Server aktivieren (falls Router --> DSL-Verbindung kappen)

2) IP-Nummernkreis vergeben oder erweitern (möglichst um mehr, als eine IP)

3) Die kürzeste Lease-Dauer einstellen

4) Falls Firewall (Router) vorhanden, die Client-Services (Access-Kontrolle) für den Nummernkreis freigeben (kann später wieder begrenzt werden, ausser der dann statischen IP des Dockstars)

#### Grundsätzliches zu den jetzt folgenden Linux-Eigenheiten

1) Ausschalten oder Reboot des Dockstars Ich habe "damals" gelernt, dass man vor dem Auschalten oder einem Reboot eines Unix-Rechners, erst noch die im Hauptspeicher (Cache) befindlichen Daten auf die Festplatte (bei USB ist es vielleicht noch wichtiger) zurückschreiben soll/muss. Das wurde durch einen zweifachen Aufruf des Befehls "sync" erreicht. Auch wenn es heutzutage vielleicht nicht mehr nötig ist, werde ich in der weiteren Beschreibung der Installation diese Vorgehensweise beibehalten. Schaden richtet es auf jeden Fall keinen an.



#### USB-Stick oder USB-Festplatte vorbereiten für die Sicherung

1) USB-Stick oder USB-Festplatte an einen Linux-PC anschliessen

2) als root anmelden, vom Benutzer aus mit "su -" oder "sudo su -" (das Root-Passwort muss man allerdings kennen)

3) nachschauen, welches Device der Stick oder die Platte bekommen hat (cat /proc/partitions)

4) mit fdisk drei Partition anlegen (fdisk /dev/sd"x" - anlegen mit "n")

```
 1. primary, aktiv (mit "a"), Grösse Start-Zylinder +2400M (bei 8GB-Stick oder Platte: +6400M), -->wird später das Debian
```

```
 2. primary, Grösse Start-Zylinder +500M, mit "t" auf 82 ändern --> Swap Partition
```

```
 3. primary, Grösse --> der Rest, --> Daten-Bereich
```

(mit "p" Tabelle anzeigen, mit "w" das Schreiben der Tabelle nicht vergessen, mit "q" beenden)

5) Filesystem auf der 3. Partition erstellen (/sbin/mkfs.ext3 /dev/sd"x"3)

6) Cache schreiben (sync, sync) und USB-Stick oder USB-Festplatte entfernen

#### Seagate Freeagent Dockstar sichern

1) Dockstar (im weiteren Verlauf "DS") mit dem Netzwerk verbinden (wenn möglich, direkt an den Router)

2) DS "einschalten" (mit Strom versorgen)

3) Warten, bis die LED gelb blinkt

4) Im DHCP-Server (oder Router) nachschauen, welche IP der DS bekommen hat

5) Falls der DS keine IP bekommen hat, ist jetzt der passende Zeitpunkt, der/dem Partnerin/Partner zu raten, sich ein "zusätzliches" Hobby zu suchen. Möglichst sofort. Mehrmals neu versuchen (Zahnstocher in "Reset" - nebem dem seitlichen USB-Anschluss) Am DHCP-Server kontrollieren, ob es überhaupt freie IP's gibt. Firewall kontrollieren (vielleicht kurzfristig deaktivieren) Vielleicht ein anderes Netzwerk-Kabel benutzen. Mit einem anderen Netzwerk-Gerät probieren. Egal was, ohne eine IP geht es nicht weiter Letzte Rettung --> zurück zum Händler (serielles Kabel nützt hier noch nichts, da es ja eine "jungfräuliche" DS ist)

6) mit putty über ssh oder telnet "IP der DS" (Windows - Benutzer:root, Password:stxadmin) oder mit ssh (Linux-PC - ssh root@"Ip der DS" - Passwort:stxadmin) oder telnet "IP der DS" (Linux-PC - Benutzer:root, Password:stxadmin) auf der DS einloggen

7) Backup von der DS erstellen



```
- USB-Stick oder USB-Festplatte an die DS anschliessen und testen, ob die Devices sda bis sda3 vorhanden sind (cat /proc/partitions)
```

```
- Mountpoint erstellen und Partiton mounten (cd /tmp, mkdir stick, mount /dev/sda3 /tmp/stick)
```

Backup erstellen

```
 cd /tmp/stick
 mkdir Backup
 cd Backup
 dd if=/dev/mtd0 of=mtd0.img
 sha1sum mtd0.img >mtd0.img.sha1
 dd if=/dev/mtd1 of=mtd1.img
 sha1sum mtd1.img >mtd1.img.sha1
 dd if=/dev/mtd2 of=mtd2.img
 sha1sum mtd2.img >mtd2.img.sha1
 dd if=/dev/mtd3 of=mtd3.img
 sha1sum mtd3.img >mtd3.img.sha1
```

\- DS ausschalten (sync, sync, /sbin/halt) und circa 60 Sekunden warten, danach USB-Stick oder USB-Festplatte entfernen

#### Pogoplug-Software deaktivieren

1) DS neu starten (Zahnstocher in "Reset")

2) Im DHCP-Server (oder Router) nachschauen, welche IP die DS bekommen hat

3) mit putty über ssh oder telnet "IP der DS" (Windows - Benutzer:root,Password:stxadmin) oder mit ssh (Linux-PC - ssh root@Ip der DS - Passwort:stxadmin) oder telnet "IP der DS" (Linux-PC - Benutzer:root, Password:stxadmin) auf der DS einloggen

4) Pogoplug-Software ("nach Hause telefonieren") stoppen (killall hbwd)

5) Root-Partition beschreibbar remounten (mount -o remount,rw /)

6) Kleinen Bug beheben (chmod go+w /dev/null)

7) Pogoplug-Software deaktivieren

```
 vi /etc/init.d/rcS
 Zeile "/etc/init.d/hbmgr.sh start" ausdokumentieren (/etc/init.d/hbmgr.sh start -->
 #/etc/init.d/hbmgr.sh start)
```


8 ) Root-Partition schreibgeschützt remounten (mount -o remount,ro /)

9) DS ausschalten (sync, eync, /sbin/halt)



#### Debian installieren

1) DS neu starten (Zahnstocher in "Reset")

2) Im DHCP-Server (oder Router) nachschauen, welche IP die DS bekommen hat

3) mit putty über ssh oder telnet "IP der DS" (Windows - Benutzer:root,Password:stxadmin) - mit ssh (Linux-PC - ssh root@Ip der DS - Passwort:stxadmin)

\- mit telnet "IP der DS" (Linux-PC - Benutzer:root, Password:stxadmin) auf der DS einloggen

4) USB-Stick oder USB-Festplatte an die DS anschliessen

5) Ist der Stick oder die Festplatte bereits partitioniert (z.B. an einem Linux-PC, oder durch die vorherige Sicherung), weitermachen mit Punkt 7)

6) mit fdisk zwei Partition anlegen (/sbin/fdisk /dev/sda - anlegen mit "n")

```
 1. primary, aktiv (mit "a"), Grösse Start-Zylinder +2400M (bei 8GB-Stick oder Festplatte: +6400M),--> wird später das Debian
 2. primary, Grösse Start-Zylinder +500M, mit "t" auf 82 ändern --> Swap Partition
```

(mit "p" Tabelle anzeigen, mit "w" das Schreiben der Tabelle nicht vergessen, mit "q" beenden)

7) testen, ob die Devices sda bis sda2 vorhanden sind (cat /proc/partitions)

8 ) export PATH=$PATH:/usr/sbin:/sbin

9) Jetzt die Verbindung zum Internet wiederherstellen (vielleicht an einem PC vorsichtshalber noch einmal testen)

10) cd /tmp

11) wget [http://jeff.doozan.com/debian/dockstar.debian-squeeze.sh](http://jeff.doozan.com/debian/dockstar.debian-squeeze.sh)

12) chmod +x dockstar.debian-squeeze.sh

13) ./dockstar.debian-squeeze.sh - If everything looks good, type 'ok' to continue: ok <return> - Would you like to disable the pogoplug services? \[Y/n\] Y <return>

14) Nach Abschluss der Installation wird nach einem "Reboot" gefragt --> nicht rebooten (n <return>)

15) Mountpoint für Debian erstellen und mounten (cd /tmp, mkdir stick, mount /dev/sda1 /tmp/stick) Falls keine feste IP gewünscht, weitermachen mit Punkt 17)

16) feste IP für den DS einstellen

\- cd /tmp/stick/etc

\- die Datei resolv.conf mit vi anpassen für den Nameserver, wenn nötig (Beispiel: nameserver 195.211.6.1)

\- cd /tmp/stick/etc/network

\- die Datei interfaces mit vi anpassen

\- vorhandene Zeilen ersetzen durch folgende und dabei in ## static die Adressen anpassen:



```
 ## Loopback
 auto lo eth0
 iface lo inet loopback
 ## static
 iface eth0 inet static
 address 195.211.6.17
 broadcast 195.211.6.255
 gateway 195.211.6.1
 netmask 255.255.255.0
```

weitermachen mit Punkt 18 )

17) dynamische IP für den DS einstellen

\- cd /tmp/stick/etc/network

\- die Datei interfaces mit vi anpassen

\- vorhandene Zeilen ersetzen durch folgende:

```
 ## Loopback
 auto lo eth0
 iface lo inet loopback
 ## dhcp
 iface eth0 inet dhcp
```

18 ) DS auschalten (sync, sync, /sbin/halt)

19) circa 60 Sekunden warten und danach den DS neu starten (Zahnstocher in "Reset")

20) Nach dem Booten (LED ist dann aus) wie üblich über "putty" oder "ssh" einloggen - Benutzer:root, Passwort:root Entweder mit der festen IP, oder im DHCP-Server (oder Router) nachschauen, welche IP der DS bekommen hat

21) das Root-Passwort ändern mit "passwd"

22) Zeitzone setzen

```
dpkg-reconfigure tzdata
```

23) Uhrzeit aktualisieren

```
 ntpdate -b atom.uhr.de
```

24) Uhrzeit permanent bei jedem Reboot aktualisieren

mit vi die Datei /etc/rc.local modifizieren --> am Ende einfügen (aber vor dem "exit")

```
 sleep 10
 if [ "`ps -ef | grep oscam | wc -l`" -lt 2 ]; then
 versuche=0
 ntpdate -b atom.uhr.de >/var/log/ntpdate.log 2>/dev/null
 while [ "`cat /var/log/ntpdate.log`" = "" ] ; do
 ntpdate -b atom.uhr.de >/var/log/ntpdate.log 2>/dev/null
 versuche=`expr $versuche + 1`
 if [ $versuche -gt 3 ]; then
 break
 fi
 done
 else
 kill -9
 `ps -ef | grep "startpar -f -- cardserver" | head -n1 | tr -s '[:blank:]' | cut -d" " -f2` 2>/dev/null
 fi
```


Sollte der Stick oder die Festplatte bereits drei Partitions haben, weitermachen mit Punkt 26)

25) Dritte Partition erstellen (für Daten)

mit fdisk dritte Partition anlegen (fdisk /dev/sda - anlegen mit "n") 3. primary, Grösse --> der Rest, --> Daten-Bereich (mit "p" Tabelle anzeigen, mit "w" das Schreiben der Tabelle nicht vergessen, mit "q" beenden)

Filesystem auf der 3. Partition erstellen (/sbin/mkfs.ext3 /dev/sda3)

```
Cache schreiben (sync, sync)
```

26) Datenbereich mounten

\- cd /media

\- mkdir daten

\- cd /etc

\- die Datei fstab mit vi anpassen (am Ende einfügen) /dev/sda3 /media/daten ext3 defaults 0 0 Wer seinen Stick schonen möchte, oder wünscht, dass sich seine Festplatte auch mal "schlafen legt", der sollte vielleicht lieber das ext2-Filesystem nutzen. /dev/sda3 /media/daten ext2 defaults 0 0

\- Datenbereich mounten (mount /dev/sda3 /media/daten)

27) Eventuell den DHCP-Server wieder deaktivieren oder in den ursprünglichen Zustand versetzen. Firewall anpassen, aber dabei an die feste IP des DS denken.

28 ) DS noch einmal Rebooten und die Funktionalität überprüfen (sync, sync, reboot)

\- einloggen mit root (mit ssh oder telnet)

\- df (sind alle Partitionen gemounted ? , cd /media/daten - Zugriff möglich ? )

\- swapon -s (ist das Swap-File aktiv ? )

\- date (ist Datum und Uhrzeit korrekt ? )

29) Sichern des momentanen Grund-Standes (1:1 Kopie des USB-Sticks erstellen)

\- USB-Stick oder SD-USB-Reader mit gleicher oder höherer Kapazität an einen freien USB- Port anschliessen (danach etwas warten)

\- dd if=/dev/sda of=/dev/sdb

\- auschalten der DS (sync, sync, halt)

\- circa 60 Sekunden warten und dann den Sicherungs-Stick entfernen

\- DS neu starten (Zahnstocher in "Reset")

30) Sichern des momentanen Grund-Standes bei einer Festplatte Da das Sichern (1:1) Stunden dauern würde, denke ich, das es reicht, den Stand auf den Datenbereich zu kopieren.

\- dd if=/dev/sda1 of=/media/daten/part1.img

\- DS neu starten (sync, sync, reboot)

Wichtig !!! Zum Booten des DS ohne Debian muss ein DHCP-Server laufen und es darf kein USB- Gerät angeschlossen sein.

#### Zusatz-Pakete installieren

Die meisten Anleitungen sind von "Alno" und "Apollo" - Danke und

1) Listen und Pakete aktualisieren - apt-get update - apt-get upgrade

2) Paket "apt-utils" (Programme für apt-get selbst) - apt-get -y install apt-utils

3) Paket "dialog" (einfaches Menüsystem - wird von einigen folgenden Paketen genutzt) - apt-get -y install dialog

4) Paket für den Befehl "lsusb" - apt-get -y install usbutils

5) Paket "proftpd" (FTP-Server) - cd /etc - die Datei hosts mit vi anpassen (folgende Zeile einfügen nach "127.0.0.1 localhost") 127.0.0.1 debian - apt-get -y install proftpd Im Menü dann "standalone" auswählen und danach "OK" (mit der Maus) - Benutzer "root" für FTP zulassen (gefährlich und nur im Heimnetz verwenden) - cd /etc/proftpd - die Datei proftpd.conf mit vi anpassen (folgende Zeile einfügen nach "DeferWelcome off") RootLogin on - cd /etc - die Datei ftpusers mit vi anpassen, Zeile "root" ausdokumentieren (root --> #root) - /etc/init.d/proftpd reload - /etc/init.d/proftpd start

6) Oscam Build Umgebung für CMake (unbedingte Vorraussetzung für Punkt "F. Oscam selber bauen") - apt-get -y install build-essential - apt-get -y install fakeroot - apt-get -y install subversion - apt-get -y install libpcsclite-dev - apt-get -y install libssl-dev - apt-get -y install cmake - apt-get -y install libusb-1.0-0-dev - Symbolische Links anlegen cd /usr/lib ln -s libcrypto.so.0.9.8 libcrypto.so.6 ln -s libssl.so.0.9.8 libssl.so.6

7) Paket "webmin" (Konfigurationsoberfläche über Browser) - apt-get -y install libauthen-pam-perl libio-pty-perl libnet-ssleay-perl - apt-get -y install openssl (vielleicht ist aber auch die neueste Version schon vorhanden) - apt-get -y install apt-show-versions - download webmin cd /tmp wget h\*\*p://prdownloads.sourceforge.net/webadmin/webmin\_1.520\_all.deb - webmin installieren cd /tmp dpkg -i webmin\_1.520\_all.deb Aufruf der Oberfläche über einen Browser mit "[https://IP](https://IP) der DS:10000" Das ständige Suchen nach Updates im Hintergrund, läst sich im Webmin selber abstellen mit: Webmin (oben links) --> Webmin Configuration --> Background Status Collection --> Collect available package updates? auf "No" stellen

8 ) Paket "cron" (Jobsteuerung) - apt-get -y install cron

9) Paket "NFS Kernel Server" - apt-get -y install nfs-kernel-server nfs-common portmap - eventuell /etc/exports , /etc/hosts.allow und /etc/hosts.deny mit vi bearbeiten (oder über webmin)

10) Paket "NTFS" - apt-get -y install ntfs-3g - apt-get -y install ntfsprogs

11) Paket "Samba" - apt-get -y install samba-common-bin - apt-get -y install libcupsys2 samba samba-common - eventuell /etc/samba/smb.conf mit vi bearbeiten (oder über webmin)

12) Paket "MTD Tools" Manchmal ist es sinnvoller Devices (sda etc.) nicht mit "dd" zu sichern oder zu restaurieren, da "dd" eine interne Fehlerkorrektur hat. - apt-get -y install mtd-utils - sichern: nanddump - restaurieren: nandwrite

+   ) Listen, Pakete und Abhängigkeiten aktualisieren (in gewissen Zeitabständen)

\- apt-get update - apt-get upgrade - apt-get dist-upgrade


\====Oscam selber bauen (das Paket "Oscam Build Umgebung für CMake" muss bereits installiert sein)====

1) Oscam-Quellen ausschecken

```
 1: cd /media/daten
 2: svn co http://streamboard.tv/svn/oscam/trunk oscam-svn
```

2) Oscam bauen mit "cmake"

```
 1: cd /media/daten/oscam-svn
 2: mkdir build_dir
 3: cd /media/daten/oscam-svn/build_dir
```

mit vi eine Datei "install.sh" erstellen und folgende Zeilen einfügen:

```
 #!/bin/sh
 make clean
 cmake cmake ../
 make
 exit
```

\- Ausführungsrechte der Datei "install.sh" geben (chmod 755 install.sh)

\- Funktions-Umfang der Oscam konfigurieren (Komponenten auswählen mit Leertaste und mit Quit abspeichern)

```
  cd /media/daten/oscam-svn
 ./config.sh
```

\- Oscam bauen (Dauer circa 3 Minuten)

```
 cd /media/daten/oscam-svn/build_dir
 ./install.sh
```

Die fertige Oscam liegt dann in "/media/daten/oscam-svn/build\_dir"



#### Oscam ins System integrieren

1) Oscam nach /usr/local/bin kopieren und Rechte vergeben (chmod 755 oscam)

\- die selbstgebaute als Beispiel:

```
 cd /usr/local/bin
 cp -f /media/daten/oscam-svn/build_dir/oscam .
 chmod 755 oscam
```

2) Die Konfigurations-Dateien kommen nach /usr/local/etc

3) Automatisches Starten beim Booten des Systems

\- cd /etc/init.d

\- mit vi eine Datei "cardserver" erstellen und folgende Zeilen einfügen:

```
 #!/bin/sh
 ### BEGIN INIT INFO
 # Provides:  cardserver
 # Required-Start:
 # Required-Stop:
 # Default-Start: 2 3 4 5
 # Default-Stop: 0 1 6
 # Short-Description: Start-Oscam
 # Description:
 ### END INIT INFO
 case "$1" in
 start)
 if [ "`ps -ef | grep oscam | wc -l`" -lt 2 ]; then
 versuche=0
 ntpdate -b atom.uhr.de >/var/log/ntpdate.log 2>/dev/null
 while [ "`cat /var/log/ntpdate.log`" = "" ] ; do
 ntpdate -b atom.uhr.de >/var/log/ntpdate.log 2>/dev/null
 versuche=`expr $versuche + 1`
 if [ $versuche -gt 3 ]; then
 break
 fi
 done
 /usr/local/bin/cardserver_ctrl.sh &
 fi
 ;;
 stop)
 if [ "`ps -ef | grep oscam | wc -l`" -gt 1 ]; then
 kill -9 `ps -ef | grep cardserver_ctrl.sh | head -n1 | tr -s '[:blank:]' | cut -d" " -f2` 2>/dev/null
 kill -9 `ps -ef | grep oscam | head -n1 | tr -s '[:blank:]' | cut -d" " -f2` 2>/dev/null
 fi
 ;;
 restart)
 $0 stop
 sleep 10
 $0 start
 ;;
 *)
 echo "`basename $0`: Bad or no parameter"
 echo "Usage: `basename $0` start | stop | restart"
 exit 1
 esac
 exit 0
```



\- Ausführungsrechte der Datei "cardserver" geben

```
 chmod 755 cardserver
```

\- Verknüpfungen erstellen in den Start- und Stop-Verzeichnissen

```
 update-rc.d cardserver start
```

(eventuelle Warnungen ignorieren)

\- cd /usr/local/bin

\- mit vi eine Datei "cardserver\_ctrl.sh" erstellen und folgende Zeilen einfügen:



```
 #!/bin/sh
 echo "Start Cardserver Ctrl : `date`" >>/var/log/cardserver.log
 echo 2 > /proc/cpu/alignment
 chmod 755 /usr/local/bin/oscam
 while true ; do
 echo "Neustart Oscam `date`" >>/var/log/cardserver.log
 /usr/local/bin/oscam
 sleep 10
 done
 exit

```

\- Ausführungsrechte der Datei "cardserver\_ctrl.sh" geben (chmod 755 cardserver\_ctrl.sh) Der Wrapper startet jetzt die Oscam und startet sie auch wieder neu, wenn Oscam mal abgestürzt ist. Ab der Version 3037 kann somit übers WebIf mit dem Button "Shutdown" ein Restart der Oscam gemacht werden.

\- Reboot der DS (sync, sync, reboot) Danach sollte Oscam automatisch mitgestartet sein.

#### Nützliches und "kleine" Spielereien

1) ls in Farbe - cd /root

\- die Datei .bashrc mit vi anpassen

\- # löschen bei Zeilen 9-13 --> Ergebniss:

```
 # ~/.bashrc: executed by bash(1) for non-login shells.
 #
 #
 #
 #
 Note: PS1 and umask are already set in /etc/profile. You should not
 need this unless you want different defaults for root.
 PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
 umask 022
 # You may uncomment the following lines if you want `ls' to be
 colorized:
 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -l'
 alias l='ls $LS_OPTIONS -lA'
 #
 # Some more alias to avoid making mistakes:
 # alias rm='rm -i'
 # alias cp='cp -i'
 # alias mv='mv -i'
```

2) Paket "Joe" (ein anderer Editor)

\- apt-get -y install joe

3) Paket "Midnight Commander" (ähnlich dem Norton-Commander)

\- apt-get -y install mc

4) USB-Webcam mit Paket "webcam-server" und dem "Indianer"

\- apt-get -y install apache2-mpm-worker

\- apt-get -y install dov4l

\- USB-Webcam anschliessen und überprüfen, ob sie erkannt wird (dov4l -q)

\- apt-get -y install libv4l-0

\- apt-get -y install libjpeg62

\- Installieren des Webcam-Servers

```
 cd /tmp
 wget h**p://ftp.de.debian.org/debian/pool/main/w/webcam-server/webcam-
 server_0.50-3_armel.deb
 dpkg -i webcam-server_0.50-3_armel.deb
 cp -apr /usr/share/doc/webcam-server/applet/ /var/www/
```

\- mit vi die Datei "webcam.html" in /var/www/applet wie folgt ändern und die IP der DS eintragen:

```
 <html>
 <head>
 <title>WebCam</title>
 </head>
 <APPLET CODE = "WebCamApplet.class" archive="applet.jar" WIDTH = "640"
 HEIGHT = "480">
 <param name=URL value="http://Ip der DS:8888">
 <param name=FPS value="10">
 <param name=width value="320">
 <param name=height value="240">
 </APPLET>
 </body>
 </html>

```

\- in /root mit vi folgendes Start-Skript erstellen und Rechte vergeben (cd /root, vi webcam- server-start.sh, chmod 755 webcam-server-start.sh)

```
 #!/bin/sh
 export LD_PRELOAD=/usr//lib/libv4l/v4l1compat.so
 webcam-server -s -q 100 -g 320x240 -c "%d-%m-%Y %H:%M:%S"
 exit
```

\- DS rebooten (sync, sync, reboot)

\- Danach das Start-Skript starten (./webcam-server-start.sh)

\- Mit einem Internet-Browser aufrufen "[http://Ip](http://Ip) der DS/applet/webcam.html" und freuen

5) DS wird zur "Ampel"

\- Wer es mag, kann seine DS zum Blinken bringen.

```
 cd /tmp
 wget h**p://jeff.doozan.com/debian/linux-image-2.6.32-dockstar_1.1_armel.deb
 dpkg -i linux-image-2.6.32-dockstar_1.1_armel.deb
 cd /boot
 /usr/bin/mkimage -A arm -O linux -T kernel -C none -a 0x00008000 -e 0x00008000 -n Linux-
 2.6.32-5 -d /boot/vmlinuz-2.6.32-dockstar /boot/uImage
 /usr/bin/mkimage -A arm -O linux -T ramdisk -C gzip -a 0x00000000 -e 0x00000000 -n
 initramfs -d /boot/initrd.img-2.6.32-dockstar /boot/uInitrd
```

\- DS rebooten (sync, sync, reboot)

\- es gibt dann zwei Farben orange: /sys/class/leds/dockstar\\:orange\\:health/trigger grün: /sys/class/leds/dockstar\\:green\\:health/trigger

\- Ansteuerung mit "echo Schlüsselwort > Farbe"

\- Schlüsselwörter

```
 none --> Led aus
 default-on --> Led an
 timer, delay_on, delay_off --> blinkend
```



```
 Beispiel:
 - grün blinkend -->
 echo timer > /sys/class/leds/dockstar\:green\:health/trigger
 echo 200 > /sys/class/leds/dockstar\:green\:health/delay_on
 echo 200 > /sys/class/leds/dockstar\:green\:health/delay_off
```



```
 - grün an -->
 echo default-on > /sys/class/leds/dockstar\:green\:health/trigger
```

#### Tipps und Tricks

1) U-Boot tauschen

Wer seinen DS vor September 2010 installiert hat, kann eventuell nicht mehr booten, wenn mehr als ein USB-Device angeschlossen ist. Das "neuere" U-Boot behebt dieses Problem. Dafür muss die "originale" PogoPlug-Software gebooted werden. Es müssen sämtliche USB-Geräte von der DS entfernt werden und ein DHCP-Server vorhanden sein (Rebooten mit dem "Baumstamm"). Im Prinzip so, wie bei der Erst-Installation von Debian (nachschauen, welche IP die DS bekommen hat und mit "ssh" einloggen mit "root" und Passwort "stxadmin"). Danach das "neue" U-Boot installieren.

cd /tmp wget h\*\*p://jeff.doozan.com/debian/uboot/install\_uboot\_mtd0.sh chmod +x install\_uboot\_mtd0.sh ./install\_uboot\_mtd0.sh --noprompt

Bei der Abfrage "Would you like to disable the pogoplug services? \[Y/n\]" --> "Y" <Return> eingeben und "Beten". Nach Abschluss der Aktion den DS ausschalten (sync, sync, /sbin/halt). Jetzt können wieder alle USB-Geräte angeschlossen und mit dem "Baumstamm" die DS neu gestartet werden. Sollte der DHCP-Server jetzt nicht mehr für den "normalen" Betrieb benötigt werden, kann er jetzt wieder abgeschaltet werden. Wem dieser Weg zu risikoreich erscheint, der sollte lieber Debian komplett neu installieren.



### Auto-Installation per Script

Hier ist eine Anleitung für Anfänger. Es ist ein Installationscript was automatisch folgende pakete Installiert:

\-Oscam\_build umgebung

\-lsusb

\-Samba

\-Cron

\-Joe

\-Webmin

\-Proftp

\-Uhrzeit aktualisierung

\-Sprache auf Deutsch

\-Oscam+Autostart und Update funktion

\-Oscam Watchdog


Installation

```
Zum ausführen über Debian-Shell
cd /tmp
wget http://streamboard.tv/wiki/images/7/7c/Dockstar.sh.tar
tar xvf ./Dockstar.sh.tar
chmod +x Dockstar.sh
./Dockstar.sh
```

Wenn die Oscam\_build und die Oscam aus diesem Script installiert ist, lässt sich Oscam über

```
service oscamstart update
```

auf den Aktuellen stand bringen

oder auf gewünschte revision

```
service oscamstart update XXXX
XXXX = Rev nummer
```

Das Config.sh Script aufrufen

```
service oscamstart config
```

## Zusatzpakete

### Editor Joe

Dieser Editor ist für den Anfänger wesentlich leichter zu bedienen als vi und muß als erstes drauf.

#### Installation

```
apt-get install dialog (falls nicht schon bei vorherigen Paketen installiert)
apt-get install joe
```

#### Funktion

*Leer öffnen*

```
root@debian:/# joe
```

*oder Beispiel fstab editieren*

```
root@debian:/# joe /etc/fstab
```

*Verlassen ohne Änderungen*

```
[strg][c]
```

*verlassen mit speichern*

```
[strg][kx]
```

*Hilfemenü*

```
[strg][kh]
```

### killall nachinstallieren

Viele Scripte greifen auf killall zurück, das bei der Installation nicht standardmässig dabei ist. Enthält auch zusätzlich den pstree Befehl, der alle Prozesse in einer Baumstruktur auflistet.

#### Installation

```
apt-get install psmisc
```

## Kernel tauschen

in das tmp verzeichnis wechseln

```
cd /tmp
```

normalen kernel 2.6.35.4 runterladen

```
wget 193.16.217.9/files/dockstarkandm.deb
```

normalen kernel installieren/überschreiben

```
dpkg -i --force-overwrite dockstarkandm.deb
```


multimedia kernel 2.6.35.4 runterladen webcam / wireless

```
wget 193.16.217.9/files/dockstarheavy.deb
```

multimedia kernel installieren/überschreiben

```
dpkg -i --force-overwrite dockstarheavy.deb
```

!!! you must rename the old initrd or delete !!! (thanks to weo for the hint...)

```
mv /boot/uInitrd /boot/org.uInitrd
```

## LEDs benutzen

wenn ihr den kernel verwendet könnt ihr die leds steuern

```
   * none … die LED ist ausgeschaltet
   * nand-disk … LED leuchten bei Flash-Aktivität
   * timer … zeitgesteuertes Ein- und Ausschalten
   * heartbeat … pulsierende LED wie beim Herzschlag
   * default-on … LED immer an
```

Beispiel für den Start

einfügen in die /etc/rc.local damit stellt ihr die LED auf grün und schaltet den Herzschlag vom boot aus

```
echo default-on > /sys/class/leds/dockstar\:green\:health/trigger
echo none       > /sys/class/leds/dockstar\:orange\:misc/trigger
```

und wenn ihr sehen wollt wann ihr die Laufwerke und Netzteil beim beenden trennen könnt fügt diese zeile ein in /etc/init.d/halt unter

```
log_action_msg "Will now halt"
halt -d -f $netdown $poweroff $hddown
```

das

```
echo none > /sys/class/leds/dockstar\:green\:health/trigger
```

## Oscam Installieren

Vor dem Starten von Oscam muss folgender Befehl an der Console eingegeben werden:

```
echo 2 > /proc/cpu/alignment
```

Sonst kommt es zu unerklärlichen Fehlern wie
1) Falsche ECM-Zeiten (unerklärlich hoch oder negativ)
2) Ständige Logouts der User mit "c02 exit with signal 11"

## Tips/ Tricks

#### Feste Zuordnung der Reader über Udev-Rules

Mit dieser Udev-Rule bekommt der Reader Anhand seiner Serial einen festen Pfad zugeteilt.

Serial heraus bekommen:

in /dev/serial/by-id/

```
ls -l
```

Ausruck:

```
lrwxrwxrwx 1 root root 13 Jan  1  1970 usb-FTDI_FT232R_USB_UART_A60030E3-if00-port0 -> ../../ttyUSB1
lrwxrwxrwx 1 root root 13 Jan  1  1970 usb-FTDI_FT232R_USB_UART_A60030Ee-if00-port0 -> ../../ttyUSB0
```

in /etc/udev/rules.d/50-usb-reader-custom.rules

```
SUBSYSTEMS=="usb", KERNEL=="ttyUSB*", ATTRS{serial}=="A6003OE3", SYMLINK+="Reader1"
SUBSYSTEMS=="usb", KERNEL=="ttyUSB*", ATTRS{serial}=="A6003OEe", SYMLINK+="Reader2"
```

Die Reader heißen dann /dev/Reader1

#### USB Festplatten - Automatischer Spin-Down

Benötigte Pakete installieren:

```
apt-get update
apt-get install build-essential cvs
```

Tool herunterladen, compilieren und installieren:

```
cd /tmp
cvs -d:pserver:anonymous@hd-idle.cvs.sourceforge.net:/cvsroot/hd-idle login
# Passwort = Return
cvs -z3 -d:pserver:anonymous@hd-idle.cvs.sourceforge.net:/cvsroot/hd-idle co -P hd-idle
cd hd-idle
make
make install-debian
update-rc.d hd-idle defaults
```

Jetzt noch die config-Datei anpassen, START\_HD\_IDLE auf true setzen,
und # bei den Optionen weg + evtl Zeit anpassen in /etc/default/hd-idle:

```
# defaults file for hd-idle
# start hd-idle automatically?
START_HD_IDLE=true
# hd-idle command line options
# Options are:
#  -a <name>               Set device name of disks for subsequent idle-time
#                          parameters (-i). This parameter is optional in the
#                          sense that there's a default entry for all disks
#                          which are not named otherwise by using this
#                          parameter. This can also be a symlink
#                          (e.g. /dev/disk/by-uuid/...)
#  -i <idle_time>          Idle time in seconds.
#  -l <logfile>            Name of logfile (written only after a disk has spun
#                          up). Please note that this option might cause the
#                          disk which holds the logfile to spin up just because
#                          another disk had some activity. This option should
#                          not be used on systems with more than one disk
#                          except for tuning purposes. On single-disk systems,
#                          this option should not cause any additional spinups.
#
# Options not exactly useful here:
#  -t <disk>               Spin-down the specfified disk immediately and exit.
#  -d                      Debug mode. This will prevent hd-idle from
#                          becoming a daemon and print debugging info to
#                          stdout/stderr
#  -h                      Print usage information.
HD_IDLE_OPTS="-i 180 -l /var/log/hd-idle.log"
```

Jetzt noch ein beherztes

```
/etc/init.d/hd-idle restart
```

und schon gehen die HDDs nach 3 minuten schlafen.

Mehr Info zu hd-idle unter [http://hd-idle.sourceforge.net/](http://hd-idle.sourceforge.net/)

#### NFS Server einrichten

zuerst installieren wir

```
apt-get install nfs-kernel-server nfs-common portmap
```

dann wird in der /etc/exports die Freigabe eingerichtet Beispiel:

```
/mnt/platte *(rw,async,no_subtree_check,fsid=0,insecure)
```

und anwenden

```
exportfs -a -r
```

und noch ein Beispiel zum mounten auf einem anderen Rechner oder Box

```
mount files.first.com:/home /mnt/nfs
```

das wars

#### Statische IP einstellen

Die Datei /etc/network/interfaces nach folgendem Schema bearbeiten:

```
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
address 192.168.2.99
netmask 255.255.255.0
network 192.168.2.0
broadcast 192.168.2.255
gateway 192.168.2.1
```

#### Zeitzone einstellen

```
dpkg-reconfigure tzdata
```

#### Fehlende Hardwareuhr "nachrüsten"

Es ist schon ziemlich wichtig, das System mit der aktuellen Uhrzeit zu betreiben. Da der DockStar keine Hardwareuhr besitzt, startet das System zunächst mit Datum 1.1.1970. Voraussetzung ist, daß bereits beim Booten ein Netzzugang zu einem Zeitserver besteht. Die Zeit soll während des Bootvorgangs so früh wie möglich eingestellt werden, idealerweise sofort nach dem Hochfahren der Netzwerkverbindung.

Neues Script anlegen mit folgendem Inhalt /root/GetDate.sh:

```
#!/bin/sh
SERVER="atom.uhr.de"
( /bin/sleep 2s && /bin/ping -c 2 ${SERVER} 2>&1 >/dev/null && /usr/sbin/ntpdate -b ${SERVER} 2>&1 >/dev/null ) &
```

und ausführbar machen:

```
chmod +x /root/GetDate.sh
```

In der Datei "/etc/network/interfaces" den "eth0" Eintrag um folgende Zeile erweitern:

```
up /root/GetDate.sh
```

Also z.B.:

```
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
address 192.168.2.99
netmask 255.255.255.0
network 192.168.2.0
broadcast 192.168.2.255
gateway 192.168.2.1
up /root/GetDate.sh
```

Falls die IP via DHCP dynamisch bezogen wird könnte es sein, daß die LAN-Verbindung noch nicht steht. Dann sollte eine Erhöhung der 2s Wartezeit im Script helfen. Ebenso wird man vermutlich bei einer WLAN-Verbindung verfahren müssen.

Softwareseitig läuft die DockStar Systemzeit für einige Stunden recht genau, im Dauereinsatz ist es empfehlenswert, die Uhrzeit 2-3 mal am Tag upzudaten, z.B. mit einem Cronjob.

Danke an mmi aus dem sheevaplug.de Forum für die Anleitung !

#### Debian auf deutsch einstellen

```
apt-get install locales language-env
```

Danach legt man den Standard-Locales des Systems fest mit:

```
dpkg-reconfigure locales
```

vorzugsweise de\_DE.UTF-8 dazu noch de\_DE@euro


Jeder Nutzer, der seine eigene Locales dann definiert haben will, sollte

```
   set-language-env -R
```

ausführen. Das erzeugt Einträge in verschiedenen Text-Konfigurationsdateien. in ~/.bashrc :

```
   LC_MESSAGES=de_DE.UTF-8
   LC_CTYPE=de_DE.UTF-8
   export LC_MESSAGES LC_CTYPE
```

#### Apache SSL einrichten und Proxy für Oscam

***Zertifikat erstellen:***

```
mkdir -p /etc/apache2/ssl
openssl req -new -x509 -days 365 -nodes -out /etc/apache2/ssl/apache.pem -keyout /etc/apache2/ssl/apache.pem
```

Bei der Frage zum *Common Name (eg, YOUR name)* den Hostnamen der SSL-Website eintragen (myhost.dyndns.org) - spart Fehlermeldungen im Browser "Das Zertifikat wurde nicht für diese Seite ausgestellt..."

```
ln -sf /etc/apache2/ssl/apache.pem /etc/apache2/ssl/`/usr/bin/openssl x509 -noout -hash < /etc/apache2/ssl/apache.pem`.0
chmod 600 /etc/apache2/ssl/apache.pem
```

```
joe /etc/apache2/ports.conf
```

alt:

```
Listen *:80

#<IfModule mod_ssl.c>
#    Listen 443
#</IfModule>
```

neu:

```
Listen *:80
<IfModule mod_ssl.c>
    Listen 443
</IfModule>
```

Apache einmal durchstarten

```
/etc/init.d/apache2 reload
```

Modul laden

```
a2enmod ssl
/etc/init.d/apache2 force-reload
```

Virtuellen Host einrichten und Oscam Webif als proxy anstöpseln. Als Beispiel läuft das WebIf von Oscam hier auf Port 84 (evtl. anpassen). Wer keine Webseite auf diesem Virtual Host speichern möchte kann auch die Directories */var/www* etc. weglassen. Dort würde eine eventuelle Wbseite liegen. Wenn der Port des Virtual Host geändert werden soll muß dieser Port dann natürlich auch in */etc/apache2/ports.conf* bekannt gemacht werden. Ansonsten ist der VHost zwar da, aber Apache lauscht nicht an diesem Port.

```
joe /etc/apache2/httpd.conf
```

```
ProxyRequests off

<VirtualHost *:443>
 SSLEngine on
 SSLCertificateKeyFile /etc/apache2/myssl/server.cert.key
 SSLCertificateFile /etc/apache2/ssl/apache.pem
 <Directory /var/www>
 </Directory>
 <Directory /usr/lib/cgi-bin>
 </Directory>
 DocumentRoot /var/www
 ProxyPass /oscam/ http://127.0.0.1:84/
 ProxyPassReverse /oscam/ http://127.0.0.1:84/
</VirtualHost>

<Proxy *>
 Order deny,allow
 Allow from all
</Proxy>

```




Nun noch die Proxy Module aktivieren im Apache, entweder über die Console:

```
cd /etc/apache/mods-enabled
ln -s ../mods-available/proxy.conf
ln -s ../mods-available/proxy.load
ln -s ../mods-available/proxy_http.load
/etc/init.d/apache2 restart
```

Oder mit Webmin: Dazu Servers/ Apache Webserver Registerkarte "Global configuration" -> "Configure Apache Modules". Dort anhaken "proxy" und "proxy\_http". Speichern und rechts oben Apache neu starten.

Oscam WebIf sollte nun verfügbar sein unter https://plugIP/oscam/



#### Eine Desktopverbindung(XFCE4) über FreeNX herstellen

FreeNX ist eine kostenlose Verbindugssoftware für X-Consolen.FreeNX unterstützt KDE,GNOME,XDC und viele mehr.Der Vorteil von FreeNX ist das die verbindug über SSH hergestellt wird und verschlüsselt ist.Desweiteren lässt sich am Client die Verbindugsgeschwindigkeit einstellen z.B ADSL,ISDN,LAN

Schritt 1:Download der Lib-Sources

```
cd /mnt
mkdir nx
cd nx
wget http://64.34.161.181/download/3.4.0/sources/nxcomp-3.4.0-7.tar.gz
tar xfvz nxcomp-3.4.0-7.tar.gz
rm nxcomp-3.4.0-7.tar.gz
wget http://64.34.161.181/download/3.4.0/sources/nxproxy-3.4.0-2.tar.gz
tar xfvz nxproxy-3.4.0-2.tar.gz
rm nxproxy-3.4.0-2.tar.gz
wget http://64.34.161.181/download/3.4.0/sources/nxagent-3.4.0-11.tar.gz
tar xfvz nxagent-3.4.0-11.tar.gz
rm nxagent-3.4.0-11.tar.gz
wget http://64.34.161.181/download/3.4.0/sources/nxcompext-3.4.0-1.tar.gz
tar xfvz nxcompext-3.4.0-1.tar.gz
rm nxcompext-3.4.0-1.tar.gz
wget http://64.34.161.181/download/3.4.0/sources/nxscripts-3.4.0-1.tar.gz
tar xfvz nxscripts-3.4.0-1.tar.gz
rm nxscripts-3.4.0-1.tar.gz
wget http://64.34.161.181/download/3.4.0/sources/nxauth-3.4.0-3.tar.gz
tar xfvz nxauth-3.4.0-3.tar.gz
rm nxauth-3.4.0-3.tar.gz
wget http://64.34.161.181/download/3.4.0/sources/nxcompshad-3.4.0-3.tar.gz
tar xfvz nxcompshad-3.4.0-3.tar.gz
rm nxcompshad-3.4.0-3.tar.gz
wget http://64.34.161.181/download/3.4.0/sources/nx-X11-3.4.0-4.tar.gz
tar xfvz nx-X11-3.4.0-4.tar.gz
rm nx-X11-3.4.0-4.tar.gz
```

Schritt 2:Installation der benötigten Pakete für's Kompilen

```
apt-get install xutils-dev expect xorg-dev libjpeg-dev libpng-dev cdbs
apt-get install autotools-dev patchutils  autoconf bzip2 zlib1g-dev
apt-get install libpng12-dev libjpeg62-dev xlibs-dev libfreetype6-dev libmikmod2-dev
apt-get install libssl-dev libxaw7-dev build-essential fakeroot debhelper
apt-get install automake1.4 dpatch expect tcl8.4 xutils netcat xfonts-base lxrandr cups
```

Schritt 3:Pakete für den Desktop (XFCE4)

```
apt-get install xvfb x11vnc screen xfce4 xfce4-goodies tango-icon-theme

```

Kompilen der Lib's

```
cd nxcomp
./configure
make
(ca 30 min)

cd nxcompext
./configure
make
(ca 1min)

cd nxcompshad
./configure
make
(ca 1min)

cd nxproxy
./configure
make
(ca 1min)

cd nx-X11
make World
(ca 2-3std)
```

Schritt 4:Kompilen von FreeNX

```
wget http://download.berlios.de/freenx/freenx-server-0.7.3.tar.gz
tar xfvz freenx-server-0.7.3.tar.gz
cd freenx-server-0.7.3
patch < gentoo-nomachine.diff
wget http://computingplugs.com/files/nx_3.3.0.patch
patch < nx_3.3.0.patch
make; make install
cd ..
```

Schritt 5:Kopieren der Lib's

```
cp -a nx-X11/lib/X11/libX11.so* /usr/NX/lib
cp -a nx-X11/lib/Xext/libXext.so* /usr/NX/lib
cp -a nx-X11/lib/Xrender/libXrender.so* /usr/NX/lib
cp -a nxcomp/libXcomp.so* /usr/NX/lib
cp -a nxcompext/libXcompext.so* /usr/NX/lib
cp -a nxcompshad/libXcompshad.so* /usr/NX/lib
cp -a nx-X11/programs/Xserver/nxagent /usr/NX/bin
cp -a nxproxy/nxproxy /usr/NX/bin

ln -s /usr/NX/lib/libXrender.so.1.2.2 /usr/NX/lib/libXrender.so.1.2
```

Schritt 6:Der erste Start

Spätestens jetzt muss ein X-Desktop installiert sein(Gnome,KDE,XFCE4...)

```
cd /
cd usr/NX/bin
./nxsetup --install
N (Es sei denn man will sein eigenen Key verwenden)
```

Schritt 7:Autostart

```
cd /
cd etc/init.d
wget http://computingplugs.com/files/nxserver
chmod 755 nxserver
update-rc.d nxserver defaults
```

Schritt 8:Windows als Client

```
http://www.nomachine.com/download-package.php?Prod_Id=2131
Installieren
configure
Host = IP von DS
settings
Run Command :
    startxfce4
OK
Advanced
Haken nur bei "Enable SSL encryption all traffic"
OK
```

#### Eine Desktopoberfläche installieren und per VNC darauf connecten

Schritt 1: Installieren von xvfb (quasi die virtuelle Grafikkarte), Vnc, Screen und eines Desktops. Der Desktop kann natürlich frei gewählt werden, hier am Beispiel von XFCE4
Alles in allem so ca. 230 MB

```
apt-get update
apt-get install xvfb x11vnc screen xfce4 xfce4-goodies tango-icon-theme
```

Schritt 2: Xvfb starten
Dazu am besten eine eigene Screen Session starten:

```
screen -R xvfb
Xvfb :0 -screen 0 1024x768x16
```

Die Screensession mit STRG+A+D verlassen

Schritt 3: Den Desktop starten
User anlegen (falls nicht schon geschehen)

```
adduser desktop
# der Name desktop dient nur als Beispiel ;)
```

und den Desktop als User ( Nicht als root !!) starten:

```
chmod 777 /dev/pts/0
su - desktop -c "screen -R xfce4"
# desktop evtl. gegen den oben angelegten bzw. schon angelegten Benutzernamen auswechseln
export DISPLAY=:0
startxfce4
```

Die Screensession mit STRG+A+D verlassen

Schritt 4: Den VNC Server starten
Wieder mit eigener Screen Session:

```
screen -R vnc
x11vnc --forever -noxdamage
```

Die Screensession mit STRG+A+D verlassen

Jetzt kann man mit der IP des Dockstars und dem Port 5900 eine VNC Verbindung von einem anderen Rechner aus aufbauen und einen Desktop nutzen.


So kann es hinterher aussehen:

[![](/images/5/56/Screen.png)](/wiki/Datei:Screen.png)

# Installation Open WRT

## Basisinstallation

## Zusatzpakete

## Kernel kompilieren

## Oscam Installieren

## Tips/ Tricks

# Dockstar retten - neu flashen

# uBoot (mtd0) selbst erstellen

So erstellt man eine Datei namens uboot.mtd0.kwb , die man nach /dev/mtd0 flashen kann !

## Erstellen

```
apt-get install build-essential git
git clone git://git.denx.de/u-boot.git u-boot
cd u-boot
wget http://streamboard.tv/wiki/images/0/00/U-boot-files.tar.gz
tar xvzf U-boot-files.tar.gz
chmod +x doimage
patch -p1 < uboot.mtd0.patch
chmod +x mkDockstar.mtd0
./mkDockstar.mtd0
```

## Sichern des Originals

```
cd /tmp
wget http://jeff.doozan.com/debian/uboot/nanddump
chmod +x nanddump
./nanddump -nof mtd0.backup /dev/mtd0
./nanddump -nf mtd0.backup.oob /dev/mtd0
./nanddump -nof uboot-original -s 0 -l 0x80000 /dev/mtd0
```

Nicht vergessen die Dateien noch irgndwoanders hin zu sichern, da /tmp nach einem reboot wieder leer ist !

## Flashen

MTD Tools installieren, falls nicht schon geschehen

```
apt-get install mtd-utils
```

Die ersten 512 kb löschen

```
flash_erase /dev/mtd0 0 4
```

neuen uboot flashen

```
nandwrite /dev/mtd0 uboot.mtd0.kwb
```

Nun Daumen drücken und neu starten !!

**WENN BEIM LÖSCHEN ODER FLASHEN ETWAS SCHIEF GEHT HILFT NUR NOCH EIN JTAG !!!! BENUTZUNG AUF EIGENE GEFAHR !!!**