> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/scripts/DBox2

## DBox2 (ppc)

### DBox2 mit Sportster-Image

+   Laufende SoftCAM beenden.
+   Alle SoftCAMS\`s aus "/var/emu/" sichern und danach von der DBox2 löschen, ansonsten könnte der Speicher nicht ausreichen.
+   Binary "oscam" nach "/tmp/" kopieren und shrinken (verkleinern):

<syntaxhighlight lang="bash">

1.  per Telnet connecten...

cd /tmp shrink oscam </syntaxhighlight>

+   "geshrinkte" (kleinere) "oscam" nach "/var/emu/" kopieren und 755 chmoden.
+   "oscam.txt" nach "/var/emu/" kopieren.
+   Configs nach "/var/keys" kopieren.
+   Leere Datei ".oscam" in "/var/etc/" erstellen (darauf achten, dass sich keine andere ".CAMD-Name-Datei" darin befindet), z.B. per Telnet:

<syntaxhighlight lang="bash"> touch /var/etc/.oscam </syntaxhighlight>

+   CAMD-Reset ausführen.

[![](/images/0/00/MessageS.png)](/wiki/Datei:MessageS.png) **Info:** Ab Sportster Pro 2.00 rc005 sollte das CAMD bereits automatisch starten, empfehlenswert ist jedoch die aktuelle Beta, die auch entsprechende ECM-Infos anzeigt. Falls eine ältere Version genutzt wird, muss ggf. die Datei "/var/etc/start.local" entsprechend erweitert werden.

#### oscam.txt

oscam.txt beinhaltet nur die Version, mehr gehört da nicht rein, z.B.:

```
0.99.4
```