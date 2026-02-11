> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/ShellCommands

## Inhaltsverzeichnis

+   [1 OSCam Shell-Befehle](#OSCam_Shell-Befehle)
    +   [1.1 OSCam starten und beenden](#OSCam_starten_und_beenden)
        +   [1.1.1 Startparameter abfragen](#Startparameter_abfragen)
        +   [1.1.2 Starten- und Beenden-Beispiel](#Starten-_und_Beenden-Beispiel)
    +   [1.2 Reloads](#Reloads)
    +   [1.3 Sonstiges](#Sonstiges)

## OSCam Shell-Befehle

Nachfolgende Befehle helfen nicht nur den Image-Erstellern. Dem einen oder anderen, der "eigene" Skripte benötigt/einsetzt, hilft es sicherlich auch weiter.

### OSCam starten und beenden

#### Startparameter abfragen

Mit welchen Parametern lässt sich OSCam starten? <syntaxhighlight lang="bash"> <PATH\_TO\_OSCAM>/oscam -h

```
 ___  ____   ___
/ _ \/ ___| / __|__ _ _ __ ___
```

| | | \\\_\_\_ \\| | / \_\` | '\_ \` \_ \\ | |\_| |\_\_\_) | |\_| (\_| | | | | | |

```
\___/|____/ \___\__,_|_| |_| |_|
```

OSCam cardserver v1.20-unstable\_svn, build r9898 (x86\_64-linux-gnu) Copyright (C) 2009-2013 OSCam developers. This program is distributed under GPLv3. OSCam is based on Streamboard mp-cardserver v0.9d written by dukat Visit [http://www.streamboard.tv/oscam/](http://www.streamboard.tv/oscam/) for more details.

```
ConfigDir  : /usr/local/etc
```

```
Usage: oscam [parameters]
```

```
Directories:
-c, --config-dir <dir>  | Read configuration files from <dir>.
                        . Default: /usr/local/etc
-t, --temp-dir <dir>    | Set temporary directory to <dir>.
                        . Default: /tmp/.oscam
```

```
Startup:
-b, --daemon            | Start in the background as daemon.
-B, --pidfile <pidfile> | Create pidfile when starting.
-r, --restart <level>   | Set restart level:
                        .   0 - Restart disabled (exit on restart request).
                        .   1 - WebIf restart is active (default).
                        .   2 - Like 1, but also restart on segfaults.
-w, --wait <secs>       | Set how much seconds to wait at startup for the
                        . system clock to be set correctly. Default: 60
```

```
Logging:
-I, --syslog-ident <ident> | Set syslog ident. Default: oscam
-S, --show-sensitive    | Do not filter sensitive info (card serials, boxids)
                        . from the logs.
-d, --debug <level>     | Set debug level mask used for logging:
                        .     0 - No extra debugging (default).
                        .     1 - Detailed error messages.
                        .     2 - ATR parsing info, ECM, EMM and CW dumps.
                        .     4 - Traffic from/to the reader.
                        .     8 - Traffic from/to the clients.
                        .    16 - Traffic to the reader-device on IFD layer.
                        .    32 - Traffic to the reader-device on I/O layer.
                        .    64 - EMM logging.
                        .   128 - DVBAPI logging.
                        .   256 - Loadbalancer logging.
                        .   512 - CACHEEX logging.
                        .  1024 - Client ECM logging.
                        .  2048 - CSP logging.
                        .  4096 - CWC logging.
                        . 65535 - Debug all.
```

```
Settings:
-p, --pending-ecm <num> | Set the maximum number of pending ECM packets.
                        . Default: 32 Max: 4096
-u, --utf8              | Enable WebIf support for UTF-8 charset.
```

```
Debug parameters:
-a, --crash-dump        | Write oscam.crash file on segfault. This option
                        . needs GDB to be installed and OSCam executable to
                        . contain the debug information (run oscam-XXXX.debug)
-s, --capture-segfaults | Capture segmentation faults.
-g, --gcollect <mode>   | Garbage collector debug mode:
                        .   1 - Immediate free.
                        .   2 - Check for double frees.
```

```
Information:
-h, --help              | Show command line help text.
-V, --build-info        | Show OSCam binary configuration and version.
```

</syntaxhighlight>

#### Starten- und Beenden-Beispiel

<syntaxhighlight lang="bash">

1.  !/bin/sh
2.  2011/01/26 - OSCam Start/Stop-Example

4.  Examples \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
5.  <PATH\_TO\_SCRIPT>/<SCRIPT\_NAME> <PARAMETER>
6.  /var/emu/oscam.sh stop
7.  /var/emu/oscam.sh start
8.  /var/emu/oscam.sh reload (same as "start" or "restart")

10.  USER SETUP ###############################################
11.  \----------------------------------------------------------
12.  Path to the camd binaries - without trailing slash!
13.  Example: camd\_path='/var/emu'

camd\_path='/var/emu'

1.  \----------------------------------------------------------
2.  Path to the camd configuration files - without trailing slash!
3.  Example: camd\_c\_path='/var/keys'

camd\_c\_path='/var/keys'

1.  \----------------------------------------------------------
2.  CAMD PROCESS NAME

camd\_ps\_oscam='oscam'

1.  \----------------------------------------------------------
2.  Max time in seconds before sending killall SIGKILL to CAMD - default 5

camd\_max\_killtime=5

1.  \----------------------------------------------------------
2.  CAMD logfile

camd\_logfile='/tmp/camd.log'

1.  camd\_logfile='/dev/null' # <-- logging off
2.  \----------------------------------------------------------
3.  CAMD START COMMAND

camd\_start\_oscam="$camd\_path/$camd\_ps\_oscam -c $camd\_c\_path"

1.  END USER SETUP ###########################################

1.  PRIVATE VARs \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

hr='------------------------------------------------------------'

1.  FUNCTIONS \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

fStop() {

```
   echo "$hr" >> $camd_logfile
   echo `date`": Stopping $1..." >> $camd_logfile
   if ! pidof $1 > /dev/null; then
       echo `date`": $1 is not running" >> $camd_logfile
   else
       echo `date`": Send kill SIGTERM to $1" >> $camd_logfile
       kill -15 $(pidof $1) >> $camd_logfile 2>&1
       sleep 1
       if pidof $1 > /dev/null; then
           i=$camd_max_killtime
           while expr $i != 0 > /dev/null; do
               if pidof $1 > /dev/null; then
                   echo `date`": Waiting max $i seconds before sending kill SIGKILL to $1..." >> $camd_logfile
               else
                   echo `date`": $1 successfully killed" >> $camd_logfile
                   break
               fi
               i=`expr $i - 1`
               sleep 1
           done
       else
           echo `date`": $1 successfully killed" >> $camd_logfile
       fi
       if pidof $1 > /dev/null; then
           echo `date`": Sending killall SIGKILL to $1!" >> $camd_logfile
           killall -9 $1 >> $camd_logfile 2>&1
       fi
   fi
```

}

fStart() {

```
   if pidof $1 > /dev/null; then
       fStop $1
   fi
   echo "$hr" >> $camd_logfile
   echo `date`": Starting $1..." >> $camd_logfile
   camd_start=$(eval echo \${"camd_start_$1"})
   echo `date`": $camd_start" >> $camd_logfile
   $camd_start > /dev/null 2>&1 &
   sleep 1
   if pidof $1 > /dev/null; then
       echo `date`": $1 successfully started" >> $camd_logfile
   else
       echo `date`": Could not start $1!" >> $camd_logfile
   fi
```

}

1.  BY PARAMETER \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

case "$1" in

```
   'stop')
       fStop "$camd_ps_oscam"
   ;;
   'start'|'restart'|'reload')
       fStart "$camd_ps_oscam"
   ;;
   *)
       msg='UNKNWON OR MISSING PARAMETER!'
       echo "$msg"
       echo "$hr" >> $camd_logfile
       echo `date`": $msg" >> $camd_logfile
       exit 1
   ;;
```

esac exit 0 </syntaxhighlight>

### Reloads

<syntaxhighlight lang="bash">

1.  Benutzer-Datenbank neuladen:

kill -1 \`pidof oscam\`

1.  Karten-Informationen neuladen:

killall -SIGUSR2 oscam </syntaxhighlight>

### Sonstiges

Anzahl der Reader ermitteln (ab #4633 **veraltet**!): <syntaxhighlight lang="bash"> r=0 if \[ -d "/tmp/.oscam" \]; then

```
   r=$(ls -l /tmp/.oscam/reader* | wc -l)
```

fi echo $r </syntaxhighlight>