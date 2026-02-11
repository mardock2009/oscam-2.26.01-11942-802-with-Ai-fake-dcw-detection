> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/CentralLogging

## Inhaltsverzeichnis

+   [1 Central Logging](#Central_Logging)
    +   [1.1 Client Configuration](#Client_Configuration)
    +   [1.2 Server Configuration](#Server_Configuration)
    +   [1.3 Results](#Results)

## Central Logging

One thing I found very useful when debugging issues with OSCam (and not only this) is to have all the logs at my disposal. To do that, I have setup all my boxes to send their logs to my server which is always on and has sufficient disk space. The preferred protocol, supported by all devices and programs, is **syslog**.

### Client Configuration

First, I make sure syslog is running on my boxes.

For DM500 running Gemini, the configuration is in /var/script/syslogd\_script.sh:

```
REMOTE=1
REMOTE_HOST=<serverIP>
REMOTE_PORT=514
```

On my TM800HD, the configuration is in /etc/syslog.conf

```
DESTINATION="remote"
REMOTE=<serverIP>:514
```

Then, **oscam** can be configured to write to syslog daemon instead of a file. Just change logfile value in oscam.conf like this:

```
[global]
logfile                       = syslog
```

### Server Configuration

The best part is on the server side. This is where I wasn't happy with the default **syslogd** server that comes with Debian, and I installed the smarter **syslog-ng**. One thing I loved about syslog-ng is that I was able to configure it so that each box has its own directory on the server, making it very easy to find the log data I was looking for. This is the configuration I use in syslog-ng.conf:

```
# source: all logs sent from the network
source s_net {
    udp();
    tcp();
    syslog();
};

# destination: each facility has its own log for each host
destination d_hosts {
    file("/var/log/hosts/$HOST/$FACILITY.log"
        owner(root)
        group(root)
        perm(0600)
        dir_perm(0755)
        create_dirs(yes)
    );
};

# everything from the network is sent to the disk, under /var/log/hosts
log {
    source(s_net);
    destination(d_hosts);
};
```

### Results

The result is that I have log files on the server for all my stuff:

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

Here's my son watching Cartoons:

```
server:/var/log/hosts/dm500fe# tail -2 daemon.log
Mar 17 12:53:15 dm500fe oscam: 32025B50 c anonymous (0500&022F00/003D/34:EF9E): found (143 ms) by server (of 1 avail 1)
Mar 17 12:53:25 dm500fe oscam: 32025B50 c anonymous (0500&022F00/003D/34:E49B): found (147 ms) by server (of 1 avail 1)
```

I'm watching cricket on Sky Sports HD1:

```
server:/var/log/hosts/tm800# tail -2 daemon.log
Mar 17 12:54:23 tm800 oscam: 2CDE74D0 c anonymous (0963&000000/0EDA/76:11B0): found (135 ms) by server (of 1 avail 1)
Mar 17 12:54:30 tm800 oscam: 2CDE74D0 c anonymous (0963&000000/0EDA/76:FB59): found (117 ms) by server (of 1 avail 1)
```

Even the server logs are in this directory structure:

```
server:/var/log/hosts/server# tail -2 daemon.log
Mar 17 12:55:44 server oscam: B6419280 c tm800 (0963&000000/0EDA/76:85F5): found (111 ms) by smargo (of 1 avail 1)
Mar 17 12:55:45 server oscam: B6421280 c dm500fe (0500&022F00/003D/34:8660): found (142 ms) by omnikey (of 1 avail 1)
```

**NOTE:** In case you are wondering, phone is a VOIP adapter. Yes, it supports the **syslog** protocol, so I collect its logs on my server!