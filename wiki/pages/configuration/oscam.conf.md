> [!NOTE]
> 🚧 **Parameters Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# OSCam Configuration: oscam.conf

The main configuration file for OSCam defines global server settings and protocol configurations. This file controls the core behavior of your OSCam instance. The `[global]` section is required, while protocol-specific sections are only needed if you're using those protocols.

## Overview

This file controls:
- **Global settings** - System priority, logging, debugging, file paths, load balancing
- **Anti-cascading** - Protection against unauthorized sharing and abuse
- **Cache system** - CW caching, cache exchange (CacheEx), and CW cycle checking
- **LCD** - 
- **Client protocols** - Enable and configure protocols (newcamd, CCcam, camd35/cs357x, cs378x, radegast, gbox, streamrelay, etc.)
- **DVB API** - Local decryption for DVB devices and set-top boxes
- **Monitor interface** - Remote monitoring and management access
- **Web interface** - HTTP/HTTPS access, authentication, styling, and features

Sections in oscam.conf are non-recurring (only one instance of each section). Configure only the sections you need, unused protocol sections can be omitted entirely.


## [global] Section

```ini
[global]
enableled                            =
disablelog                           =
loghistorylines                      =
serverip                             =
logfile                              =
initial_debuglevel                   =
sysloghost                           =
syslogport                           =
logduplicatelines                    =
pidfile                              =
disableuserfile                      =
disablemail                          =
usrfileflag                          =
clienttimeout                        =
fallbacktimeout                      =
fallbacktimeout_percaid              =
clientmaxidle                        =
bindwait                             =
netprio                              =
sleep                                =
unlockparental                       =
nice                                 =
maxlogsize                           =
waitforcards                         =
waitforcards_extra_delay             =
preferlocalcards                     =
readerrestartseconds                 =
dropdups                             =
reload_useraccounts                  =
reload_readers                       =
reload_provid                        =
reload_services_ids                  =
reload_tier_ids                      =
reload_fakecws                       =
reload_ac_stat                       =
reload_log                           =
block_same_ip                        =
block_same_name                      =
usrfile                              =
mailfile                             =
cwlogdir                             =
emmlogdir                            =
lb_mode                              =
lb_save                              =
lb_nbest_readers                     =
lb_nfb_readers                       =
lb_min_ecmcount                      =
lb_max_ecmcount                      =
lb_reopen_seconds                    =
lb_reopen_invalid                    =
lb_force_reopen_always               =
lb_retrylimit                        =
lb_stat_cleanup                      =
lb_max_readers                       =
lb_auto_betatunnel                   =
lb_auto_betatunnel_mode              =
lb_auto_betatunnel_prefer_beta       =
lb_savepath                          =
lb_retrylimits                       =
lb_nbest_percaid                     =
lb_noproviderforcaid                 =
lb_auto_timeout                      =
lb_auto-timeout_p                    =
lb_auto_timeout_t                    =
double_check_caid                    =
ecmfmt                               =
resolvegethostbyname                 =
failbantime                          =
failbancount                         =
suppresscmd08                        =
getblockemmauprovid                  =
double_check                         =
disablecrccws                        =
disablecrccws_only_for               =
cacheex_srcname_webif                =
```

---

## Reader Parameters

### enableled
**🟢 Optional parameter**

LED-Support.

```ini
enableled = 0  # LED support disabled (default)
enableled = 1  # LED support enabled for routers
enableled = 2  # LED support enabled for Qbox HD
```

**Format:**
```ini
enableled = 0|1|2
```

**Example:**
```ini
enableled = 1
```

**Default:**
```ini
enableled = 0
```

---

### disablelog
**🟢 Optional parameter**

Switches logfile **off**.

```ini
disablelog = 0  # log (default)
disablelog = 1  # no log
```

**Format:**
```ini
disablelog = 0|1
```

**Example:**
```ini
disablelog = 1
```

**Default:**
```ini
disablelog = 0
```

---

### loghistorylines
**🟢 Optional parameter**

**(requires `WEBIF` or `MODULE_MONITOR` compilation flag)**

Number of log lines to keep in memory for display in WebIF status page.

**Format:**
```ini
loghistorylines = count
```

**Example:**
```ini
loghistorylines = 512
```

**Default:**
```ini
loghistorylines = 256
```

Minimum value is 64. Values below 64 are adjusted automatically.

---

### serverip
**🟢 Optional parameter**

Bind service to specified IP address.

**Example:**
```ini
serverip = 192.168.178.1
```

**Default:**
```ini
serverip =  # OSCam listens to all IPs
```

---

### logfile
**🟢 Optional parameter**

Logging target.

**Format:**
```ini
logfile = [filename][;syslog][;stdout]
```

You can define a maximum of one filename (not more!) and additionally to log to stdout or syslog (you can also only log to stdout or syslog and omit the filename).

**Opportunities:**
```ini
logfile = /var/log/oscam.log  # file or linux device (for example /dev/tty)
logfile = syslog              # log to syslogd
logfile = stdout              # showing the log on the console
```

**Example:**
```ini
logfile = /etc/oscam/logs/oscam.log;stdout
```

**Default:**
```ini
logfile = /var/log/oscam.log
```

**Format logfile:**
```
CAID&ident/provider/length:checksum
```

---

### initial_debuglevel
**🟢 Optional parameter**

Set the debuglevel on startup.

**Example:**
```ini
initial_debuglevel = 8
```

**Default:**
```ini
initial_debuglevel = 0
```

---

### sysloghost
**🟢 Optional parameter**

If set, remote syslog server will be activated. Messages will be sent to this IPv4 address. If not set, remote syslog server does not work.

**Format:**
```ini
sysloghost = IP_address
```

**Example:**
```ini
sysloghost = 192.168.1.167
```

**Default:**
```ini
sysloghost =
```

---

### syslogport
**🟢 Optional parameter**

If set *sysloghost*, remote syslog server will be activated. Messages will be sent to this port. If not set, port 514 is used as default.

**Example:**
```ini
syslogport = 515
```

**Default:**
```ini
syslogport = 514
```

---

### logduplicatelines
**🟢 Optional parameter**

```ini
logduplicatelines = 0  # enable detection of duplicate lines in logfile (default)
logduplicatelines = 1  # disable detection of duplicate lines in log file
```

**Format:**
```ini
logduplicatelines = 0|1
```

**Example:**
```ini
logduplicatelines = 1
```

**Default:**
```ini
logduplicatelines = 0
```

---

### pidfile
**🟢 Optional parameter**

Change PID file name and path. If default = oscam.pid in /tmp

**Format:**
```ini
pidfile = path/filename
```

**Example:**
```ini
pidfile = /var/run/oscam.pid
```

**Default:**
```ini
pidfile =
```

---

### disableuserfile
**🟢 Optional parameter**

Even if a logfile is switched on (see logfile), the userfile can be turned off!

```ini
disableuserfile = 0  # userfile (default)
disableuserfile = 1  # no userfile
```

**Format:**
```ini
disableuserfile = 0|1
```

**Example:**
```ini
disableuserfile = 1
```

**Default:**
```ini
disableuserfile = 0
```

---

### disablemail
**🟢 Optional parameter**

Disable saving NDS Videoguard mail messages from provider.

```ini
disablemail = 0  # enabled
disablemail = 1  # disabled (default)
```

**Format:**
```ini
disablemail = 0|1
```

**Example:**
```ini
disablemail = 0
```

**Default:**
```ini
disablemail = 1
```

---

### usrfileflag
**🟢 Optional parameter**

Setting the logging-mode.

```ini
usrfileflag = 0  # Only login and logout will be logged (default)
usrfileflag = 1  # Each zapping from client will be logged
```

**Format:**
```ini
usrfileflag = 0|1
```

**Example:**
```ini
usrfileflag = 1
```

**Default:**
```ini
usrfileflag = 0
```

---

### clienttimeout
**🟢 Optional parameter**

Value in milliseconds for client process to wait for key.

**Examples:**
```ini
clienttimeout = 10000  # after 10 seconds timeout
clienttimeout = 10     # timeout after 10 milliseconds! (see note below)
clienttimeout = 8      # timeout after 8000 milliseconds (= 8 seconds), see note below
```

**Default:**
```ini
clienttimeout = 5000  # timeout after 5000 milliseconds (= 5 seconds)
```

⚠️ **Attention:** Values < 10 (so 1 to 9) are multiplied with 1000, so a "5" results in 5000 ms.

---

### fallbacktimeout
**🔵 Parameter depends on setup/program version**

Maximum waiting time of the cardserver in milliseconds for primary reader, before fallback reader (if any!) are questioned.

**Example:**
```ini
fallbacktimeout = 1500
```

**Default:**
```ini
fallbacktimeout = 2500
```

⚠️ **Attention:** The value must be greater than the value in "serialreadertimeout", otherwise the default is used.

---

### fallbacktimeout_percaid
**🟢 Optional parameter**

Time falling back to CAID restricted fallback reader.

**Format:**
```ini
fallbacktimeout_percaid = milliseconds
```

**Default:**
```ini
fallbacktimeout_percaid = 2500
```

---

### clientmaxidle
**🟢 Optional parameter**

Value for client process being idle before disconnect in seconds.

**Example:**
```ini
clientmaxidle = 200  # Disconnect after 200 seconds
clientmaxidle = 0    # idle disconnect disabled
```

**Default:**
```ini
clientmaxidle = 120  # Disconnect after 120 seconds
```

---

### bindwait
**🟢 Optional parameter**

Value in seconds to wait for bind request to complete. If OSCam within this time cannot bind, it finishes with "Bind Request failed".

Causes may include:
- Double assignment of ports
- "Crashed" OSCam has not released the ports again
- OSCam was started several times

**Example:**
```ini
bindwait = 20  # waiting time 20 seconds
```

**Default:**
```ini
bindwait = 120  # waiting time 120 seconds
```

---

### netprio
**🟢 Optional parameter**

Network priority for QoS (Quality of Service). This parameter sets two values:

- **IPP (IP Precedence)**: Applied to `SO_PRIORITY` for system-internal socket prioritization
- **DSCP (Differentiated Services Code Point)**: Applied to `IP_TOS` / `IPV6_TCLASS` for the TOS field in the IP packet header

This allows routers and network equipment to prioritize OSCam traffic appropriately.

**Format:**
```ini
netprio = 0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20
```

**Values:**

- **0** (IPP 0, CS0): Best Effort (default)
- **1** (IPP 1, CS1): Scavenger / Background
- **2** (IPP 1, AF11): Assured Forwarding (Low Drop)
- **3** (IPP 1, AF12): Assured Forwarding (Medium Drop)
- **4** (IPP 1, AF13): Assured Forwarding (High Drop)
- **5** (IPP 2, CS2): OAM (Operations/Administration/Management)
- **6** (IPP 2, AF21): Assured Forwarding (Low Drop)
- **7** (IPP 2, AF22): Assured Forwarding (Medium Drop)
- **8** (IPP 2, AF23): Assured Forwarding (High Drop)
- **9** (IPP 3, CS3): Broadcast Video
- **10** (IPP 3, AF31): Assured Forwarding (Low Drop)
- **11** (IPP 3, AF32): Assured Forwarding (Medium Drop)
- **12** (IPP 3, AF33): Assured Forwarding (High Drop)
- **13** (IPP 4, CS4): Real-Time Interactive
- **14** (IPP 4, AF41): Assured Forwarding (Low Drop)
- **15** (IPP 4, AF42): Assured Forwarding (Medium Drop)
- **16** (IPP 4, AF43): Assured Forwarding (High Drop)
- **17** (IPP 5, CS5): Signaling
- **18** (IPP 5, EF): Expedited Forwarding (Voice/Video)
- **19** (IPP 6, CS6): Network Control
- **20** (IPP 7, CS7): Reserved (Highest Priority)

**DSCP Classes Explained:**
- **CS (Class Selector)**: Backward compatible with IP Precedence (CS0-CS7)
- **AF (Assured Forwarding)**: AFxy where x=class (1-4), y=drop precedence (1=low, 2=medium, 3=high)
- **EF (Expedited Forwarding)**: Low latency, low jitter - ideal for real-time traffic

**Example:**
```ini
netprio = 18  # EF - Expedited Forwarding, best for time-critical CW delivery
```

**Default:**
```ini
netprio = 0  # CS0 - Best Effort, no special treatment
```

⚠️ **Note:** The effectiveness depends on your network equipment supporting and respecting DSCP markings. Many consumer routers ignore these values.

---

### sleep
**🟢 Optional parameter**

Time waiting for inactive users in minutes, can be overwritten per user in oscam.user.

**Example:**
```ini
sleep = 5  # waiting time 5 minutes
```

**Default:**
```ini
sleep =  # no waiting time
```

---

### unlockparental
**🟢 Optional parameter**

**Only Seca and Viaccess**

Unlock parental mode option to disable PIN code request for adult movie. In order to work properly, this option may require that you define the card PIN code in your card reader configuration.

**Example:**
```ini
unlockparental = 1  # parental lock mode disabled
```

**Default:**
```ini
unlockparental = 0  # parental lock mode enabled
```

---

### nice
**🟢 Optional parameter**

**System priority**

OSCam requires almost no CPU-power. But if CPU-power is required, it should be available immediately. Values between 20 and -20 are possible. 20 = low, -20 = very high. If this parameter is commented out (#), this function is not called. Important for example for dbox2, if the error messages "*relocation error:setpriority*". See [Priority Scheduling](http://de.wikipedia.org/wiki/Prioritätsscheduling).

**Example:**
```ini
nice = -1
```

**Default:**
```ini
nice = 99
```

---

### maxlogsize
**🔴 Required parameter**

Maximum size of logfiles in KBytes. This is especially important for servers with only a small amount of memory (dbox2). Therefore it is strongly recommended to determine carefully that size at such servers. Not infrequently a system "bursts" because the logfile uncontrolled large scale adopted!

**Example:**
```ini
maxlogsize = 20  # Logfile reaches to 20 KBytes
maxlogsize = 0   # Logfile unlimited
```

**Default:**
```ini
maxlogsize = 10  # Logfile reaches to 10 KBytes
```

---

### waitforcards
**🟢 Optional parameter**

Wait for local SCs on startup before opening network ports.

**Example:**
```ini
waitforcards = 0  # don't wait
```

**Default:**
```ini
waitforcards = 1  # wait
```

---

### waitforcards_extra_delay
**🟢 Optional parameter**

Additional delay in milliseconds after waiting for local SCs on startup before opening network ports.

**Format:**
```ini
waitforcards_extra_delay = milliseconds
```

**Default:**
```ini
waitforcards_extra_delay = 500
```

---

### preferlocalcards
**🟢 Optional parameter**

Try decoding on local cards first.

**Example:**
```ini
preferlocalcards = 0  # local cards are used like remote reader
preferlocalcards = 1  # prefer CacheEx sources
preferlocalcards = 2  # prefer local cards
```

**Default:**
```ini
preferlocalcards = 1  # prefer CacheEx sources
```

---

### readerrestartseconds
**🟢 Optional parameter**

Waiting time in seconds between restarts.

**Example:**
```ini
readerrestartseconds = 10  # waiting time 10 seconds
readerrestartseconds = 0   # no restarts!
```

**Default:**
```ini
readerrestartseconds = 5  # waiting time 5 seconds
```

---

### dropdups
**🟢 Optional parameter**

Mode for duplicate client connections.

```ini
dropdups = 0  # mark client as duplicate, but don't disconnect them (default)
dropdups = 1  # drop duplicate connections instead of marking as duplicate
```

**Format:**
```ini
dropdups = 0|1
```

**Example:**
```ini
dropdups = 1
```

**Default:**
```ini
dropdups = 0
```

---

### SIGHUP Reload Parameters

The following parameters control what OSCam reloads when it receives a SIGHUP signal. When enabled, sending SIGHUP to the OSCam process will reload the corresponding configuration without requiring a full restart.

---

### reload_useraccounts
**🟢 Optional parameter**

Reload user accounts (oscam.user) on SIGHUP signal.

**Format:**
```ini
reload_useraccounts = 0|1
```

**Example:**
```ini
reload_useraccounts = 1
```

**Default:**
```ini
reload_useraccounts = 0
```

---

### reload_readers
**🟢 Optional parameter**

Reload readers (oscam.server) on SIGHUP signal.

**Format:**
```ini
reload_readers = 0|1
```

**Example:**
```ini
reload_readers = 1
```

**Default:**
```ini
reload_readers = 0
```

---

### reload_provid
**🟢 Optional parameter**

Reload provider IDs (oscam.provid) on SIGHUP signal.

**Format:**
```ini
reload_provid = 0|1
```

**Example:**
```ini
reload_provid = 1
```

**Default:**
```ini
reload_provid = 0
```

---

### reload_services_ids
**🟢 Optional parameter**

Reload services IDs (oscam.srvid / oscam.srvid2) on SIGHUP signal.

**Format:**
```ini
reload_services_ids = 0|1
```

**Example:**
```ini
reload_services_ids = 1
```

**Default:**
```ini
reload_services_ids = 0
```

---

### reload_tier_ids
**🟢 Optional parameter**

Reload tier IDs (oscam.tiers) on SIGHUP signal.

**Format:**
```ini
reload_tier_ids = 0|1
```

**Example:**
```ini
reload_tier_ids = 1
```

**Default:**
```ini
reload_tier_ids = 0
```

---

### reload_fakecws
**🟢 Optional parameter**

Reload fake control words (oscam.fakecws) on SIGHUP signal.

**Format:**
```ini
reload_fakecws = 0|1
```

**Example:**
```ini
reload_fakecws = 1
```

**Default:**
```ini
reload_fakecws = 0
```

---

### reload_ac_stat
**🟢 Optional parameter**

Reload anti-cascading statistics on SIGHUP signal.

**Format:**
```ini
reload_ac_stat = 0|1
```

**Example:**
```ini
reload_ac_stat = 1
```

**Default:**
```ini
reload_ac_stat = 0
```

---

### reload_log
**🟢 Optional parameter**

Reopen log file on SIGHUP signal. Useful for log rotation.

**Format:**
```ini
reload_log = 0|1
```

**Example:**
```ini
reload_log = 1
```

**Default:**
```ini
reload_log = 0
```

---

### block_same_ip
**🟢 Optional parameter**

Reject looping ECMs from clients to reader with the same IP address.

```ini
block_same_ip = 0  # no reject
block_same_ip = 1  # reject looping ECMs (default)
```

**Format:**
```ini
block_same_ip = 0|1
```

**Example:**
```ini
block_same_ip = 0
```

**Default:**
```ini
block_same_ip = 1
```

---

### block_same_name
**🟢 Optional parameter**

Reject looping ECMs from clients to reader with the same name.

```ini
block_same_name = 0  # no reject
block_same_name = 1  # reject looping ECMs (default)
```

**Format:**
```ini
block_same_name = 0|1
```

**Example:**
```ini
block_same_name = 0
```

**Default:**
```ini
block_same_name = 1
```

---

### usrfile
**🟢 Optional parameter**

Set a name for userfile.

**Format of the userfile:**
```
date
time
CWs per second
username
IP address of client
TCP/IP port
CWs found
CWs from cache
CWs not found
CWs ignored
CWs timeout
CWs tunneled
login time in UNIX/POSIX format
logout time in UNIX/POSIX format
protocol
```

**Example:**
```ini
usrfile = userfile
```

**Default:**
```ini
usrfile = 0
```

---

### mailfile
**🟢 Optional parameter**

Define file saving NDS Videoguard mail messages from provider.

**Default:**
```ini
mailfile =  # none
```

---

### cwlogdir
**🟢 Optional parameter**

A path for CW logging can be configured here. The path is relative to the work directory and must exist. Otherwise no logs are created and no errors are reported.

CWs (control words) are the answers of the card which decrypts a certain channel for some seconds before the next CW is transmitted. The CW log file can be used for delayed decoding of this channel. This is also called offline decoding.

OSCam creates a new `*.cwl` file for each channel and each day. The file name contains the date, service ID and service name, e.g., `110808_I000B_Sky_Cinema_+1.cwl` with these contents:

```
# OSCam cardserver v0.99.4 - http://streamboard.gmc.to:8001/oscam/wiki
# control word log file for use with tsdec offline decrypter
# DATE 2011-08-08, TIME 23:49:10, TZ CEST
# CAID 0x1702, SID 0x000B, SERVICE "Sky_Cinema_+1"
1 9E E3 BB 3C A4 C3 BE 25 # 23:49:10
0 D0 24 B3 A7 95 82 3B 52 # 23:49:17
1 A9 76 35 54 37 38 F3 62 # 23:49:23
0 55 70 87 4C 22 26 C4 0C # 23:49:30
1 F0 16 22 28 36 3A 03 73 # 23:49:38
0 5D 83 44 24 8F C7 5D B3 # 23:49:44
```

All CWs are logged if at least one user watches the channel. Please choose a path with enough space, since per day and channel some 10KB of data are created. A script that moves/deletes the log files regularly is recommended.

**Example:**
```ini
cwlogdir = /var/log/
```

**Default:**
```ini
cwlogdir =  # no path for cw-log, logging disabled
```

---

### emmlogdir
**🟢 Optional parameter**

Setting a path for EMM-log. You can define with the "saveemm-*"-Parameters in oscam.server which EMMs should be logged.

**Example:**
```ini
emmlogdir = /var/log/
```

**Default:**
```ini
emmlogdir =  # the config folder will be used for emm logging
```

---

### lb_mode
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Loadbalance mode.

```ini
lb_mode = 0   # loadbalance disabled, ECMs go to all readers (default)
lb_mode = 1   # fastest reader first, after 5 ECMs the reader with the fastest
              # response time will be selected
lb_mode = 2   # oldest reader first, reader with the longest no answer
lb_mode = 3   # lowest usage level, the usage level will be calculated by the
              # sum of 5 ECMs response times, the higher a reader is busy,
              # the higher is usage level
lb_mode = 10  # LB is switched off, but statistics are built
```

**Format:**
```ini
lb_mode = 0|1|2|3|10
```

**Example:**
```ini
lb_mode = 1
```

**Default:**
```ini
lb_mode = 0
```

---

### lb_save
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Save autoloadbalance statistics (counts). To save CPU power a minimum count of 100 is recommended.

**Example:**
```ini
lb_save = 100  # counts of ECMs after statistics are saved
```

**Default:**
```ini
lb_save = 0  # no save
```

---

### lb_nbest_readers
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Set count of best readers for loadbalancing.

**Example:**
```ini
lb_nbest_readers = 2  # requests always go to two readers
```

**Default:**
```ini
lb_nbest_readers = 1  # requests go to one reader
```

---

### lb_nfb_readers
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Set count of fallback readers for loadbalancing.

**Example:**
```ini
lb_nfb_readers = 2  # two fallback readers
```

**Default:**
```ini
lb_nfb_readers = 1  # one fallback reader
```

---

### lb_min_ecmcount
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Minimal ECM count to evaluate loadbalancing values.

**Example:**
```ini
lb_min_ecmcount = 2  # 2 counts
```

**Default:**
```ini
lb_min_ecmcount = 5  # 5 counts
```

---

### lb_max_ecmcount
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Maximum ECM count before resetting loadbalancing values.

**Example:**
```ini
lb_max_ecmcount = 200  # 200 counts
```

**Default:**
```ini
lb_max_ecmcount = 500  # 500 counts
```

---

### lb_reopen_seconds
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Time in seconds between retrying failed readers/CAIDs/providers/services.

**Example:**
```ini
lb_reopen_seconds = 500  # retry after 500 seconds
```

**Default:**
```ini
lb_reopen_seconds = 900  # retry after 900 seconds
```

---

### lb_reopen_invalid
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

```ini
lb_reopen_invalid = 0  # E_INVALID will be blocked until statistics has been cleaned
lb_reopen_invalid = 1  # default
```

**Format:**
```ini
lb_reopen_invalid = 0|1
```

**Example:**
```ini
lb_reopen_invalid = 0
```

**Default:**
```ini
lb_reopen_invalid = 1
```

---

### lb_force_reopen_always
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Force reopening immediately all failing readers if no matching reader was found.

```ini
lb_force_reopen_always = 0  # default
lb_force_reopen_always = 1  # force reopening immediately
```

**Format:**
```ini
lb_force_reopen_always = 0|1
```

**Example:**
```ini
lb_force_reopen_always = 1
```

**Default:**
```ini
lb_force_reopen_always = 0
```

---

### lb_retrylimit
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Retry next readers **only** if response time is higher than lb_retrylimit in milliseconds.

**Example:**
```ini
lb_retrylimit = 500  # retry next reader only if response time is higher than 500 ms
```

**Default:**
```ini
lb_retrylimit = 800
```

---

### lb_stat_cleanup
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Hours after the loadbalancing statistics will be deleted.

**Default:**
```ini
lb_stat_cleanup = 336
```

---

### lb_max_readers
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Restrict the reader count to limit during learning.

**Format:**
```ini
lb_max_readers = limit
```

```ini
lb_max_readers = 0  # unlimited (default)
lb_max_readers = x  # restrict loadbalancer readers to limit x (number)
```

---

### lb_auto_betatunnel
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Enable automatic Betacrypt tunneling for CAIDs 1801, 1833, 1834 and 1835 in loadbalancing mode.

```ini
lb_auto_betatunnel = 0  # disabled
lb_auto_betatunnel = 1  # enabled (default)
```

**Format:**
```ini
lb_auto_betatunnel = 0|1
```

**Example:**
```ini
lb_auto_betatunnel = 0
```

**Default:**
```ini
lb_auto_betatunnel = 1
```

⚠️ **Attention:** Betacrypt definition in oscam.user with betatunnel will be preferred!

---

### lb_auto_betatunnel_mode
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Set mode for automatic Betacrypt tunneling.

```ini
lb_auto_betatunnel_mode = 0  # CAID 18XX tunneling to CAID 17X2 only (default)
lb_auto_betatunnel_mode = 1  # CAID 18XX tunneling to CAID 17X2 and CAID 17X2
                             # tunneling to CAID 18XX (CAID 1833/1801)
lb_auto_betatunnel_mode = 2  # CAID 18XX tunneling to CAID 17X2 and CAID 17X2
                             # tunneling to CAID 18XX (CAID 1833/1834)
lb_auto_betatunnel_mode = 3  # CAID 18XX tunneling to CAID 17X2 and CAID 17X2
                             # tunneling to CAID 18XX (CAID 1833/1835)
lb_auto_betatunnel_mode = 4  # CAID 17X2 tunneling to CAID 18XX (CAID 1833/1801 only)
lb_auto_betatunnel_mode = 5  # CAID 17X2 tunneling to CAID 18XX (CAID 1833/1834 only)
lb_auto_betatunnel_mode = 6  # CAID 17X2 tunneling to CAID 18XX (CAID 1833/1835 only)
```

**Format:**
```ini
lb_auto_betatunnel_mode = 0|1|2|3|4|5|6
```

**Example:**
```ini
lb_auto_betatunnel_mode = 1
```

**Default:**
```ini
lb_auto_betatunnel_mode = 0
```

---

### lb_auto_betatunnel_prefer_beta
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Set preference for automatic selection of Betacrypt/Nagravision.

**Format:**
```ini
lb_auto_betatunnel_prefer_beta = number
```

```ini
lb_auto_betatunnel_prefer_beta = 0    # disabled (default)
lb_auto_betatunnel_prefer_beta = 1    # always Betacrypt
lb_auto_betatunnel_prefer_beta = 105  # represents the middle
lb_auto_betatunnel_prefer_beta = 200  # always Nagravision
```

---

### lb_savepath
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Filename for saving loadbalancing statistics.

**Default:**
```ini
lb_savepath = /tmp/.oscam/stat
```

---

### lb_retrylimits
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Loadbalancing retry limit time per CAID in milliseconds, wildcard CAIDs with 2-digit CAIDs possible.

**Format:**
```ini
lb_retrylimits = CAID1:time1[,CAID2:time2]...
```

**Example:**
```ini
lb_retrylimits = 12:0100,34:0200,5678:0300  # wildcard CAIDs 12xx and 34xx
```

**Default:** none

---

### lb_nbest_percaid
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Set count of best readers per CAIDs for loadbalancing, wildcard CAIDs with two-digit CAIDs possible.

**Format:**
```ini
lb_nbest_percaid = CAID1:count[,CAID2:count]...
```

**Example:**
```ini
lb_nbest_percaid = 0100:4,0200:3,03:2,04:1  # wildcard CAIDs 03xx and 04xx
```

**Default:** none

---

### lb_noproviderforcaid
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Ignore provider information CAIDs to reduce statistic data, wildcard CAIDs with two-digit CAIDs possible.

**Format:**
```ini
lb_noproviderforcaid = CAID1[,CAID2]...
```

**Example:**
```ini
lb_noproviderforcaid = 12,34,5678  # wildcard CAIDs 12xx and 34xx
```

**Default:** none

---

### lb_auto_timeout
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Enable automatic timeout based on load balancing statistics.

```ini
lb_auto_timeout = 0  # default
lb_auto_timeout = 1  # enable automatic timeout
```

**Format:**
```ini
lb_auto_timeout = 0|1
```

**Example:**
```ini
lb_auto_timeout = 1
```

**Default:**
```ini
lb_auto_timeout = 0
```

---

### lb_auto_timeout_p
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Percent added to average time as timeout time.

**Format:**
```ini
lb_auto_timeout_p = percent
```

**Default:**
```ini
lb_auto_timeout_p = 30
```

---

### lb_auto_timeout_t
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Minimal time added to average time as timeout time.

**Format:**
```ini
lb_auto_timeout_t = milliseconds
```

**Default:**
```ini
lb_auto_timeout_t = 300
```

---

### double_check_caid
**🟢 Optional parameter**

ECM will be sent to two or more readers with the same SC and the CWs will be verified against each other for defined CAID or first two bytes of CAID. `lb_nbest_readers` must be set to 2 or higher.

**Format:**
```ini
double_check_caid = [CAID1|first two digits of CAID1],[CAID2|first two digits of CAID2]...
```

**Default:** none

---

### ecmfmt
**🟢 Optional parameter**

Define ECM log format.

**Format:**
```ini
ecmfmt = format
```

**Possible variables:**
```
c = CAID
d = PID
e = CSP hash
g = ID of origin gbox peer
h = checksum
i = Channel ID
j = distance of gbox and CCcam hops
l = length
o = ONID
p = provider ID
s = service ID
t = tier ID (this ID will be replaced with the tier-description from oscam.tiers if found)
w = CW
y = payload (short, 3 bytes)
Y = payload (long, 6 bytes)
```

Use a value as prefix to hide variable with this value, control characters will be escaped by "\\".

**Example:**
```ini
ecmfmt = c&0p/i/d/s/l:h.e_w HOP:j  # hide provider ID if 0
```

**Default:**
```ini
ecmfmt = c&p/i/s/l:h
```

---

### resolvegethostbyname
**🟢 Optional parameter**

Set mode for DNS resolving. These are different libc calls to resolve DNS names and some older systems have problems with the newer implementation *getaddrinfo* (getaddrinfo is also threadsafe whereas *gethostbyname* is not and thus it has some locks around) or have stripped them from their images (dbox2 was such a candidate) even though it is available at compile time.

```ini
resolvegethostbyname = 0  # getaddrinfo (default)
resolvegethostbyname = 1  # gethostbyname
```

**Format:**
```ini
resolvegethostbyname = 0|1
```

**Example:**
```ini
resolvegethostbyname = 1
```

**Default:**
```ini
resolvegethostbyname = 0
```

---

### failbantime
**🟢 Optional parameter**

Time for IP based blocking for clients with an invalid login attempt in minutes.

**Example:**
```ini
failbantime = 5  # IP will be blocked for 5 minutes
                 # New logins are denied
                 # No clientthread will be created
```

**Default:**
```ini
failbantime = 0  # failban off (default)
```

---

### failbancount
**🟢 Optional parameter**

Number of allowed failed attempts with incorrect data.

```ini
failbancount = 0  # IP is blocked on the first try with incorrect data (default)
failbancount = n  # number of allowed attempts
```

If within **failbantime** more than in **failbancount** allowed trials are registered, the IP for the remainder of failbantime is locked. After a period of failbantime, full failbancount is available again. Failbancount is thus a relaxation of rules!

---

### suppresscmd08
**🟢 Optional parameter**

Tell camd35 [cs3.57x]-clients not to request again for rejected CAID, service ID and provider ID combination.

```ini
suppresscmd08 = 0  # enabled (default)
suppresscmd08 = 1  # disabled
```

**Format:**
```ini
suppresscmd08 = 0|1
```

**Example:**
```ini
suppresscmd08 = 1
```

**Default:**
```ini
suppresscmd08 = 0
```

Can be overwritten in oscam.user!

More information: [Streamboard-Thread](http://www.streamboard.tv/wbb2/thread.php?threadid=27459)

---

### getblockemmauprovid
**🟢 Optional parameter**

Get provider ID from CAID for blocking EMM AU updates.

**Format:**
```ini
getblockemmauprovid = 0|1
```

**Example:**
```ini
getblockemmauprovid = 1
```

**Default:**
```ini
getblockemmauprovid = 0
```

---

### double_check
**🟢 Optional parameter**

ECM will be sent to two or more readers with the same SC and the CWs will be verified against each other. `lb_nbest_readers` must be set to 2 or higher.

**Example:**
```ini
double_check = 1  # on
```

**Default:**
```ini
double_check = 0  # off
```

---

### disablecrccws
**🟢 Optional parameter**

Skip CW checksum test globally. Some providers send CWs that don't pass the checksum test but are still valid.

**Format:**
```ini
disablecrccws = 0|1
```

**Example:**
```ini
disablecrccws = 1
```

**Default:**
```ini
disablecrccws = 0
```

---

### disablecrccws_only_for
**🟢 Optional parameter**

Skip CW checksum test only for specific CAIDs/providers/services. Use this for selective disabling instead of the global `disablecrccws` option.

**Format:**
```ini
disablecrccws_only_for = CAID1[:ident1][,CAID2[:ident2]]...
```

**Example:**
```ini
disablecrccws_only_for = 0100:000030,0500
```

**Default:** none

---

### cacheex_srcname_webif
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Display CacheEx source name in WebIF status.

**Format:**
```ini
cacheex_srcname_webif = 0|1
```

**Example:**
```ini
cacheex_srcname_webif = 1
```

**Default:**
```ini
cacheex_srcname_webif = 0
```

---

## [anticasc] Section

Section is needed if anticascading will be used to protect against unauthorized forwarding CardSharing.

```ini
[anticasc]
enabled                              =
numusers                             =
sampletime                           =
samples                              =
penalty                              =
aclogfile                            =
fakedelay                            =
denysamples                          =
acosc_enabled                        =
acosc_max_ecms_per_minute            =
acosc_max_active_sids                =
acosc_zap_limit                      =
acosc_penalty                        =
acosc_penalty_duration               =
acosc_delay                          =
```

### enabled
**🔴 Required parameter**

**(requires `CS_ANTICASC` compilation flag)**

Enable anti-cascading.

```ini
enabled = 0  # disabled (default)
enabled = 1  # enabled
```

**Format:**
```ini
enabled = 0|1
```

**Example:**
```ini
enabled = 1
```

**Default:**
```ini
enabled = 0
```

---

### numusers
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Anti-cascading: user per account (number).

**Format:**
```ini
numusers = 0  # anticascading disabled (default)
numusers = 1  # cascading for 1 user allowed (11 ecms/min)
numusers = 2  # cascading for 2 users allowed (17 ecms/min)
```

**Example:**
```ini
numusers = 2
```

**Default:**
```ini
numusers = 0
```

**Note:** Calculation based on oscam.ac value (default 10):
- numusers = 1 ==> (1*100+80)/(10*100/60) = 11 ecms allowed per minute
- numusers = 2 ==> (2*100+80)/(10*100/60) = 17 ecms allowed per minute

---

### sampletime
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Duration of sample in minutes.

**Format:**
```ini
sampletime = minutes
```

**Example:**
```ini
sampletime = 5
```

**Default:**
```ini
sampletime = 2
```

**Example calculation:**
```
numusers = 1 ==> 11 ecms * 5 minutes ==> 55 ecms allowed in 5 minutes
numusers = 2 ==> 17 ecms * 5 minutes ==> 85 ecms allowed in 5 minutes
```

---

### samples
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Number of additional ecms allowed (possible values between 2 and 10).

**Format:**
```ini
samples = 2-10
```

**Example:**
```ini
samples = 7
```

**Default:**
```ini
samples = 10
```

---

### penalty
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Level of the penalty if the user exceeds the allowed limit.

**Format:**
```ini
penalty = 0  # only logging (default)
penalty = 1  # send fake DWs
penalty = 2  # ban user temporary
penalty = 3  # send real DWs with delay (fakedelay)
```

**Example:**
```ini
penalty = 2
```

**Default:**
```ini
penalty = 0
```

penalty can be overwritten per user in oscam.user

---

### aclogfile
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

File for anti-cascading logging.

**Example:**
```ini
aclogfile = /var/log/anticasc.log
```

**Default:**
```ini
aclogfile =  # no logfile (default)
```

---

### fakedelay
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Fake delay time in milliseconds (possible values between 100 and 3000).

**Format:**
```ini
fakedelay = 100-3000
```

**Example:**
```ini
fakedelay = 500
```

**Default:**
```ini
fakedelay = 1000
```

---

### denysamples
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

How many samples should be penalized?

**Format:**
```ini
denysamples = count
```

**Example:**
```ini
denysamples = 10
```

**Default:**
```ini
denysamples = 8
```

---

### acosc_enabled
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Enable anticascading over SIDs count.

```ini
acosc_enabled = 0  # default
acosc_enabled = 1  # enable anticascading over SIDs count
```

**Format:**
```ini
acosc_enabled = 0|1
```

**Example:**
```ini
acosc_enabled = 1
```

**Default:**
```ini
acosc_enabled = 0
```

---

### acosc_max_ecms_per_minute
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Maximum ECM requests allowed per minute for anticascading over SIDs count (ACoSC).

**Format:**
```ini
acosc_max_ecms_per_minute = count
```

**Default:**
```ini
acosc_max_ecms_per_minute = 0  # unlimited (default)
```

Can be overwritten per user in oscam.user.

---

### acosc_max_active_sids
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Maximum active SIDs with anticascading over SIDs count.

**Format:**
```ini
acosc_max_active_sids = count
```

**Default:**
```ini
acosc_max_active_sids = 0  # unlimited (default)
```

Can be overwritten per user in oscam.user.

---

### acosc_zap_limit
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Zap limit for anticascading over SIDs count.

**Format:**
```ini
acosc_zap_limit = count
```

**Default:**
```ini
acosc_zap_limit = 0  # unlimited (default)
```

Can be overwritten per user in oscam.user.

---

### acosc_penalty
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Level of penalty with anticascading over SIDs count.

```ini
acosc_penalty = 0  # only logging (default)
acosc_penalty = 1  # send fake DWs
acosc_penalty = 2  # ban user temporary
acosc_penalty = 3  # send real DWs with delay
```

**Format:**
```ini
acosc_penalty = 0|1|2|3
```

**Example:**
```ini
acosc_penalty = 2
```

**Default:**
```ini
acosc_penalty = 0
```

Can be overwritten per user in oscam.user.

---

### acosc_penalty_duration
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Penalty duration for anticascading over SIDs count.

**Format:**
```ini
acosc_penalty_duration = seconds
```

**Default:**
```ini
acosc_penalty_duration = 0  # unlimited (default)
```

Can be overwritten per user in oscam.user.

---

### acosc_delay
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Delay for anticascading over SIDs count.

**Format:**
```ini
acosc_delay = milliseconds
```

**Default:**
```ini
acosc_delay = 0  # unlimited (default)
```

Can be overwritten per user in oscam.user.

---

## [cache] Section

```ini
[cache]
delay                                =
max_time                             =
cw_cache_size                        =
cw_cache_memory                      =
cw_cache_settings                    =
ecm_cache_size                       =
ecm_cache_memory                     =
ecm_cache_droptime                   =
max_hit_time                         =
wait_time                            =
cacheex_mode1_delay                  =
cacheexenablestats                   =
cacheex_dropdiffs                    =
cacheex_push_lg_groups               =
cacheex_lg_only_remote_settings      =
cacheex_localgenerated_only          =
cacheex_localgenerated_only_caid     =
cacheex_lg_only_tab                  =
cacheex_lg_only_in_aio_only          =
cacheex_localgenerated_only_in       =
cacheex_localgenerated_only_in_caid  =
cacheex_lg_only_in_tab               =
cacheex_ecm_filter                   =
cacheex_ecm_filter_aio               =
csp_port                             =
csp_serverip                         =
csp_ecm_filter                       =
csp_allow_request                    =
csp_allow_reforward                  =
cacheex_cw_check                     =
wait_until_ctimeout                  =
csp_block_fakecws                    =
cacheex_nopushafter                  =
waittime_block_start                 =
waittime_block_time                  =
cwcycle_check_enable                 =
cwcycle_check_caid                   =
cwcycle_maxlist                      =
cwcycle_keeptime                     =
cwcycle_onbad                        =
cwcycle_dropold                      =
cwcycle_sensitive                    =
cwcycle_allowbadfromffb              =
cwcycle_usecwcfromce                 =
```

### CW Cache Information

Cache of CWs which are saved to detect/drop old CWs arriving via CacheEx.
To enable this feature, you have to define `cw_cache_size` or `cw_cache_memory` to set the cache-size and `cw_cache_settings` to define for what CWs which action is taken.
If `cw_cache_size` or `cw_cache_memory` is defined, the default is that incoming known CWs older than 15 seconds are dropped, because they are useless.

### ECM Cache Information

Cache of ECMs which are saved to detect/drop old ECMs.
If you are facing problems with getting old ECMs, with this feature you are able to drop known ECMs. To enable this feature, you have to define `ecm_cache_size` or `ecm_cache_memory` to set the cache-size.

---

### delay
**🟢 Optional parameter**

Value to delay cached requests.

**Example:**
```ini
delay = 300
```

**Default:**
```ini
delay = 0
```

---

### max_time
**🟢 Optional parameter**

Maximum time CWs resist in cache after 1st client request (seconds). The time must be 2 seconds higher than the parameter clienttimeout.

**Format:**
```ini
max_time = seconds
```

**Default:**
```ini
max_time = 15
```

---

### cw_cache_size
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Count of max. CWs for cw_cache.

**Default:**
```ini
cw_cache_size = 0
```

---

### cw_cache_memory
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Size (in MB) of the cw_cache.

**Default:**
```ini
cw_cache_memory = 0
```

---

### cw_cache_settings
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

**Format:**
```ini
cw_cache_settings = caid[&mask][@provid][$servid]:mode:timediff_old_cw[,n]
```

**Mode:**
- `1` = just write logs @ log-level 8192
- `2` = drop CWs which match this rule & write logs @ log-level 8192

**timediff_old_cw:**
- `time` = time in milliseconds after a known CW is detected/dropped

**Example:**
```ini
cw_cache_settings = 0:2:1500,BEEF@012345:2:620,1337:1:170
```

- For all CWs not matching any other rule → drop if the CW is known for more than 1500ms
- Drop CWs of caid BEEF with provid 012345, if they are known for more than 620ms
- Log CWs of caid 1337 with all provids, if they are known for more than 170ms

**Default:**
```ini
cw_cache_settings =  # disabled
```

---

### ecm_cache_size
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Count of max. ECMs for ecm_cache.

**Default:**
```ini
ecm_cache_size = 0
```

---

### ecm_cache_memory
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Size (in MB) of the ecm_cache.

**Default:**
```ini
ecm_cache_memory = 0
```

---

### ecm_cache_droptime
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Time in seconds after a known ECM is dropped with return-code E_INVALID.

**Default:**
```ini
ecm_cache_droptime = 0
```

---

### max_hit_time
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Maximum time for cache exchange hits resists in cache for evaluating wait_time (in seconds).

**Default:**
```ini
max_hit_time = 15
```

---

### wait_time
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Wait time for cache exchange (mode 2 & 3 only!) and Cardserver proxy before sending ECM to reader or proxy.

**Format:**
```ini
wait_time = milliseconds
```

**Example:**
```ini
wait_time = 0:50:250,0200@00009X:50:150:950,0500@000001:150:1602&ffdf:1200
```

**Default:**
```ini
wait_time =  # none
```

---

### cacheex_mode1_delay
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Delay in milliseconds for asking cache exchange mode 1 readers.

**Format:**
```ini
cacheex_mode1_delay = CAID1:time[,CAID2:time]...
```

**Default:** none

---

### cacheexenablestats
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Enable statistics for cache exchange mode.

```ini
cacheexenablestats = 0  # disabled (default)
cacheexenablestats = 1  # enable statistics
```

**Format:**
```ini
cacheexenablestats = 0|1
```

**Example:**
```ini
cacheexenablestats = 1
```

**Default:**
```ini
cacheexenablestats = 0
```

⚠️ **Warning:** Please consider memory consumption!

---

### cacheex_dropdiffs
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Drop incoming not-localgenerated-flagged CWs which differ from the first CW.

```ini
cacheex_dropdiffs = 0  # default
cacheex_dropdiffs = 1  # drop different CWs
```

**Format:**
```ini
cacheex_dropdiffs = 0|1
```

**Example:**
```ini
cacheex_dropdiffs = 1
```

**Default:**
```ini
cacheex_dropdiffs = 0
```

---

### cacheex_push_lg_groups
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Push all lg-flagged CWs to this/these group/s, without checking the groupmembership of the peer.

**Format:**
```ini
cacheex_push_lg_groups = 1[,n]
```

**Default:**
```ini
cacheex_push_lg_groups =  # none
```

---

### cacheex_lg_only_remote_settings
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Possibility to deny cacheex-receiver/client (cx2: user / cx3: reader) to overwrite the following settings @ cacheex-sending-instance:
- `cacheex_localgenerated_only`
- `cacheex_lg_only_tab`

It makes sense if you want to force your local settings. If the user/reader isn't allowed to overwrite your values:
- It is still possible for the cacheex-receiver to set `cacheex_localgenerated_only=1`, if the user/reader defines `cacheex_localgenerated_only_in=1`; but it is only @ cacheex-sending-instance possible to disable it
- It is still possible for the cacheex-receiver to add `cacheex_lg_only_tab`, if the user/reader defines `cacheex_lg_only_in_tab=1234,1337`; but it is only merged to the sender-instance `cacheex_lg_only_tab` values

If `cacheex_lg_only_remote_settings` @oscam.conf is enabled, the user/reader-settings are ignored. If `cacheex_lg_only_remote_settings` @oscam.conf is disabled, the user/reader-settings are used.

```ini
cacheex_lg_only_remote_settings = 0  # default (opt-out)
cacheex_lg_only_remote_settings = 1
```

**Format:**
```ini
cacheex_lg_only_remote_settings = 0|1
```

**Example:**
```ini
cacheex_lg_only_remote_settings = 1
```

**Default:**
```ini
cacheex_lg_only_remote_settings = 0
```

---

### cacheex_localgenerated_only
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Forward only CWs which are flagged as localgenerated. Here in oscam.conf, the default value is set; user/reader-settings are prioritized.

```ini
cacheex_localgenerated_only = 0  # default (opt-in)
cacheex_localgenerated_only = 1
```

**Format:**
```ini
cacheex_localgenerated_only = 0|1
```

**Example:**
```ini
cacheex_localgenerated_only = 1
```

**Default:**
```ini
cacheex_localgenerated_only = 0
```

---

### cacheex_localgenerated_only_caid
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

CAID table for localgenerated-only filter. Forward only locally generated CWs for these CAIDs. Deprecated: use `cacheex_lg_only_tab` instead.

**Format:**
```ini
cacheex_localgenerated_only_caid = CAID1[,CAID2]...
```

**Example:**
```ini
cacheex_localgenerated_only_caid = 0100,0500,1702
```

**Default:**
```ini
cacheex_localgenerated_only_caid =
```

---

### cacheex_lg_only_tab
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Forward only CWs which are lg-flagged for these list of caid/provid(s). Here in oscam.conf, the default value is set; user/reader-settings are prioritized.

If provid `FFFFFE` is set, all provids for this caid are valid!

**Format:**
```ini
cacheex_lg_only_tab = caid1:provid1[,provid2];caid2:provid1;
```

---

### cacheex_lg_only_in_aio_only
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Use drop lg-only settings (`cacheex_localgenerated_only_in` & `cacheex_lg_only_in_tab`) only if peer is detected as cx-aio-patched or svn >= 11588. Here in oscam.conf, the default value is set; user/reader-settings are prioritized.

```ini
cacheex_lg_only_in_aio_only = 0  # default (opt-in)
cacheex_lg_only_in_aio_only = 1
```

**Format:**
```ini
cacheex_lg_only_in_aio_only = 0|1
```

**Example:**
```ini
cacheex_lg_only_in_aio_only = 1
```

**Default:**
```ini
cacheex_lg_only_in_aio_only = 0
```

---

### cacheex_localgenerated_only_in
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Accept only CWs which are flagged as localgenerated for incoming CacheEx traffic. This is the global enable/disable switch for the incoming localgenerated-only filter. Works in conjunction with `cacheex_localgenerated_only_in_caid` (deprecated) or `cacheex_lg_only_in_tab`. Here in oscam.conf, the default value is set; user/reader-settings are prioritized.

```ini
cacheex_localgenerated_only_in = 0  # accept all CWs (default)
cacheex_localgenerated_only_in = 1  # accept only lg-flagged CWs
```

**Format:**
```ini
cacheex_localgenerated_only_in = 0|1
```

**Example:**
```ini
cacheex_localgenerated_only_in = 1
```

**Default:**
```ini
cacheex_localgenerated_only_in = 0
```

---

### cacheex_localgenerated_only_in_caid
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

CAID table for incoming localgenerated-only filter. Accept only locally generated CWs for these CAIDs. Deprecated: use `cacheex_lg_only_in_tab` instead.

**Format:**
```ini
cacheex_localgenerated_only_in_caid = CAID1[,CAID2]...
```

**Example:**
```ini
cacheex_localgenerated_only_in_caid = 0100,0500,1702
```

**Default:**
```ini
cacheex_localgenerated_only_in_caid =
```

---

### cacheex_lg_only_in_tab
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Allow incoming CWs only if they are lg-flagged for these list of caid/provid(s). Here in oscam.conf, the default value is set; user/reader-settings are prioritized.

If provid `FFFFFE` is set, all provids for this caid are valid!

**Format:**
```ini
cacheex_lg_only_in_tab = caid1:provid1[,provid2];caid2:provid1;
```

---

### cacheex_ecm_filter
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Set a global cacheex_ecm_filter. Here in oscam.conf, the default value is set; user/reader-settings are prioritized.

**Format:**
```ini
cacheex_ecm_filter = [caid][&mask][@provid][$servid],n
```

---

### cacheex_ecm_filter_aio
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Set a global cacheex_ecm_filter which is used if peer is detected as cx-aio-patched or svn >= 11588. The default limit of 15/30 (camd3/cccam) filters is obsolete.

Here in oscam.conf, the default value is set; user/reader-settings (cacheex_ecm_filter) are prioritized.

**Format:**
```ini
cacheex_ecm_filter_aio = [caid][&mask][@provid][$servid],n
```

---

### csp_port
**🔴 Required parameter**

**(requires `CS_CACHEEX` compilation flag)**

This is a UDP (**not TCP**) listen port for incoming traffic from CSP nodes.

**Example:**
```ini
csp_port = 12345
```

**Default:**
```ini
csp_port =  # none
```

---

### csp_serverip
**🔴 Required parameter**

**(requires `CS_CACHEEX` compilation flag)**

This is the local bind IP of csp_port.

**Example:**
```ini
csp_serverip = 192.168.1.1
```

**Default:**
```ini
csp_serverip =  # none
```

---

### csp_ecm_filter
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

**Format:**
```ini
csp_ecm_filter = [caid][&mask][@provid][$servid]
```

---

### csp_allow_request
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

```ini
csp_allow_request = 0
csp_allow_request = 1  # default
```

**Format:**
```ini
csp_allow_request = 0|1
```

**Example:**
```ini
csp_allow_request = 0
```

**Default:**
```ini
csp_allow_request = 1
```

---

### csp_allow_reforward
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Allow reforwarding of CacheEx CWs via CSP (Cardservproxy protocol).

**Format:**
```ini
csp_allow_reforward = 0|1
```

**Example:**
```ini
csp_allow_reforward = 1
```

**Default:**
```ini
csp_allow_reforward = 0
```

---

### cacheex_cw_check
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

**Format:**
```ini
cacheex_cw_check = caid[&mask][@provid][$servid]:mode:counter[,n]
```

**Mode:**

Specify behaviour for counter parameter:
- `0` = when wait_time expires, serve highest counter's CW got anyway, even if no counter reached (default)
- `1` = never serve CW (coming from cacheex) stored in cache if its counter not reaches counter. When wait_time expires, requests will go to normal readers! Only when a CW reaches counter, it can be served to clients.

**Counter:**

Set minimum CW counter to allow CW is used.

**Default:** `1` (use default behaviour: use CW with highest counter when cache is checked)

---

### wait_until_ctimeout
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Answer when cache exchange timeout expires, if no normal readers are available for sending ECMs.

```ini
wait_until_ctimeout = 0  # immediately send not found to client (default)
wait_until_ctimeout = 1  # wait for cache exchange answer until client timeout expires
```

**Format:**
```ini
wait_until_ctimeout = 0|1
```

**Example:**
```ini
wait_until_ctimeout = 1
```

**Default:**
```ini
wait_until_ctimeout = 0
```

---

### csp_block_fakecws
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Block fake CWs received via CSP. Fake CWs are control words that match patterns defined in oscam.fakecws.

**Format:**
```ini
csp_block_fakecws = 0|1
```

**Example:**
```ini
csp_block_fakecws = 1
```

**Default:**
```ini
csp_block_fakecws = 0
```

---

### cacheex_nopushafter
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Don't forward CWs from local/proxy-reader via CacheEx, if the defined time_in_ms for the CAID is reached. Here in oscam.conf this setting is for evaluating the response-time for local/proxy-readers and is used for CacheEx2-reader/CacheEx3-user as default, when no reader/user cacheex_nopushafter is set.

**Format:**
```ini
cacheex_nopushafter = CAID:time_in_ms[,n]
```

---

### waittime_block_start
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Number of (dyn)wait_time timeouts to start blocking the use of (dyn)wait_time for this service (caid:provid:srvid).

**Default:**
```ini
waittime_block_start = 0
```

---

### waittime_block_time
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Seconds the (dyn)wait_time isn't used and ECMs are forwarded to the reader/s.

**Default:**
```ini
waittime_block_time = 0
```

---

### cwcycle_check_enable
**🟢 Optional parameter**

**(requires `CW_CYCLE_CHECK` compilation flag)**

Enable CW cycle check.

```ini
cwcycle_check_enable = 0  # disable (default)
cwcycle_check_enable = 1  # enable
```

**Format:**
```ini
cwcycle_check_enable = 0|1
```

**Example:**
```ini
cwcycle_check_enable = 1
```

**Default:**
```ini
cwcycle_check_enable = 0
```

---

### cwcycle_check_caid
**🟢 Optional parameter**

**(requires `CW_CYCLE_CHECK` compilation flag)**

⚠️ **Attention: not for all NDS SCs!**

CAID enabled for CW cycle check.

**Format:**
```ini
cwcycle_check_caid = CAID[,CAID]...
```

**Default:** none

---

### cwcycle_maxlist
**🟢 Optional parameter**

**(requires `CW_CYCLE_CHECK` compilation flag)**

Maximum CW cycle list entries.

**Format:**
```ini
cwcycle_maxlist = count
```

**Default:**
```ini
cwcycle_maxlist = 500  # maximum = 4000
```

---

### cwcycle_keeptime
**🟢 Optional parameter**

**(requires `CW_CYCLE_CHECK` compilation flag)**

Minimum time a learned cycletime resists in memory (minutes).

**Default:**
```ini
cwcycle_keeptime = 0  # maximum = 15
```

---

### cwcycle_onbad
**🟢 Optional parameter**

**(requires `CW_CYCLE_CHECK` compilation flag)**

```ini
cwcycle_onbad = 0  # log bad CW cycle only
cwcycle_onbad = 1  # drop bad CW cycle (default)
```

**Format:**
```ini
cwcycle_onbad = 0|1
```

**Example:**
```ini
cwcycle_onbad = 0
```

**Default:**
```ini
cwcycle_onbad = 1
```

---

### cwcycle_dropold
**🟢 Optional parameter**

**(requires `CW_CYCLE_CHECK` compilation flag)**

```ini
cwcycle_dropold = 0  # no drop (default)
cwcycle_dropold = 1  # drop old CW cycle
```

**Format:**
```ini
cwcycle_dropold = 0|1
```

**Example:**
```ini
cwcycle_dropold = 1
```

**Default:**
```ini
cwcycle_dropold = 0
```

---

### cwcycle_sensitive
**🟢 Optional parameter**

**(requires `CW_CYCLE_CHECK` compilation flag)**

```ini
cwcycle_sensitive = 0  # disabled (default)
cwcycle_sensitive = 2  # 2 (or more) same bytes and drop new CW
cwcycle_sensitive = 3  # 3 (or more) same bytes and drop new CW
cwcycle_sensitive = 4  # 4 (or more) same bytes and drop new CW
```

**Format:**
```ini
cwcycle_sensitive = 0|2|3|4
```

**Example:**
```ini
cwcycle_sensitive = 3
```

**Default:**
```ini
cwcycle_sensitive = 0
```

---

### cwcycle_allowbadfromffb
**🟢 Optional parameter**

**(requires `CW_CYCLE_CHECK` compilation flag)**

Allow bad cycles from a fixed fallback reader.

```ini
cwcycle_allowbadfromffb = 0  # default
cwcycle_allowbadfromffb = 1  # allow bad cycles from fixed fallback reader
```

**Format:**
```ini
cwcycle_allowbadfromffb = 0|1
```

**Example:**
```ini
cwcycle_allowbadfromffb = 1
```

**Default:**
```ini
cwcycle_allowbadfromffb = 0
```

---

### cwcycle_usecwcfromce
**🟢 Optional parameter**

**(requires `CW_CYCLE_CHECK` compilation flag)**

Use CW info from cache exchange.

```ini
cwcycle_usecwcfromce = 0  # default
cwcycle_usecwcfromce = 1  # use CW info from cache exchange
```

**Format:**
```ini
cwcycle_usecwcfromce = 0|1
```

**Example:**
```ini
cwcycle_usecwcfromce = 1
```

**Default:**
```ini
cwcycle_usecwcfromce = 0
```

---

## [lcd] Section

```ini
[lcd]
enablelcd                            =
lcd_outputpath                       =
lcd_hideidle                         =
lcd_writeintervall                    =
```

### enablelcd
**🟢 Optional parameter**

**(requires `LCDSUPPORT` compilation flag)**

Enable LCD.

```ini
enablelcd = 0  # default
enablelcd = 1  # enable LCD
```

**Format:**
```ini
enablelcd = 0|1
```

**Example:**
```ini
enablelcd = 1
```

**Default:**
```ini
enablelcd = 0
```

---

### lcd_outputpath
**🟢 Optional parameter**

**(requires `LCDSUPPORT` compilation flag)**

Path for LCD output.

**Format:**
```ini
lcd_outputpath = path
```

**Example:**
```ini
lcd_outputpath = /var/log/lcd
```

**Default:**
```ini
lcd_outputpath = /tmp
```

---

### lcd_hideidle
**🟢 Optional parameter**

**(requires `LCDSUPPORT` compilation flag)**

Hide reader in LCD output if reader idle > 20 seconds.

**Format:**
```ini
lcd_hideidle = 0|1
```

**Example:**
```ini
lcd_hideidle = 1
```

**Default:**
```ini
lcd_hideidle = 0
```

---

### lcd_writeintervall
**🟢 Optional parameter**

**(requires `LCDSUPPORT` compilation flag)**

LCD refresh interval in seconds (minimum 5).

**Format:**
```ini
lcd_writeintervall = seconds
```

**Example:**
```ini
lcd_writeintervall = 15
```

**Default:**
```ini
lcd_writeintervall = 10
```

---

## [newcamd] Section (TCP)

Section required only if newcamd will be used as client protocol!

```ini
[newcamd]
port                                 =
serverip                             =
allowed                              =
key                                  =
keepalive                            =
mgclient                             =
```

### port
**🔴 Required parameter**

**(requires `MODULE_NEWCAMD` compilation flag)**

TCP port/DES key/CAID/ident definitions. Each CAID requires a separate port. If you don't specify a DES key for a port, the default DES Key will be used!

**Format:**
```ini
port = port[{DES key}]@CAID[:ident][,ident]...[;port[{DES key}]@CAID[:ident][,ident]...]...
```

**Example:**
```ini
port = 15000@1234:000000
# CAID 1234 connected with port 15000

port = 15000@1234:000000;15001@5678:000000
# CAID 1234 connected with port 15000, CAID 5678 with port 15001
```

---

### serverip
**🟢 Optional parameter**

**(requires `MODULE_NEWCAMD` compilation flag)**

Bind service to specified IP address.

**Example:**
```ini
serverip = 192.168.178.1
```

**Default:**
```ini
serverip =
```

---

### key
**🔴 Required parameter**

**(requires `MODULE_NEWCAMD` compilation flag)**

DES key - Default key for newcamd client encryption.

**Example:**
```ini
key = 0102030405060708091011121314
```

---

### keepalive
**🟢 Optional parameter**

**(requires `MODULE_NEWCAMD` compilation flag)**

Enable keepalive.

```ini
keepalive = 0  # disabled (default)
keepalive = 1  # enabled
```

**Format:**
```ini
keepalive = 0|1
```

**Example:**
```ini
keepalive = 1
```

**Default:**
```ini
keepalive = 0
```

---

### mgclient
**🟢 Optional parameter**

**(requires `MODULE_NEWCAMD` compilation flag)**

Enable mgcamd extended newcamd protocol, allowing for a single connection to work with multiple providers.

```ini
mgclient = 0  # disabled (default)
mgclient = 1  # enabled
```

**Format:**
```ini
mgclient = 0|1
```

**Example:**
```ini
mgclient = 1
```

**Default:**
```ini
mgclient = 0
```

---

## [cccam] Section (TCP)

Section required only if CCcam will be used as client protocol!

```ini
[cccam]
port                                 =
serverip                             =
nodeid                               =
version                              =
reshare                              =
reshare_mode                         =
ignorereshare                        =
forward_origin_card                  =
stealth                              =
updateinterval                       =
minimizecards                        =
keepconnected                        =
recv_timeout                         =
```

### port
**🔴 Required parameter**

**(requires `MODULE_CCCAM` compilation flag)**

TCP/IP-Ports for CCcam clients, enables CCcam protocol!

**Format:**
```ini
port = 0|port[,port...]
```

**Example:**
```ini
port = 12000
port = 12000,12001
port = 0  # CCcam protocol disabled (default)
```

---

### serverip
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

Bind service to specified IP address.

**Example:**
```ini
serverip = 192.168.178.1
```

**Default:**
```ini
serverip =
```

---

### nodeid
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

Set CCcam node ID in hex.

**Format:**
```ini
nodeid = ID
```

**Example:**
```ini
nodeid = 0a0b0c0d0e0f1011
```

**Default:** none

---

### version
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

Define CCcam version, minimum CCcam version 2.0.11, used with original CCcam only.

**Format:**
```ini
version = <main version>,<version>,<sub version>
```

**Example:**
```ini
version = 2.0.11
```

**Default:** none

---

### reshare
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

Reshare level for CCcam clients.

**Format:**
```ini
reshare = -1  # no resharing
reshare =  0  # resharing for direct peer only
reshare =  1  # resharing for direct peer and next level
reshare =  x  # resharing for direct peer and next x level (x for number of level)
reshare = 10  # default
```

**Example:**
```ini
reshare = 1
```

**Default:**
```ini
reshare = 10
```

Reshare could be defined in 2 ways:
- reader (`cccreshare`)
- user-account (`cccreshare`)

A card's reshare value is set to the smallest value of the 2 parameters!

---

### reshare_mode
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

CCcam reshare mode.

**Format:**
```ini
reshare_mode = 0  # reader reshares only received SCs for CCcam readers,
                  # defined filters/CAIDs/idents on other readers (default)
reshare_mode = 1  # reader reshares received SCs (like=0) and defined services
reshare_mode = 2  # reader reshares only defined reader services as virtual SCs
reshare_mode = 3  # reader reshares only defined user services as virtual SCs
reshare_mode = 4  # reader reshares only received cards
```

**Example:**
```ini
reshare_mode = 1
```

**Default:**
```ini
reshare_mode = 0
```

Every server is shared as hop=0 and with defined reshare values.

Service reshare only works if positive services defined: no service - no reshare!

---

### ignorereshare
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

CCcam reshare setting.

```ini
ignorereshare = 0  # use reshare setting of server (default)
ignorereshare = 1  # use reshare setting of reader or user
```

**Format:**
```ini
ignorereshare = 0|1
```

**Example:**
```ini
ignorereshare = 1
```

**Default:**
```ini
ignorereshare = 0
```

---

### forward_origin_card
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

Forward ECM request to reader holding this card, loadbalancer, fallback and caching will be disabled.

```ini
forward_origin_card = 0  # default
forward_origin_card = 1  # forward ECM request to reader holding this card
```

**Format:**
```ini
forward_origin_card = 0|1
```

**Example:**
```ini
forward_origin_card = 1
```

**Default:**
```ini
forward_origin_card = 0
```

---

### stealth
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

Behaviour like the original CCcam: no activate partner detection and extended OSCam-CCcam protocol, prevent other OSCam to detect the server as OSCam server.

```ini
stealth = 0  # stealth disabled (default)
stealth = 1  # stealth enabled
```

**Format:**
```ini
stealth = 0|1
```

**Example:**
```ini
stealth = 1
```

**Default:**
```ini
stealth = 0
```

---

### updateinterval
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

Interval to provide share list update to CCcam clients in seconds.

**Format:**
```ini
updateinterval = 0    # update based on server updates, values <= 10 are invalid and will be set to 30
updateinterval = 240  # default
```

**Example:**
```ini
updateinterval = 120
```

**Default:**
```ini
updateinterval = 240
```

---

### minimizecards
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

Mode how to provide CCcam servers to CCcam clients.

```ini
minimizecards = 0  # no aggregation, remove duplicates only (default)
minimizecards = 1  # based on minimum hop: two SCs with different hops are summarized,
                   # new SCs get a smaller hop
```

**Format:**
```ini
minimizecards = 0|1
```

**Example:**
```ini
minimizecards = 1
```

**Default:**
```ini
minimizecards = 0
```

---

### keepconnected
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

Set CCcam keepalive mode.

```ini
keepconnected = 0  # disconnect client when max idle time is reached
keepconnected = 1  # keep client connected (default)
```

**Format:**
```ini
keepconnected = 0|1
```

**Example:**
```ini
keepconnected = 0
```

**Default:**
```ini
keepconnected = 1
```

---

### recv_timeout
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

Set network timeout for receiving data.

**Format:**
```ini
recv_timeout = milliseconds
```

**Default:**
```ini
recv_timeout = 2000
```

---

## [camd33] Section (TCP)

Section required only if camd33 will be used as client protocol!

```ini
[camd33]
port                                 =
serverip                             =
nocrypt                              =
passive                              =
key                                  =
```

### port
**🔴 Required parameter**

**(requires `MODULE_CAMD33` compilation flag)**

TCP/IP port for camd 3.3x clients.

**Example:**
```ini
port = 15000
port = 0      # disabled (default)
```

---

### serverip
**🟢 Optional parameter**

**(requires `MODULE_CAMD33` compilation flag)**

Bind service to specified IP address.

**Example:**
```ini
serverip = 192.168.178.1
```

**Default:**
```ini
serverip =  # listening to all
```

---

### nocrypt
**🟢 Optional parameter**

**(requires `MODULE_CAMD33` compilation flag)**

Unsecured camd 3.3x client connection.

**Format:**
```ini
nocrypt = IP address|IP address range[,IP address|IP address range]...
```

**Example:**
```ini
nocrypt = 127.0.0.1,192.168.0.0-192.168.255.255
```

**Default:**
```ini
nocrypt =  # none
```

---

### passive
**🟢 Optional parameter**

**(requires `MODULE_CAMD33` compilation flag)**

Force passive camd 3.3x client.

Camd3.3x protocol generally has active clients. In certain circumstances the client must be switched to "passive" mode only.

**Example:**
```ini
passive = 1
```

**Default:**
```ini
passive = 0
```

---

### key
**🟢 Optional parameter**

**(requires `MODULE_CAMD33` compilation flag)**

128 bit key for camd 3.3x client encryption.

**Example:**
```ini
key = 01020304050607080910111213141516
```

**Default:**
```ini
key =  # none
```

---

## [cs357x] Section (UDP)

Section required only if cs357x will be used as client protocol! These protocols principle encrypt and build the key from user name.

⚠️ **Attention:** **cs357x** was also known as **camd35**. Both terms mean the same protocol with the same functions and parameters. In the future, to avoid confusion **only cs357x** is used.

```ini
[cs357x]
port                   =
serverip               =
suppresscmd08          =
```

### port
**🔴 Required parameter**

**(requires `MODULE_CAMD35` compilation flag)**

UDP port for camd 3.5x|cs357x clients. Port must be opened at router!

**Example:**
```ini
port = 15000
port = 0      # disabled (default)
```

---

### serverip
**🟢 Optional parameter**

**(requires `MODULE_CAMD35` compilation flag)**

Bind service to specified IP address.

**Example:**
```ini
serverip = 192.168.178.1
```

**Default:**
```ini
serverip =  # all (default)
```

---

### suppresscmd08
**🟢 Optional parameter**

**(requires `MODULE_CAMD35` compilation flag)**

Tell camd35|cs3.57x-clients not to request again for rejected CAID, service ID and provider ID combination.

```ini
suppresscmd08 = 0  # enabled (default)
suppresscmd08 = 1  # disabled
```

**Format:**
```ini
suppresscmd08 = 0|1
```

**Example:**
```ini
suppresscmd08 = 1
```

**Default:**
```ini
suppresscmd08 = 0
```

Can be overwritten in oscam.user!

More information: [Streamboard-Thread](http://www.streamboard.tv/wbb2/thread.php?threadid=27459)

---

## [cs378x] Section (TCP)

Section required only if cs378x (camd 3.5x in TCP) will be used as client protocol!

```ini
[cs378x]
port                                 =
serverip                             =
suppresscmd08                        =
```

### port
**🔴 Required parameter**

**(requires `MODULE_CAMD35_TCP` compilation flag)**

Port(s) TCP for cs378x clients (camd 3.5x in TCP mode). Port(s) must be opened at router!

**Format:**
```ini
port = port@CAID[:ident][,ident]...[;port@CAID[:ident][,ident]...]...
```

**Example:**
```ini
port = 15000@0500:030B00;22764@0648
```

---

### serverip
**🟢 Optional parameter**

**(requires `MODULE_CAMD35_TCP` compilation flag)**

Bind service to specified IP address.

**Example:**
```ini
serverip = 192.168.178.1
```

**Default:**
```ini
serverip =  # all (default)
```

---

### suppresscmd08
**🟢 Optional parameter**

**(requires `MODULE_CAMD35_TCP` compilation flag)**

Tell cs3.78x clients not to request again for rejected CAID, service ID and provider ID combination.

```ini
suppresscmd08 = 0  # enabled (default)
suppresscmd08 = 1  # disabled
```

**Format:**
```ini
suppresscmd08 = 0|1
```

**Example:**
```ini
suppresscmd08 = 1
```

**Default:**
```ini
suppresscmd08 = 0
```

More information: [Streamboard-Thread](http://www.streamboard.tv/wbb2/thread.php?threadid=27459)

---

## [radegast] Section

Section required only if radegast will be used as client protocol!

```ini
[radegast]
port                  =
serverip              =
allowed               =
user                  =
```

### port
**🔴 Required parameter**

**(requires `MODULE_RADEGAST` compilation flag)**

TCP/IP port for radegast clients (enables radegast).

**Example:**
```ini
port = 15000
```

**Default:**
```ini
port = 0
```

---

### serverip
**🟢 Optional parameter**

**(requires `MODULE_RADEGAST` compilation flag)**

Bind service to specified IP address.

**Example:**
```ini
serverip = 192.162.9.1
```

**Default:**
```ini
serverip =  # all IPs allowed (default)
```

---

### allowed
**🟢 Optional parameter**

**(requires `MODULE_RADEGAST` compilation flag)**

Client connections allowed from.

**Format:**
```ini
allowed = IP address|IP range[,IP address|IP range]...
```

**Example:**
```ini
allowed = 127.0.0.1,192.168.0.0-192.168.255.255
# Host and range 192.168.0 are allowed
```

---

### user
**🔴 Required parameter**

**(requires `MODULE_RADEGAST` compilation flag)**

User name for radegast client.

**Format:**
```ini
user = username
```

---

## [serial] Section

Section required only if serial interface will be used!

```ini
[serial]
device                =
```

### device
**🟢 Optional parameter**

**(requires `MODULE_SERIAL` compilation flag)**

Parameter of device.

**Format:**
```ini
device = <user>@<device>[:baud][?option1=value1][?option2=value2]
```

**Parameters:**
- `user` = account
- `device` = name of Serial Device
- `option` = timeout = milliseconds timeout for connection (default: 50)
- `option` = delay = milliseconds additive between 2 characters

**Supported serial devices:**
- HSIC - Humax Sharing Interface Client
- SSSP - Simple Serial Sharing Protocol
- bomba - BOMBA Firmware
- dsr9500 - DSR 9500

---

## [pandora] Section

**Dummy for new section Pandora** svn 5988

```ini
[pandora]
pand_port                            =
pand_srvid                           =
pand_usr                             =
pand_pass                            =
pand_ecm                             =
pand_skip_send_dw                    =
pand_allowed                         =
```

### pand_port
**🟢 Optional parameter**

**(requires `MODULE_PANDORA` compilation flag)**

pand_port = dummy

---

### pand_srvid
**🟢 Optional parameter**

**(requires `MODULE_PANDORA` compilation flag)**

pand_srvid = dummy

---

### pand_usr
**🟢 Optional parameter**

**(requires `MODULE_PANDORA` compilation flag)**

pand_usr = dummy

---

### pand_pass
**🟢 Optional parameter**

**(requires `MODULE_PANDORA` compilation flag)**

pand_pass = dummy

---

### pand_ecm
**🟢 Optional parameter**

**(requires `MODULE_PANDORA` compilation flag)**

pand_ecm = dummy

---

### pand_skip_send_dw
**🟢 Optional parameter**

**(requires `MODULE_PANDORA` compilation flag)**

pand_skip_send_dw = dummy

---

### pand_allowed
**🟢 Optional parameter**

**(requires `MODULE_PANDORA` compilation flag)**

pand_allowed = dummy

---

## [gbox] Section

```ini
[gbox]
port                                 =
hostname                             =
my_password                          =
gbox_reconnect                       =
my_vers                              =
my_cpu_api                           =
gsms_disable                         =
dis_attack_txt                       =
log_hello                            =
tmp_dir                              =
ignore_peer                          =
accept_remm_peer                     =
block_ecm                            =
proxy_card                           =
gbox_save_gsms                       =
gbox_msg_type                        =
gbox_dest_peers                      =
gbox_msg_txt                         =
ccc_reshare                          =
```

### Minimal working configuration example

Let's say the gbox runs on host 192.168.1.101 and OSCam is on 192.168.1.123. In file **cwshare.cfg** on gbox side we have, for example, the following lines:

```
M: { 192.168.1.101 { A123BCDE }}
D: { 192.168.1.123 { 3820 3819 { 98AF3E25 {3 3}}}}
```

If oscam_gbox should connect to the original GBOX above, then you should configure OSCam as follows:

**oscam.conf:**
```ini
[gbox]
hostname          = 192.168.1.123
my_password       = 98AF3E25
port              = 3819
```

**oscam.server:**
```ini
[reader]
protocol          = gbox
group             = 1
device            = 192.168.1.101,3820
password          = A123BCDE
user              = gbox_client_1
```

**oscam.user:**
```ini
[account]
user              = gbox_client_1
group             = 1
```

---

### port
**🔴 Required parameter**

**(requires `MODULE_GBOX` compilation flag)**

Define incoming UDP port(s) used by Gbox protocol.

**Format:**
```ini
port = port#1[[,port#2]...[,port#32]]
```

Maximum 32 ports.

---

### hostname
**🔴 Required parameter**

**(requires `MODULE_GBOX` compilation flag)**

My IP or DDNS.

**Examples:**
```ini
hostname = 192.168.1.120
hostname = willy.noip.org
```

---

### my_password
**🔴 Required parameter**

**(requires `MODULE_GBOX` compilation flag)**

4 hex bytes, 8 characters.

**Example:**
```ini
my_password = 98AF3E25
```

---

### myid
**ℹ️ Display only**

**(requires `MODULE_GBOX` compilation flag)**

This is **not a configurable parameter**. The GBox ID (`myid`) is automatically calculated from `my_password` and displayed in the WebIF for informational purposes only.

The GBox ID is a 2-byte (4 hex character) identifier derived from the 4-byte password using a conversion algorithm. It uniquely identifies your GBox peer in the network.

**Display in WebIF:**
- Location: Configuration → GBox → "My Id"
- Format: 4 hex characters (e.g., `3E25`)
- Read-only: Cannot be modified directly

**Note:** To change your GBox ID, you must change `my_password`. The ID will be recalculated automatically.

---

### gbox_reconnect
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Send hello message to peers in seconds (min: 60, max: 300).

**Format:**
```ini
gbox_reconnect = 60-300
```

**Example:**
```ini
gbox_reconnect = 120
```

**Default:**
```ini
gbox_reconnect = 180
```

---

### my_vers
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Set gbox version hexadecimal low byte.

**Format:**
```ini
my_vers = hex_byte
```

**Example:**
```ini
my_vers = 30
```

**Default:**
```ini
my_vers = 2A
```

---

### my_cpu_api
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Set gbox CPU and API byte in hexadecimal.

**Format:**
```ini
my_cpu_api = hex_byte
```

**Example:**
```ini
my_cpu_api = 40
```

**Default:**
```ini
my_cpu_api = 61
```

---

### gsms_disable
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Disable Gbox Short Message Service (GSMS).

```ini
gsms_disable = 0  # GSMS is enabled
gsms_disable = 1  # disable GSMS (default)
```

**Format:**
```ini
gsms_disable = 0|1
```

**Example:**
```ini
gsms_disable = 0
```

**Default:**
```ini
gsms_disable = 1
```

---

### gbox_save_gsms
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Save GSMS in configuration.

```ini
gbox_save_gsms = 0  # don't save GSMS in configuration
gbox_save_gsms = 1  # save all GSMS field in configuration
```

⚠️ **Note:** You need to press save button to really save it!

---

### dis_attack_txt
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Disable creation of attack.txt.

```ini
dis_attack_txt = 0  # default
dis_attack_txt = 1  # disable
```

**Format:**
```ini
dis_attack_txt = 0|1
```

**Example:**
```ini
dis_attack_txt = 1
```

**Default:**
```ini
dis_attack_txt = 0
```

---

### log_hello
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Display hello messages in debug log.

```ini
log_hello = 0
log_hello = 1  # default
```

**Format:**
```ini
log_hello = 0|1
```

**Example:**
```ini
log_hello = 0
```

**Default:**
```ini
log_hello = 1
```

---

### tmp_dir
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Gbox temporary directory.

**Format:**
```ini
tmp_dir = path
```

**Example:**
```ini
tmp_dir = /var/gbox
```

**Default:**
```ini
tmp_dir = /tmp/.oscam
```

---

### ignore_peer
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Ignore specific peer ID(s).

**Format:**
```ini
ignore_peer = peer#1[[,peer#2]...[,peer#16]]
```

Rules:
- If peer = dist 1 → Login of peer rejected
- If peer > dist 1 → card(s) of peer ignored

---

### accept_remm_peer
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Accept to send Remote EMMs to specified Server Peer-IDs.

**Format:**
```ini
accept_remm_peer = peer#1[[,peer#2]...[,peer#8]]
```

---

### block_ecm
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Block ECM for specific peer ID(s).

**Format:**
```ini
block_ecm = peer#1[[,peer#2]...[,peer#16]]
```

---

### proxy_card
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Proxy reader card(s) to be reshared into gbox network.

**Format:**
```ini
proxy_card = <CAID><provid>[,<CAID><provid>]...
```

**Example:**
```ini
proxy_card = 18300000,0D950400,05050F00
```

**Default:** none

---

### gbox_save_gsms
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Save GSMS in configuration.

```ini
gbox_save_gsms = 0  # don't save GSMS in configuration
gbox_save_gsms = 1  # save all GSMS field in configuration
```

⚠️ **Note:** You need to press save button to really save it!

---

### gbox_msg_type
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Set GSMS message type.

**Format:**
```ini
gbox_msg_type = 0  # normal text message (default)
gbox_msg_type = 1  # normal text message + OSD (On Screen Display)
```

**Example:**
```ini
gbox_msg_type = 1
```

**Default:**
```ini
gbox_msg_type = 0
```

---

### gbox_dest_peers
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Destination peers for GSMS.

**Format:**
```ini
gbox_dest_peers = [BOXID[,BOXID]...[,BOXID]]
```

Maximum 16 * 2 bytes (4 hexa digits), comma-separated. For broadcast to all use FFFF.

---

### gbox_msg_txt
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Text to send to peers via GSMS.

**Format:**
```ini
gbox_msg_txt = Your text to send to peers.
```

From 6 to 127 alphanumerical characters.

---

### ccc_reshare
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Enable CCcam-cards to be reshared into gbox network (global setting).

```ini
ccc_reshare = 0  # default
ccc_reshare = 1  # enable CCcam-cards reshare
```

**Format:**
```ini
ccc_reshare = 0|1
```

**Example:**
```ini
ccc_reshare = 1
```

**Default:**
```ini
ccc_reshare = 0
```

⚠️ **Attention:** Peer specific reshare level to be set in oscam.server [reader] → cccam_reshare

⚠️ **Attention:** Peer specific ident filter can be set in oscam.server [reader] → ccc_gbx_reshare_ident

---

## [streamrelay] Section

**(requires `MODULE_STREAMRELAY` compilation flag)**

The Streamrelay module allows OSCam to act as a descrambling proxy for IPTV streams. Instead of sending control words to a local DVB device, OSCam receives an encrypted MPEG-TS stream from a source (e.g., Enigma2 receiver, SAT>IP tuner, or Tvheadend), descrambles it internally using the libdvbcsa library, and delivers the clear stream to clients.

This is particularly useful for:
- Enigma2 receivers providing encrypted streams to OSCam for software descrambling
- SAT>IP server environments
- IPTV setups where no hardware descrambler is available
- Streaming descrambled content to multiple clients from a single source

```ini
[streamrelay]
stream_relay_enabled                 =
stream_relay_port                    =
stream_relay_user                    =
stream_relay_ctab                    =
stream_source_host                   =
stream_client_source_host            =
stream_source_port                   =
stream_source_auth_user              =
stream_source_auth_password          =
stream_relay_buffer_time             =
stream_relay_reconnect_count         =
stream_display_client                =
stream_reuse_client                  =
stream_hide_client                   =
```

### Minimal working configuration example

The following example shows a basic Streamrelay setup where OSCam connects to a local Enigma2 receiver as stream source:

```ini
[streamrelay]
stream_relay_enabled    = 1
stream_relay_port       = 17999
stream_relay_user       = streamuser
stream_source_host      = 192.168.1.100
stream_source_port      = 8001
```

In this setup:
- OSCam listens on port 17999 for incoming client connections
- The stream source is an Enigma2 box at 192.168.1.100:8001
- The user `streamuser` must be defined in oscam.user

Clients can then connect to: `http://oscam-ip:17999/caid:srvid`

---

### stream_relay_enabled
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

Enable or disable the Streamrelay server.

```ini
stream_relay_enabled = 0  # disabled (default)
stream_relay_enabled = 1  # enabled
```

**Format:**
```ini
stream_relay_enabled = 0|1
```

**Example:**
```ini
stream_relay_enabled = 1
```

**Default:**
```ini
stream_relay_enabled = 0
```

---

### stream_relay_port
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

TCP port on which the Streamrelay server listens for incoming client connections.

**Example:**
```ini
stream_relay_port = 17999
```

**Default:**
```ini
stream_relay_port = 17999
```

---

### stream_relay_user
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

Username for the Streamrelay client. This user must be defined in oscam.user with appropriate permissions. If not set, the first valid user account will be used.

**Example:**
```ini
stream_relay_user = streamclient
```

**Default:** none (uses first available user)

---

### stream_relay_ctab
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

CAID table to restrict which CAIDs are handled by Streamrelay. Only streams with matching CAIDs will be descrambled.

**Format:**
```ini
stream_relay_ctab = CAID1[,CAID2]...
```

**Example:**
```ini
stream_relay_ctab = 0963,098D,09CD
```

**Default:** none (CAIDs are detected automatically)

---

### stream_source_host
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

IP address or hostname of the stream source server (e.g., Enigma2 receiver, SAT>IP server, or Tvheadend). This is where OSCam fetches the encrypted stream from.

**Example:**
```ini
stream_source_host = 192.168.1.100
stream_source_host = my-enigma2-box.local
```

**Default:**
```ini
stream_source_host = 127.0.0.1
```

---

### stream_client_source_host
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

Determines how the stream source host is resolved for client connections.

```ini
stream_client_source_host = 0  # always use stream_source_host
stream_client_source_host = 1  # use source host from client request if available (default)
```

When enabled, OSCam can use the stream source information provided by the connecting client, allowing more flexible multi-source setups.

**Format:**
```ini
stream_client_source_host = 0|1
```

**Example:**
```ini
stream_client_source_host = 0
```

**Default:**
```ini
stream_client_source_host = 1
```

---

### stream_source_port
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

TCP port of the stream source server.

**Example:**
```ini
stream_source_port = 8001
```

**Default:**
```ini
stream_source_port = 8001   # for Enigma2-based builds
stream_source_port = 31339  # for Neutrino-based builds
```

⚠️ **Note:** The default value depends on the platform OSCam was compiled for.

---

### stream_source_auth_user
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

Username for HTTP Basic Authentication when connecting to the stream source. Required if the stream source server requires authentication.

**Example:**
```ini
stream_source_auth_user = admin
```

**Default:** none

---

### stream_source_auth_password
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

Password for HTTP Basic Authentication when connecting to the stream source. Used together with `stream_source_auth_user`.

**Example:**
```ini
stream_source_auth_password = secret123
```

**Default:** none

---

### stream_relay_buffer_time
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

Buffer time in milliseconds before starting to relay the stream. A higher value provides more stable playback but increases latency. Useful when experiencing stream interruptions.

**Format:**
```ini
stream_relay_buffer_time = milliseconds
```

**Example:**
```ini
stream_relay_buffer_time = 500  # 500ms buffer
```

**Default:**
```ini
stream_relay_buffer_time = 0  # no additional buffering
```

---

### stream_relay_reconnect_count
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

Number of reconnection attempts to the stream source if the connection is lost. After this limit is reached, the stream is terminated.

**Example:**
```ini
stream_relay_reconnect_count = 5  # try 5 reconnects
```

**Default:**
```ini
stream_relay_reconnect_count = 0  # no automatic reconnect
```

---

### stream_display_client
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

Determines which address is displayed for Streamrelay connections in the status display and WebIF.

```ini
stream_display_client = 0  # show stream client address (default)
stream_display_client = 1  # show stream source host address
```

**Format:**
```ini
stream_display_client = 0|1
```

**Example:**
```ini
stream_display_client = 1
```

**Default:**
```ini
stream_display_client = 0
```

---

### stream_reuse_client
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

Reuse existing client connections when the same client reconnects. This can reduce overhead for clients that frequently disconnect and reconnect (e.g., during channel changes).

```ini
stream_reuse_client = 0  # create new client connection each time (default)
stream_reuse_client = 1  # reuse existing client connection
```

**Format:**
```ini
stream_reuse_client = 0|1
```

**Example:**
```ini
stream_reuse_client = 1
```

**Default:**
```ini
stream_reuse_client = 0
```

---

### stream_hide_client
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` and `WEBIF` compilation flags)**

Hide Streamrelay clients from the WebIF status display. Useful to reduce clutter in environments with many stream connections.

```ini
stream_hide_client = 0  # show clients in WebIF (default)
stream_hide_client = 1  # hide clients from WebIF
```

**Format:**
```ini
stream_hide_client = 0|1
```

**Example:**
```ini
stream_hide_client = 1
```

**Default:**
```ini
stream_hide_client = 0
```

⚠️ **Note:** This parameter is only available when OSCam is compiled with WebIF support.

---


## [dvbapi] Section

**🟢 Optional parameter**

Section required only if OSCam will also be used as client!

```ini
[dvbapi]
enabled                              =
au                                   =
pmt_mode                             =
request_mode                         =
listen_port                          =
serverip                             =
delayer                              =
ecminfo_file                         =
ecminfo_type                         =
user                                 =
read_sdt                             =
write_sdt_prov                       =
extended_cw_api                      =
demuxer_fix                          =
boxtype                              =
services                             =
```

### enabled
**🟢 Optional parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

DVB API enabled.

```ini
enabled = 0  # disabled (default)
enabled = 1  # enabled
```

**Format:**
```ini
enabled = 0|1
```

**Example:**
```ini
enabled = 1
```

**Default:**
```ini
enabled = 0
```

---

### au
**🟢 Optional parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

AU mode for dvbapi.

```ini
au = 0  # disable AU (default)
au = 1  # enable AU
```

**Format:**
```ini
au = 0|1
```

**Example:**
```ini
au = 1
```

**Default:**
```ini
au = 0
```

---

### pmt_mode
**🟢 Optional parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

PMT mode.

```ini
pmt_mode = 0  # use camd.socket and PMT file (default)
pmt_mode = 1  # disable reading PMT file
pmt_mode = 2  # disable camd.socket
pmt_mode = 3  # read PMT file on startup only
pmt_mode = 4  # do not use signal handler for monitoring /tmp
pmt_mode = 5  # do not use signal handler to monitor /tmp & disable camd.socket
pmt_mode = 6  # use PMT server mode (NEW svn8680:05/06/2013)
```

**Format:**
```ini
pmt_mode = 0|1|2|3|4|5|6
```

**Example:**
```ini
pmt_mode = 6
```

**Default:**
```ini
pmt_mode = 0
```

---

### request_mode
**🟢 Optional parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

CAID request mode.

```ini
request_mode = 0  # try all possible CAIDs one by one (default)
request_mode = 1  # try all CAIDs simultaneously
```

**Format:**
```ini
request_mode = 0|1
```

**Example:**
```ini
request_mode = 1
```

**Default:**
```ini
request_mode = 0
```

---

### listen_port
**🟢 Optional parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

TCP/IP port for SAT IP clients, filtering has to be done on client site.

**Format:**
```ini
listen_port = port
```

**Example:**
```ini
listen_port = 9000
```

**Default:**
```ini
listen_port = 0
```

---

### delayer
**🟢 Optional parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

Minimum time to write CW.

**Format:**
```ini
delayer = milliseconds
```

---

### ecminfo_file
**🟢 Optional parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

Enable or disable writing ecm.info file. The ecm.info file contains information about the current decryption.

**Format:**
```ini
ecminfo_file = 0|1
```

**Example:**
```ini
ecminfo_file = 1
```

**Default:**
```ini
ecminfo_file = 1
```

---

### ecminfo_type
**🟢 Optional parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

Define the type of ecm.info file to create.

**Format:**
```ini
ecminfo_type = 0  # default oscam syntax
ecminfo_type = 1  # default oscam syntax with ecmtime in ms instead of s
ecminfo_type = 2  # wicardd
ecminfo_type = 3  # mgcamd
ecminfo_type = 4  # cccam
ecminfo_type = 5  # camd3
```

**Example:**
```ini
ecminfo_type = 3
```

**Default:**
```ini
ecminfo_type = 0
```

---

### user
**🔴 Required parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

User name for DVB API client.

**Example:**
```ini
user = user1
```

**Default:**
```ini
user =  # anonymous
```

---

### read_sdt
**🟢 Optional parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

If it is not yet available, this option automatically adds entries in your oscam.srvid2 (or oscam.srvid) and in your oscam.provid files. You need to stay **more than 30 seconds** on a channel for the auto-detect to start. So both channel name and provider name are retrieved. If entries already exist they are not changed nor updated, so you keep full control on the content of both files, only missing entries are added.

```ini
read_sdt = 0  # disabled (default)
read_sdt = 1  # on, do not save FTA channels
read_sdt = 2  # on, save FTA channels
```

**Format:**
```ini
read_sdt = 0|1|2
```

**Example:**
```ini
read_sdt = 1
```

**Default:**
```ini
read_sdt = 0
```

---

### write_sdt_prov
**🟢 Optional parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

First enable the read_sdt parameter then you can specify if the provider name is saved or not into the oscam.srvid2 or oscam.srvid file. This is not mandatory since the provider name is now retrieved automatically from the oscam.provid file.

```ini
write_sdt_prov = 0  # off, do not write provider name into oscam.srvid/2 (default)
write_sdt_prov = 1  # on, write provider name into oscam.srvid/2
```

**Format:**
```ini
write_sdt_prov = 0|1
```

**Example:**
```ini
write_sdt_prov = 1
```

**Default:**
```ini
write_sdt_prov = 0
```

---

### extended_cw_api
**🟢 Optional parameter**

**(requires `WITH_EXTENDED_CW` compilation flag)**

API for extended control words.

**Format:**
```ini
extended_cw_api = 0  # none / disabled (default)
extended_cw_api = 1  # OE2.2+ (OpenEmbedded 2.2, 2.5)
extended_cw_api = 2  # OE2.0 (OpenEmbedded 2.0)
```

**Example:**
```ini
extended_cw_api = 1
```

**Default:**
```ini
extended_cw_api = 0
```

---

### demuxer_fix
**🟢 Optional parameter**

**(requires `MODULE_STREAMRELAY` compilation flag)**

Fix for demuxer issues related to Stream Relay. Enable this if you experience problems with stream relay and demuxing.

**Format:**
```ini
demuxer_fix = 0|1
```

**Example:**
```ini
demuxer_fix = 1
```

**Default:**
```ini
demuxer_fix = 0
```

---

### boxtype
**🔴 Required parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

Set boxtype, auto detection of DVB API will be aspired.

**Format:**
```ini
boxtype = dbox2|dreambox|dm7000|duckbox|ufs910|ipbox|ipbox-pmt|qboxhd|coolstream|neumo|pc
```

**Notes:**
- `ipbox` with camd.socket support, currently only with PGI image version 0.6 or above, verified on HD models only
- `ipbox-pmt` can be used on any DGS based images (with or without camd.socket support), verified on HD models only
- `pc` is for generic pc support (currently supported on VDR with vdr-plugin-dvbapi)

**Default:**
```ini
boxtype = dreambox
```

---

### services
**🟢 Optional parameter**

**(requires `HAVE_DVBAPI` compilation flag)**

Services filter for DVBAPI. Define which services (from oscam.services) are allowed or denied for DVBAPI.

**Format:**
```ini
services = [!]services1[,[!]services2]...
```

**Example:**
```ini
services = myservices,!blockedservices
```

**Default:**
```ini
services =
```

---

## [monitor] Section

**Only if monitor is used!**

```ini
[monitor]
port                                 =
serverip                             =
nocrypt                              =
aulow                                =
monlevel                             =
hideclient_to                        =
```

### port
**🟢 Optional parameter**

**(requires `MODULE_MONITOR` compilation flag)**

UDP port for monitor.

```ini
port = 0       # monitor disabled
port = 24480   # monitor on, port = 24480
```

**Example:**
```ini
port = 24480  # monitor on, port = 24480
```

---

### serverip
**🟢 Optional parameter**

**(requires `MODULE_MONITOR` compilation flag)**

Bind service to specified IP address.

**Example:**
```ini
serverip = 192.168.178.1
```

**Default:**
```ini
serverip =  # all IPs (default)
```

---

### nocrypt
**🟢 Optional parameter**

**(requires `MODULE_MONITOR` compilation flag)**

Unsecured monitor connection [,IP address|IP address range]...

Possible:
- One or more IP addresses
- One or more IP address ranges
- Mixture of IP addresses and IP address ranges

**Example:**
```ini
nocrypt = 127.0.0.1,192.168.0.0-192.168.255.255
# Host 127.0.0.1 and IP range 192.168.0.0 to 192.168.255.255
```

**Default:**
```ini
nocrypt =  # no secured monitor connection
```

---

### aulow
**🟢 Optional parameter**

**(requires `MODULE_MONITOR` compilation flag)**

Time no EMM occurs so that client is set to low in minutes.

**Example:**
```ini
aulow = 30  # After 30 minutes without EMM client will be switched
            # from "active" to "on" (default)
```

---

### monlevel
**🟢 Optional parameter**

**(requires `MODULE_MONITOR` compilation flag)**

Monitor-level.

**Format:**
```ini
monlevel = 0  # no access to monitor (default)
monlevel = 1  # only server and own procs
monlevel = 2  # all procs, but viewing only
monlevel = 3  # all procs, reload of oscam.user possible
monlevel = 4  # complete access
```

**Example:**
```ini
monlevel = 4
```

**Default:**
```ini
monlevel = 0
```

monlevel can be overwritten per user in oscam.user!

---

## [webif] Section

**Only if WebIf is used!**

```ini
[webif]
httpport                             =
serverip                             =
httpuser                             =
httppwd                              =
httpcss                              =
httpjscript                          =
httpscript                           =
httptpl                              =
httpiconpath                         =
httphelplang                         =
httplocale                           =
http_prepend_embedded_css            =
httprefresh                          =
httppollrefresh                      =
httphideidleclients                  =
httphidetype                         =
httpshowpicons                       =
httppiconsize                        =
httpshowmeminfo                      =
httpshowuserinfo                     =
httpshowreaderinfo                   =
httpshowcacheexinfo                  =
httpshowecminfo                      =
httpshowloadinfo                     =
httpallowed                          =
httpreadonly                         =
httpsavefullcfg                      =
httpoverwritebakfile                 =
httpcert                             =
https_force_secure_mode              =
https_auto_create_cert               =
httpdyndns                           =
aulow                                =
hideclient_to                        =
httposcamlabel                       =
httpemmuclean                        =
httpemmsclean                        =
httpemmgclean                        =
http_status_log                      =
http_extern_jquery                   =
```

### File format to send EMMs via the webinterface

⚠️ **Attention:**
- File has to be in TXT format
- The EMM-file should contain each PRE-CAM EMM in a new line
- EMMs should be in HEX representation:
  - Example: `AABBCCDD...`
- Spaces and tabs between the bytes are allowed:
  - `AA BB CC DD...`
- The HEX representation of each EMM's byte can be represented by upper or lower case - even mixed is allowed:
  - `AA aa Aa aA...`
- Other chars and comments are not allowed

---

### httpport
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Port for web interface.

**Format:**
```ini
httpport = 0     # disabled
httpport = port  # Webinterface listening on http-port
httpport = +port # Webinterface listening on https-port (SSL), prefix + enables SSL
```

**Example:**
```ini
httpport = 8888
httpport = +443
```

**Default:**
```ini
httpport = 8888
```

---

### httpuser
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Username for password protection. Blank is default, which is strongly discouraged!

**Example:**
```ini
httpuser = myusername  # all characters and figures are allowed
```

---

### httppwd
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Password for password protection.

**Example:**
```ini
httppwd = mypassword
```

⚠️ **Note:** The *user* and *pwd* parameters are queried when connecting to the webinterface in a message box. If they are missing or corrupted, a message "Forbidden" appears and the connection is aborted!

---

### httpcss
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Path for external CSS file.

For webinterface different styles are available. Put custom CSS files (ending with .css extension) in the oscam config directory to manage your custom styles with WebIf.

**Example:**
```ini
httpcss = /etc/oscam/harvest_round_Firefox.css
```

**Default:**
```ini
httpcss =  # embedded style is used (default)
```

To see the current CSS style, use the URL: `http://url_to_oscam_webif/site.css`

Styles can be found here: [Streamboard-Thread](http://www.streamboard.tv/wbb2/thread.php?threadid=30083)

---

### httpjscript
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Path for oscam.js javascript.

**Format:**
```ini
httpjscript = path
```

**Default:** none

---

### httpscript
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Path to an executable script which you wish to start from web interface.

**Example:**
```ini
httpscript = /path/to/script.sh
```

**Default:**
```ini
httpscript =  # no path
```

You can run script file from script.html (SCRIPTS item in main menu). If the script file contains "echo", it will be displayed in web interface.

**Error messages:**
- If the file cannot run: `[Error]: Script "name_of_script.sh" not executable!`
- If the file does not exist: `[Error]: Script "name_of_script.sh" not found!`

---

### httptpl
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Path for external templates and picons.

Multiple simultaneously templates and picons are possible by creating sub folders (maximum length of 32 alphanumeric characters). Sub folders naming is corresponding to sub folder in URL.

**Example:**
```ini
httptpl = /this/is/my/path

# Folder with multiple templates:
# /this/is/my/path/template
# /this/is/my/path/template2

# Valid URLs:
# http://host:port/template1
# http://host:port/template2
```

**Default:**
```ini
httptpl =  # No external templates
```

---

### httppiconpath
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Path to picon (channel logo) files. Picons are small images displayed in the WebIF to identify channels. The picons should be stored in this directory with specific naming conventions.

**Supported picon naming formats:**
```
IC_caid_srvid.tpl
IC_caid_provid_srvid.tpl
IC_servicename.tpl
```

**Service name conversion rules:**
- Convert all upper-case letters to lower case
- Replace `*` with `star`
- Replace `&` with `and`
- Replace `+` with `plus`
- Remove everything but a-z and 0-9
- If service name ends with `hd` and picon is not found, fallback to name without `hd`

**Format:**
```ini
httppiconpath = path
```

**Example:**
```ini
httppiconpath = /usr/share/oscam/picons
httppiconpath = /etc/oscam/picons
```

**Default:**
```ini
httppiconpath =
```

⚠️ **Note:** To display picons in the user list, enable `httpshowpicons = 1`.

---

### httphelplang
**🔴 Required parameter**

**(requires `WEBIF` compilation flag)**

Set right language for wiki entry point.

**Format:**
```ini
httphelplang = de|en|fr  # available wiki languages
```

---

### httplocale
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Set the "locale environment".

**Format:**
```ini
httplocale = environment
```

**Default:** none

See: [http://en.wikipedia.org/wiki/locale](http://en.wikipedia.org/wiki/locale)

---

### http_prepend_embedded_css
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Add embedded CSS before custom CSS.

```ini
http_prepend_embedded_css = 0  # Do not add the content of the embedded CSS
                               # before the content of the custom CSS (default)
http_prepend_embedded_css = 1  # embedded CSS will be added before external
                               # custom CSS (specified by the httpcss parameter)
```

**Format:**
```ini
http_prepend_embedded_css = 0|1
```

**Example:**
```ini
http_prepend_embedded_css = 1
```

**Default:**
```ini
http_prepend_embedded_css = 0
```

This parameter can be used to override the embedded CSS with custom styles. To see the current CSS styles use the URL: `http://url_to_oscam_webif/site.css`

---

### httprefresh
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Status refresh in seconds.

**Example:**
```ini
httprefresh = 7  # status will be refreshed after 7 seconds
```

**Default:**
```ini
httprefresh =  # no refreshing
```

---

### httppollrefresh
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Refresh time for polling in seconds.

**Example:**
```ini
httppollrefresh = 60  # polling will be refreshed after 60 seconds
```

**Default:**
```ini
httppollrefresh = 0  # no refreshing poll
```

---

### httphideidleclients
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Enables hiding clients after idle time set with parameter **hideclient_to** in section [monitor].

```ini
httphideidleclients = 0  # hide not (default)
httphideidleclients = 1  # hide
```

**Format:**
```ini
httphideidleclients = 0|1
```

**Example:**
```ini
httphideidleclients = 1
```

**Default:**
```ini
httphideidleclients = 0
```

---

### httphidetype
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Hide types in web interface status page.

**Format:**
```ini
httphidetype = type[type]...
```

Where type = letter which defines types to hide (see Typ column):
- s = server
- h = http
- m = monitor
- r = reader
- p = proxy
- x = cacheex
- c = client

**Example:**
```ini
httphidetype = sh  # hide server- and http-type columns
```

**Default:**
```ini
httphidetype =  # hide none (default)
```

---

### httpshowpicons
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Show picons in user list.

```ini
httpshowpicons = 0  # default
httpshowpicons = 1  # show picons in userlist
```

If this parameter is enabled, then a new column is added to the USERS tab which displays the picons of the last watched channels by active users. The folder where the picons must be configured in the httppiconpath.

**Possible formats are:**
```
IC_caid_srvid.tpl
IC_caid_provid_srvid.tpl
IC_servicename.tpl
```

Added support for picons by channel name:
- Take service-name from oscam.srvid
- Replace all upper-case letters with lower case
- Replace * with star
- Replace & with and
- Replace + with plus
- Remove everything but a-z and 0-9
- If the result is name, the picon file will be `IC_name.tpl`

**Example:**
- Service-name: "BBC-ONE +HD"
- Picon file: "IC_bbconeplushd.tpl"

If service-name ends with hd, and picon is not found, fallback to name without hd.

---

### httppiconsize
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Height of picon images in pixels when displayed in WebIF.

**Format:**
```ini
httppiconsize = pixels
```

**Example:**
```ini
httppiconsize = 40
```

**Default:**
```ini
httppiconsize = 0
```

---

### httpshowmeminfo
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Display memory usage information in Status screen.

```ini
httpshowmeminfo = 0  # do not show (default)
httpshowmeminfo = 1  # display memory usage information in Status screen
```

**Format:**
```ini
httpshowmeminfo = 0|1
```

**Example:**
```ini
httpshowmeminfo = 1
```

**Default:**
```ini
httpshowmeminfo = 0
```

---

### httpshowuserinfo
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Display users information in Status screen.

```ini
httpshowuserinfo = 0  # do not show (default)
httpshowuserinfo = 1  # display users information in Status screen
```

**Format:**
```ini
httpshowuserinfo = 0|1
```

**Example:**
```ini
httpshowuserinfo = 1
```

**Default:**
```ini
httpshowuserinfo = 0
```

---

### httpshowreaderinfo
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Display readers information in Status screen.

```ini
httpshowreaderinfo = 0  # do not show (default)
httpshowreaderinfo = 1  # display readers information in Status screen
```

**Format:**
```ini
httpshowreaderinfo = 0|1
```

**Example:**
```ini
httpshowreaderinfo = 1
```

**Default:**
```ini
httpshowreaderinfo = 0
```

---

### httpshowcacheexinfo
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Display CacheEX information in Status screen.

```ini
httpshowcacheexinfo = 0  # do not show (default)
httpshowcacheexinfo = 1  # display CacheEX information in Status screen
```

**Format:**
```ini
httpshowcacheexinfo = 0|1
```

**Example:**
```ini
httpshowcacheexinfo = 1
```

**Default:**
```ini
httpshowcacheexinfo = 0
```

---

### httpshowecminfo
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Display readers and users ECM information in Status screen.

```ini
httpshowecminfo = 0  # do not show (default)
httpshowecminfo = 1  # display readers and users ECM information in Status screen
```

**Format:**
```ini
httpshowecminfo = 0|1
```

**Example:**
```ini
httpshowecminfo = 1
```

**Default:**
```ini
httpshowecminfo = 0
```

---

### httpshowloadinfo
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Display load average and CPU usage information in Status screen.

```ini
httpshowloadinfo = 0  # do not show (default)
httpshowloadinfo = 1  # display load average and CPU usage information in Status screen
```

**Format:**
```ini
httpshowloadinfo = 0|1
```

**Example:**
```ini
httpshowloadinfo = 1
```

**Default:**
```ini
httpshowloadinfo = 0
```

---

### httpallowed
**🔴 Required parameter**

**(requires `WEBIF` compilation flag)**

HTTP web interface connections allowed. Blank is allowed (default), but that makes no sense! If the webinterface is to be used, then there must be a way to connect with it. Therefore we declare this parameter as **mandatory**!

With **::1** OSCam decides to resolve 'localhost' to **IPv6**!

**Format:**
```ini
httpallowed = IP address|IP address range[,IP address|IP address range,[::1]]...
```

**Example:**
```ini
httpallowed = 127.0.0.1,192.168.0.0-192.168.255.255
# Host and range 192.168.0 are allowed

httpallowed = 127.0.0.1,192.168.0.0-192.168.255.255,::1
# Host and range 192.168.0 are allowed, resolving to IPv6
```

**Default:**
```ini
httpallowed = 127.0.0.1,192.168.0.0-192.168.255.255,10.0.0.0-10.255.255.255,::1
```

---

### httpreadonly
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Read only mode for web interface.

```ini
httpreadonly = 0  # all is possible (default)
httpreadonly = 1  # only read
```

**Format:**
```ini
httpreadonly = 0|1
```

**Example:**
```ini
httpreadonly = 1
```

**Default:**
```ini
httpreadonly = 0
```

---

### httpsavefullcfg
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Write config mode.

```ini
httpsavefullcfg = 0  # all not empty parameters, all not default parameters,
                     # all parameters not containing the same value as the same
                     # parameter in global configuration (default)
httpsavefullcfg = 1  # all parameters
```

**Format:**
```ini
httpsavefullcfg = 0|1
```

**Example:**
```ini
httpsavefullcfg = 1
```

**Default:**
```ini
httpsavefullcfg = 0
```

---

### httpoverwritebakfile
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Overwrite backup configuration files (*.bak).

```ini
httpoverwritebakfile = 0  # default
httpoverwritebakfile = 1  # overwrite backup configurations files
```

**Format:**
```ini
httpoverwritebakfile = 0|1
```

**Example:**
```ini
httpoverwritebakfile = 1
```

**Default:**
```ini
httpoverwritebakfile = 0
```

---

### httpcert
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

File for HTTP SSL certificate.

**Example:**
```ini
httpcert = oscam.cert
```

**Default:**
```ini
httpcert =  # file oscam.pem (embedded) is used
```

---

### https_force_secure_mode
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Force secure HTTPS mode. When enabled, HTTP connections are not allowed.

**Format:**
```ini
https_force_secure_mode = 0|1
```

**Example:**
```ini
https_force_secure_mode = 1
```

**Default:**
```ini
https_force_secure_mode = 1
```

---

### https_auto_create_cert
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Automatically create SSL certificate if no certificate file is available.

**Format:**
```ini
https_auto_create_cert = 0|1
```

**Example:**
```ini
https_auto_create_cert = 1
```

**Default:**
```ini
https_auto_create_cert = 1
```

---

### httpdyndns
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

HTTP web interface connections allowed via hostname.

**Format:**
```ini
httpdyndns = hostname[,hostname][,hostname]
```

**Example:**
```ini
httpdyndns = host1.example.com,host2.example.com
```

---

### aulow
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Time no EMM occurs so that client is set to low in minutes.

**Example:**
```ini
aulow = 30  # After 30 minutes without EMM client will be switched
            # from "active" to "on" (default)
```

---

### hideclient_to
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Time to hide clients in the monitor if not sending requests. See also parameter **httphideidleclients** in section [webif].

```ini
hideclient_to = 0  # no hide
hideclient_to = 1  # hide clients
```

**Format:**
```ini
hideclient_to = seconds
```

**Example:**
```ini
hideclient_to = 120
```

**Default:**
```ini
hideclient_to = 0
```

---

### httposcamlabel
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Set individual label in web interface header.

**Format:**
```ini
httposcamlabel = text
```

**Default:**
```ini
httposcamlabel = OSCam
```

---

### httpemmuclean
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Maximum size of unique EMM log in kB. When exceeded, older entries are cleaned up.

**Format:**
```ini
httpemmuclean = size_in_kb
```

**Example:**
```ini
httpemmuclean = 512
```

**Default:**
```ini
httpemmuclean = 256
```

`0` = no cleanup

---

### httpemmsclean
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Maximum size of shared EMM log in kB. When exceeded, older entries are cleaned up.

**Format:**
```ini
httpemmsclean = size_in_kb
```

**Example:**
```ini
httpemmsclean = 256
```

**Default:**
```ini
httpemmsclean = -1
```

`-1` = do not show log, `0` = no cleanup

---

### httpemmgclean
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Maximum size of global EMM log in kB. When exceeded, older entries are cleaned up.

**Format:**
```ini
httpemmgclean = size_in_kb
```

**Example:**
```ini
httpemmgclean = 256
```

**Default:**
```ini
httpemmgclean = -1
```

`-1` = do not show log, `0` = no cleanup

---

### http_status_log
**🟢 Optional parameter**

**(requires `WEBIF_LIVELOG` compilation flag)**

Display log in Status screen.

```ini
http_status_log = 0  # do not show (default)
http_status_log = 1  # display log in Status screen
```

**Format:**
```ini
http_status_log = 0|1
```

**Example:**
```ini
http_status_log = 1
```

**Default:**
```ini
http_status_log = 0
```

---

### http_extern_jquery
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag, only when `WEBIF_JQUERY` is not defined)**

External URL for jQuery library. Used when jQuery is not embedded in the WebIF build.

**Format:**
```ini
http_extern_jquery = URL
```

**Default:**
```ini
http_extern_jquery = //code.jquery.com/jquery-3.7.1.min.js
```

---

## Legend

- 🔴 **Required parameter** - Must be configured
- 🟢 **Optional parameter** - Can be omitted
- 🔵 **Depends on setup/program version** - Only needed in specific configurations
- 🟡 **⚠️ NEEDS REVIEW** - Missing documentation

---
