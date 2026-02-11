> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/SmallHelpfulScripts

## Watchdog

<syntaxhighlight lang="bash">

1.  !/bin/sh

while sleep 2 do

```
 if ps -C oscam | grep -v grep | grep -c oscam >/dev/null
 then
   echo "oscam already running"
 else
   echo ""
   date >> /tmp/oscam-crash.log
   echo "oscam loeppt nicht, wird gestartet" >> /tmp/oscam-crash.log
   killall oscam -9
   sleep 1
   /var/emu/oscam -b
 fi
```

done </syntaxhighlight>