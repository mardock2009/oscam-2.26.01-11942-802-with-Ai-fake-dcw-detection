> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/Which plattforms are supported

## Inhaltsverzeichnis

+   [1 Which plattforms are supported?](#Which_plattforms_are_supported?)
    +   [1.1 Linux](#Linux)
    +   [1.2 Windows](#Windows)
        +   [1.2.1 Cygwin](#Cygwin)
        +   [1.2.2 Cardserver start as a service](#Cardserver_start_as_a_service)
            +   [1.2.2.1 Voraussetzungen](#Voraussetzungen)
            +   [1.2.2.2 Einrichtung des Dienstes](#Einrichtung_des_Dienstes)
            +   [1.2.2.3 Konfiguration des Dienstes in der Registry](#Konfiguration_des_Dienstes_in_der_Registry)
            +   [1.2.2.4 Starten und Prüfen](#Starten_und_Prüfen)
            +   [1.2.2.5 Beenden des Dienstes](#Beenden_des_Dienstes)
    +   [1.3 Mac OS X](#Mac_OS_X)

## Which plattforms are supported?

### Linux

```
ARM Coolstream
ARM Dockstar Openwrt
ARM NSLU Openwrt
ARM Slug OS
intel Mac OS X
i386/i686
i386/i686 DD-WRT_X86
Mips Fritzbox / TP-Link WRT1043NS
Mipsel AZbox
Mipsel Fritzbox
Mipsel DD-WRT
Mipsel TUXBOX
PPC TUXBOX
SH4
SH4 QboxHD
SH4 STAPI
sheevaplug
X64
```

### Windows

#### Cygwin

The current binaries can be found here: [streamboard](http://www.streamboard.tv/wbb2/board.php?boardid=236 "streamboard-board:236")

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Attention:**

+   Please make sure that the right one cygwin.dll is in the same directory as the .exe!
+   Functioning is version 1005.25.0.0.

#### Cardserver start as a service

[![](/images/c/c8/UnderConstruction.jpg)](/wiki/Datei:UnderConstruction.jpg) **Under Construction**

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Attention: for Windows 7 not found a solution, as the *WindowsResourceKitTools* can not be installed on Windows 7!**

Verwendet man einen PC als Cardserver, so muss der Cardserver entweder von Hand gestartet oder in den Autostart eingetragen werden. Mithilfe der **Windows-Dienste** kann der Cardserver unmittelbar mit dem Hochfahren des Systems gestartet werden.

##### Voraussetzungen

OSCam-i386-pc-cygwin.exe und cygwin.dll im Verzeichnis OSCam (Im Beispiel C:\\OSCam) Microsoft-Tools **instsrv.exe** und **srvany.exe** beides in Windows Resource Kit Tools (WinXP und WinServer2003) enthalten. Windows Resource Kit Tool kann über die Windows-Update-Seite kostenlos herunter geladen werden ([http://microsoft.com/downloads/details...&DisplayLang=en](http://microsoft.com/downloads/details...&DisplayLang=en)).

##### Einrichtung des Dienstes

```
Eingabeaufforderung (Start ---> Programme ---> Zubehör ---> Eingabeaufforderung):
"C:\Programme\WindowsResourceKits\Tools\instcrv.exe"Cardserver
"C:\Programme\WindowsResourceKits\Tools\srvany.exe"
Achtung: Die (") bitte unbedingt mit eingeben!
```

##### Konfiguration des Dienstes in der Registry

```
Start ---> Ausführen ---> regedit ---> HKEY_LOKAL_MACHINES\System\CurrentControlSet\Services\Cardserver
Wenn ihr den Dienst richtig eingerichtet habt (s.o.), findet Ihr hier einen Schlüssel (Ordner) Parameters.
Wenn nicht, mit Rechtsklick im rechten Fenster (Kontextmenü) Neu ---> Schlüssel wählen und Parameters eingeben
```

```
Bei den Parameters muss nun die Zeichenfolge Application angelegt werden:
Wieder Rechtsklick im rechten Fenster (Kontextmenü) Neu ---> Zeichenfolge wählen und als Wert eingeben:
C:\OSCam\oscam-i386-pc-cygwin.exe
```

```
Dann muss noch die Zeichenfolge AppDirectory angelegt werden:
Wieder Rechtsklick im rechten Fenster (Kontextmenü) Neu ---> Zeichenfolge wählen und als Wert eingeben:
C:\OSCAM\
```

+   Das sieht dann in diesem Teil der Registry so aus:

[![](/images/3/35/Reg%2CEditor.jpg)](/wiki/Datei:Reg,Editor.jpg)

Anstelle von MPCS steht da natürlich OSCAM! *Bild muss noch ausgetauscht werden!*

##### Starten und Prüfen

```
Start ---> Systemsteuerung ---> Verwaltung ---> Dienste ---> Cardserver ---> Starten
Rechtsklick auf Cardserver ---> Eigenschaften ---> Automatisch
PC neu starten und testen, ob alles automatisch startet und funktioniert. Mit microMon bekommt man da einen hervorragenden Überblick
Am besten sowohl OSCam und microMon mit dem PC automatisch starten.
```

##### Beenden des Dienstes

Wenn man sich zur Einrichtung des OSCam-Servers auf dem PC als Dienst entschieden hat, dann muss man folgerichtig davon ausgehen, dass dieser Dienst mit dem Hochfahren des PC gestartet und mit seinem Herunterfahren wieder beendet wird. Möchte man, aus welchen Gründen auch immer, diesen Dienst manuell beenden bzw. neu starten, empfiehlt es sich, wie folgt vorzugehen:

```
Start ---> Systemsteuerung ---> Verwaltung ---> Dienste ---> Cardserver ---> anhalten, beenden oder neu starten.
```

Eine andere Art der Beendigung bewirkt, dass der Dienst im Hintergrund weiter läuft und es bei einem manuellen Neustart zu Instanzen-Kollisionen kommen kann (Pipe Error). Durch Verknüpfung der Verwaltungsmaske "Dienste" mit dem Desktop kann ein umständliches Durchhangeln über Start zu den Diensten vermieden werden!

**Anmerkung:** Dieses How-To wurde von **Guest\_a\_\*** aus dem Keywelt-Board [\[1\]](http://www.keywelt-board.com/index.php?showtopic=77192) übernommen.

### Mac OS X