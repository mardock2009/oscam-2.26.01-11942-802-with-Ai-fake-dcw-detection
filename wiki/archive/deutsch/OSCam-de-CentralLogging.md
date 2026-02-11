> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/CentralLogging

**by ValD**

## Inhaltsverzeichnis

+   [1 Central Logging](#Central_Logging)
    +   [1.1 Client Configuration](#Client_Configuration)
    +   [1.2 Server Configuration](#Server_Configuration)
    +   [1.3 Ergebnisse](#Ergebnisse)

## Central Logging

Ich fand es sehr nützlich, bei Fragen des debugging für OSCam (und nicht nur dafür) alle Logs zur Verfügung zu haben. Um das sicher zu stellen, habe ich alle meine Boxen so eingerichtet, dass sie ihre Logs an meinen Server senden, der ständig läuft und über ausreichende Plattenkapazität verfügt. Das bevorzugte Protokoll, dass alle Boxen und Programme unterstützen, ist **syslog**.

### Client Configuration

Zuerst habe ich sicher gestellt, dass auf all diesen Geräten syslog läuft.

Für DM500 mit Gemini, findet man die Konfiguration in /var/script/syslogd\_script.sh:

```
REMOTE=1
REMOTE_HOST=<serverIP>
REMOTE_PORT=514
```

Auf meinem TM800HD, liegt die Konfiguration in /etc/syslog.conf

```
DESTINATION="remote"
REMOTE=<serverIP>:514
```

Dann muss **oscam** so konfiguriert werden, damit das Log nach syslog daemon anstatt in eine Datei geschrieben wird. Daher ändere logfile value in oscam.conf wie folgt:

```
[global]
logfile                       = syslog
```

### Server Configuration

Das Beste ist die Serverseite, weil ich nicht besonders glücklich mit dem default **syslogd** war, der in Debian enthalten ist. Ich installierte daher den smarteren **syslog-ng**. Eine Sache, die ich an syslog-ng schätze, ist die Möglichkeit, für jede Box ein eigenes Verzeichnis auf dem Server anzulegen. Das macht es sehr einfach, die Log-Daten zu finden, die man sucht.

Das ist die Konfiguration, die ich in syslog-ng.conf benutze:

```
# source: alle Logs, die aus dem Netzwerk gesendet werden
source s_net {
    udp();
    tcp();
    syslog();
};

# destination: jedes Gerät hat ihr eigenes Log für jeden Host
destination d_hosts {
    file("/var/log/hosts/$HOST/$FACILITY.log"
        owner(root)
        group(root)
        perm(0600)
        dir_perm(0755)
        create_dirs(yes)
    );
};

# alles aus dem Netzwerk wird auf die Disk gesendet unter /var/log/hosts
log {
    source(s_net);
    destination(d_hosts);
};
```

### Ergebnisse

Das Ergebnis ist, dass ich auf dem Server die Logfiles aller meiner Aktivitäten habe:

```
server:/var/log/hosts# find
./phone
./phone/user.log
./dm500fe
./dm500fe/daemon.log
./dm500fe/syslog.log
./dm500fe/user.log
./server
./server/daemon.log
./server/syslog.log
./server/user.log
./tm800
./tm800/daemon.log
./tm800/authpriv.log
./tm800/cron.log
./tm800/user.log
./dm7000
./dm7000/daemon.log
./dm7000/syslog.log
./dm7000/user.log
./dm500be
./dm500be/daemon.log
./dm500be/syslog.log
./dm500be/user.log
```

Hier schaut sich mein Sohn Cartoons an:

```
server:/var/log/hosts/dm500fe# tail -2 daemon.log
Mar 17 12:53:15 dm500fe oscam: 32025B50 c anonymous (0500&022F00/003D/34:EF9E): found (143 ms) by server (of 1 avail 1)
Mar 17 12:53:25 dm500fe oscam: 32025B50 c anonymous (0500&022F00/003D/34:E49B): found (147 ms) by server (of 1 avail 1)
```

Ich schaue mir Cricket auf Sky Sports HD1 an:

```
server:/var/log/hosts/tm800# tail -2 daemon.log
Mar 17 12:54:23 tm800 oscam: 2CDE74D0 c anonymous (0963&000000/0EDA/76:11B0): found (135 ms) by server (of 1 avail 1)
Mar 17 12:54:30 tm800 oscam: 2CDE74D0 c anonymous (0963&000000/0EDA/76:FB59): found (117 ms) by server (of 1 avail 1)
```

Sogar die Server-Logs finden sich in dieser Verzeichnis-Struktur:

```
server:/var/log/hosts/server# tail -2 daemon.log
Mar 17 12:55:44 server oscam: B6419280 c tm800 (0963&000000/0EDA/76:85F5): found (111 ms) by smargo (of 1 avail 1)
Mar 17 12:55:45 server oscam: B6421280 c dm500fe (0500&022F00/003D/34:8660): found (142 ms) by omnikey (of 1 avail 1)
```

**Hinweis:** Falls ihr euch wundert: **phone** ist ein VOIP-Adapter und ja, der unterstützt das Syslog-Protokoll, daher sammle ich auch diese Logs auf meinem Server!