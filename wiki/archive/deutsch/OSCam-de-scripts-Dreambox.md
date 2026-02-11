> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/scripts/Dreambox

## Inhaltsverzeichnis

+   [1 Dreambox](#Dreambox)
    +   [1.1 Dreambox (mipsel) mit newnigma-Image](#Dreambox_\(mipsel\)_mit_newnigma-Image)
    +   [1.2 Dreambox mit Gemini(IHAD)-Image (thx 2 pin1)](#Dreambox_mit_Gemini\(IHAD\)-Image_\(thx_2_pin1\))
        +   [1.2.1 oscam\_cam.sh](#oscam_cam.sh)

## Dreambox

### Dreambox (mipsel) mit newnigma-Image

+   Binary "oscam" nach "/usr/bin/" kopieren und 755 chmoden.
+   "oscam.emu" nach "/usr/script/" kopieren und 755 chmoden.
+   Configs nach "/var/keys" (Symlink auf /usr/keys) kopieren.
+   SoftCAM "oscam" über das Menü auswählen.

<syntaxhighlight lang="bash">

1.  !/bin/sh
2.  EMUNAME (only the displayed name)

EMUNAME="OSCam"

1.  Process/Program name

PROCNAME="oscam"


remove\_tmp () {

```
 [ -e /tmp/ecm.info ]        && rm -f /tmp/ecm.info
 [ -e /tmp/ecm0.info ]       && rm -f /tmp/ecm0.info
 [ -e /tmp/ecm1.info ]       && rm -f /tmp/ecm1.info
 [ -e /tmp/oscam.log ]       && rm -f /tmp/oscam.log
 [ -e /tmp/oscam.log-prev ]  && rm -f /tmp/oscam.log-prev
 [ -e /tmp/oscamuser.log ]   && rm -f /tmp/oscamuser.log
 [ -d /tmp/.oscam ]          && rm -fr /tmp/.oscam
```

}

case "$1" in

```
 start)
   confDir=
   echo "[SCRIPT] $1: $EMUNAME"
   if [ ! -z "`pidof $PROCNAME`" ]; then
     echo "$PROCNAME already running..."
   else
     if [ -s /usr/keys/oscam.conf ]; then
       confDir='/usr/keys'
     elif [ -s /etc/oscam.conf ]; then
       confDir='/etc'
     elif [ -s /var/keys/oscam.conf ]; then
       confDir='/var/keys'
     elif [ -s /etc/tuxbox/config/oscam.conf ]; then
       confDir='/etc/tuxbox/config'
     fi
     if [ ! -z "$confDir" ] && [ -d $confDir ]; then
       remove_tmp
       /usr/bin/$PROCNAME -c $confDir > /dev/null 2>&1 &
     else
       echo "ERROR: Config not found!"
     fi
   fi
 ;;
 stop)
   echo "[SCRIPT] $1: $EMUNAME"
   if [ -z "`pidof $PROCNAME`" ]; then
     echo "$PROCNAME not running..."
   else
     kill `pidof $PROCNAME`
     sleep 2
   fi
   if [ ! -z "`pidof $PROCNAME`" ]; then
     kill -9 `pidof $PROCNAME`
   fi
   remove_tmp
 ;;
 restart)
   $0 stop
   sleep 2
   $0 start
 ;;
 *)
   echo "Usage: $0 start|stop|restart"
   exit 1
 ;;
```

esac

exit 0 </syntaxhighlight>

### Dreambox mit Gemini(IHAD)-Image (thx 2 pin1)

+   Binary "oscam" nach "/usr/bin/" kopieren und 755 chmoden.
+   "oscam\_cam.sh" nach "/usr/script/" kopieren und 755 chmoden.
+   Configs nach "/var/keys" (Symlink auf /usr/keys) kopieren.
+   SoftCAM "oscam" über das Menü auswählen.

#### oscam\_cam.sh

<syntaxhighlight lang="bash">

1.  !/bin/sh

CAMD\_ID=1793 CAMD\_NAME="OSCam" CAMD\_BIN=oscam

INFOFILE\_A=ecm0.info INFOFILE\_B=ecm1.info INFOFILE\_C=ecm2.info INFOFILE\_D=ecm3.info

1.  Expert window

INFOFILE\_LINES=1111111111000000

1.  Zapp after start

REZAPP=0

logger $0 $1 echo $0 $1

remove\_tmp () {

```
 rm -rf /tmp/*.info* /tmp/*.tmp*
```

}

case "$1" in

```
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
```

esac exit 0 </syntaxhighlight>