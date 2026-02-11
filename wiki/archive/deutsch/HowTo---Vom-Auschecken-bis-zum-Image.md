> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# HowTo - Vom Auschecken bis zum Image

## Inhaltsverzeichnis

+   [1 **Vorwort**](#Vorwort)
+   [2 **Allgemeines zu Tuxbox CVS**](#Allgemeines_zu_Tuxbox_CVS)
    +   [2.1 Was ist eigentlich CVS?](#Was_ist_eigentlich_CVS?)
    +   [2.2 Was ist eigentlich CDK?](#Was_ist_eigentlich_CDK?)
+   [3 **Vorbereitungen auf dem PC**](#Vorbereitungen_auf_dem_PC)
    +   [3.1 root oder user ?](#root_oder_user_?)
    +   [3.2 Tools (Prerequisiten)](#Tools_\(Prerequisiten\))
        +   [3.2.1 Debian](#Debian)
            +   [3.2.1.1 apt-setup](#apt-setup)
            +   [3.2.1.2 apt-update](#apt-update)
            +   [3.2.1.3 apt-upgrade](#apt-upgrade)
        +   [3.2.2 SuSE](#SuSE)
            +   [3.2.2.1 Yast](#Yast)
            +   [3.2.2.2 rpm](#rpm)
        +   [3.2.3 Andere Linux-Distributionen](#Andere_Linux-Distributionen)
            +   [3.2.3.1 Knoppix](#Knoppix)
                +   [3.2.3.1.1 Wie bekomme ich Knoppix auf meine Festplatte?](#Wie_bekomme_ich_Knoppix_auf_meine_Festplatte?)
                +   [3.2.3.1.2 Was ist typischerweise für Knoppix zu ändern um mit dem Compilieren loslegen zu können?](#Was_ist_typischerweise_für_Knoppix_zu_ändern_um_mit_dem_Compilieren_loslegen_zu_können?)
        +   [3.2.4 Cygwin unter Windows](#Cygwin_unter_Windows)
            +   [3.2.4.1 Platzhalter](#Platzhalter)
        +   [3.2.5 Streamboard VMware Beta-Buildumgebung](#Streamboard_VMware_Beta-Buildumgebung)
+   [4 **Vorbereitungen zum Compilieren**](#Vorbereitungen_zum_Compilieren)
    +   [4.1 Zwei wichtige Arbeits-Verzeichnisse anlegen](#Zwei_wichtige_Arbeits-Verzeichnisse_anlegen)
    +   [4.2 mklibs kopieren](#mklibs_kopieren)
    +   [4.3 Auschecken](#Auschecken)
    +   [4.4 Tarball erstellen](#Tarball_erstellen)
    +   [4.5 Tarball wiederherstellen](#Tarball_wiederherstellen)
    +   [4.6 Konfigurieren](#Konfigurieren)
+   [5 **Letzte Chance noch manuell ins Geschehen einzugreifen**](#Letzte_Chance_noch_manuell_ins_Geschehen_einzugreifen)
    +   [5.1 **Vor-Überlegung: Welche(s) FileSystem(e) nehmen?**](#Vor-Überlegung:_Welche\(s\)_FileSystem\(e\)_nehmen?)
    +   [5.2 Wo liegen die Vor- und Nachteile der Filesysteme?](#Wo_liegen_die_Vor-_und_Nachteile_der_Filesysteme?)
    +   [5.3 Jetzt wird gepatcht](#Jetzt_wird_gepatcht)
        +   [5.3.1 Kernel + U-Boot: JFFS2-Only](#Kernel_+_U-Boot:_JFFS2-Only)
        +   [5.3.2 Kernel + U-Boot: SquashFS](#Kernel_+_U-Boot:_SquashFS)
        +   [5.3.3 Kernel + U-Boot: SquashFS-LZMA](#Kernel_+_U-Boot:_SquashFS-LZMA)
        +   [5.3.4 Kernel + U-Boot: CramFS](#Kernel_+_U-Boot:_CramFS)
        +   [5.3.5 Busybox](#Busybox)
    +   [5.4 camd2 für Premiereempfang patchen](#camd2_für_Premiereempfang_patchen)
+   [6 **"make all" - Jetzt gehts los**](#"make_all"_-_Jetzt_gehts_los)
    +   [6.1 Was ist ein YADD, und was gibt man hier ein?](#Was_ist_ein_YADD,_und_was_gibt_man_hier_ein?)
    +   [6.2 Was gibt man für ein Flash-Image ein?](#Was_gibt_man_für_ein_Flash-Image_ein?)
+   [7 **Welche GUI nehmen (neutrino/enigma)?**](#Welche_GUI_nehmen_\(neutrino/enigma\)?)
    +   [7.1 make neutrino, make neutrino-all, make neutrino-flash-all, make enigma, make enigma-all, make enigma-flash-all, etc... Was denn jetzt?](#make_neutrino,_make_neutrino-all,_make_neutrino-flash-all,_make_enigma,_make_enigma-all,_make_enigma-flash-all,_etc..._Was_denn_jetzt?)
    +   [7.2 Ok, fertig... was nun ?](#Ok,_fertig..._was_nun_?)
        +   [7.2.1 Neutrino: Folgende Sachen noch Patchen, Kopieren in /cdkflash, Ucodes, folgende Verzeichnisse noch anlegen, blaaa](#Neutrino:_Folgende_Sachen_noch_Patchen,_Kopieren_in_/cdkflash,_Ucodes,_folgende_Verzeichnisse_noch_anlegen,_blaaa)
        +   [7.2.2 Enigma: Folgende Sachen noch Patchen, Kopieren in /cdkflash, Ucodes, folgende Verzeichnisse noch anlegen, blaaa](#Enigma:_Folgende_Sachen_noch_Patchen,_Kopieren_in_/cdkflash,_Ucodes,_folgende_Verzeichnisse_noch_anlegen,_blaaa)
        +   [7.2.3 Sonstiges: Lcars, make extra, plugins, blubb](#Sonstiges:_Lcars,_make_extra,_plugins,_blubb)
    +   [7.3 rcS, fstab, Ethernet-Files- und Configs](#rcS,_fstab,_Ethernet-Files-_und_Configs)
+   [8 **Auf der Fehlersuche**](#Auf_der_Fehlersuche)
    +   [8.1 Erste Hilfe...](#Erste_Hilfe...)
    +   [8.2 Der Trick mit dem "touch xyz"](#Der_Trick_mit_dem_"touch_xyz")
    +   [8.3 Alles nochmal überprüfen (prerequisiten, Rechte?, mklibs?, usw) =](#Alles_nochmal_überprüfen_\(prerequisiten,_Rechte?,_mklibs?,_usw\)_=)
    +   [8.4 make distclean <-- (oder wie heisst das nochmal?)](#make_distclean_<--_\(oder_wie_heisst_das_nochmal?\))
    +   [8.5 Neu compilieren, ohne nochmal den Crosscompiler & Co neu erstellen lassen zu müssen](#Neu_compilieren,_ohne_nochmal_den_Crosscompiler_&_Co_neu_erstellen_lassen_zu_müssen)
    +   [8.6 Zuvor erstellten Tarball nutzen, um was ver-sau-beuteltes nochmal neu zu starten](#Zuvor_erstellten_Tarball_nutzen,_um_was_ver-sau-beuteltes_nochmal_neu_zu_starten)
+   [9 **Image erstellen / Yadd erstellen**](#Image_erstellen_/_Yadd_erstellen)
    +   [9.1 uboot/ppcboot und FLFS! Was ist das? Wohin damit? Woher nehmen?](#uboot/ppcboot_und_FLFS!_Was_ist_das?_Wohin_damit?_Woher_nehmen?)
    +   [9.2 Image erstellen mkfs.jffs2 -be blaaa.. oder mksquashfs blaaa](#Image_erstellen_mkfs.jffs2_-be_blaaa.._oder_mksquashfs_blaaa)
    +   [9.3 Yadd erstellen (was muss wohin, welches Programm nehmen, etc.)](#Yadd_erstellen_\(was_muss_wohin,_welches_Programm_nehmen,_etc.\))
    +   [9.4 Nebs neutrino auch ein enigma Image erstellen lassen (ohne nochmal alles neu starten lassen zu müssen)](#Nebs_neutrino_auch_ein_enigma_Image_erstellen_lassen_\(ohne_nochmal_alles_neu_starten_lassen_zu_müssen\))
+   [10 **Flashen!**](#Flashen!)
    +   [10.1 Die Expertentools](#Die_Expertentools)
    +   [10.2 Der DBox2-Bootmanager](#Der_DBox2-Bootmanager)
    +   [10.3 Flashen ohne Bootmanager](#Flashen_ohne_Bootmanager)
    +   [10.4 Flashen vom Linux aus](#Flashen_vom_Linux_aus)
+   [11 **Ich will nachträglich was im Source ändern, und z.B. Neutrino neu compilieren**](#Ich_will_nachträglich_was_im_Source_ändern,_und_z.B._Neutrino_neu_compilieren)
    +   [11.1 Was ist ein .dep-File?](#Was_ist_ein_.dep-File?)
    +   [11.2 Was ist ein *diff* ?](#Was_ist_ein_diff_?)
    +   [11.3 Was ist ein Patch ?](#Was_ist_ein_Patch_?)
    +   [11.4 Datums/Uhrzeit-Problematik von Sourcen](#Datums/Uhrzeit-Problematik_von_Sourcen)
    +   [11.5 Makefiles.. Wat ist dat und wie sind die aufgebaut? Was muss man beachten?](#Makefiles.._Wat_ist_dat_und_wie_sind_die_aufgebaut?_Was_muss_man_beachten?)
+   [12 **Links**](#Links)
+   [13 **Credits**](#Credits)

# **Vorwort**

Worum geht es hier?

Es geht darum, sich eine eigene Linux-Firmware für seinen Receiver zu bauen. Dabei sind einige Hürden zu überwinden. Viele Leute geben bereits an dieser Stelle auf, da ihnen die Hürden einfach zu hoch sind. Selbst bei hundertprozentiger Einhaltung diverser Kurzanleitungen, treten oft dennoch Fehler, oder irgendwelche unvorhersehbaren Situationen auf, bei denen die meisten Anleitungen nicht weiterhelfen. Und somit wird das simple Erstellen einer eigenen Firmware zum Höllentrip durch den unglaublich grossen Cyberspace, auf der Suche nach der richtigen Antwort zum entsprechenden Problem. Dieses HowTo ist darauf ausgelegt, dass (möglichst) alle Fragen vor, während und nach dem Firmware-Selbstbau beantwortet werden.

Das Projekt "[Tuxbox](http://tuxbox.org)" (Linux auf einem DVB-Receiver) basiert auf einem Open-Source-Projekt, bei dem es darum ging, DVB-Dienste unter Linux zum Laufen zu bringen. Pionierarbeit leisteten (u.a.) die Metzler-Brüder mit ihren API-Treibern. Irgendwann 2001/2002 schraubte ein User (tmbinc, ein Pionier beim Tuxbox-Projekt, und späterer Initiator von enigma) an seiner DBox2 herum, und brachte sie in den sogenannten Debugmodus. Der Bootloader von Betaresearch selber konnte bis heute noch nicht gehackt, und demnach auch nicht ausgetauscht werden, aber der BR-Bootloader sprang auf diverse Standard-Protokolle an, die auch Linux beherrscht. Darauf baute dann Stück- für Stück "Tuxbox" auf. Die DBox2, welche von 3 verschiedenen Herstellern angeboten wurde, wurde plötzlich zum äussert beliebten Objekt vieler Hobby-Liebhaber, da sie (gegenüber der Betanova-Firmware - nun durch Linux aufgemotzt) wesentlich schneller, und vor Allem auch selbst-gestaltbar wurde. Sie wird mittlerweile nicht mehr hergestellt. Einige Receiver-Hersteller waren bereits zuvor am Linux-Projekt interessiert, doch als das Projekt Tuxbox so langsam erwachsen wurde, setzten einige Firmen auf Tuxbox.

Prima, denn mittlerweile kann man (mithilfe von Tuxbox) seine eigene Firmware für mehrere Receiver selber erstellen. Zb. für die Dreambox, Triple-Dragon, Reelbox, usw. Einige Treiber von einigen Herstellern sind nicht Open-Source (sondern Copyrighted). Es müssen die Original-Treiber der Hersteller implemetiert werden, was aber auch keine grosse Hürde darstellt. In diesem HowTo wird also nicht nur die DBox2 angesprochen, sondern auch andere Receiver. Nähres dazu ist hier zu lesen!

# **Allgemeines zu Tuxbox [CVS](http://de.wikipedia.org/wiki/Cvs)**

## Was ist eigentlich CVS?

Concurrent Version System! So ähnlich wie in diesem WIKI, können mehrere Autoren an diversen Source (hier Text)-Versionen rum-doktor'n. Hat sich ein Autor vertan, erzählt Unsinn, oder hat falsch geklickt, so kann man die vorige Version zurückholen. Denn vorige Verionen werden archiviert. Ist eine Änderung korrekt, und sinnvoll, bleibt sie solange im sogenannten *Head* bestehen, bis ein anderer seine neusten Änderungen uploaded.

Der *Head* ist bei der DBox2 vorzuziehen. Aber neben dem *Head* gibts auch noch Verzweigungen, namens *Branch*. Wer zB. für die Dreambox ein Image erstellen will, checkt den CVS-Stand des Dreambox-Branches aus. Hier vereinen sich Dreambox-spezifische Sourcen, mit denen vom aktuellen Head.

## Was ist eigentlich CDK?

Cross Developement Kit! Wozu braucht man das? Tja, man besitzt idR. einen x86-PC. Aber die Prozessoren in den Receivern besitzen meist einen PowerPC (ppc). Die "normale" Compiler-Umgebung bietet keine Möglichkeit, Programme zu compileren, die auf dem ppc laufen. Das CDK baut dafür einen Crosscompiler (Kreuzübersetzer für C und C++ zwischen x86 und ppc). Alles was dann durch diesen Compiler gejagt wird, kann der ppc ausführen (sofern keine Fehler drin waren \*g\*)

Das CDK baut auch einen Crosscompiler für Assembler; und den Stripper, der die sich ständig wiederholenden Tags aus den Binaries zieht, damit sie abschliessendend kleiner werden. Der Stripper kann auch Libs verkleinern. Das CDK ist also das Herzstück, bzw. der Schlüssel zur eigenen Firmware auf dem eigenen Receiver.

Das CDK ist also das Herzstück, bzw. der Schlüssel zur eigenen Firmware auf dem eigenen Receiver.

# **Vorbereitungen auf dem PC**

Um sich das CDK (und letztendlich ein Image) zu erstellen, benötigt man bestimmte Tools in bestimmten Versionen.

## root oder user ?

Antwort: **User!** Und zwar immer!

**Ausnahme**: Genau jetzt! Denn Tools- bzw. allgemein für-alle-User-geltende Software kann nur der root installieren. Für andere Dinge braucht man den root eigentlich nicht.

Wie werde ich root?

Es gibt mindestens vier Möglichkeiten

1.  Beim Einloggen in das Betriebssystem als root anmelden
2.  Als User die root-shell öffnen
3.  Normale shell öffnen und *sudo su*, *sudo* oder *su -* (das "-" ist für die Umgebungsvariablen von "root") eingeben.
4.  Root und User gleichzeitig und parallel sein.......

...... da es unter Linux mehrere *virtuelle Konsolen*, bzw. Desktops gibt, kann man auch gleichzeitig als user, wie als root angemeldet sein.

Unter einer grafischen Desktop-Umgebung, kann man mit der Tastenkombination

```
STRG+[F-Taste]
```

zwischen (meist) mindestens 4 grafischen Desktops F\[1-4\] umherschalten.

Mit der Tastenkombination

```
STRG+ALT+[F-Taste]
```

kann man zwischen weiteren Text-Modus-Konsolen umherschalten. Meist ist F7 zurück in den grafischen Modus. Mithilfe dieser Text-Modus-Konsolen kann man auch diverse, grafische Oberflächen **gleichzeitig** starten. Denn es gibt ja noch andere, als nur KDE. Die Anzahl der Konsolen ist von der Distribution abhängig. (In der [HowTo\_-\_Vom\_Auschecken\_bis\_zum\_Image#Streamboard VMWare Beta-Buildumgebung](#Streamboard_VMWare_Beta-Buildumgebung) wechselt man die Konsolen mit ALT + F\[1-6\])

Zurück zum Geschäft:

Wenn die Tools installiert sind, beendet man sein root-Dasein wieder, und loggt sich wieder als User ein, oder wechselt eben wieder auf seine User-Ebene/Konsole/Oberfläche zurück. In unserem Fall sollte alle weiteren USER Aktionen unter dem USER "sb" passieren. Aber zunächst mal zu den Tools, und wie man sie als root installiert.....

## Tools (Prerequisiten)

Prerequisiten? Was'n das? Man stelle sich vor, man will einen Starwars-Film drehen, und kein Schauspieler hat ein Laserschwert zur Verfügung. Damit der Film rockt, braucht jeder Starwars-Schauspieler auch die Requisite "Laserschwert".

So ähnlich ist es auch mit den Prerequisiten, die für Tuxbox benötigt werden. Fehlt dem eigenen Linux-System auf dem PC ein Tool, dann klappt das nicht mit dem Firmware-Selbstbau.

Laut [\[1\]](http://cvs.tuxbox.org/cgi-bin/viewcvs.cgi/tuxbox/cdk/doc/INSTALL.en?rev=HEAD) muss man folgende Prerequisten an Bord haben:

+   cvs
+   autoconf >= 2.57a
+   automake >= 1.8
+   libtool >= 1.4.2
+   gettext >= 0.12.1
+   make >= 3.79
+   makeinfo (texinfo)
+   tar
+   bunzip2 (bzip2)
+   gunzip (gzip)
+   patch
+   infocmp (ncurses-bin / ncurses-devel)
+   gcc 2.95 or >= 3.0
+   g++ 2.95 or >= 3.0
+   flex
+   bison
+   pkg-config
+   wget
+   libpng2 or libpng3 (DirectFB)

Abweichend davon wird zudem noch folgendes benötigt:

+   fakeroot
+   mksquashfs >= 2.1
+   mkcramfs
+   mkfs.jffs2

Es gibt im Tuxbox-CVS den [toolchecker](http://cvs.tuxbox.org/cgi-bin/viewcvs.cgi/tuxbox/hostapps/toolchecker/?only_with_tag=MAIN) (Bashskript), welcher die meisten dieser Versionsstände automatisch ermittelt. Man lädt sich das Skript auf den lokalen Rechner, ändert die Rechte auf *ausführbar* (chmod +x toolchecker.sh) und startet es. Dann vergleicht man einfach die ermittelten Versionen mit den hier gelisteten. Ist eine Prerequisite nicht vorhanden, oder hat eine kleinere Versionsnummer, muss man diese noch nachinstallieren/updaten. Wird keine Version angegeben: Nicht schlimm. Nur vorhanden sein muss es. Wer bereits das CVS ausgecheckt hat, hat den Toolchecker bereits auf seinem PC und kann ihn somit so ausführen

```
sb@build:# /tuxbox-cvs/hostapps/toolchecker/toolchecker.sh
```

Sollte eine Prerequisite nicht vorhanden sein, so muss sie über die entsprechend in der Distribution vorhandenen Installationstools installiert werden. Die nachfolgenden Sektion behandelt die Vorgehensweise bei einigen dieser Distributionen.



### Debian

Unter Debian [http://www.debian.de](http://www.debian.de) gibt es das Toolset apt-\* zur Verwaltung von Programmen. Mit apt-cache search kann ich z.B. nach Programmen suchen, mit apt-get install Programme installieren. Des Weiteren existiert mit dem Tool aptitude auch die Möglichkeit, Pakete über ein Menüsystem auszuwählen.

#### apt-setup

*apt-setup* dient zum Konfigurieren des Internetzugangs und der Protokolle für das Updaten der einzelnen Softwarepakete. In den meisten Fällen wurde diese Konfiguration bereits bei der Installation von Debian vorgenommen und muss somit nur dann erneut aufgerufen werden, wenn etwas nicht wie gewünscht funktioniert. Man kann generell zwischen cdrom, ftp, http oder einem Dateisystem als Downloadquelle auswählen. Wenn man eine Internetanbindung (xDSL) hat, sollte man sich entweder für ftp oder http entscheiden. Als nächstes wählt man das Land, in dem man sich befindet. Dadurch wird im nächsten Schritt dann ein Server aus deiner Nähe ausgewählt. Am Ende wird von diesem Server die aktuelle Paketliste geladen und lokal abgespeichert. Evtl. kann man noch zusätzliche Quellen angeben.

#### apt-update

Da sich bei den Softwarepaketen immer wieder was verändert und Neuerungen/Bugfixes hinzukommen, ändert sich auch die Version der einzelnen Pakete. Durch ein

```
root@build:~# apt-get update
```

wird von dem oben eingestellten Server die aktuelle Paketliste geladen. Diese wird dann im nächsten Schritt benötigt.

#### apt-upgrade

!!ACHTUNG!! Hier ist Vorsicht geboten. Dieser Befehl zieht alle installierten Pakete auf die aktuelle Version. Dies ist jedoch nicht gewünscht. Man wird jedoch gefragt, ob man dies wirklich machen möchte. Seht euch die Pakete an, die upgedatet werden, ihr könnt mit CTRL-C immer noch abbrechen! Überlegt euch diesen Schritt gut und führt möglichst ein Backup durch.

### SuSE

Unter SuSE koennt ihr mit *rpm -q <paketname>* anhand o.a. Liste auch ohne toolchecker vergleichen welche Version des Pakets ihr installiert habt.

#### Yast

Ist ein Paket nicht installiert, am besten erstmal mit Yast schaun ob es überhaupt in der Distribution ist und ggf. nachinstallieren.

#### rpm

Mit dem Befehl

```
root@build:~# rpm -i <paketname>
```

könnt ihr ggf. manuell aus dem Internet heruntergeladene Pakete nachinstallieren.

### Andere Linux-Distributionen

#### Knoppix

KNOPPIX ist eine komplett von CD oder DVD lauffähige Zusammenstellung von GNU/Linux-Software mit automatischer Hardwareerkennung und Unterstützung für viele Grafikkarten, Soundkarten, SCSI- und USB-Geräte und sonstige Peripherie. KNOPPIX kann als produktives Linux-System for den Desktop, Schulungs-CD, Rescue-System oder als Plattform für kommerzielle Software-Produktdemos angepasst und eingesetzt werden. (Quelle: Knoppix-Homepage) Download auf der [Knoppix-Homepage](http://knopper.net/knoppix/)

##### Wie bekomme ich Knoppix auf meine Festplatte?

Grundsätzlich ist Knoppix für den Einsatz zum Erstellen eines Images geeignet; aufgrund der Tatsache, dass allerdings nicht alle benötigten Pakete enthalten sind und diese nach jedem Neustart wieder verlorengehen gehen wenn man sie nachinstalliert, ist eine Installation auf eine Festplatte mehr als empfehlenswert (außer für eventuelle Testzwecke).

+   Knoppix von CD/DVD starten
+   Shell öffnen

```
sb@build:# sudo knoppix-installer
```

oder

```
root@build:# knoppix-installer
```

eingeben und mit **\[Enter\]** bestätigen

+   den Anweisungen folgen

Hier mal ein *Hd Install HowTo* aus dem [Knoppix-Wiki](http://www.knoppix.net/wiki/Hd_Install_HowTo) (leider nur in Englisch) Hier noch ein [Video](http://www.irongeek.com/i.php?page=videos/knoppix1) zur HD-Istallation (auch Englisch)

##### Was ist typischerweise für Knoppix zu ändern um mit dem Compilieren loslegen zu können?

Man benötigt noch folgende Software die noch nicht in Knoppix5 enthalten ist:

+   bison
+   libpng2 or libpng3 (DirectFB)
+   libtool >= 1.4.2
+   makeinfo (texinfo)
+   pkg-config
+   flex

eventuell noch:

+   mksquashfs
+   mkfs.jffs2
+   mkcramfs

### Cygwin unter Windows

#### Platzhalter

### Streamboard VMware Beta-Buildumgebung

Um die Erstellung eines Images für Nicht-Linuxuser zu vereinfachen steht ein fertiges VMware-Image bereit, das bereits alle nötigen Voraussetzungen enthält. Näheres hierzu findet sich in diesem seperaten Artikel: [Streamboard Buildumgebung](/wiki/Streamboard_Buildumgebung "Streamboard Buildumgebung")

# **Vorbereitungen zum Compilieren**

Falls nicht schon geschehen, jetzt als User einloggen. Hier im Wiki heisst unser User "sb", und der PC auf dem das Linux läuft, wurde im Linux "build" getauft.

Anmerkung: Dieser Username erscheint auch später in Eurem Image

## Zwei wichtige Arbeits-Verzeichnisse anlegen

Die Variable $HOME kennt idR. jede Linux-Distribution von Haus aus. Sie zeigt auf das /home-Verzeichnis des derzeit angemeldeten Users. Jeder User hat ein eigenes Heimverzeichnis (sogar der root, auch wenn sein $HOME nicht unter /home zu finden ist). Gäbe es den User "Linuxfreak", und der PC würde unter Linux "MeinPC" heissen, und man wäre als "Linuxfreak" angemeldet, befände man sich nach dem Befehl....

```
cd $HOME
```

... im Heimverzeichnis des Users "Linuxfreak". Vor dem Eingabecursor stünde nun folgendes vorab:

```
Linuxfreak@MeinPC:#
```

Es empfiehlt sich die zwei wichtigen Verzeichnisse im /home-Verzeichnis des jeweiligen PC-Users anzulegen:

```
sb@build:# mkdir $HOME/tuxbox-cvs
sb@build:# mkdir $HOME/dbox2
```

Wenn man es so, wie hier beschrieben eintippt, geht man sicher, dass die beiden Verzeichnisse auch an der richtigen Stelle angelegt werden. Denn es könnte ja sein, dass man sich bei der Eingabe der beiden Befehle total verwurzelt in einem Sub-Sub-Sub-Verzeichnis befindet. Deswegen das $HOME davor. Die beiden Verzeichnisse können auch anders heissen, man muss sich aber JETZT für einen Namen entscheiden! Da aber folgende Texte in diesem HowTo sich stets auf diese Verzeichnisse beziehen (und auch wenig gegen einen anderen Namen spricht), wäre es empfehlenswert, es so zu machen, wie hier vorgeschlagen.

## mklibs kopieren

Die Datei mklibs muss noch entsprechend nach */usr/bin* kopiert werden (sofern noch nicht vorhanden; in der StreamboardBuildumgebung ist sie bereits vorhanden). Dazu gibt man folgendes ein:

```
sb@build:~# cp /tuxbox-cvs/hostapps/mklibs/mklibs.py /usr/bin/mklibs
sb@build:~# chmod 755 /usr/bin/mklibs
```

Es kann sein, dass man sich (um dies kopieren zu können) dafür kurzfristig als root einloggen muss, oder als Superuser. Diese mklibs.py ist für die libcrypto zuständig.

## Auschecken

Solltet ihr einen Proxy vorgeschaltet haben, so ist folgendes in eurer Shell einzugeben:

```
sb@build:# export http_proxy="eure_proxy_ip_:_port"
```

Bei einigen Distributionen wie z.B. SuSE braucht man den Proxy nicht extra anzugeben, wenn er unter Yast schon angegeben wurde.

Im Anschluss daran laden wir das CVS vom Tuxboxserver herunter:

```
sb@build:# export CVS_RSH=ssh
sb@build:# cd /tuxbox-cvs
sb@build:# cvs -d anoncvs@cvs.tuxbox.org:/cvs/tuxbox -z3 co -P .
```

Wenn ihr das CVS bereits heruntergeladen habt, so müsst ihr es nicht komplett nochmal neu runterladen sondern könnt auch einfach nur die neuen Dateien holen:

```
sb@build:# cvs -d anoncvs@cvs.tuxbox.org:/cvs/tuxbox -z3 up -dP .
```

## Tarball erstellen

Bevor man jetzt irgendwas anderes tut, sollt man sich erstmal einen Tarball von den ganzen runtergeladenen Daten erstellen. Warum? Falls man beim Editieren irgendwelcher Dateien Mist gebaut hat, muss man dann nicht mehr neu auschecken.

```
sb@build:# cd /
sb@build:# tar -cvf tuxbox-cvs_backup.tar ./tuxbox-cvs ./dbox2
```

Das "./" sollte man jeweils mit eingeben, damit man den Tarball später an einem anderen Ort/Rechner problemlos entpacken kann. Der Dateiname des .tar-Files kann frei gewählt werden. Es ist zu empfehlen, im Dateiname noch das Datum mit hinzuzufügen. ZB. *tuxbox-cvs\_backup\_200600912.tar*

## Tarball wiederherstellen

Damit werden die bestehenden Dateien wieder überschrieben.

```
sb@build:# cd /
```

oder

```
sb@build:# cd /wohin/auch/immer
```

```
sb@build:# tar xvf tuxbox-cvs_backup.tar
```

## Konfigurieren

Im Anschluss daran fehlt noch:

```
sb@build:# cd cdk
sb@build:# ./autogen.sh
sb@build:# ./configure --prefix=$HOME/dbox2 --with-cvsdir=$HOME/tuxbox-cvs --enable-maintainer-mode \
       --with-targetruleset=flash --disable-libcrypto
```

Wenn man das "--disable-libcrypto" weglässt, erstellt das CDK eine dicke, 700kB grosse Libcrypto-Lib. Das ist für ein kleinen FlashROM-Speicher 'ne Menge Holz, zumal es evtl. gar nicht gebraucht wird. Deswegen machen wir es anders: Wir "disablen" es hier, und erstellen es nachträglich. Wenn wir später (zb. die Evocamd) ins Image einbinden wollen, und dazu die Libs anpassen, wird nur ein geringer Teil der libcrypto (nur das, was benötigt wird) erstellt. Mehr dazu hier im Wiki. Für den HDD-IDE Support kann man noch "--enable-ide" anfügen.

Nun nur noch im cdk-Verzeichnis das Linuxdirectory generieren:

```
sb@build:# make .deps/linuxdir
```

# **Letzte Chance noch manuell ins Geschehen einzugreifen**

## **Vor-Überlegung: Welche(s) FileSystem(e) nehmen?**

Das, was alles später ins Image soll, ist bis zu 20MB gross. Aber wir haben nur 8MB im Flash der Dbox2 zur Verfügung. Deshalb gibt es komprimierte Dateisysteme ähnlich wie es komprimierte ZIP-Dateien gibt. Die Filesysteme, die sich am stärksten komprimieren lassen haben leider den Nachteil, dass sie nicht beschreibbar sind.

## Wo liegen die Vor- und Nachteile der Filesysteme?

Die beiden am besten komprimierenden Filesysteme sind CRamFS und SquashFS.

+   SquashFS mit LZMA-Unterstützung ist der Platzhirsch im wahrsten Sinne des Wortes. Ein Nachteil: Die DBox2 bootet langsamer, und alles wirkt etwas "hakelig", da der kleine Prozessor viel zu ackern hat, die Daten zu dekomprimieren (obwohl laut [\[2\]](http://www.beyondlogic.org/nb5/squashfs_lzma.htm) LZMA im Vergleich zu ZLib nur 1/10 des Speichers benötigt zum Dekomprimieren). Auf der Dreambox, Triple-Dragon, usw. merkt man es nicht. Zudem ist es ein nur-lesbares Dateisystem.
+   SquashFS mit der normalen ZLib-Komprimierung ist das gängigste Dateisystem. Der Betrieb unter der DBox2 ist dann auch von der Performance her akzeptabel. Allerdings komprimiert LZMA eben um die 10% stärker. Auch wieder nur-lesbar.
+   CramFS war früher das gängigste FS, und wird auch heute noch viel für die Dreambox benutzt. Die Komprimierung ist schwächer als bei den SquashFS-Formaten und die Geschwindigkeit etwas besser. Aber auch nur-lesbar.
+   JFFS2 ist das Filesystem, welches auch beschreibbar ist. Somit ist es der Gewinner unter allen Filesystemen, und man kann sich auch ein JFFS2-Only-Image bauen. Aber obwohl es zusätzlich noch eine *Realtime-Compress-Engine* besitzt, komprimiert es am schlechtesten. So ca. 14MB bekommt man ins JFFS2-Only rein. Es kann vorkommen, dass ein JFFS2-Image "platzt" (das Dateisystem lässt dann trotz Speicherplatz keine neuen Dateien oder Änderungen mehr zu) wenn es nahezu vollständig gefüllt ist. Dies ist allerdings durch diverse Verbesserungen und Patches in letzter Zeit relativ selten geworden.

Am besten ist also ein Mischsystem um die Vorteile der hohen Komprimierung und des schreibbaren Dateisystems zu kombinieren. Also eine Partition für die "grossen Brocken", die man eh nie ändert, und eine Partition mit JFFS2 für Konfigurationsdateien, Emus etc. Wenn man vor dem Partitionieren noch eine Menge nicht unbedingt benötigter Sachen rausschmeisst (Spiele, ungenutzte Skins, Hintergrundbilder, usw.), kann man (z.B.) die SquashFS-Partition kleiner ausfallen lassen. Dadurch kann man ein grösseres JFFS2 als zweite Partition anhängen.

Wenn man meint, ein gutes Gleichgewicht zwischen beiden Partitionen gefunden zu haben, so muss dazu zwingend der Kernel und das U-Boot angepasst werden (außer wenn man mit den *Default-Einstellungen* im CVS zufrieden ist)!

## Jetzt wird gepatcht

### Kernel + U-Boot: JFFS2-Only

Die Datei dbox2-flash.c muß geändert werden:

```
sb@build:# cd $HOME/tuxbox-cvs/cdk/linux-2.4.33.3/drivers/mtd/maps
```

Sucht diese Stelle in der Datei dbox2-flash.c:

```
static struct mtd_partition partition_info[]= {
	{
	.name		= "BR bootloader",
	.size		= 128 * 1024,
	.offset		= 0,
	.mask_flags	= MTD_WRITEABLE
	},
	{
	.name		= "FLFS (U-Boot)",
	.size		= 128 * 1024,
	.offset		= MTDPART_OFS_APPEND,
	.mask_flags	= 0
	},
	{
	.name		= "root (jffs2)",
	.size		= 7936 * 1024,
	.offset		= MTDPART_OFS_APPEND,
	.mask_flags	= 0
	},
	{
	.name		= "Flash without bootloader",
	.size		= MTDPART_SIZ_FULL,
	.offset		= 128 * 1024,
	.mask_flags	= 0
	},
	{
	.name		= "Complete Flash",
	.size		= MTDPART_SIZ_FULL,
	.offset		= 0,
	.mask_flags	= MTD_WRITEABLE
	}
};
```

**Linuxkernel erstellen:**

```
sb@build:# cd $HOME/tuxbox-cvs/cdk
sb@build:# make linuxkernel
```

**U-Boot für jffs2-Image erstellen:**

```
sb@build:# cd $HOME/tuxbox-cvs/boot/u-boot-config
sb@build:# rm -f u-boot.config
sb@build:# ln -s u-boot.jffs2.dbox2.h u-boot.config
sb@build:# cd $HOME/tuxbox-cvs/cdk
sb@build:# rm -f .deps/u-boot
```

```
sb@build:# make u-boot
```

```
sb@build:# cd $HOME/dbox2/tftpboot
sb@build:# cp u-boot $HOME/tuxbox-cvs/hostapps/mkflfs/
sb@build:# cd $HOME/tuxbox-cvs/hostapps/mkflfs
sb@build:# gcc -o mkflfs mkflfs.c minilzo.c
```

```
sb@build:# ./mkflfs 2x u-boot
sb@build:# cp flfs.img $HOME/dbox2/cdkflash/jffs2_2x_flfs.img
sb@build:# ./mkflfs 1x u-boot
sb@build:# cp flfs.img $HOME/dbox2/cdkflash/jffs2_1x_flfs.img
```

### Kernel + U-Boot: SquashFS

### Kernel + U-Boot: SquashFS-LZMA

### Kernel + U-Boot: CramFS

### Busybox

## camd2 für Premiereempfang patchen

Die Datei camd.c im Verzeichnis ~/tuxbox-cvs/apps/tuxbox/tools/camd/ gehört geringfügig angepaßt. Genaugenommen muß nur eine Abfrage auskommentiert werden. Nachfolgende Sequenz in eine Datei camd.c.diff kopieren

```
--- camd.c      2004-04-04 22:27:57.000000000 +0200
+++ camd_withP.c        2006-11-26 09:30:29.000000000 +0100
@@ -415,14 +415,14 @@
        pmt->ca_pmt_list_management = buffer[0];
        pmt->program_number = *(unsigned short *)&buffer[1];
        pmt->program_info_length = *(unsigned short *)&buffer[4] & 0x0fff;
-
+/*
        if ((pmt->program_number & 0xf000) == 0x0000) {
               printf("[camd] program number %04x unsupported due to missing parental control\n",
                                pmt->program_number);
                free(pmt);
                return -1;
        }
-
+*/
 #if 0
        printf("ca_pmt_list_management: %02x\n", pmt->ca_pmt_list_management);
        printf("program number: %04x\n", pmt->program_number);
```

und mit

```
patch -p0 -b camd.c camd.c.diff
```

übernehmen


siehe auch [HowTo\_-\_Vom\_Auschecken\_bis\_zum\_Image#Was\_ist\_ein\_diff\_.3F](#Was_ist_ein_diff_.3F) und [HowTo\_-\_Vom\_Auschecken\_bis\_zum\_Image#Was\_ist\_ein\_Patch\_.3F](#Was_ist_ein_Patch_.3F)

# **"make all" - Jetzt gehts los**

Bevor wir "make all" eingeben, sollten wir bedenken, dass evtl. 100 MB an Sourcen gesaugt werden müssen. Wenn wir die Sourcen bereits mal gesaugt hatten, müssen wir das nicht nochmal komplett wiederholen. Es kann sein, dass der aktuelle CDK-Stand einige, wenige NEUE Sourcen (Archive) saugt. Das ist zB. der Fall, wenn ein neuer Kernel im CDK aufgenommen wurde. Dann wird der komplette Kernel-Source gesaugt. Das sind gut 30 MB. Aber auch wenn sich einige Treiber (zB. PNG, oder MP3, oder sonstiges) im CDK erneuert haben, werden Sourcen neu gesaugt. FALLS man also auf seinem PC die ganzen Archive bereits zuvor runtergeladen hatte, empfiehlt sich nach der "autogen.sh", und der "configure"-Zeile ein Symlink zu einem Verzeichnis, in dem das ganze Zeug bereits liegt. Nehmen wir mal an, unter

```
$HOME/alter_versuch/tuxbox-cvs/cdk/Archive
```

wären die ganzen (bereits runtergeladenen) Archive, dann ertsellen wir einen Symlink, damit nur noch die \*neuesten\* Archive gesaugt werden...

```
cd $HOME/tuxbox-cvs/cdk
ln -s $HOME/alter_versuch/tuxbox-cvs/cdk/Archive $HOME/tuxbox-cvs/cdk/Archive
```

Bitte auf Gross/Kleinschreibung achten... Kontrolliert runterladen, können wir die neuen Archive (vor "make all") durch Eingabe von

```
sb@build/tuxbox-cvs/cdk# make download
```

Wenn nun ein Archiv nicht runterlädt, und mit einer Fehlermeldung abbricht, bemühen wir zB. Google. Wenn wir das vermisste Archiv gefunden haben, speichern wir es in entweder (weil wir "Neulinge" sind) im frischen Archiv-Verzeichnis, oder in dem ge-symlimkten (alten) Archiv-Verzeichnis.

Wiederholt solange "make download" eingeben, bis die Ausgabe sagt, es gäbe nix mehr zu tun... Nun sind wir ENDLICH bereit für ein:

```
sb@build/tuxbox-cvs/cdk# make all
```

Dies dauert je nach PC unter Linux etwa 70-120 Minuten. Wenn man "Neuling" ist, kann man auch durchaus direkt "make all" eingeben (zuvoriges "make download" weglassen. Das "make all" schubst dann auch die Archiv-Downloads an. Sofern man einen dicken DSL-Anschluss hat, und auch alle an-gepingten Sourcen/Archive-Server Online sind, läuft der ganze Prozess im Hintergrund, und man muss überhaupt nichts machen. Das wäre der optimale Fall...

## Was ist ein YADD, und was gibt man hier ein?

Yadd steht für "yet another dbox distribution" und stellt eine Zusammenstellung aller Dateien dar, die auch in einem Image enthalten wären. Allerdings wird es nicht auf die Dbox geflasht sondern direkt über das Netzwerk gebootet. Insbesondere zum Testen ist ein YADD-Image daher sehr empfehlenswert da der Flashvorgang entfällt!

## Was gibt man für ein Flash-Image ein?

# **Welche GUI nehmen (neutrino/enigma)?**

## make neutrino, make neutrino-all, make neutrino-flash-all, make enigma, make enigma-all, make enigma-flash-all, etc... Was denn jetzt?

## Ok, fertig... was nun ?

### Neutrino: Folgende Sachen noch Patchen, Kopieren in /cdkflash, Ucodes, folgende Verzeichnisse noch anlegen, blaaa

### Enigma: Folgende Sachen noch Patchen, Kopieren in /cdkflash, Ucodes, folgende Verzeichnisse noch anlegen, blaaa

### Sonstiges: Lcars, make extra, plugins, blubb

## rcS, fstab, Ethernet-Files- und Configs

# **Auf der Fehlersuche**

## Erste Hilfe...

## Der Trick mit dem "touch xyz"

## Alles nochmal überprüfen (prerequisiten, Rechte?, mklibs?, usw) =

## make distclean <-- (oder wie heisst das nochmal?)

## Neu compilieren, ohne nochmal den Crosscompiler & Co neu erstellen lassen zu müssen

## Zuvor erstellten Tarball nutzen, um was ver-sau-beuteltes nochmal neu zu starten

(Sourcen überkopieren; Datums/Zeit-Problematik bei Files)

siehe [HowTo\_-\_Vom\_Auschecken\_bis\_zum\_Image#Tarball\_wiederherstellen](#Tarball_wiederherstellen)

# **Image erstellen / Yadd erstellen**

## uboot/ppcboot und FLFS! Was ist das? Wohin damit? Woher nehmen?

Nun muss eine passender u-boot gebaut werden. Dazu muss die

\- u-boot.squashfs.dbox2.h in$HOME/tuxbox-cvs/boot/u-boot-config und link von der Datei auf u-boot.config $HOME/tuxbox-cvs/boot/u-boot-config> ln -s u-boot.squashfs.dbox2.h u-boot.config Editiert werden. anschliessend in /tucbox-cvs/cdk/

rm .deps/u-boot make u-boot

Dieser u-boot liegt dann in

/dbox2/tftpboot und muss nach

/$HOME/tuxbox-cvs/hostapps/mkflfs/ kopiert werden.

Dort erzeugt man dann zunächst mkflfs mit den folgenden befehlen

gcc -o mkflfs mkflfs.c minilzo.c dann je nach gewünschten flashbausteinanzahl

./mkflfs 2x u-boot

nun haben wir eine datei namens flfs.img und benennen diese entsprechend nach flfs1x.img oder flfs2x.img um. Kopieren diese Datei nach $HOME/dbox2/cdkflash

## Image erstellen mkfs.jffs2 -be blaaa.. oder mksquashfs blaaa

## Yadd erstellen (was muss wohin, welches Programm nehmen, etc.)

YADD (Yet Another Dbox Distribution) ist eine Zusammenstellung der Dateien, die zum Betrieb der dbox2 nötig sind. Die Dateien werden aber nicht in das Flash der dbox programmiert, sondern von einem externen Rechner über NFS geladen. Der Original-Bootloader (bmon) der dbox2 ist in der Lage, diesen Ladeprozess zu starten. Der Ablauf dabei ist wie folgt:

\- Der bmon sucht im Netzwerk per Broadcast nach einem bootp server

\- Der bootp Server erkennt die dbox an ihrer Hardwareadresse (MAC), weist ihr eine IP Adresse zu und gibt seine eigene IP bekannt

\- Der bootp Server übermittelt den Namen der Boot-Datei (u-boot)

\- bmon lädt dann u-boot per TFTP

\- u-boot wird gestartet und lädt die Dateien logo-lcd und logo-fb per TFTP (optional, wenn vorhanden)

\- u-boot lädt den Linux Kernel (kernel-yadd) per TFTP

\- Der Kernel wird von u-boot mit der nfsroot Option gestartet

\- Der Kernel "mountet" das nfsroot Verzeichnis als /

Zum Betrieb eines solchen Systems sind also ein bootp Server, ein TFTP Server und ein NFS Server erforderlich.



**Beispiel für die Konfiguration eines Linux Systems für YADD.**

Programmversionen:

bmon v1.0

bootpd v2.4.3

in.tftpd v0.42

nfsd v3 kernel 2.6.19



Parameter:

dbox IP: 192.168.1.103

dbox mac: 00:50:9c:01:02:02

server IP: 192.168.1.68

Verzeichnis von u-boot und kernel: /tmp/tftpboot

Rootverzeichnis: /yaddroot



Konfiguration von bootpd in /etc/bootptab

```
dbox:bf=u-boot:ha="00:50:9C:01:02:02":ip=192.168.1.103:sm=255.255.255.0
```



Konfiguration von nfsd in /etc/exports

```
/yaddroot 192.168.1.103(rw,no_root_squash,async)
```



Script zum Start

```
#!/bin/bash
/usr/sbin/bootpd -s -d 4 &
/usr/sbin/in.tftpd -l -s /tmp/tftpboot
```

Falls keine Ausgabe auf der Console gewünscht wird den Parameter -d 4 weglassen. Im verzeichnis /tmp/tftpboot des Servers müssen sich die Dateien u-boot, logo-lcd (optional), logo-fb (optional) und kernel-yadd befinden. In /yaddroot wird das komplette root Verzeichnis, normalerweise aus ~/dbox2/cdkflash/root kopiert.

ACHTUNG: Bei einem Warmstart der dbox funktioniert das ganze in der Regel nicht. Der bmon (zumindest v1.0 in Sagem) setzt die Broadcast Anfrage an den bootp Server nicht ab. Es wird dann normal aus dem Flash gebootet.

## Nebs neutrino auch ein enigma Image erstellen lassen (ohne nochmal alles neu starten lassen zu müssen)

# **Flashen!**

## Die Expertentools

## Der DBox2-Bootmanager

## Flashen ohne Bootmanager

## Flashen vom Linux aus

# **Ich will nachträglich was im Source ändern, und z.B. Neutrino neu compilieren**

Einfach im Source rumtippen. Anschliessen zurück zu */tuxbox-cvs/cdk* wechseln, und zB. *make neutrino* eingeben. Aber evtl. hat man ja nicht nur die Neutrino-Sourcen geändert. Dann könnte man auch *make all* eintippen. Ein *make all* ist aber nur zu empfehlen, wenn man ganz zu Anfang (nach dem auschecken und dem autogen und dem configure) auch *make all* angebenen hatte. Wenn nicht, dann wird der ganze Rest des CVS-Standes compiliert, der bis dato noch nicht compiliert wurde, und der in den makefiles der ersten Ebene enthalten ist.

**Doch was ist da los? Es tut sich nichts.** Im Log steht, es gäbe nichts zu tun. Tja, es muss noch das .dep-File gelöscht werden.

## Was ist ein .dep-File?

Ein depfile ist ein Indikator, der dem CDK vermittelt, das eine bestimmte Sache erledigt ist. Ist es vorhanden, denkt das CDK, es gäbe nichts zu tun, auch wenn inzwischen Sourcen geändert wurden.

**HEAD:**

Im obigen Beispiel liegt das .dep-File von Neutrino unter */home/tuxbox-verzeichnis/cdk/.deps/* Entweder man wechselt in das Verzeichnis hinein, tippt *rm neutrino* ein, wechselt wieder mit *cd ..* zurück, und gibt seine make Anweisung erneut ein, oder man tippt gleich *rm -f .deps/neutrino* ein, gefolgt von der make Anweisung.

**Dreambox-Branch:**

Wenn man für die Dreambox ausgecheckt hat, findet man das *.deps* Verzeichnis nicht. Die .deps liegen direkt im */home/tuxbox-verzeichnis/cdk/* Verzeichnis, und haben den Punkt vorne am Dateinamen. Hier wäre vor der make Anweisung *rm -f .neutrino* einzugeben.

## Was ist ein *diff* ?

Zunächst einmal zur Abkürzung: *diff* steht für *difference*, also Unterschied. Ein diff-File ist also eine Unterschieds-Datei. Will man eine Source editieren, empfiehlt es sich immer ein Backup zu machen. Wer zB. an der *enigma\_main.cpp* editiert, tippt zuvor noch ein:

```
sb@build:# cp enigma_main.cpp enigma_main_orig.cpp
```

Somit ist der Originalzustand gesichert, und es kann angstfrei editiert werden.

Wenn man fertig ist, möchte man evtl. noch nur die Änderungen zwischen dem neuen und dem alten Stand der Source sehen. Dazu gibt man ein:

```
sb@build:# diff -Naur enigma_main_orig.cpp enigma_main.cpp > enigma_main.cpp.diff
```

Fertig ist das diff-File.

## Was ist ein Patch ?

Genau das Gegenteil vom *diffen*. Zuvor haben wir gedifft. Jetzt wollen wir patchen. Nehmen wir an, es wurde gerade ganz frisch das CVS neu ausgecheckt, und die Datei *enigma\_main.cpp* ist noch im Originalzustand. Nun kopiert man das *enigma\_main.cpp.diff* in dasselbe Verzeichnis, und tippt ein:

```
sb@build:# patch -p0 -b enigma_main.cpp enigma_main.cpp.diff
```

Der Parameter *\-b* gibt an, dass noch ein Backup erstellt werden soll.

## Datums/Uhrzeit-Problematik von Sourcen

Zum Zweck, falls man eine Source versehentlich *kaputtrepariert* hat, haben wir uns ja zuvor ein Backupfile angelegt. Dieses besitzt grundsätzlich ein älteres Datum. Wir wollen den Originalzustand wiederhaben, und denken wir sind schlau, überschreiben enigma\_main.cpp mit dem Originalfile, und compilieren nochmal. Dann stellen wir fest, dass der *kaputtreparierte* Stand compiliert wurde. Wieso das?

Der Compiler denkt, dass die Source nix Neues zu bieten hat, weil sie älteren Datums ist. In diesem Fall einfach

```
touch enigma_main.cpp
```

und die Datei hat ein neues Datum bekommen.

## Makefiles.. Wat ist dat und wie sind die aufgebaut? Was muss man beachten?

# **Links**

Tuxbox-Plattform: [http://tuxbox.org/](http://tuxbox.org/)
CVS-Server: [http://cvs.tuxbox.org/](http://cvs.tuxbox.org/)
Mailing-List: [http://cvs.tuxbox.org/lists/](http://cvs.tuxbox.org/lists/)
TuxboxWIKI: [http://wiki.tuxbox.org/Hauptseite](http://wiki.tuxbox.org/Hauptseite)

# **Credits**

Admin
horsti666
limette
martie
Nessus
horsti58
...und ein paar Unbekannte, die nicht den Anmelden-Knopf gefunden haben


Viel Spass beim Image-Bau