> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/scripts/Kathrein

## Kathrein

### Kathrein UFS-910 (sh4) mit AAF-Image

+   Binary "oscam" nach "/var/bin/" kopieren und 755 chmoden.
+   "oscam.emu" nach "/var/etc/" kopieren.
+   Configs nach "/var/keys" kopieren.
+   SoftCAM OSCam über das Menü auswählen.

#### oscam.emu

```
emuname  =oscam_0.99.4
binname  =oscam
startcam =/var/bin/oscam -c /var/keys
stopcam  =killall -9 oscam
```