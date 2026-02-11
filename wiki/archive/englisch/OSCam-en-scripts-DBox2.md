> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/scripts/DBox2

## DBox2 (ppc)

### DBox2 with Sportster image

+   Stop the current SoftCAM.
+   Look at the /var/emu directory, and backup existing softcams, then remove them from the box. This ensures that you will have sufficient room for **oscam**.
+   Copy the **oscam** binary to the /tmp directory, and then shrink it (compress):

```
# connect to the box through Telnet...
cd /tmp
shrink oscam
```

+   move the *shrunken* **oscam** file to the /var/emu directory and make it executable (chmod 755).
+   Copy the **oscam.txt** file to the /var/emu directory.
+   Copy the configuration files to the /var/keys directory.
+   Create an empty file named **.oscam** in the /var/etc directory. Make sure there is no other file there that matches the *.CAMD-name-date* pattern. In a telnet session, type:

```
touch /var/etc/.oscam
```

+   Execute a softcam reset.

[![](/images/0/00/MessageS.png)](/wiki/Datei:MessageS.png) **Note:** From Sportster Pro 2.00 rc005 version, CAMD should be started automatically. It's recommended to install the current Beta, which also displays corresponding ECM information. If an older version is used, you must modify the /var/etc/start.local file accordingly.

#### oscam.txt

The /var/emu/oscam.txt file should contain the current **oscam** version number, nothing else. For example:

```
0.99.4
```