> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/Self-made

## Inhaltsverzeichnis

+   [1 OSCam selbstgemacht](#OSCam_selbstgemacht)
    +   [1.1 Intro](#Intro)
    +   [1.2 Umgebung](#Umgebung)
    +   [1.3 Benötigte Pakete](#Benötigte_Pakete)
    +   [1.4 Verzeichnisstruktur](#Verzeichnisstruktur)
    +   [1.5 Sourcecode "*auschecken*" (SVN)](#Sourcecode_"auschecken"_\(SVN\))
        +   [1.5.1 Erstes Auschecken](#Erstes_Auschecken)
        +   [1.5.2 Update](#Update)
    +   [1.6 Kompilieren](#Kompilieren)
    +   [1.7 Für andere Plattformen kompilieren](#Für_andere_Plattformen_kompilieren)
        +   [1.7.1 Beispiel DM800](#Beispiel_DM800)
    +   [1.8 Build per Menü konfigurieren](#Build_per_Menü_konfigurieren)
        +   [1.8.1 Erklärungen zur menügeführten Konfiguration](#Erklärungen_zur_menügeführten_Konfiguration)

## OSCam selbstgemacht

### Intro

Siehe auch [(Cross-)compiling and toolchains](http://streamboard.de.vu/oscam/wiki/crosscompiling).

Nachfolgend wird der Weg vom Auschecken bis hin zur kompilierten OSCam **im Groben** beschrieben. Alle aufgeführten Linux-Beispiele und Code-Fragmente wurden auf einem Linux-PC mit **[Debian](http://www.debian.org/)** 6 getestet.

### Umgebung

Ein Linux-PC wird vorausgesetzt. Selbstverständlich **muss es kein physikalischer PC sein**, eine **virtuelle Maschine** (VM) macht es genauso gut [![](/images/f/f6/Smiley_wink.png)](/wiki/Datei:Smiley_wink.png). Der kostenlose [VMware Player](http://www.vmware.com/products/player/) ist z.B. sehr empfehlenswert.

Lade Dir ein [Linux](http://de.wikipedia.org/wiki/Linux-Distribution) Deiner Wahl herunter, entweder als ISO zum Installieren oder als fertige VM. Wie oben bereits erwähnt, basieren die *Linux-Inhalte* in diesem Artikel auf eine Debian-Distribution. Bei Ubuntu sollte es allerdings fast genauso funktionieren.

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Hinweis:**

Es wird von Usern berichtet, dass es im easybuild-script bei der Toolchain für mipsel-dreambox Systemfehler und Abbrüche beim Compilieren gibt, wenn auf dem PC ein 64bit Linux läuft. Diese Schwierigkeiten gibt es auf einem 32bit Linux nicht (man kann ja auch ein 32bit Linux auf einer 64bit Hardware laufen lassen). \[Dank an msrx111 für den Hinweis!\] Ich habe den Fehler gefunden und hier mit eingepflegt siehe 32Bit libz auf 64 Bit Systemen



### Benötigte Pakete

Folgende Pakete werden zum Erstellen von OSCam benötigt: <syntaxhighlight lang="bash">

1.  um Probleme zu vermeiden bitte die Pakete und Quellen erst updaten

apt-get update --fix-missing apt-get install cvs subversion apt-get install autoconf libccid automake libtool gettext make cmake apt-get install patch ncurses-bin gcc g++ flex bison pkg-config libpng3

1.  zlib (development headers) - zlib1g-dev

apt-get install tar bzip2 gzip zlib1g-dev

1.  libz 32Bit auf 64Bit Systemen wichtig bei Toolchain Benutzung

apt-get install lib32z1

1.  for sa and aes:

apt-get install libssl-dev libssl0.9.8

1.  for pcsc:

apt-get install libpcsclite1 libpcsclite-dev

1.  for smartreader branch:

apt-get install libusb-1.0-0 libusb-1.0-0-dev </syntaxhighlight>

### Verzeichnisstruktur

```text
root@srv01:/var/shares/linux# tree oscam -L 2 -d
oscam
+-- bin                # hier landen die fertigen OSCam`s
¦   +-- archive        # hierein archivieren wir "alte" OSCam-Binaries
+-- make               # in diesem Verzeichnis "machen" wir OSCam
+-- svn-sb             # hier wird der OSCam-Sourcecode abgelegt
¦   +-- branches       # NICHT manuell erstellen! Wird beim ersten Auschecken erstellt
¦   +-- tags           # NICHT manuell erstellen! Wird beim ersten Auschecken erstellt
¦   +-- trunk          # NICHT manuell erstellen! Wird beim ersten Auschecken erstellt
+-- toolchains         # optional, dient zum Erstellen der OSCam für andere Plattformen - Cross-Compiling
    +-- mipsel         # optional - mipsel-Toolchain, z.B. für Dream-Boxen
    +-- ppc            # optional - ppc-Toolchain, z.B. für die DBox2
    +-- tdt            # optional - sh4-Toolchain, z.B. für Kathrein-Boxen
```

### Sourcecode "*auschecken*" (SVN)

#### Erstes Auschecken

Wir holen zum ersten Mal die OSCam-Sourcen. Dies machen wir nur einmal: <syntaxhighlight lang="bash"> oscamRoot='/var/shares/linux/oscam' # anpassen! svnDir='svn-sb' # anpassen! cd $oscamRoot svn co [http://streamboard.de.vu/svn/oscam](http://streamboard.de.vu/svn/oscam) $svnDir </syntaxhighlight>

#### Update

Nachdem wir die OSCam-Sourcen einmal komplett geholt haben, müssen wir unser lokales [Repository](http://de.wikipedia.org/wiki/Repository) nur noch aktualisieren, wenn sich am Quellcode etwas geändert hat: <syntaxhighlight lang="bash"> oscamRoot='/var/shares/linux/oscam' svnDir='svn-sb' svnBranch='trunk' cd $oscamRoot svn up $svnDir/$svnBranch </syntaxhighlight>

### Kompilieren

Es ist absolut nichts magisches und in ein paar Sekunden erledigt [![](/images/f/f6/Smiley_wink.png)](/wiki/Datei:Smiley_wink.png): <syntaxhighlight lang="bash">

1.  Variablen anpassen! \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

oscamRoot='/var/shares/linux/oscam' ver='1.20' # ggf. anpassen; WIRD NUR IM DATEINAMEN VERWENDET, BEEINFLUSST NICHT DIE AUSZUCHECKENDE OSCAM-VERSION! svnDir='svn-sb' svnBranch='trunk' svnBuildDir=

1.  ODER wenn wir von einem bestimmten Zweig bauen moechten...
2.  ver='1.10'
3.  svnBranch='tags'
4.  svnBuildDir='1.10'
5.  \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

cd $oscamRoot

1.  aktuelle Sourcen auschecken \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

svn up $svnDir/$svnBranch

1.  "alte" OSCam\`s archivieren (optional) \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

mv $oscamRoot/bin/oscam\* $oscamRoot/bin/archive/

cd $oscamRoot/make

1.  i686 \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
2.  BENOETIGTE MODULE ANPASSEN!

rm -fr $oscamRoot/make/\* cmake -DWEBIF=1 -DHAVE\_DVBAPI=0 -DIRDETO\_GUESSING=1 -DCS\_ANTICASC=1 -DWITH\_DEBUG=1 -DCS\_WITH\_DOUBLECHECK=1 -DCS\_LED=0 -DQBOXHD\_LED=0 -DCS\_LOGHISTORY=1 -DWITH\_SSL=0 \\

```
     -DMODULE_CAMD33=0 -DMODULE_CAMD35=1 -DMODULE_CAMD35_TCP=0 -DMODULE_NEWCAMD=1 -DMODULE_CCCAM=1 -DMODULE_GBOX=1 -DMODULE_RADEGAST=1 -DMODULE_SERIAL=1 -DMODULE_MONITOR=1 -DMODULE_CONSTCW=1 \
     -DREADER_NAGRA=1 -DREADER_IRDETO=1 -DREADER_CONAX=1 -DREADER_CRYPTOWORKS=1 -DREADER_SECA=1 -DREADER_VIACCESS=1 -DREADER_VIDEOGUARD=1 -DREADER_DRE=1 -DREADER_TONGFANG=1 \
     -DCMAKE_BUILD_TYPE=Debug \
     -DLIBUSBDIR=/usr -DCS_CONFDIR=/var/keys ../$svnDir/$svnBranch/$svnBuildDir
```

1.  wenn mehrere CPU-Kerne zur Verfügung stehen...

make -j4 # wir nutzen 4 CPU-Kerne zum Kompilieren

1.  ...ansonsten nur "make" ausführen
2.  erstellte Binaries verschieben... \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

if \[ -x "oscam" \]; then mv -f oscam ../bin/oscam-i686-$ver-$(svnversion -nc ../$svnDir/$svnBranch/$svnBuildDir | cut -d ':' -f 2); fi; if \[ -x "utils/list\_smargo" \]; then mv -f utils/list\_smargo ../bin/; fi; </syntaxhighlight>

### Für andere Plattformen kompilieren

[Cross-Compiling](http://de.wikipedia.org/wiki/Cross-Compiler) ist das magische Wort. Um OSCam für andere Plattformen zu kompilieren sind so genannte [Toolchains](http://de.wikipedia.org/wiki/Toolchain) notwendig. Einige Toolchains und weitere Informationen zum "***Cross-Compiling***" findest Du [**»hier«**](http://www.streamboard.tv/oscam/wiki/crosscompiling "streamboard:oscam/wiki/crosscompiling").

#### Beispiel DM800

Toolchain-Datei:

```
# toolchain-mipsel.cmake
set (OSCAM_SYSTEM_NAME Tuxbox)
set (CMAKE_SYSTEM_NAME Linux)
set (CMAKE_C_COMPILER /var/shares/linux/oscam/toolchains/mipsel/bin/mipsel-unknown-linux-gnu-gcc)
set (CMAKE_SYSTEM_PROCESSOR mips)
```

Auschecken und kompilieren: <syntaxhighlight lang="bash">

1.  Variablen anpassen! \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

oscamRoot='/var/shares/linux/oscam' ver='1.20' # dient nur fuer den Dateinamen svnDir='svn-sb' svnBranch='trunk' svnBuildDir=

1.  \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

cd $oscamRoot

1.  aktuelle Sourcen auschecken \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

svn up $svnDir/$svnBranch

1.  "alte" OSCam\`s archivieren (optional) \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

mv $oscamRoot/bin/oscam\* $oscamRoot/bin/archive/

cd $oscamRoot/make

1.  mipsel \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

rm -fr $oscamRoot/make/\*

1.  BENOETIGTE MODULE ANPASSEN!

cmake -DWEBIF=1 -DHAVE\_DVBAPI=1 -DIRDETO\_GUESSING=1 -DCS\_ANTICASC=1 -DWITH\_DEBUG=1 -DCS\_WITH\_DOUBLECHECK=1 -DCS\_LED=0 -DQBOXHD\_LED=0 -DCS\_LOGHISTORY=1 -DWITH\_SSL=0 \\

```
     -DMODULE_CAMD33=0 -DMODULE_CAMD35=1 -DMODULE_CAMD35_TCP=0 -DMODULE_NEWCAMD=1 -DMODULE_CCCAM=1 -DMODULE_GBOX=0 -DMODULE_RADEGAST=0 -DMODULE_SERIAL=0 -DMODULE_MONITOR=1 -DMODULE_CONSTCW=0 \
     -DREADER_NAGRA=1 -DREADER_IRDETO=1 -DREADER_CONAX=0 -DREADER_CRYPTOWORKS=0 -DREADER_SECA=0 -DREADER_VIACCESS=0 -DREADER_VIDEOGUARD=1 -DREADER_DRE=0 -DREADER_TONGFANG=0 \
     -DLIBUSBDIR=/var/shares/linux/oscam/lib-mipsel/usr -DCS_CONFDIR=/usr/keys -DCMAKE_TOOLCHAIN_FILE=../toolchains/mipsel/toolchain-mipsel.cmake ../$svnDir/$svnBranch/$svnBuildDir
```

make -j4 if \[ -x "oscam" \]; then mv oscam ../bin/oscam-mipsel-$ver-$(svnversion -nc ../$svnDir/$svnBranch/$svnBuildDir | cut -d ':' -f 2); fi; </syntaxhighlight>

### Build per Menü konfigurieren

Wenn man immer **nur für eine Plattform baut**, kann man die Konfiguration auch über ein Menü einstellen. Somit lassen sich die o.a. Parameter bei den "cmake"-Beispielen ersparen.

Um das Menü-Skript auszuführen: <syntaxhighlight lang="bash"> cd $oscamRoot/$svnDir/trunk/ ./config.sh </syntaxhighlight>

#### Erklärungen zur menügeführten Konfiguration

| Parameter | Erklärung |
| --- | --- |
| Webif support | OSCam wird mit Webinterface kompiliert (Überwachung und Einstellung über Browser somit möglich) |
| OpenSSL support | Erlaubt die Nutzung von https für das Webinterface und damit einen verschlüsselten Zugriff.
Andernfalls steht nur reines http zur Verfügung. Des Weiteren werden interne Cryptoroutinen nicht mehr verwendet sondern stattdessen auf OpenSSL zurückgegriffen.

 |
| Dvbapi support | Erlaubt die direkte Dekodierung des laufenden Fernsehprogramms auf bestimmten unterstützen Receivern.

Andernfalls muss ein separater EMU (mgcamd, cccam, camd3, etc.) dafür verwendet werden der sich dann zu OSCam verbindet.

 |
| Gbox support | Ein CS Protokoll |
| Anticasc support | Anticascading-Support über die Configdatei oscam.ac.

Man kann damit verhindern, dass ein Client weitershared (wird erkannt über die Anzahl der Requests innerhalb einer Zeitspanne). Siehe [OSCam/de/Config/oscam.ac](/wiki/OSCam/de/Config/oscam.ac "OSCam/de/Config/oscam.ac")

 |
| ECM doublecheck | Erlaubt die Benutzung des double\_check-Parameters.

Damit werden ECMs+DCWs immer von zwei (oder mehr) Receivern abgefragt um sicherzugehen, dass das Ergebnis identisch ist.

 |
| Irdeto guessing | Erlaubt die Nutzung der irdeto.ird um eine Irdeto guessing table zu hinterlegen. |
| Debug | Erweiterte Fehlerausgaben sind im Betrieb möglich. |
| LED support | LED der Dockstar wird angesteuert |
| Qboxhd-LED support | LED der QBoxHD wird angesteuert |
| CS\_Log history | Das Log wird gespeichert. Wird benötigt, um Ausgaben der Zugriffe im Webinterface zu erhalten. |
| Monitor | Man kann mit einem separaten Monitorprogramm (z.B. Micromon) die Ausgaben der Oscam anzeigen lassen (Alternative/Ergänzung zum Webinterface).

Der Monitor Port wird in der oscam.config eingestellt.

 |
| Camd33 | CS Protokoll |
| Camd35 UDP | CS Protokoll |
| Camd35 TCP | CS Protokoll |
| Newcamd | CS Protokoll |
| Cccam | CS Protokoll |
| Radegast | CS Protokoll |
| Serial | wird benutzt wenn ein Receiver über ein serielles Kabel mit oscam verbunden wird |
| ConstCW | ein "Cryptsystem" bei dem immer das gleiche ControlWord verwendet wird. |
| Cardreader | OSCam wird als Cardreader kompiliert |
| Die folgenden Verschlüsselungssysteme mit zugehörigen Karten kann man hier einsehen: [Card List](http://www.streamboard.tv/oscam/wiki/CardsList "streamboard:oscam/wiki/CardsList")

**WICHTIG!** Wenn man OSCam als Client kompiliert, der auch EMMs senden soll, dann muss zwingend das jeweilige Kartensystem mitkompiliert werden.

 |
| Nagra | OSCam kann Nagra Karten auslesen. |
| Irdeto | OSCam kann Irdeto Karten auslesen. |
| Conax | OSCam kann Conax Karten auslesen. |
| Cryptoworks | OSCam kann Cryptoworks Karten auslesen. |
| Seca | OSCam kann Seca Karten auslesen. |
| Viaccess | OSCam kann Viacess Karten auslesen. |
| Videoguard | OSCam kann Videoguard Karten auslesen. |
| Dre | Auch ein Crypt-System für Karten. |
| Tongfang | Auch ein Crypt-System für Karten. |