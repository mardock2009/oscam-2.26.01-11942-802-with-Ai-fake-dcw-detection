> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/scripts/Dreambox

## Inhaltsverzeichnis

+   [1 Dreambox](#Dreambox)
    +   [1.1 Dreambox (mipsel) with newnigma image](#Dreambox_\(mipsel\)_with_newnigma_image)
    +   [1.2 Dreambox with Gemini image (IHAD) (thanks to pin1)](#Dreambox_with_Gemini_image_\(IHAD\)_\(thanks_to_pin1\))
        +   [1.2.1 oscam\_cam.sh](#oscam_cam.sh)

## Dreambox

### Dreambox (mipsel) with newnigma image

+   Copy the **oscam** binary to **/usr/bin/** and ensure it is executable (chmod 755).
+   Copy **oscam.emu** to **/usr/script/** and ensure it is executable (chmod 755).
+   Copy the configuration files to **/var/keys** (symbolic link to **/usr/keys**).
+   Select "oscam" as your current SoftCAM in the menu.

```
########################################
###### Powered by NewNigma2 Team  ######
###      http://newngima2.to         ###
########################################


EMUNAME="OScam"

remove_tmp ()
{
        [ -e /tmp/ecm.info ] && rm -rf /tmp/ecm.info
        [ -e /tmp/ecm0.info ] && rm -rf /tmp/ecm0.info
        [ -e /tmp/ecm1.info ] && rm -rf /tmp/ecm1.info
        [ -e /tmp/.oscam ] && rm -rf /tmp/.oscam
        [ -e /tmp/oscam.log ] && rm -rf /tmp/oscam.log
        [ -e /tmp/oscam.kill ] && rm -rf /tmp/oscam.kill
        [ -e /tmp/oscamuser.log ] && rm -rf /tmp/oscamuser.log
}

case "$1" in
        start)
                echo "[SCRIPT] $1: $EMUNAME"
                if [ -f /usr/keys/oscam.conf ]; then
                        /usr/bin/oscam -c /usr/keys >/dev/null &
                else
                        /usr/bin/oscam -c /etc/tuxbox/config >/dev/null &
                fi
                ;;
        stop)
                echo "[SCRIPT] $1: $EMUNAME"
                echo -n "kill " > /tmp/oscam.kill
                pidof oscam >> /tmp/oscam.kill
                echo sleep 1s >> /tmp/oscam.kill
                echo -n "kill -9 " >> /tmp/oscam.kill
                pidof oscam >> /tmp/oscam.kill
                chmod 755 /tmp/oscam.kill
                /tmp/oscam.kill
                sleep 2
                remove_tmp
                ;;
        restart)
                $0 stop
                sleep 1
                $0 start
                exit 1
                ;;
        *)
                $0 stop
                exit 1
                ;;
esac

exit 0
```

### Dreambox with Gemini image (IHAD) (thanks to pin1)

+   Copy **oscam** binary to **/usr/bin** and ensure it is executable (chmod 755).
+   Copy **oscam\_cam.sh** to **/usr/script** and ensure it is executable (chmod 755).
+   Copy the configuration files to **/var/keys** (symbolic link to **/usr/keys**).
+   Select "oscam" as your current SoftCAM in the menu.

If you fail to copy the above, see the [Discussion page](/wiki/Diskussion:OSCam/en/scripts/Dreambox "Diskussion:OSCam/en/scripts/Dreambox") for more information.

#### oscam\_cam.sh

```
#!/bin/sh
CAMD_ID=1793
CAMD_NAME="OSCam"
CAMD_BIN=oscam

INFOFILE_A=ecm0.info
INFOFILE_B=ecm1.info
INFOFILE_C=ecm2.info
INFOFILE_D=ecm3.info
#Expert window
INFOFILE_LINES=1111111111000000
#Zapp after start
REZAPP=0

########################################

logger $0 $1
echo $0 $1

remove_tmp () {
  rm -rf /tmp/*.info* /tmp/*.tmp*
}

case "$1" in
  start)
  remove_tmp
  /usr/bin/$CAMD_BIN -c /var/keys &
  ;;
  stop)
  killall -9 $CAMD_BIN 2>/dev/null
  sleep 2
  remove_tmp
  ;;
  *)
  $0 stop
  exit 0
  ;;
esac

exit 0
```