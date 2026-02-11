> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/SmallHelpfulScripts

## Watchdog

<syntaxhighlight lang="bash">

1.  !/bin/sh

while sleep 2 do

```
 if ps x | grep -v grep | grep -c oscam >/dev/null
 then
   echo "oscam already running"
 else
   echo ""
   date >> /tmp/oscam-crash.log
   echo "oscam loeppt nicht, wird gestartet" >> /tmp/oscam-crash.log
   killall oscam
   sleep 1
   /var/emu/oscam &
 fi
```

done </syntaxhighlight>