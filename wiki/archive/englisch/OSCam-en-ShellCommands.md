> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/ShellCommands

## Inhaltsverzeichnis

+   [1 OSCam Shell commands](#OSCam_Shell_commands)
    +   [1.1 Starting and stopping OSCam](#Starting_and_stopping_OSCam)
        +   [1.1.1 Command-line Parameters](#Command-line_Parameters)
        +   [1.1.2 Example script for start/stop](#Example_script_for_start/stop)
    +   [1.2 OSCam Reloaded](#OSCam_Reloaded)
    +   [1.3 Miscellaneous](#Miscellaneous)

## OSCam Shell commands

This information is not only for image creators. They can also be useful for script writers, and other people.

### Starting and stopping OSCam

#### Command-line Parameters

To find out what are the supported command-line parameters, invoke **oscam** with the \-h parameter:

```
<PATH_TO_OSCAM>/oscam -h
```

Example output:

```
  ___  ____   ___
 / _ \/ ___| / __|__ _ _ __ ___
| | | \___ \| |  / _` | '_ ` _ \
| |_| |___) | |_| (_| | | | | | |
 \___/|____/ \___\__,_|_| |_| |_|
```

OSCam cardserver v1.20-unstable\_svn, build r11272 (x86\_64-linux-gnu) Copyright (C) 2009-2015 OSCam developers. This program is distributed under GPLv3. OSCam is based on Streamboard mp-cardserver v0.9d written by dukat Visit [http://www.streamboard.tv/oscam/](http://www.streamboard.tv/oscam/) for more details.

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

#### Example script for start/stop

```
#!/bin/sh
# 2011/01/26 - OSCam Start/Stop-Example
#
# Examples *************************************************
# <PATH_TO_SCRIPT>/<SCRIPT_NAME> <PARAMETER>
# /var/emu/oscam.sh stop
# /var/emu/oscam.sh start
# /var/emu/oscam.sh reload (same as "start" or "restart")
#
# USER SETUP ###############################################
# ----------------------------------------------------------
# Path to the camd binaries - without trailing slash!
# Example: camd_path='/var/emu'
camd_path='/var/emu'
# ----------------------------------------------------------
# Path to the camd configuration files - without trailing slash!
# Example: camd_c_path='/var/keys'
camd_c_path='/var/keys'
# ----------------------------------------------------------
# CAMD PROCESS NAME
camd_ps_oscam='oscam'
# ----------------------------------------------------------
# Max time in seconds before sending killall SIGKILL to CAMD - default 5
camd_max_killtime=5
# ----------------------------------------------------------
# CAMD logfile
camd_logfile='/tmp/camd.log'
#camd_logfile='/dev/null' # <-- logging off
# ----------------------------------------------------------
# CAMD START COMMAND
camd_start_oscam="$camd_path/$camd_ps_oscam -c $camd_c_path"
# END USER SETUP ###########################################

# PRIVATE VARs *********************************************
hr='------------------------------------------------------------'

# FUNCTIONS ************************************************
fStop() {
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
}

fStart() {
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
}

# BY PARAMETER *********************************************
case "$1" in
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
esac
exit 0
```

### OSCam Reloaded

Reloading the user database:

```
kill -1 `pidof oscam`
```

Reloading the card information:

```
killall -SIGUSR2 oscam
```

### Miscellaneous

Script to determine number of readers:

```
r=0
if [ -d "/tmp/.oscam" ]; then
    r=$(ls -l /tmp/.oscam/reader* | wc -l)
fi
echo $r
```