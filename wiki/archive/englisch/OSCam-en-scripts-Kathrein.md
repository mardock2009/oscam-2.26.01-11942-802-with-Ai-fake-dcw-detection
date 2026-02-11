> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/scripts/Kathrein

## Kathrein

### Kathrein UFS-910 (sh4) with AAF image

+   Copy the **oscam** binary file to the /var/bin directory and make sure it is executable (chmod 755 /var/bin/oscam).
+   Copy the **oscam.emu** file to the /var/etc directory.
+   Copy the configuration files to the /var/keys directory.
+   Select OSCam in the SoftCAM menu.

Example contents for the /var/etc/oscam.emu file:

```
emuname  =oscam_0.99.4
binname  =oscam
startcam =/var/bin/oscam -c /var/keys
stopcam  =killall -9 oscam
```