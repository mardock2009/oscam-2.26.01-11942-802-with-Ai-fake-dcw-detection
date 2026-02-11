> [!NOTE]
> 🚧 **Parameters Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# OSCam Configuration: oscam.server

The server configuration file for OSCam defines readers (card readers and remote servers) that provide decryption services. Each `[reader]` section configures a source for control words (CWs) and entitlement management messages (EMMs). At least one reader is required for OSCam to function.

## Overview

This file controls:
- **Local card readers** - Physical smartcard readers (mouse, internal, smargo, pcsc, etc.)
- **Remote readers** - Cascading connections to other servers (newcamd, CCcam, camd35, gbox, etc.)
- **Reader protocols** - Communication methods and protocol-specific settings
- **Group assignments** - Which users can access which readers (1-64 groups)
- **Card-specific settings** - CAID, ident, class, ChID filtering and mapping
- **EMM handling** - Auto update (AU), EMM filtering, blocking, and saving
- **Performance tuning** - Frequency settings (mhz, cardmhz), timeouts, reconnection
- **Load balancing** - Reader weights, fallback configuration, service whitelists
- **Cache exchange** - CacheEx modes for sharing CWs between OSCam instances
- **Anti-abuse** - Rate limiting, ECM filtering, cooldown periods
- **Protocol features** - CCcam reshare, gbox distance, newcamd encryption

Multiple `[reader]` sections can be defined to create a flexible card-sharing setup with local cards, proxy readers, and cascading connections.

## [reader] Section

```ini
[reader]
label                                =
description                          =
enable                               =
protocol                             =
device                               =
ipv4force                            =
key                                  =
user                                 =
password                             =
pincode                              =
gbox_max_distance                    =
gbox_max_ecm_send                    =
gbox_reshare                         =
cccreshare                           =
force_remm                           =
ccc_gbx_reshare_ident                =
send_offline_cmd                     =
readnano                             =
services                             =
lb_whitelist_services                =
inactivitytimeout                    =
reconnecttimeout                     =
reconnectdelay                       =
resetcycle                           =
disableserverfilter                  =
connectoninit                        =
keepalive                            =
smargopatch                          =
autospeed                            =
sc8in1_dtrrts_patch                  =
fallback                             =
fallback_percaid                     =
localcards                           =
disablecrccws_only_for               =
cacheex                              =
cacheex_maxhop                       =
cacheex_maxhop_lg                    =
cacheex_ecm_filter                   =
cacheex_allow_request                =
cacheex_drop_csp                     =
cacheex_allow_filter                 =
cacheex_allow_maxhop                 =
cacheex_block_fakecws                =
cacheex_cw_check_for_push            =
cacheex_lg_only_remote_settings      =
cacheex_localgenerated_only          =
cacheex_localgenerated_only_caid     =
cacheex_lg_only_tab                  =
cacheex_lg_only_in_aio_only          =
cacheex_localgenerated_only_in       =
cacheex_localgenerated_only_in_caid  =
cacheex_lg_only_in_tab               =
cacheex_nopushafter                  =
caid                                 =
atr                                  =
boxid                                =
tongfang3_calibsn                    =
tongfang_boxid                       =
stbid                                =
tongfang3_deskey                     =
boxkey                               =
rsakey                               =
cwpkkey                              =
deskey                               =
mod1                                 =
idird                                =
cmd0eprov                            =
mod2                                 =
key3588                              =
key3460                              =
key3310                              =
data50                               =
mod50                                =
nuid                                 =
forcepair                            =
otpcsc                               =
otacsc                               =
cwpkcaid                             =
cwekey0                              =
cwekey1                              =
cwekey2                              =
cwekey3                              =
cwekey4                              =
cwekey5                              =
cwekey6                              =
cwekey7                              =
cwekey8                              =
cwekey9                              =
cwekey10                             =
cwekey11                             =
cwekey12                             =
cwekey13                             =
cwekey14                             =
cwekey15                             =
cwekey16                             =
forcecwswap                          =
evensa                               =
forceemmg                            =
cwpkota                              =
headermode                           =
cak63nuid                            =
cak63cwekey                          =
cak7_mode                            =
card_startdate_basemonth             =
card_startdate_baseyear              =
card_expiredate_basemonth            =
card_expiredate_baseyear             =
ins7e                                =
ins42                                =
ins7e11                              =
ins2e06                              =
k1_generic                           =
k1_unique                            =
fix07                                =
fix9993                              =
readtiers                            =
force_irdeto                         =
needsglobalfirst                     =
ecmnotfoundlimit                     =
ecmwhitelist                         =
ecmheaderwhitelist                   =
detect                               =
nagra_read                           =
detect_seca_nagra_tunneled_card      =
mhz                                  =
cardmhz                              =
mode                                 =
ident                                =
chid                                 =
class                                =
aeskeys                              =
group                                =
emmcache                             =
blockemm-unknown                     =
blockemm-u                           =
blockemm-s                           =
blockemm-g                           =
saveemm-unknown                      =
saveemm-u                            =
saveemm-s                            =
saveemm-g                            =
blockemm-bylen                       =
lb_weight                            =
lb_force_fallback                    =
savenano                             =
blocknano                            =
dropbadcws                           =
disablecrccws                        =
use_gpio                             =
pand_send_ecm                        =
cccversion                           =
cccmaxhops                           =
cccmindown                           =
ccckeepalive                         =
cccam_reshare                        =
cccreconnect                         =
ccchop                               =
use_ssl                              =
force_ua                             =
exec_cmd_file                        =
stmkeys                              =
resetalways                          =
deprecated                           =
audisabled                           =
auprovid                             =
ndsversion                           =
ratelimitecm                         =
ecmunique                            =
ratelimittime                        =
srvidholdtime                        =
cooldown                             =
cooldowndelay                        =
cooldowntime                         =
maxparallel                          =
parallelfactor                       =
paralleltimeout                      =
read_old_classes                     =
```

## Parameters

### label
**🔴 Required parameter**

Name for reader.

**Format:**
```ini
label = name
```

**Example:**
```ini
label = easymouse2
```

---

### description
**🟢 Optional parameter**

**(requires `WEBIF` compilation flag)**

Description of reader (text).

**Format:**
```ini
description = text
```

**Example:**
```ini
description = My main card reader
```

**Default:**
```ini
description =
```

---

### enable
**🟢 Optional parameter**

Deactivate reader.

```ini
enable = 0  # off
enable = 1  # on (default)
```

**Format:**
```ini
enable = 0|1
```

**Example:**
```ini
enable = 0
```

**Default:**
```ini
enable = 1
```

---

### protocol
**🔴 Required parameter**

Reader protocol.

**Values:**
```ini
protocol = mouse         # Local cardreader
         = internal      # All cardreader with "device=/dev/sciX", and internal Coolstream-Reader
         = camd35        # Cascading - camd 3.5-compatible remote server - UDP
         = cs357x        # Cascading - camd 3.5-compatible remote server - UDP
         = mp35
         = smartreader
         = serial
         = cs378x        # Camd 3.5-compatible remote server - TCP
         = gbox
         = newcamd       # newcamd protocol
         = newcamd525
         = newcamd524
         = cccam
         = radegast
         = pcsc
         = constcw
         = sc8in1
         = smargo
```

---

### device
**🔴 Required parameter**

Define local or remote reader.

**Syntax:**
```ini
device = [<readertype>;]serial:serialnum|bus:device|<device|device:slot>|<ip|hostname>,<port>[,<lport>]|pcsc|<0|1>|constantcw
```

**Reader Types:**
- `SR:` Smartreader+ (default)
- `SRv2:` Smartreader V2
- `Infinity:` Infinity USB
- `TripleP1:` Smargo Triple Reader port 1
- `TripleP2:` Smargo Triple Reader port 2
- `TripleP3:` Smargo Triple Reader port 3

**Device Formats:**
- `bus:device` - Bus name and device name of the smartreader+ (get the name with lsusb 'Bus' and 'Device')
- `serialnum` - Serial number of Smartreader+ or Infinity USB (get the serial number while starting OSCam)
- `device` - Device name
- `device:slot` - Device name and slot number sc8in1 (1-8), only one sc8in1 reader supported
- `ip|hostname` - IP address or host name
- `port` - TCP/IP port
- `lport` - Remapping to local TCP/IP port
- `PCSC` - Number of PCSC reader, starting with 0. Alternative: select via reader name (part), e.g., "-1:SCR 3310" (names of detected readers are shown by "oscam -d 32")
- `0|1` - **For Coolstream HD-1 STB only:** select reader 0 or reader 1
- `constantcw` - Constant CW file name

**CW File Format:**

*Standard:*
```
CAID:Provider ID:Service ID:PMT ID:ECM PID::key (16 Bytes separated by spaces)
```
Example:
```
1234:123456:1234:2345:3456::00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F
```

*Extended OSCam-Format:*
```
CAID:Provider ID:Service ID:PMT ID:ECM PID:Video PID:key (16 Bytes separated by spaces)
```
Example:
```
1234:123456:1234:2345:3456:7890:00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F
```

**Examples:**
```ini
device = /dev/ttyS0       # Reader on COM1 (Linux i386 and Windows)
device = /dev/tts/1       # Reader on COM2 (Linux dbox2 with multicam)
device = /dev/ttyUSB0     # Reader on USB (Linux i386)
device = /dev/ttyUSB0:1   # Slot 1 SC8in1 or MCR 4/8 (Linux i386)
```

⚠️ **Attention:** Counting begins with 0, that means number of device is one less than number of COM-Port! E.g., ttyS0 = COM1, tts/1 = COM2.

---

### ipv4force
**🟢 Optional parameter**

Force IPv4 connection for this reader even when IPv6 is available.

```ini
ipv4force = 0  # use IPv6 if available (default)
ipv4force = 1  # force IPv4 only
```

**Format:**
```ini
ipv4force = 0|1
```

**Example:**
```ini
ipv4force = 1
```

**Default:**
```ini
ipv4force = 0
```

---

### key
**🔵 Parameter depends on setup/program version**

Key for newcamd remote reader encryption.

**Format:**
```ini
key = 14_hex_bytes
```

**Example:**
```ini
key = 0102030405060708091011121314
```

**Default:**
```ini
key =
```

---

### user
**🟢 Optional parameter**

User for remote reader (name).

**Format:**
```ini
user = username
```

**Example:**
```ini
user = username
```

**Default:**
```ini
user =
```

---

### password
**🟢 Optional parameter**

Password for remote reader.

**Format:**
```ini
password = secret
```

**Example:**
```ini
password = secret
```

**Default:**
```ini
password =
```

---

### pincode
**🟢 Optional parameter**

Pincode for **Conax, Cryptoworks and Viaccess** SCs.

**Example:**
```ini
pincode = 1234
```

**Default:**
```ini
pincode =
```

---

### gbox_max_distance
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Maximum distance to receive peer cards.

**Format:**
```ini
gbox_max_distance = distance
```

**Example:**
```ini
gbox_max_distance = 3
```

**Default:**
```ini
gbox_max_distance = 2
```

---

### gbox_max_ecm_send
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Send ECM to max `<gbox_max_ecm_send>` peer cards.

**Format:**
```ini
gbox_max_ecm_send = number
```

**Example:**
```ini
gbox_max_ecm_send = 10
```

**Default:**
```ini
gbox_max_ecm_send = 5
```

---

### gbox_reshare
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Share-Level of local card(s).

```ini
gbox_reshare = 0   # None of your local cards send to peer
gbox_reshare = 1   # Local cards send to direct peer only
gbox_reshare = 2   # Local cards send to direct peer and his direct peer(s)
```

**Format:**
```ini
gbox_reshare = 0|1|2|3|4|5
```

**Example:**
```ini
gbox_reshare = 1
```

**Default:**
```ini
gbox_reshare = 2
```

---

### cccreshare
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Reshare level of CCC proxy cards to be sent into gbox network.

```ini
cccreshare = -1   # No resharing (default)
cccreshare =  0   # Reshare for direct peer only
cccreshare =  1   # Reshare for direct peer plus next level
cccreshare =  x   # Resharing for direct peer plus x share level
```

**Format:**
```ini
cccreshare = -1|0|1|...
```

**Example:**
```ini
cccreshare = 1
```

**Default:**
```ini
cccreshare = -1
```

---

### force_remm
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Force remote EMM.

```ini
force_remm = 0  # Disabled (default)
force_remm = 1  # Enabled
```

⚠️ **Attention: Use only to activate a card or if card entitlements are expired**

**Format:**
```ini
force_remm = 0|1
```

**Example:**
```ini
force_remm = 1
```

**Default:**
```ini
force_remm = 0
```

---

### ccc_gbx_reshare_ident
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Define CAID and provider of cccam cards you want to send to peer.

**Syntax:**
```ini
ccc_gbx_reshare_ident = <CAID>:<prov>[,prov]...[;<CAID>:<prov>[,prov]...]...
```

**Example:**
```ini
ccc_gbx_reshare_ident = 0100:123456,234567;0200:345678,456789
                      =   # Blank, all available cccam cards are sent to peer (default)
```

---

### send_offline_cmd
**🟢 Optional parameter**

**(requires `MODULE_GBOX` compilation flag)**

Send offline cmd HERE to peers offline.

```ini
send_offline_cmd = 0  # Default
send_offline_cmd = 1  # Enabled
```

**Format:**
```ini
send_offline_cmd = 0|1
```

**Example:**
```ini
send_offline_cmd = 1
```

**Default:**
```ini
send_offline_cmd = 0
```

---

### readnano
**🟢 Optional parameter**

Write file (usually a copy of a file saved by `savenano`) to your smartcard. If no path is specified, the specified file is searched for in the configuration directory. Only valid for physical readers!

**Examples:**
```ini
readnano = write.emm
         = /var/oscam/write.emm
         =                        # Blank (default)
```

---

### services
**🟢 Optional parameter**

⚠️ **Attention:** If loadbalancing is enabled in `oscam.conf [global]` among `lb_mode`, then there may be **no entries**!

⚠️ **Attention:** The number of services that will be considered based reader, is limited to 64, or 64 times [service-name][CAID][provid][srvid]!

Assignment to service group. This requires an `oscam.services` file to be present.

**Logic (in this order):**
1. If the field is empty (or invalid), the request is allowed.
2. When a negative service (i.e., those with "!") is applicable, the request is rejected.
3. If a positive service is applicable or there is no positive service, the request is allowed.
4. If none of the previous points, the request is rejected.

This means that negative services are only necessary in individual cases - when services has positive entries, but you want to exclude some. This is not recommended, because misconfiguration can occur easily. Instead, create an additional service that contains all the relevant channels.

**Syntax:**
```ini
services = [!]service[,[!]service]...
         =   # Blank (default)
```

---

### lb_whitelist_services
**🟢 Optional parameter**

Reader assignment to service group for channels which may never be blocked by the loadbalancer to the reader.

**Syntax:**
```ini
lb_whitelist_services = <services>,<services>...
```

**Default:**
```ini
lb_whitelist_services =
```

---

### inactivitytimeout
**🔵 Parameter depends on setup/program version**

Inactivity timeout in seconds.

```ini
inactivitytimeout = -1  # Reconnect on network failure for newcamd based readers, even in idle
inactivitytimeout =  0  # Default
```

**Format:**
```ini
inactivitytimeout = -1|0|seconds
```

**Example:**
```ini
inactivitytimeout = 300
```

**Default:**
```ini
inactivitytimeout = 0
```

---

### reconnecttimeout
**🟢 Optional parameter**

Reconnect from a remote reader, if missing answers in seconds.

**Format:**
```ini
reconnecttimeout = seconds
```

**Example:**
```ini
reconnecttimeout = 20
```

**Default:**
```ini
reconnecttimeout =
```

---

### reconnectdelay
**🟢 Optional parameter**

Delay in milliseconds before reconnecting to the remote server after a connection loss.

**Format:**
```ini
reconnectdelay = milliseconds
```

**Example:**
```ini
reconnectdelay = 30000
```

**Default:**
```ini
reconnectdelay = 60000
```

---

### resetcycle
**🟢 Optional parameter**

Number of ECMs until SC reset is performed.

⚠️ **Hint:** Valid for physical readers only!

**Format:**
```ini
resetcycle = count
```

**Example:**
```ini
resetcycle = 5
```

**Default:**
```ini
resetcycle = 0
```

---

### disableserverfilter
**🟢 Optional parameter**

Ignore CAID and ident settings of reader due to faulty clients.

```ini
disableserverfilter = 0  # Not ignore (default)
disableserverfilter = 1  # Ignore
```

**Format:**
```ini
disableserverfilter = 0|1
```

**Example:**
```ini
disableserverfilter = 1
```

**Default:**
```ini
disableserverfilter = 0
```

---

### connectoninit
**🟢 Optional parameter**

Allow newcamd connections to be established on startup although there isn't a request yet.

```ini
connectoninit = 0  # Default
connectoninit = 1  # Allow connection on init
```

**Format:**
```ini
connectoninit = 0|1
```

**Example:**
```ini
connectoninit = 1
```

**Default:**
```ini
connectoninit = 0
```

---

### keepalive
**🟢 Optional parameter**

Keep connection alive.

```ini
keepalive = 0  # Always on if cacheex reader type (default)
keepalive = 1  # Allow cs378x TCP socket to be always connected
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

### smargopatch
**🟢 Optional parameter**

Enable workaround for smartreader+ and reader until native mode works.

```ini
smargopatch = 0  # Disabled (default)
smargopatch = 1  # Enabled
```

**Format:**
```ini
smargopatch = 0|1
```

**Example:**
```ini
smargopatch = 1
```

**Default:**
```ini
smargopatch = 0
```

---

### autospeed
**🟢 Optional parameter**

Auto speed detection.

```ini
autospeed = 0  # Disabled
autospeed = 1  # Enabled (default) - Sets mhz according to ATR
```

Currently only used for smartreader, smargo protocol and Dreambox-readers internal protocol. Other readers will be adapted to use this parameter as well.

If you want to overclock your card, set autospeed to 0.

**Format:**
```ini
autospeed = 0|1
```

**Example:**
```ini
autospeed = 0
```

**Default:**
```ini
autospeed = 1
```

---

### sc8in1_dtrrts_patch
**🟢 Optional parameter**

Enable fix for SC8in1/MCR DTR/RTS kernel bug.

```ini
sc8in1_dtrrts_patch = 0  # Disabled (default)
sc8in1_dtrrts_patch = 1  # Enabled
```

**Format:**
```ini
sc8in1_dtrrts_patch = 0|1
```

**Example:**
```ini
sc8in1_dtrrts_patch = 1
```

**Default:**
```ini
sc8in1_dtrrts_patch = 0
```

---

### fallback
**🟢 Optional parameter**

Define reader as fallback. Standard and fallback reader must have the same group (see **group** parameter)!

```ini
fallback = 0  # No fallback reader (default)
fallback = 1  # Fallback reader
```

**Format:**
```ini
fallback = 0|1
```

**Example:**
```ini
fallback = 1
```

**Default:**
```ini
fallback = 0
```

---

### fallback_percaid
**🟢 Optional parameter**

Use reader as fallback for defined CAIDs only. Two digit wildcards CAIDs are possible. `fallback_percaid` overrules `fallback`.

**Syntax:**
```ini
fallback_percaid = <CAID>[:<ident>[,ident]]...[;<CAID>[:<ident>[,ident]]...]...
```

**Example:**
```ini
fallback_percaid = 1234:234567;10:345678
```

**Default:**
```ini
fallback_percaid =
```

---

### localcards
**🟢 Optional parameter**

Use this reader (for defined CAIDs only) as "local" in LB/reader selection. It will be handled as a local reader per LB and preferlocalcards settings. In this way, we can consider a network reader as local, like we had a cardreader.

**Syntax:**
```ini
localcards = <CAID>[:<ident>[,ident]]...[;<CAID>[:<ident>[,ident]]...]...
```

---

### disablecrccws_only_for
**🟢 Optional parameter**

**Syntax:**
```ini
disablecrccws_only_for = CAID:PROVID;CAID:PROVID
```

**Example:**
```ini
disablecrccws_only_for = 0500:032830;098C:000000
```

---

### cacheex
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Enable cache exchange mode for camd 3.5x and CCcam protocol.

```ini
cacheex = 0  # Disabled (default)
cacheex = 1  # Enable cache exchange pull mode
cacheex = 2  # Enable cache exchange push mode
cacheex = 3  # Enable cache exchange reverse push mode
```

📋 See also on `oscam.user`!

⚠️ Identical cache exchange modes must be set on local OSCam server and remote OSCam user account!

**Format:**
```ini
cacheex = 0|1|2|3
```

**Example:**
```ini
cacheex = 2
```

**Default:**
```ini
cacheex = 0
```

#### cacheex modes

#### cacheex = 1 - cachepull

**Situation:**
- OSCam A reader1 has `cacheex = 1`
- OSCam B account1 has `cacheex = 1`

OSCam A gets an ECM request, reader1 sends this request to OSCam B.

OSCam B checks his cache:
- Not found in cache: return NOK
- Found in cache: return OK+CW
- Not found in cache, but found pending request: wait `cacheexwaittime` in `oscam.conf [global]` and check again. OSCam B never requests new EMMs.

**CW-flow:** B → A

#### cacheex = 2 - cachepush

**Situation:**
- OSCam A reader1 has `cacheex = 2`
- OSCam B account1 has `cacheex = 2`

If OSCam B gets a CW, it's pushed to OSCam A. Reader has normal functionality and can request ECMs.

- Problem: OSCam can only push CWs if OSCam A is connected
- Problem or feature?: OSCam A reader can request ECMs from OSCam B

**CW-flow:** B → A

#### cacheex = 3 - reversecachepush

**Situation:**
- OSCam A reader1 has `cacheex = 3`

If OSCam A gets a CW, it's pushed to OSCam B. OSCam A never requests new ECMs.

**CW-flow:** A → B

---

### cacheex_maxhop
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Define maximum hops for cache exchange.

**Format:**
```ini
cacheex_maxhop = hops
```

**Example:**
```ini
cacheex_maxhop = 5
```

**Default:**
```ini
cacheex_maxhop = 10
```

---

### cacheex_maxhop_lg
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Define a maxhop for lg-flagged CWs for push/receive, to allow a higher maxhop than for non-flagged CWs.

```ini
cacheex_maxhop_lg = 0        # Use value of cacheex_maxhop (default)
cacheex_maxhop_lg = 1 to 10  # Set maxhop (if value is lower than cacheex_maxhop, value of cacheex_maxhop is used)
```

**Format:**
```ini
cacheex_maxhop_lg = 0-10
```

**Example:**
```ini
cacheex_maxhop_lg = 5
```

**Default:**
```ini
cacheex_maxhop_lg = 0
```

---

### cacheex_ecm_filter
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

CacheEx ECM filter for this reader. Defines which CAIDs/providers/services are allowed for cache exchange.

**Format:**
```ini
cacheex_ecm_filter = [caid][&mask][@provid][$servid],n
```

**Example:**
```ini
cacheex_ecm_filter = 1234@000001,1234@000002
```

**Default:**
```ini
cacheex_ecm_filter =
```

---

### cacheex_allow_request
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Allow ECM requests from this CacheEx reader.

```ini
cacheex_allow_request = 0  # ECM requests disabled (default)
cacheex_allow_request = 1  # ECM requests allowed
```

**Format:**
```ini
cacheex_allow_request = 0|1
```

**Example:**
```ini
cacheex_allow_request = 1
```

**Default:**
```ini
cacheex_allow_request = 0
```

---

### cacheex_drop_csp
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Drop CWs received via CSP (Cardservproxy protocol) for this reader.

```ini
cacheex_drop_csp = 0  # accept CSP CWs (default)
cacheex_drop_csp = 1  # drop CSP CWs
```

**Format:**
```ini
cacheex_drop_csp = 0|1
```

**Example:**
```ini
cacheex_drop_csp = 1
```

**Default:**
```ini
cacheex_drop_csp = 0
```

---

### cacheex_allow_filter
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Allow this reader to set CacheEx ECM filters remotely.

```ini
cacheex_allow_filter = 0  # remote filter setting disabled
cacheex_allow_filter = 1  # remote filter setting allowed (default)
```

**Format:**
```ini
cacheex_allow_filter = 0|1
```

**Example:**
```ini
cacheex_allow_filter = 0
```

**Default:**
```ini
cacheex_allow_filter = 1
```

---

### cacheex_allow_maxhop
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Set maxhop settings remotely, if remote reader/user has `cacheex_allow_maxhop = 1`.

```ini
cacheex_allow_maxhop = 0  # Opt-in (default)
cacheex_allow_maxhop = 1  # Allow
```

**Format:**
```ini
cacheex_allow_maxhop = 0|1
```

**Example:**
```ini
cacheex_allow_maxhop = 1
```

**Default:**
```ini
cacheex_allow_maxhop = 0
```

---

### cacheex_block_fakecws
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Block fake CWs for this reader.

```ini
cacheex_block_fakecws = 0  # allow all CWs (default)
cacheex_block_fakecws = 1  # block fake CWs
```

**Format:**
```ini
cacheex_block_fakecws = 0|1
```

**Example:**
```ini
cacheex_block_fakecws = 1
```

**Default:**
```ini
cacheex_block_fakecws = 0
```

---

### cacheex_cw_check_for_push
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Push only when `cacheex_cw_check` counter reached. Localgenerated-flagged CWs are always pushed out.

```ini
cacheex_cw_check_for_push = 0  # Opt-in (default)
cacheex_cw_check_for_push = 1  # Enable
```

**Format:**
```ini
cacheex_cw_check_for_push = 0|1
```

**Example:**
```ini
cacheex_cw_check_for_push = 1
```

**Default:**
```ini
cacheex_cw_check_for_push = 0
```

---

### cacheex_lg_only_remote_settings
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Possibility to deny cacheex-receiver/client (cx2: user / cx3: reader) to overwrite the following settings at cacheex-sending-instance:
- `cacheex_localgenerated_only`
- `cacheex_lg_only_tab`

It makes sense if you want to force your local settings. If the user/reader isn't allowed to overwrite your values:
- It is still possible for the cacheex-receiver to set `cacheex_localgenerated_only=1`, if the user/reader defines `cacheex_localgenerated_only_in=1`; but it is only at cacheex-sending-instance possible to disable it
- It is still possible for the cacheex-receiver to add `cacheex_lg_only_tab`, if the user/reader defines `cacheex_lg_only_in_tab=1234,1337`; but it is only merged to the sender-instance `cacheex_lg_only_tab` values

If `cacheex_lg_only_remote_settings` in `oscam.conf` is enabled, the user/reader-settings are ignored.

```ini
cacheex_lg_only_remote_settings = 0  # Opt-out (default)
cacheex_lg_only_remote_settings = 1  # Deny remote overwrite
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

Forward only CWs which are flagged as localgenerated.

```ini
cacheex_localgenerated_only = 0  # Opt-in (default)
cacheex_localgenerated_only = 1  # Enable
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

CAID table for localgenerated-only filter. Deprecated: use cacheex_lg_only_tab instead.

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

Forward only CWs which are lg-flagged for this list of caid/provid(s).

If provid FFFFFE is set, all provids for this caid are valid!

**Syntax:**
```ini
cacheex_lg_only_tab = caid1:provid1[,provid2];caid2:provid1;
```

---

### cacheex_lg_only_in_aio_only
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Use drop lg-only settings (`cacheex_localgenerated_only_in` & `cacheex_lg_only_in_tab`) only if peer is detected as cx-aio-patched or svn >= 11588.

```ini
cacheex_lg_only_in_aio_only = 0  # Opt-in (default)
cacheex_lg_only_in_aio_only = 1  # Enable
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

Drop incoming CWs which are NOT flagged as localgenerated.

```ini
cacheex_localgenerated_only_in = 0  # Opt-in (default)
cacheex_localgenerated_only_in = 1  # Enable
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

CAID table for incoming localgenerated-only filter. Deprecated: use cacheex_lg_only_in_tab instead.

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

Allow incoming CWs only if they are lg-flagged for this list of caid/provid(s).

If provid FFFFFE is set, all provids for this caid are valid!

**Syntax:**
```ini
cacheex_lg_only_in_tab = caid1:provid1[,provid2];caid2:provid1;
```

---

### cacheex_nopushafter
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Don't forward CWs from local/proxy-reader via CacheEx, if the defined time_in_ms for the CAID is reached.

**Syntax:**
```ini
cacheex_nopushafter = CAID:time_in_ms[,n]
```

---

### caid
**🟢 Optional parameter**

Define and mapping of CAIDs for reader.

**Syntax:**
```ini
caid = <CAID>[&<mask>][:<target CAID>][,<CAID>[&<mask>][:<target CAID>]]...
```

**Examples:**
```ini
caid = 0100
caid = 0200&ffee:0300
caid = 0400&ff00:0500,0600
caid = 0702,0722
caid = 0702&ffdf   # Shortcut for the example above
```

**Default:** All CAIDs with mask FFFF

---

### atr
**🟢 Optional parameter**

Set a custom ATR (Answer To Reset) for the reader. Override the automatic ATR detection.

**Format:**
```ini
atr = hex_bytes
```

**Example:**
```ini
atr = 3B9F21E49067534C000000280F28000069FF6500
```

**Default:**
```ini
atr =
```

---

### boxid
**🟢 Optional parameter**

NDS receiver box ID.

**Example:**
```ini
boxid = 12345678
```

**Default:**
```ini
boxid =
```

---

### tongfang3_calibsn
**🟢 Optional parameter**

**(requires `READER_TONGFANG` compilation flag)**

Calibration serial number for Tongfang v3 readers. 4 bytes in hexadecimal.

**Format:**
```ini
tongfang3_calibsn = hex_bytes
```

**Example:**
```ini
tongfang3_calibsn = 12345678
```

**Default:**
```ini
tongfang3_calibsn =
```

---

### tongfang_boxid
**🟢 Optional parameter**

**(requires `READER_TONGFANG` compilation flag)**

Box ID for Tongfang readers. 4 bytes in hexadecimal.

**Format:**
```ini
tongfang_boxid = hex_bytes
```

**Example:**
```ini
tongfang_boxid = 12345678
```

**Default:**
```ini
tongfang_boxid =
```

---

### stbid
**🟢 Optional parameter**

**(requires `READER_TONGFANG` compilation flag)**

STB ID for Tongfang v3 readers. 8 bytes in hexadecimal.

**Format:**
```ini
stbid = hex_bytes
```

**Example:**
```ini
stbid = 0102030405060708
```

**Default:**
```ini
stbid =
```

---

### tongfang3_deskey
**🟢 Optional parameter**

**(requires `READER_TONGFANG` compilation flag)**

DES key for Tongfang v3 readers. 8 bytes in hexadecimal.

**Format:**
```ini
tongfang3_deskey = hex_bytes
```

**Example:**
```ini
tongfang3_deskey = 0102030405060708
```

**Default:**
```ini
tongfang3_deskey =
```

---

### boxkey
**🟢 Optional parameter**

Box key for Nagravision SCs / CAM key for Irdeto SCs / sessionkey for Seca SCs / CamID for Viaccess.

**Default:**
```ini
boxkey =
```

---

### rsakey
**🟢 Optional parameter**

RSA key for Nagravision/Tiger SCs / CAM key data for Irdeto SCs, Conax SCs.

**Default:**
```ini
rsakey =
```

---

### cwpkkey
**🟢 Optional parameter**

CWPK (Control Word Protection Key) for Nagra readers.

**Format:**
```ini
cwpkkey = index:hex_bytes
```

**Example:**
```ini
cwpkkey = 0:0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwpkkey =
```

---

### deskey
**🟢 Optional parameter**

DES key for the reader in hexadecimal format.

**Format:**
```ini
deskey = hex_bytes
```

**Example:**
```ini
deskey = 0102030405060708090A0B0C0D0E
```

**Default:**
```ini
deskey =
```

---

### mod1
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Modulus 1 for Nagra Merlin readers. 112 bytes in hexadecimal.

**Format:**
```ini
mod1 = hex_bytes
```

**Example:**
```ini
mod1 = 0102030405...
```

**Default:**
```ini
mod1 =
```

---

### idird
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

IRD ID for Nagra Merlin readers. 4 bytes in hexadecimal.

**Format:**
```ini
idird = hex_bytes
```

**Example:**
```ini
idird = 12345678
```

**Default:**
```ini
idird =
```

---

### cmd0eprov
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Provider ID for CMD0E command. Use only if CMD0E needs a ProvID other than the system ID.

**Format:**
```ini
cmd0eprov = hex_bytes
```

**Example:**
```ini
cmd0eprov = 1234
```

**Default:**
```ini
cmd0eprov =
```

---

### mod2
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Modulus 2 for Nagra Merlin readers. 112 bytes in hexadecimal.

**Format:**
```ini
mod2 = hex_bytes
```

**Example:**
```ini
mod2 = 0102030405...
```

**Default:**
```ini
mod2 =
```

---

### key3588
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Key 3588 for Nagra Merlin readers. 136 bytes in hexadecimal.

**Format:**
```ini
key3588 = hex_bytes
```

**Example:**
```ini
key3588 = 0102030405...
```

**Default:**
```ini
key3588 =
```

---

### key3460
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Key 3460 for Nagra Merlin readers. 96 bytes in hexadecimal.

**Format:**
```ini
key3460 = hex_bytes
```

**Example:**
```ini
key3460 = 0102030405...
```

**Default:**
```ini
key3460 =
```

---

### key3310
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Key 3310 for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
key3310 = hex_bytes
```

**Example:**
```ini
key3310 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
key3310 =
```

---

### data50
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Data 50 for Nagra Merlin readers. 80 bytes in hexadecimal.

**Format:**
```ini
data50 = hex_bytes
```

**Example:**
```ini
data50 = 0102030405...
```

**Default:**
```ini
data50 =
```

---

### mod50
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Modulus 50 for Nagra Merlin readers. 80 bytes in hexadecimal.

**Format:**
```ini
mod50 = hex_bytes
```

**Example:**
```ini
mod50 = 0102030405...
```

**Default:**
```ini
mod50 =
```

---

### nuid
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

NUID (Network Unique Identifier) for Nagra Merlin readers. 4 bytes in hexadecimal.

**Format:**
```ini
nuid = hex_bytes
```

**Example:**
```ini
nuid = 12345678
```

**Default:**
```ini
nuid =
```

---

### forcepair
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Force pairing byte for Nagra Merlin readers. Use 00 for global pairing.

**Format:**
```ini
forcepair = hex_byte
```

**Example:**
```ini
forcepair = 00
```

**Default:**
```ini
forcepair =
```

---

### otpcsc
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Force OTP CSC (Card Status Code) for Nagra Merlin readers.

**Format:**
```ini
otpcsc = hex_bytes
```

**Example:**
```ini
otpcsc = 1234
```

**Default:**
```ini
otpcsc =
```

---

### otacsc
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Force OTA CSC (Card Status Code) for Nagra Merlin readers.

**Format:**
```ini
otacsc = hex_bytes
```

**Example:**
```ini
otacsc = 1234
```

**Default:**
```ini
otacsc =
```

---

### cwpkcaid
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CAID for BoxEMM CWPK for Nagra Merlin readers.

**Format:**
```ini
cwpkcaid = hex_bytes
```

**Example:**
```ini
cwpkcaid = 1834
```

**Default:**
```ini
cwpkcaid =
```

---

### cwekey0
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK0 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey0 = hex_bytes
```

**Example:**
```ini
cwekey0 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey0 =
```

---

### cwekey1
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK1 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey1 = hex_bytes
```

**Example:**
```ini
cwekey1 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey1 =
```

---

### cwekey2
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK2 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey2 = hex_bytes
```

**Example:**
```ini
cwekey2 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey2 =
```

---

### cwekey3
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK3 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey3 = hex_bytes
```

**Example:**
```ini
cwekey3 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey3 =
```

---

### cwekey4
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK4 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey4 = hex_bytes
```

**Example:**
```ini
cwekey4 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey4 =
```

---

### cwekey5
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK5 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey5 = hex_bytes
```

**Example:**
```ini
cwekey5 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey5 =
```

---

### cwekey6
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK6 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey6 = hex_bytes
```

**Example:**
```ini
cwekey6 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey6 =
```

---

### cwekey7
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK7 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey7 = hex_bytes
```

**Example:**
```ini
cwekey7 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey7 =
```

---

### cwekey8
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK8 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey8 = hex_bytes
```

**Example:**
```ini
cwekey8 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey8 =
```

---

### cwekey9
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK9 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey9 = hex_bytes
```

**Example:**
```ini
cwekey9 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey9 =
```

---

### cwekey10
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK10 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey10 = hex_bytes
```

**Example:**
```ini
cwekey10 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey10 =
```

---

### cwekey11
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK11 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey11 = hex_bytes
```

**Example:**
```ini
cwekey11 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey11 =
```

---

### cwekey12
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK12 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey12 = hex_bytes
```

**Example:**
```ini
cwekey12 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey12 =
```

---

### cwekey13
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK13 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey13 = hex_bytes
```

**Example:**
```ini
cwekey13 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey13 =
```

---

### cwekey14
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK14 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey14 = hex_bytes
```

**Example:**
```ini
cwekey14 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey14 =
```

---

### cwekey15
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK15 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey15 = hex_bytes
```

**Example:**
```ini
cwekey15 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey15 =
```

---

### cwekey16
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

CWPK16 (Control Word Protection Key) for Nagra Merlin readers. 16 bytes in hexadecimal.

**Format:**
```ini
cwekey16 = hex_bytes
```

**Example:**
```ini
cwekey16 = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cwekey16 =
```

---

### forcecwswap
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Force CW (Control Word) swap for Nagra Merlin readers.

```ini
forcecwswap = 0  # disabled (default)
forcecwswap = 1  # force CW swap
```

**Format:**
```ini
forcecwswap = 0|1
```

**Example:**
```ini
forcecwswap = 1
```

**Default:**
```ini
forcecwswap = 0
```

---

### evensa
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Force even SA (Subscriber Address) for Nagra Merlin readers.

```ini
evensa = 0  # disabled (default)
evensa = 1  # force even SA
```

**Format:**
```ini
evensa = 0|1
```

**Example:**
```ini
evensa = 1
```

**Default:**
```ini
evensa = 0
```

---

### forceemmg
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Force EMMs with tag 0x82 (global EMMs) for Nagra Merlin readers.

```ini
forceemmg = 0  # disabled (default)
forceemmg = 1  # force 0x82 EMMs
```

**Format:**
```ini
forceemmg = 0|1
```

**Example:**
```ini
forceemmg = 1
```

**Default:**
```ini
forceemmg = 0
```

---

### cwpkota
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Enable OTA (Over-The-Air) CWPK updates for Nagra Merlin readers.

```ini
cwpkota = 0  # OTA CWPK disabled (default)
cwpkota = 1  # OTA CWPK enabled
```

**Format:**
```ini
cwpkota = 0|1
```

**Example:**
```ini
cwpkota = 1
```

**Default:**
```ini
cwpkota = 0
```

---

### headermode
**🟢 Optional parameter**

**(requires `READER_NAGRA_MERLIN` compilation flag)**

Header mode for Nagra Merlin readers.

```ini
headermode = 0  # header 0x00
headermode = 1  # header 0x04 (default)
```

**Format:**
```ini
headermode = 0|1
```

**Example:**
```ini
headermode = 0
```

**Default:**
```ini
headermode = 1
```

---

### cak63nuid
**🟢 Optional parameter**

**(requires `READER_NAGRA` compilation flag)**

Nagra CAK6.3 NUID (Network Unique Identifier). 4 bytes in hexadecimal.

**Format:**
```ini
cak63nuid = hex_bytes
```

**Example:**
```ini
cak63nuid = 12345678
```

**Default:**
```ini
cak63nuid =
```

---

### cak63cwekey
**🟢 Optional parameter**

**(requires `READER_NAGRA` compilation flag)**

Nagra CAK6.3 CWPK (Control Word Protection Key). 16 bytes in hexadecimal.

**Format:**
```ini
cak63cwekey = hex_bytes
```

**Example:**
```ini
cak63cwekey = 0102030405060708090A0B0C0D0E0F10
```

**Default:**
```ini
cak63cwekey =
```

---

### cak7_mode
**🟢 Optional parameter**

Initialize card in CAK7 (Merlin) mode for Nagravision readers.

```ini
cak7_mode = 0  # standard mode (default)
cak7_mode = 1  # CAK7/Merlin mode
```

**Format:**
```ini
cak7_mode = 0|1
```

**Example:**
```ini
cak7_mode = 1
```

**Default:**
```ini
cak7_mode = 0
```

---

### card_startdate_basemonth
**🟢 Optional parameter**

Base month for card start date calculation.

**Format:**
```ini
card_startdate_basemonth = month
```

**Example:**
```ini
card_startdate_basemonth = 1
```

**Default:**
```ini
card_startdate_basemonth = 1
```

---

### card_startdate_baseyear
**🟢 Optional parameter**

Base year for card start date calculation.

**Format:**
```ini
card_startdate_baseyear = year
```

**Example:**
```ini
card_startdate_baseyear = 1997
```

**Default:**
```ini
card_startdate_baseyear = 1997
```

---

### card_expiredate_basemonth
**🟢 Optional parameter**

Base month for card expiration date calculation.

**Format:**
```ini
card_expiredate_basemonth = month
```

**Example:**
```ini
card_expiredate_basemonth = 1
```

**Default:**
```ini
card_expiredate_basemonth = 1
```

---

### card_expiredate_baseyear
**🟢 Optional parameter**

Base year for card expiration date calculation.

**Format:**
```ini
card_expiredate_baseyear = year
```

**Example:**
```ini
card_expiredate_baseyear = 1997
```

**Default:**
```ini
card_expiredate_baseyear = 1997
```

---

### ins7e
**🟢 Optional parameter**

Add 26 hex-bytes payload for **NDS Videoguard 2 SCs**.

```ini
ins7e = payload   # 26 hex bytes
      =           # None (default)
```

⚠️ **Attention:** Valid for physical readers only

---

### ins42
**🟢 Optional parameter**

INS42 command data for Irdeto readers.

**Format:**
```ini
ins42 = hex_bytes
```

**Example:**
```ini
ins42 = 0102030405
```

**Default:**
```ini
ins42 =
```

---

### ins7e11
**🟢 Optional parameter**

Add TA1 Byte for **NDS Videoguard 2 SCs**.

```ini
ins7e11 =    # None (default)
        = 11 # 0001 FI + 0001 DI (1 x)
        = 13 # 0001 FI + 0011 DI (4 x)
        = 14 # 0001 FI + 0100 DI (8 x)
        = 15 # 0001 FI + 0101 DI (16 x)
```

⚠️ **Attention:** Valid for physical readers only

---

### ins2e06
**🟢 Optional parameter**

Add check control for pin payload (4 hex bytes) for **NDS Videoguard 2 SCs**.

```ini
ins2e06 = Payload   # 4 hex bytes
        =           # None (blank, default)
```

⚠️ **Attention:** Valid for physical readers only

---

### k1_generic
**🟢 Optional parameter**

Generic K1 key for DRE/Bulcrypt readers. DES or 3DES key in hexadecimal.

**Format:**
```ini
k1_generic = hex_bytes
```

**Example:**
```ini
k1_generic = 0102030405060708
```

**Default:**
```ini
k1_generic =
```

---

### k1_unique
**🟢 Optional parameter**

Unique K1 key for DRE/Bulcrypt readers. DES or 3DES key in hexadecimal.

**Format:**
```ini
k1_unique = hex_bytes
```

**Example:**
```ini
k1_unique = 0102030405060708
```

**Default:**
```ini
k1_unique =
```

---

### fix07
**🟢 Optional parameter**

Enable 0x07 fix for **NDS Videoguard 2 SCs**.

```ini
fix07 = 0  # Disabled
fix07 = 1  # Enabled (default)
```

⚠️ **Attention:** Valid for physical readers only

**Format:**
```ini
fix07 = 0|1
```

**Example:**
```ini
fix07 = 0
```

**Default:**
```ini
fix07 = 1
```

---

### fix9993
**🟢 Optional parameter**

Enable fix for 9993 error with CAID 0919 SCs.

```ini
fix9993 = 0  # Disabled (default)
fix9993 = 1  # Enabled
```

**Format:**
```ini
fix9993 = 0|1
```

**Example:**
```ini
fix9993 = 1
```

**Default:**
```ini
fix9993 = 0
```

---

### readtiers
**🟢 Optional parameter**

Method to get tiers of **NDS Videoguard SCs**.

```ini
readtiers = 0  # Disabled (default)
readtiers = 1  # ins70 (new) method
readtiers = 2  # ins76 (old) method
```

**Format:**
```ini
readtiers = 0|1|2
```

**Example:**
```ini
readtiers = 1
```

**Default:**
```ini
readtiers = 0
```

---

### force_irdeto
**🟢 Optional parameter**

Force Irdeto SC mode even if RSA key is set for Irdeto tunneled Nagravision SC.

```ini
force_irdeto = 0  # No (default)
force_irdeto = 1  # Yes
```

**Format:**
```ini
force_irdeto = 0|1
```

**Example:**
```ini
force_irdeto = 1
```

**Default:**
```ini
force_irdeto = 0
```

---

### needsglobalfirst
**🟢 Optional parameter**

**(requires `READER_CRYPTOWORKS` compilation flag)**

Send global EMMs before unique EMMs for Cryptoworks readers.

```ini
needsglobalfirst = 0  # disabled (default)
needsglobalfirst = 1  # send global EMMs first
```

**Format:**
```ini
needsglobalfirst = 0|1
```

**Example:**
```ini
needsglobalfirst = 1
```

**Default:**
```ini
needsglobalfirst = 0
```

---

### ecmnotfoundlimit
**🟢 Optional parameter**

Number of ECMs with "not found" answer until the reader will be restarted.

```ini
ecmnotfoundlimit = count
                 = 0     # No limit (default)
```

**Default:**
```ini
ecmnotfoundlimit = 0
```

---

### ecmwhitelist
**🟢 Optional parameter**

Define valid ECM length **in hex** and provid for physical reader.

**Syntax:**
```ini
ecmwhitelist = [CAID[@provid]:]length[,length]...[;[CAID[@provid]:]length[,length]...]...
```

**Examples:**
```ini
ecmwhitelist = 10,20,30,0a,0b,0c
ecmwhitelist = 0100:10,20;0200@12345:0a,4b
             =   # None (default) and provid 000000
```

⚠️ **In normal operation mode this parameter is not required!**

📋 **[List of ECM lengths](http://www.streamboard.tv/oscam/wiki/ECMLengthList)**

---

### ecmheaderwhitelist
**🟢 Optional parameter**

Set valid ECM header per CAID and provid **in hex**.

**Syntax:**
```ini
ecmheaderwhitelist = [CAID[@provid]:]header[,header]...[;[@provid]:]header[,header]...]...
```

**Default:** None, provid = 000000

📋 **[HeaderWhitelist](http://www.streamboard.tv/oscam/wiki/HeaderWhitelist)**

---

### detect
**🔵 Parameter depends on setup/program version**

Card status (inserted or removed) is detected via a serial device (UART/SCI) handshake input line.

**Values:**
```ini
detect = cd (default)   # Carrier Detect
       = cts            # Clear To Send
       = dsr            # Data Set Ready
       = ring           # Ring Indicator
       = none           # No detection line connected, card always detected as inside
```

- `none` means: no detection line connected to the card reader. The card is always detected as being inside cardreader.
- Inverse detect signal: prefix "!" (e.g., `detect = !cts`)

**If `use_gpio = 1` is set:**
```ini
detect = gpio1...gpio7   # Card status detected via a GPIO
```

GPIO means "general purpose input output".

**Example:**
```ini
[reader]
label       = mymouse
description = mymouse xxx
protocol    = mouse
device      = /dev/ttyUSB0
services    = xxx
boxkey      = 1122334455667788
force_irdeto = 1
detect      = cd
mhz         = 1000
cardmhz     = 600
group       = 1,2,3
emmcache    = 1,3,2
```

---

### nagra_read
**🟢 Optional parameter**

Read **Nagravision** records (on NCMED cards only).

```ini
nagra_read = 0  # Disabled (default)
nagra_read = 1  # Read all records with expired rights
nagra_read = 2  # Read records with valid rights only
```

**Format:**
```ini
nagra_read = 0|1|2
```

**Example:**
```ini
nagra_read = 2
```

**Default:**
```ini
nagra_read = 0
```

---

### detect_seca_nagra_tunneled_card
**🟢 Optional parameter**

Detect Seca cards tunneled through Nagra for hybrid cards.

```ini
detect_seca_nagra_tunneled_card = 0  # detection disabled
detect_seca_nagra_tunneled_card = 1  # detection enabled (default)
```

**Format:**
```ini
detect_seca_nagra_tunneled_card = 0|1
```

**Example:**
```ini
detect_seca_nagra_tunneled_card = 0
```

**Default:**
```ini
detect_seca_nagra_tunneled_card = 1
```

---

### mhz
**🟢 Optional parameter**

Set reader frequency in units of 10 kHz. If mhz > cardmhz you are in overclocking mode.

**Example:**
```ini
cardmhz = 600    # (6000 KHz = 6 MHz)
mhz     = 1000   # (10000 KHz = 10 MHz)
```

**Default:** 357

Auto clock speed in **Dreambox mode**: set to -1.

📋 **[List of default and overclocking card frequencies](http://www.streamboard.tv/oscam/wiki/CardsList)**

---

### cardmhz
**🔵 Parameter depends on setup/program version**

Set standard SC frequency in units of 10 kHz. For Irdeto SC set to 600.

**Examples:**
```ini
cardmhz = 600   # Irdeto card
        = 357   # Default (blank)
```

**INTERNAL READERS**

If you use `cardmhz > 2000` OSCam will switch to PLL clocking. Internal readers of boxes from Dream Multimedia GmbH can be clocked more precise with it.

The used cardmhz should reflect the highest frequency of the PLL crystal in the internal cardreader. OSCam will calculate the best PLL divider that comes nearest to the wanted user card speed specified in cardmhz.

**Recommended settings:**
- Models with PPC-CPU (DM500/DM600/DM7000/DM7020): `cardmhz = 3150`
- Models with MIPS-CPU (DM500HD/DM800/DM800SE/DM8k/DM7020HD etc.): `cardmhz = 2700`
- DM7025 (special): `cardmhz = 8300`

⚠️ **If only the parameter cardmhz is set (without mhz = xxx) then OSCam clocks the card automatically with the ATR!**

**Example:**
You have a DM800 HD PVR (MIPS), so you should set cardmhz to 2700. If you have a Nagra card that should run on 5 MHz:
- Normal clocking: `cardmhz = 2700` and `mhz = 500`
- Overclocking: `cardmhz = 2700` and `mhz = 900` (card will run at 9 MHz)

⚠️ Keep in mind that most internal readers of non-dreamboxes clock the cards automatically and completely ignore any user clockspeed setting. But you should set cardmhz and mhz anyway, as it's still used to calculate the correct timings in OSCam.

📋 **[List of default and overclocking card frequencies](http://www.streamboard.tv/oscam/wiki/CardsList)**

---

### mode
**🔵 Parameter depends on setup/program version**

Set card init mode for **AzBox** reader.

```ini
mode = 1   # AzBox-Reader
     = 0   # None (default)
```

**Default:**
```ini
mode = 0
```

---

### ident
**🟢 Optional parameter**

⚠️ **Attention:** If in `oscam.conf [global]` loadbalancing is enabled among `lb_mode`, then there may be **no entries**!

⚠️ **Note:** This parameter is only used for EMM and not for ECM. You cannot force ECM to be sent to the card using this parameter.

Define CAID and ident **SC specific** for reader.

**Syntax:**
```ini
ident = <CAID>:<ident>[,ident]...[;<CAID>:<ident>[,ident]...]...
```

**Example:**
```ini
ident = 0100:123456,234567;0200:345678,456789
      =   # Blank, no definition (default)
```

---

### chid
**🟢 Optional parameter**

Define **Irdeto ChID** for reader.

**Examples:**
```ini
chid = 0100:12
chid = 0100:12;0604:0000BA,000101,00010E,000141
     =   # Blank (default)
```

---

### class
**🟢 Optional parameter**

Define class **in hex** SC specific for reader.

**Example:**
```ini
class = 01,02,!1b,!2b   # 01 and 02 yes, 1b and 2b no
      =                 # Blank, no definition (default)
```

---

### aeskeys
**🟢 Optional parameter**

Multiple 16 bytes AES keys for Viaccess SCs (the used postprocessing AES key is specified through the D2 nano of the ECM).

**Syntax:**
```
CAID@ident:AES key #0 CAID #0[,AES key #1 CAID #0],...[;CAID #1@ident:AES key #0 CAID #1[,AES key #1 CAID #1],...]...
```

**Special AES keys:**
- `00` = do not return any CW, no AES key specified
- `FF` = return CW received from the SC, no AES key specified

**Examples:**
```ini
aeskeys = 0500@012345:000102030405060708090a0b0c0d0e0f;0500@543210:0,0,0f0e0d0c0b0a090807060504030201
aeskeys = 0500@012345:key0,key1,key2,key3,key4,key5,...;0500@543210:key0,key1,key2,key3,key4,key5,...
```

If keys are unknown, replace them with 0:
```ini
aeskeys = 0500@012345:key0,key1,0,0,key4,key5,...
```

---

### group
**🔴 Required parameter**

Reader assignment to group. Each reader must be listed in one or more groups. This will determine which client has access to what reader.

Valid values: 1-64

**Syntax:**
```ini
group = 1...64[,1...64]...
```

**Examples:**
```ini
group = 1        # One group
group = 1,4,5    # Multiple groups
```

⚠️ **Setting required parameter blank is not allowed!**

---

### emmcache
**🟢 Optional parameter**

Set EMM cache of local reader.

⚠️ **Attention:** Without this parameter, no EMMs are shown in the log!

**Format:**
```ini
emmcache = <usecache>,<rewrite>,<logging>,<stb-emm>
```

**Parameters:**

**`<usecache>`:**
- `0` = Disable usage of emmcache and emmstats (default)
- `1` = Enable emmcache, emmstats and save to file if OSCam is stopped
- `2` = Enable emmcache, emmstats but don't save to file if OSCam is stopped

**`<rewrite>`:**
- `n` = Determines how often one and the same EMM is written (only if `<usecache>` = 1 or 2)

**`<logging>`:**
- `0` = EMM logging disabled
- `1` = Logging EMM errors
- `2` = Logging written EMMs
- `4` = Logging skipped EMMs
- `8` = Logging blocked EMMs
- `16` = Logging audisabled EMMs

Summarizing these values is possible. 31 shows all kinds of messages.

**`<stb-emm>`:**
- `0` = EMM for STB are ignored (default)
- `1` = EMM for STB are sent to the reader (very specific usage)

**Examples:**
```ini
emmcache = 1,3,10,0   # Cache on, write 3x, log written (2) and blocked (8) = 10, don't send stb-emm
emmcache = 1,2,6,1    # Cache on, write 2x, log written (2) and skipped (4) = 6, send stb-emm
```

**Note:** **stb-emm** is only handy for specific usage (Viaccess: see commit [#10584](http://www.streamboard.tv/oscam/changeset/10584)). In Viaccess we saw some EMM-G that are for the STB and not for the card. Those EMMs are used, for example, to define overencryption key (AES) into the STB to encrypt STB-Card dialog.

---

### blockemm-unknown
**🟢 Optional parameter**

Block unknown types of EMMs.

```ini
blockemm-unknown = 0  # No block (default)
blockemm-unknown = 1  # Block all unknown kinds of EMMs
```

**Format:**
```ini
blockemm-unknown = 0|1
```

**Example:**
```ini
blockemm-unknown = 1
```

**Default:**
```ini
blockemm-unknown = 0
```

---

### blockemm-u
**🟢 Optional parameter**

Block unique EMMs.

```ini
blockemm-u = 0  # No block (default)
blockemm-u = 1  # Block EMMs, which are addressed to card immediately
```

**Format:**
```ini
blockemm-u = 0|1
```

**Example:**
```ini
blockemm-u = 1
```

**Default:**
```ini
blockemm-u = 0
```

---

### blockemm-s
**🟢 Optional parameter**

Block shared EMMs.

```ini
blockemm-s = 0  # No block (default)
blockemm-s = 1  # Block EMMs, which are addressed to certain groups of cards
```

**Format:**
```ini
blockemm-s = 0|1
```

**Example:**
```ini
blockemm-s = 1
```

**Default:**
```ini
blockemm-s = 0
```

---

### blockemm-g
**🟢 Optional parameter**

Block global EMMs.

```ini
blockemm-g = 0  # No block (default)
blockemm-g = 1  # Block EMMs, which are addressed to all cards
```

**Format:**
```ini
blockemm-g = 0|1
```

**Example:**
```ini
blockemm-g = 1
```

**Default:**
```ini
blockemm-g = 0
```

---

### saveemm-unknown
**🟢 Optional parameter**

Save unknown EMMs to file. The path can be defined with `emmlogdir=` in `oscam.conf` (default=config-dir).

```ini
saveemm-unknown = 0  # Disabled (default)
saveemm-unknown = 1  # Enabled
```

**Format:**
```ini
saveemm-unknown = 0|1
```

**Example:**
```ini
saveemm-unknown = 1
```

**Default:**
```ini
saveemm-unknown = 0
```

---

### saveemm-u
**🟢 Optional parameter**

Save unique EMMs to file. The path can be defined with `emmlogdir=` in `oscam.conf` (default=config-dir).

```ini
saveemm-u = 0  # Disabled (default)
saveemm-u = 1  # Enabled
```

**Format:**
```ini
saveemm-u = 0|1
```

**Example:**
```ini
saveemm-u = 1
```

**Default:**
```ini
saveemm-u = 0
```

---

### saveemm-s
**🟢 Optional parameter**

Save shared EMMs to file. The path can be defined with `emmlogdir=` in `oscam.conf` (default=config-dir).

```ini
saveemm-s = 0  # Disabled (default)
saveemm-s = 1  # Enabled
```

**Format:**
```ini
saveemm-s = 0|1
```

**Example:**
```ini
saveemm-s = 1
```

**Default:**
```ini
saveemm-s = 0
```

---

### saveemm-g
**🟢 Optional parameter**

Save global EMMs to file. The path can be defined with `emmlogdir=` in `oscam.conf` (default=config-dir).

```ini
saveemm-g = 0  # Disabled (default)
saveemm-g = 1  # Enabled
```

**Format:**
```ini
saveemm-g = 0|1
```

**Example:**
```ini
saveemm-g = 1
```

**Default:**
```ini
saveemm-g = 0
```

---

### blockemm-bylen
**🟢 Optional parameter**

Block all types of EMMs by length. Maximum 10 values.

**Syntax:**
```ini
blockemm-bylen = [length range,length range]... (decimal)
```

**Example:**
```ini
blockemm-bylen = 1-10,11-
```

**Default:**
```ini
blockemm-bylen =
```

---

### lb_weight
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

The higher the value, the higher the probability for reader selection. It's a divider for the average response time.

**Format:**
```ini
lb_weight = weight
```

**Example:**
```ini
lb_weight = 200
```

**Default:**
```ini
lb_weight = 100
```

---

### lb_force_fallback
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Set the reader always as fallback for load balancing without considering the reader's statistics.

```ini
lb_force_fallback = 0  # Default
lb_force_fallback = 1  # Set reader always as fallback
```

**Format:**
```ini
lb_force_fallback = 0|1
```

**Example:**
```ini
lb_force_fallback = 1
```

**Default:**
```ini
lb_force_fallback = 0
```

---

### savenano
**🟢 Optional parameter**

List of EMM-nanos (in hex w/o 0x) to save or all EMM-nanos. Only valid for physical readers. The path can be defined with `emmlogdir=` in `oscam.conf` (default=config-dir).

**Syntax:**
```ini
savenano = nano[,nano]...|all
```

**Examples:**
```ini
savenano = 45,93,7a,ff
         = all
         =                # Blank (default)
```

---

### blocknano
**🟢 Optional parameter**

List of EMM-nanos to block (in hex w/o 0x) or all EMM-nanos. Only valid for physical readers!

**Examples:**
```ini
blocknano = 45,93,7a,ff
          = all
          =                # Blank (default)
```

---

### dropbadcws
**🟢 Optional parameter**

Reject bad CWs, send "not found" instead of bad CWs.

```ini
dropbadcws = 0  # Default
dropbadcws = 1  # Reject bad CWs
```

**Format:**
```ini
dropbadcws = 0|1
```

**Example:**
```ini
dropbadcws = 1
```

**Default:**
```ini
dropbadcws = 0
```

---

### disablecrccws
**🟢 Optional parameter**

Disable CW checksum test.

```ini
disablecrccws = 0  # Enable (default)
disablecrccws = 1  # Disable CW checksum test
```

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

### use_gpio
**🔵 Parameter depends on setup/program version**

Use GPIO as card detect/reset.

```ini
use_gpio = 0  # Off (default)
use_gpio = 1  # On
```

**Format:**
```ini
use_gpio = 0|1
```

**Example:**
```ini
use_gpio = 1
```

**Default:**
```ini
use_gpio = 0
```

---

### pand_send_ecm
**🟢 Optional parameter**

**(requires `MODULE_PANDORA` compilation flag)**

Send ECMs to Panda/Pandora readers.

```ini
pand_send_ecm = 0  # disabled (default)
pand_send_ecm = 1  # enabled
```

**Format:**
```ini
pand_send_ecm = 0|1
```

**Example:**
```ini
pand_send_ecm = 1
```

**Default:**
```ini
pand_send_ecm = 0
```

---

### cccversion
**🔵 Parameter depends on setup/program version**

**(requires `MODULE_CCCAM` compilation flag)**

**Only for CCcam**

Define CCcam version.

**Syntax:**
```ini
cccversion = <mainversion>,<version>,<sub version>
```

**Example:**
```ini
cccversion = 1.2.34
```

---

### cccmaxhops
**🔵 Parameter depends on setup/program version**

**(requires `MODULE_CCCAM` compilation flag)**

Define CCcam maximum SC distance hops.

```ini
cccmaxhops = 0    # Local SCs only
           = 1    # Local SCs + 1 hop
           = 2    # Local SCs + 2 hops
           = ...  # And so on
           = 10   # Default
```

**Default:**
```ini
cccmaxhops = 10
```

---

### cccmindown
**🔵 Parameter depends on setup/program version**

**(requires `MODULE_CCCAM` compilation flag)**

Filters all readers with hops smaller than number.

```ini
cccmindown = number
           = 0       # Default
```

**Default:**
```ini
cccmindown = 0
```

---

### ccckeepalive
**🔵 Parameter depends on setup/program version**

**(requires `MODULE_CCCAM` compilation flag)**

Send keepalive messages to keep connection to remote CCCam server up.

```ini
ccckeepalive = 0  # No (default)
ccckeepalive = 1  # Yes
```

**Format:**
```ini
ccckeepalive = 0|1
```

**Example:**
```ini
ccckeepalive = 1
```

**Default:**
```ini
ccckeepalive = 0
```

---

### cccam_reshare
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

Reshare level of CCC proxy cards to be sent into gbox network.

```ini
cccam_reshare = -1   # No resharing (default)
              =  0   # Reshare for direct peer only
              =  1   # Reshare for direct peer plus next level
              =  x   # Resharing for direct peer plus x share level
```

**Default:**
```ini
cccam_reshare = -1
```

---

### cccreconnect
**🟢 Optional parameter**

**(requires `MODULE_CCCAM` compilation flag)**

Reconnect again after ECM request timeout in milliseconds.

```ini
cccreconnect = timeout   # Timeout in milliseconds
             = 12000     # Default
```

**Default:**
```ini
cccreconnect = 12000
```

---

### ccchop
**🔵 Parameter depends on setup/program version**

**(requires `MODULE_CCCAM` compilation flag)**

Set hop for **non** CCCam readers.

```ini
ccchop = hop
       = 0    # Default
```

**Default:**
```ini
ccchop = 0
```

---

### use_ssl
**🟢 Optional parameter**

**(requires `MODULE_GHTTP` compilation flag)**

Use SSL for ghttp protocol.

```ini
use_ssl = 0  # Default
use_ssl = 1  # Use SSL for ghttp protocol
```

**Format:**
```ini
use_ssl = 0|1
```

**Example:**
```ini
use_ssl = 1
```

**Default:**
```ini
use_ssl = 0
```

---

### force_ua
**🟢 Optional parameter**

**(requires `READER_DRE` compilation flag)**

Force UA (4 bytes or 8 chars expressed in hexa).

**Example:**
```ini
force_ua = 12345678
```

---

### exec_cmd_file
**🟢 Optional parameter**

**(requires `READER_DRE` compilation flag)**

Path to a script.

**Example:**
```ini
exec_cmd_file = /path/to/script.sh
```

---

### stmkeys
**🟢 Optional parameter**

**(requires `READER_DRECAS` compilation flag)**

Path to a key file.

**Example:**
```ini
stmkeys = /path/to/keyfile
```

---

### resetalways
**🟢 Optional parameter**

Always reset the card before each ECM request.

```ini
resetalways = 0  # normal operation (default)
resetalways = 1  # always reset card
```

**Format:**
```ini
resetalways = 0|1
```

**Example:**
```ini
resetalways = 1
```

**Default:**
```ini
resetalways = 0
```

---

### deprecated
**🟢 Optional parameter**

First the SC will be initialized in normal mode. If it fails, the SC will be automatically reverted to deprecated mode, so that the SC speed will not be changed and the communication will remain on normal ATR speed of 9600 baud.

```ini
deprecated = 0  # Normal mode (default)
deprecated = 1  # Use deprecated SC mode only
```

**Format:**
```ini
deprecated = 0|1
```

**Example:**
```ini
deprecated = 1
```

**Default:**
```ini
deprecated = 0
```

---

### audisabled
**🟢 Optional parameter**

Exclude reader from auto AU (auto update).

```ini
audisabled = 0  # Not excluded (default)
audisabled = 1  # Excluded
```

**Format:**
```ini
audisabled = 0|1
```

**Example:**
```ini
audisabled = 1
```

**Default:**
```ini
audisabled = 0
```

---

### auprovid
**🟢 Optional parameter**

Set provider ID to use the right reader for auto AU.

**Example:**
```ini
auprovid = 123456
```

**Default:**
```ini
auprovid =
```

---

### ndsversion
**🟢 Optional parameter**

Set NDS **Videoguard** version.

```ini
ndsversion =  0   # Autodetection (default)
           =  1   # NDS Videoguard 1
           = 12   # NDS Videoguard 1+
           =  2   # NDS Videoguard 2
```

**Default:**
```ini
ndsversion = 0
```

---

### ratelimitecm
**🟢 Optional parameter**

Number of different SIDs in ECMs allowed for an interval.

```ini
ratelimitecm = number
             = 0       # Default
```

**Default:**
```ini
ratelimitecm = 0
```

---

### ecmunique
**🟢 Optional parameter**

Enable check for matching ECM hash in ratelimit slot.

```ini
ecmunique = 0  # Default
ecmunique = 1  # Enable check for matching ECM hash in ratelimit slot
```

⚠️ **Remark:** Parameter `ratelimitecm` must be set to be able to enable this option!

**Format:**
```ini
ecmunique = 0|1
```

**Example:**
```ini
ecmunique = 1
```

**Default:**
```ini
ecmunique = 0
```

---

### ratelimittime
**🟢 Optional parameter**

Interval for rate limit in milliseconds.

```ini
ratelimittime = milliseconds
              = 0            # Default
```

**Default:**
```ini
ratelimittime = 0
```

---

### srvidholdtime
**🟢 Optional parameter**

Time to keep service ID in ratelimit slot. During this time checking for `ecmunique` is disabled.

```ini
srvidholdtime = milliseconds
              = 0            # Default
```

**Default:**
```ini
srvidholdtime = 0
```

---

### cooldown
**🟢 Optional parameter**

Define cooldown.

**Syntax:**
```ini
cooldown = delay,duration
```

**Parameters:**
- `delay` = Delay in milliseconds for which the reader is allowed to do more ECM requests than defined by parameter `ratelimitecm`
- `duration` = Duration in milliseconds the reader needs to cooldown

Both parameters are mandatory when used.

⚠️ **Parameters `ratelimitecm` and `ratelimittime` are required!**

**Default:**
```ini
cooldown =
```

---

### cooldowndelay
**🟢 Optional parameter**

Cooldown delay in milliseconds. Time delay during which the reader is allowed to process more ECM requests than defined by ratelimitecm.

**Format:**
```ini
cooldowndelay = milliseconds
```

**Example:**
```ini
cooldowndelay = 5000
```

**Default:**
```ini
cooldowndelay =
```

---

### cooldowntime
**🟢 Optional parameter**

Cooldown duration in milliseconds. Time the reader needs to cool down after exceeding rate limits.

**Format:**
```ini
cooldowntime = milliseconds
```

**Example:**
```ini
cooldowntime = 60000
```

**Default:**
```ini
cooldowntime =
```

---

### maxparallel
**🟢 Optional parameter**

Maximum number of parallel active services allowed for this reader.

Useful for limiting load on readers with slot restrictions. When the limit is reached, the reader is temporarily skipped and other readers are tried. A service slot is reserved only when a reader delivers a CW (not when the request is sent). This prevents readers from blocking capacity for services they don't end up serving when multiple readers are queried simultaneously.

A service slot expires when no ECM is received within the measured ECM interval plus the `paralleltimeout` buffer.

```ini
maxparallel = 0  # unlimited (default)
maxparallel = 1  # only 1 active service at a time
maxparallel = 2  # max 2 active services
```

**Format:**
```ini
maxparallel = count
```

**Example:**
```ini
maxparallel = 2
```

**Default:**
```ini
maxparallel = 0
```

⚠️ **After changing `maxparallel` or `parallelfactor`, OSCam must be restarted.**

---

### parallelfactor
**🟢 Optional parameter**

Multiplier for pending slots used during zapping. Pending slots allow temporary capacity overrun while switching channels, preventing black screens when zapping with a single reader.

When zapping, new services go to pending slots if active slots are full. Pending services are promoted to active when slots free up (FIFO), or dropped when active services prove they're still active by sending ECMs (FIFO).

The number of pending slots is calculated as: `round(maxparallel × parallelfactor)`

```ini
parallelfactor = 0    # disable pending slots (strict limit, may cause black screen when zapping)
parallelfactor = 1.5  # default - with maxparallel=2: 3 pending slots
parallelfactor = 2.0  # with maxparallel=2: 4 pending slots
```

**Pending slots by configuration:**

| maxparallel | parallelfactor | Pending Slots |
|-------------|----------------|---------------|
| 1           | 1.5            | 2             |
| 2           | 1.5            | 3             |
| 4           | 1.5            | 6             |
| 1           | 0              | 0 (disabled)  |

**Format:**
```ini
parallelfactor = factor
```

**Example:**
```ini
parallelfactor = 1.5
```

**Default:**
```ini
parallelfactor = 1.5
```

⚠️ **After changing `maxparallel` or `parallelfactor`, OSCam must be restarted.**

---

### paralleltimeout
**🟢 Optional parameter**

Timeout buffer in milliseconds added to the measured ECM interval to determine when a service slot expires.

The ECM interval is measured automatically per service. A service slot expires when no ECM is received within (measured_interval + paralleltimeout). If no interval has been measured yet, a default timeout of 10000 ms plus paralleltimeout is used.

```ini
paralleltimeout = 1000  # default
paralleltimeout = 1500  # 1.5 seconds buffer
```

**Format:**
```ini
paralleltimeout = milliseconds
```

**Example:**
```ini
paralleltimeout = 1500
```

**Default:**
```ini
paralleltimeout = 1000
```

---

### read_old_classes
**🟢 Optional parameter**

Read old classes from Viaccess cards.

```ini
read_old_classes = 0  # read only current classes
read_old_classes = 1  # read old classes too (default)
```

**Format:**
```ini
read_old_classes = 0|1
```

**Example:**
```ini
read_old_classes = 0
```

**Default:**
```ini
read_old_classes = 1
```

---

## Legend

- 🔴 **Required parameter** - Must be configured
- 🟢 **Optional parameter** - Can be omitted
- 🔵 **Depends on setup/program version** - Only needed in specific configurations
- 🟡 **⚠️ NEEDS REVIEW** - Missing documentation

---
