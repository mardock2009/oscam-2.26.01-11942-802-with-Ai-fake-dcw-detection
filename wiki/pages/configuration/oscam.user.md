> [!NOTE]
> 🚧 **Parameters Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# OSCam Configuration: oscam.user

The user configuration file for OSCam defines client accounts with specific permissions, access rights, and restrictions. Each `[account]` section creates a user that can connect to your OSCam server.

## Overview

This file controls:
- **User authentication** - Username and password credentials
- **Group assignments** - Which reader groups users can access
- **Monitor access** - Management and monitoring permissions (levels 0-4)
- **Connection restrictions** - Limit concurrent connections per user
- **Auto Update (AU)** - EMM handling and smartcard updates
- **Service filtering** - Control which services users can access
- **CAID/Ident restrictions** - Limit access to specific providers
- **Betacrypt tunneling** - Protocol conversion for compatibility
- **Anti-cascading** - Prevent unauthorized sharing (numusers, penalty)
- **Protocol settings** - Gbox, CCcam, and other protocol-specific options

Multiple `[account]` sections can be defined to create different users with varying access levels and restrictions.

## [account] Section

```ini
[account]
disabled                             =
user                                 =
pwd                                  =
description                          =
hostname                             =
caid                                 =
uniq                                 =
sleepsend                            =
failban                              =
monlevel                             =
sleep                                =
suppresscmd08                        =
umaxidle                             =
keepalive                            =
au                                   =
emmreassembly                        =
expdate                              =
allowedprotocols                     =
allowedtimeframe                     =
betatunnel                           =
group                                =
services                             =
preferlocalcards                     =
ident                                =
chid                                 =
class                                =
max_connections                      =
cacheex                              =
cacheex_maxhop                       =
cacheex_maxhop_lg                    =
cacheex_ecm_filter                   =
cacheex_drop_csp                     =
cacheex_allow_request                =
no_wait_time                         =
cacheex_allow_filter                 =
cacheex_allow_maxhop                 =
cacheex_block_fakecws                =
disablecrccacheex                    =
disablecrccacheex_only_for           =
cacheex_cw_check_for_push            =
cacheex_lg_only_remote_settings      =
cacheex_localgenerated_only          =
cacheex_localgenerated_only_caid     =
cacheex_lg_only_tab                  =
cacheex_lg_only_in_aio_only          =
cacheex_localgenerated_only_in_caid  =
cacheex_lg_only_in_tab               =
cacheex_nopushafter                  =
cccmaxhops                           =
cccreshare                           =
cccignorereshare                     =
cccstealth                           =
fakedelay                            =
numusers                             =
penalty                              =
acosc_max_ecms_per_minute            =
acosc_max_active_sids                =
acosc_zap_limit                      =
acosc_penalty                        =
acosc_penalty_duration               =
acosc_delay                          =
lb_nbest_readers                     =
lb_nfb_readers                       =
lb_nbest_percaid                     =
cwc_disable                          =
```

---

## Parameters

### disabled
**🟢 Optional parameter**

Account disabled.

```ini
disabled = 0  # account enabled
disabled = 1  # account disabled
```

**Format:**
```ini
disabled = 0|1
```

**Example:**
```ini
disabled = 1
```

**Default:**
```ini
disabled = 0
```

---

### user
**🔴 Required parameter**

Account name.

**Example:**
```ini
user = user1
```

**Default:**
```ini
user =
```

---

### pwd
**🔴 Required parameter**

Password for account.

⚠️ **Note:** Gbox Protocol: pwd is not required

**Example:**
```ini
pwd = pwuser1
```

**Default:**
```ini
pwd =
```

---

### description
**🟢 Optional parameter**

Description of user account (text).

**Format:**
```ini
description = text
```

**Example:**
```ini
description = Living room receiver
```

**Default:**
```ini
description =
```

---

### hostname
**🟢 Optional parameter**

Host from which user connection is allowed.

**Example:**
```ini
hostname = client.dyndns.org
```

**Default:**
```ini
hostname =
```

---

### caid
**🟢 Optional parameter**

Define and mapping of CAIDs for reader.

**Format:**
```ini
caid = <CAID>[&<mask>][:<target CAID>][,<CAID>[&<mask>][:target <CAID>]]...
```

**Example:**
```ini
caid = 0100
caid = 0200&ffee:0300
caid = 0400&ff00:0500,0600
caid = 0702,0722
caid = 0702&ffdf  # shortcut for the example above
```

**Default:** all CAIDs with mask FFFF

---

### uniq
**🟢 Optional parameter**

Unique connection mode for user.

```ini
uniq = 0  # disabled, default
uniq = 1  # only one connection per user is allowed
uniq = 2  # set user to fake if source ip is different
          # (e.g. for newcamd clients with different CAIDs and ports)
uniq = 3  # only one connection per user, but only the last login will survive (old mpcs behavior)
uniq = 4  # set user only to fake if source ip is different, but only the last login will survive
```

**Format:**
```ini
uniq = 0|1|2|3|4
```

**Example:**
```ini
uniq = 1
```

**Default:**
```ini
uniq = 0
```

---

### sleepsend
**🟢 Optional parameter**

Sleep send mode.

```ini
sleepsend = 0
sleepsend = 255  # OSCam client only: stopping requests until next zap
                 # camd 3.x only: stopping requests until restart of camd3 client
```

**Format:**
```ini
sleepsend = 0-255
```

**Example:**
```ini
sleepsend = 255
```

**Default:**
```ini
sleepsend =
```

---

### failban
**🟢 Optional parameter**

Mask for IP based blocking:

```ini
failban = 0  # ignore (default)
failban = 2  # block IP address of a disabled account on connecting
failban = 4  # block IP address of a sleeping account while sleeping comes up
failban = 8  # block duplicate IP address
```

**Format:**
```ini
failban = 0|2|4|8
```

**Example:**
```ini
failban = 2
```

**Default:**
```ini
failban = 0
```

---

### monlevel
**🟢 Optional parameter**

Monitor level:

```ini
monlevel = 0  # no access to monitor
monlevel = 1  # only server and own procs
monlevel = 2  # all procs, but viewing only (default)
monlevel = 3  # all procs, reload of oscam.user possible
monlevel = 4  # complete access
```

**Format:**
```ini
monlevel = 0|1|2|3|4
```

**Example:**
```ini
monlevel = 4
```

**Default:**
```ini
monlevel = 2
```

---

### sleep
**🟢 Optional parameter**

Time waiting for inactive user in minutes.

**Format:**
```ini
sleep = minutes
```

**Example:**
```ini
sleep = 5
```

**Default:**
```ini
sleep =
```

---

### suppresscmd08
**🟢 Optional parameter**

Switches suppress of CMD08.

```ini
suppresscmd08 = 0  # CMD08 for camd3 3.57x/3.78x clients enabled
suppresscmd08 = 1  # CMD08 for camd3 3.57x/3.78x clients disabled
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

---

### umaxidle
**🟢 Optional parameter**

Value for user being idle before disconnect (seconds).

```ini
umaxidle = -1  # use clientmaxidle in [global]-section
umaxidle =  0  # idle disconnect disabled (default)
```

**Format:**
```ini
umaxidle = -1|0|seconds
```

**Example:**
```ini
umaxidle = 300
```

**Default:**
```ini
umaxidle = 0
```

---

### keepalive
**🟢 Optional parameter**

Disable keepalive between newcamd-server and client connection.

```ini
keepalive = 0  # disabled
keepalive = 1  # enabled (default)
```

**Format:**
```ini
keepalive = 0|1
```

**Example:**
```ini
keepalive = 0
```

**Default:**
```ini
keepalive = 1
```

---

### au
**🟢 Optional parameter**

AU (Auto Update) settings.

**Format:**
```ini
au = <label of reader>[,<label of reader>]... | 1
```

**AU settings:**
```ini
au = [label of reader]  # sending EMMs to specified reader
                        # (security issue: clients can see SC data!)
au = 1                  # auto AU is sending EMMs to all readers
                        # (security issue: clients can see SC data!)
au =                    # none (default)
```

**Note:** Sometimes only global EMM's update same CAID cards:
- Check if you blocked unique/shared in READER Blockemm
- Don't use `au = 1`, use `au = [label of reader]`
- If still troublesome, use in house different users to update each card by `[label of reader]`

**Example:**
```ini
# cd_nl and tv_vl have a common provider: m7 group sa and share updates on shared channels
user 1: au = cd_nl,sky_uk
user 2: au = tv_vl
```

---

### emmreassembly
**🟢 Optional parameter**

EMM reassembly, should be set for Viaccess and Cryptoworks readers if the client that you are using to send EMMs is reassembling them instead of just sending them to OSCam for processing.

```ini
emmreassembly = 0  # disabled
emmreassembly = 1  # enabled for DVB API
emmreassembly = 2  # enabled (default)
```

**Format:**
```ini
emmreassembly = 0|1|2
```

**Example:**
```ini
emmreassembly = 0
```

**Default:**
```ini
emmreassembly = 2
```

---

### expdate
**🟢 Optional parameter**

Expiration date for account.

**Format:**
```
<year>-<month>-<day> | <year>/<month>/<day>
```

**Example:**
```ini
expdate = 2001-11-21
expdate = 2002/12/22
```

**Default:**
```ini
expdate = none
```

---

### allowedprotocols
**🟢 Optional parameter**

Allowed protocols for user.

**Format:**
```ini
allowedprotocols = [protocol1][,][protocol2][,][protocol3]...
```

**Protocols:**
- camd33
- camd35
- cs357x
- cs378x
- newcamd
- cccam
- gbox
- radegast

**Example:**
```ini
allowedprotocols = cs357x,gbox  # only cs357x and gbox protocols are allowed
allowedprotocols =              # all protocols are allowed (default)
```

---

### allowedtimeframe
**🟢 Optional parameter**

Account enabled from - to for specified day(s).

**Format:**
```
DAY@HH:MM-HH:MM[,HH:MM-HH:MM][,HH:MM-HH:MM][;DAY@HH:MM-HH:MM[,HH:MM-HH:MM]]
```

Where `DAY` = `SUN`, `MON`, `TUE`, `WED`, `THU`, `FRI`, `SAT` or `ALL` (for all possible days)

- Use comma (`,`) to separate times
- Use semicolon (`;`) to separate different days
- Use `ALL@` if you want the same time frames for everyday
- Day starts at 00:00 and ends at 24:00, so to cover a full day use: `DAY@00:00-24:00`

**Example:**
```ini
allowedtimeframe = ALL@10:00-22:00;MON@00:00-02:00,02:45-04:37;FRI@00:00-10:00,22:00-24:00;SAT@00:00-24:00
```

**Note:** If you use `XXX@22:00-05:00`, this will be turned into `XXX@00:00-05:00,22:00-24:00`

`ALL@` is always checked and used, so you can watch TV the whole day on FRIday in this example. There is no problem to overlap `ALL@` in a day definition, like for `SAT@` definition.

**Default:**
```ini
allowedtimeframe =
```

---

### betatunnel
**🟢 Optional parameter**

Define Betacrypt tunneling (max. see CS_MAXTUNTAB in globals.h). The ServiceID can also be used for wildcarded CAIDs.

**Format:**
```ini
betatunnel = <CAID>.<ServiceID>:<target CAID>[,<CAID>.<ServiceID>:<target CAID>]...
```

**Example:**
```ini
betatunnel = 0100.0001:0200,0300.0004:0500
betatunnel = 0600.FFFF:0700
```

**Default:**
```ini
betatunnel =
```

---

### group
**🔴 Required parameter**

User assignment to reader group. Valid 64 groups.

**Format:**
```ini
group = 1...64[,1...64]...
```

**Default:** none

---

### services
**🟢 Optional parameter**

What services may use the user? This requires an `oscam.services` to be present.

The logic here is as follows (in this order):
1. If the field is empty (or invalid), the request is allowed.
2. When a negative service (i.e., those with `!`) is applicable, the request is rejected.
3. If a positive service is applicable or there is no positive service, the request is allowed.
4. If none of the previous points, the request is rejected.

This means that negative services are only necessary in individual cases.

**Format:**
```ini
services = [!]service[,[!]service]...
```

**Example:**
```ini
services = service1,!service2  # client may receive service1, but not service2
```

**Default:**
```ini
services =
```

---

### preferlocalcards
**🟢 Optional parameter**

Preference for local cards.

```ini
preferlocalcards = -1  # global value from oscam.conf[global] (default)
preferlocalcards =  0  # local SCs used like a remote reader
preferlocalcards =  1  # prefer call exchange based SCs
preferlocalcards =  2  # prefer local SCs
```

**Format:**
```ini
preferlocalcards = -1|0|1|2
```

**Example:**
```ini
preferlocalcards = 2
```

**Default:**
```ini
preferlocalcards = -1
```

---

### ident
**🟢 Optional parameter**

User assignment to SC specific idents.

**Format:**
```ini
ident = <CAID>:<ident>[,<ident>,...][;<CAID>:<ident>[,<ident>,...]]...
```

**Default:** none

---

### chid
**🟢 Optional parameter**

User assignment to SC specific ChID.

**Format:**
```ini
chid = <CAID>:<ChID>[,<ChID>,...][;<CAID>:<ChID>[,<ChID>,...]]...
```

**Default:**
```ini
chid =
```

---

### class
**🟢 Optional parameter**

User [de]assignment to SC specific classes.

**Format:**
```ini
class = [!]class[,[!]class]...
```

**Example:**
```ini
class = 01,02,!03,!04
```

**Default:** none

---

### max_connections
**🟢 Optional parameter**

Maximum concurrent connections allowed for this user account.

**Format:**
```ini
max_connections = count
```

**Example:**
```ini
max_connections = 5
```

**Default:**
```ini
max_connections = 1
```

---

### cacheex
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Cache exchange mode.

```ini
cacheex = 0  # default for camd 3.5x and CCcam protocol
cacheex = 1  # enable cache exchange pull mode
cacheex = 2  # enable cache exchange push mode
cacheex = 3  # enable cache exchange reversepush mode
```

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

**See also on oscam.server!**

Identical cache exchange modes must be set on local OSCam user account and remote OSCam server!

#### cacheex = 1 - cachepull

**Situation:**
- OSCam A reader1 has `cacheex = 1`
- OSCam B account1 has `cacheex = 1`

OSCam A gets an ECM request, reader1 sends this request to OSCam B.

OSCam B checks his cache:
- Not found in cache: return NOK
- Found in cache: return OK+CW
- Not found in cache, but found pending request: wait `cacheexwaittime` in oscam.conf [global] and check again. OSCam B never requests new ECMs.

**CW-flow:** B → A

#### cacheex = 2 - cachepush

**Situation:**
- OSCam A reader1 has `cacheex = 2`
- OSCam B account1 has `cacheex = 2`

If OSCam B gets a CW, it's pushed to OSCam A, reader has normal functionality and can request ECMs.

**Problems:**
- OSCam can only push CW's if OSCam A is connected
- Problem or feature?: OSCam A reader can request ECMs from OSCam B

**CW-flow:** B → A

#### cacheex = 3 - reversecachepush

**Situation:**
- OSCam A reader 1 has `cacheex = 3`

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
cacheex_maxhop_lg = 0       # default, use value of cacheex_maxhop
cacheex_maxhop_lg = 1 to 10 # set maxhop (if value is lower than cacheex_maxhop,
                            # value of cacheex_maxhop is used)
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

CacheEx ECM filter for this user. Defines which CAIDs/providers/services are allowed for cache exchange.

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

### cacheex_drop_csp
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Drop CWs received via CSP (Cardservproxy protocol) for this user.

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

### cacheex_allow_request
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Allow ECM requests from this CacheEx user. When disabled, user can only receive pushed CWs.

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

### no_wait_time
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Disable wait time for this user. ECM requests are processed immediately without waiting for cache hits.

**Format:**
```ini
no_wait_time = 0|1
```

**Example:**
```ini
no_wait_time = 1
```

**Default:**
```ini
no_wait_time = 0
```

---

### cacheex_allow_filter
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Allow this user to set CacheEx ECM filters remotely.

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

Set maxhop-settings remote, if remote reader/user has `cacheex_allow_maxhop = 1`.

```ini
cacheex_allow_maxhop = 0  # default (opt-in)
cacheex_allow_maxhop = 1  # allow remote maxhop settings
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

Block fake CWs for this user. Fake CWs are control words that match patterns defined in oscam.fakecws.

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

### disablecrccacheex
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Disable CW checksum test for CacheEx CWs for this user.

**Format:**
```ini
disablecrccacheex = 0|1
```

**Example:**
```ini
disablecrccacheex = 1
```

**Default:**
```ini
disablecrccacheex = 0
```

---

### disablecrccacheex_only_for
**🟢 Optional parameter**

**(requires `CS_CACHEEX` compilation flag)**

Disable CW checksum test for CacheEx CWs only for specific CAIDs/providers.

**Format:**
```ini
disablecrccacheex_only_for = CAID1[:ident1][,CAID2[:ident2]]...
```

**Example:**
```ini
disablecrccacheex_only_for = 0100:000030,0500
```

**Default:**
```ini
disablecrccacheex_only_for =
```

---

### cacheex_cw_check_for_push
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Push only when `cacheex_cw_check` counter reached. Localgenerated-flagged CWs are always pushed out.

```ini
cacheex_cw_check_for_push = 0  # default (opt-in)
cacheex_cw_check_for_push = 1  # push only when counter reached
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

Possibility to deny cacheex-receiver/client (cx2: user / cx3: reader) to overwrite the following settings @ cacheex-sending-instance:
- `cacheex_localgenerated_only`
- `cacheex_lg_only_tab`

It makes sense if you want to force your local settings. If the user/reader isn't allowed to overwrite your values:
- It is still possible for the cacheex-receiver to set `cacheex_localgenerated_only=1`, if the user/reader defines `cacheex_localgenerated_only_in=1`; but it is only possible @ cacheex-sending-instance to disable it
- It is still possible for the cacheex-receiver to add `cacheex_lg_only_tab`, if the user/reader defines `cacheex_lg_only_in_tab=1234,1337`; but it is only merged to the sender-instance `cacheex_lg_only_tab` values

If `cacheex_lg_only_remote_settings` @oscam.conf is enabled, the user/reader-settings are ignored.
If `cacheex_lg_only_remote_settings` @oscam.conf is disabled, the user/reader-settings are used.

```ini
cacheex_lg_only_remote_settings = 0  # default (opt-out)
cacheex_lg_only_remote_settings = 1  # deny remote settings
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

Forward only CWs which are flagged as localgenerated.

```ini
cacheex_localgenerated_only = 0  # default (opt-in)
cacheex_localgenerated_only = 1  # forward only localgenerated CWs
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

Forward only CWs which are lg-flagged for these list of caid/provid(s).

If provid `FFFFFE` is set, all provids for this caid are valid!

```ini
cacheex_lg_only_tab = caid1:provid1[,provid2];caid2:provid1;
```

---

### cacheex_lg_only_in_aio_only
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Use drop lg-only settings (`cacheex_localgenerated_only_in` & `cacheex_lg_only_in_tab`) only if peer is detected as cx-aio-patched or svn >= 11588.

```ini
cacheex_lg_only_in_aio_only = 0  # default (opt-in)
cacheex_lg_only_in_aio_only = 1  # use lg-only settings only for AIO peers
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

Allow incoming CWs only if they are lg-flagged for these list of caid/provid(s).

If provid `FFFFFE` is set, all provids for this caid are valid!

```ini
cacheex_lg_only_in_tab = caid1:provid1[,provid2];caid2:provid1;
```

---

### cacheex_nopushafter
**🟢 Optional parameter**

**(requires `CS_CACHEEX_AIO` compilation flag)**

Don't forward CWs from local/proxy-reader via CacheEx, if the defined time_in_ms for the CAID is reached.

```ini
cacheex_nopushafter = CAID:time_in_ms[,n]
```

---

### cccmaxhops
**🔵 Parameter depends on setup/program version**

**(requires `MODULE_CCCAM` compilation flag)**

Only if CCcam proxies or CCcam server are used!

Maximum hops limit for CCcam clients.

```ini
cccmaxhops = -1  # CCcam disabled for this user
cccmaxhops =  0  # local SCs only
cccmaxhops =  1  # local SCs + 1 hop
cccmaxhops =  2  # local SCs + 2 hops
# and so on
```

**Format:**
```ini
cccmaxhops = -1|0-10
```

**Example:**
```ini
cccmaxhops = 3
```

**Default:**
```ini
cccmaxhops = 10
```

---

### cccreshare
**🔵 Parameter depends on setup/program version**

**(requires `MODULE_CCCAM` compilation flag)**

Reshare level for CCcam clients.

```ini
cccreshare = -1  # use reshare level defined in oscam.conf (default)
cccreshare =  0  # reshare for direct peer only
cccreshare =  1  # resharing for direct peer and next level
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

Reshare could be defined in 2 ways:
- reader (`cccreshare`)
- user-account (`cccreshare`)

A card's reshare value is set to the smallest value of the 2 parameters!

---

### cccignorereshare
**🔵 Parameter depends on setup/program version**

**(requires `MODULE_CCCAM` compilation flag)**

Only if CCcam proxies or CCcam server are used!

CCcam ignore reshare settings.

```ini
cccignorereshare = -1  # use ignore reshare level of oscam.conf [ccc] (default)
cccignorereshare =  0  # use ignore reshare level of server
cccignorereshare =  1  # use ignore reshare level of reader or user
```

**Format:**
```ini
cccignorereshare = -1|0|1
```

**Example:**
```ini
cccignorereshare = 1
```

**Default:**
```ini
cccignorereshare = -1
```

---

### cccstealth
**🔵 Parameter depends on setup/program version**

**(requires `MODULE_CCCAM` compilation flag)**

CCcam stealth mode.

```ini
cccstealth = -1  # use CCcam stealth of oscam.conf [ccc] (default)
cccstealth =  0  # use extended OSCam-CCcam-protocol
cccstealth =  1  # behavior like the original CCcam-protocol,
                 # no activate partner detection and extended OSCam-CCcam-protocol,
                 # prevent other OSCam to detect the server as OSCam-server
```

**Format:**
```ini
cccstealth = -1|0|1
```

**Example:**
```ini
cccstealth = 1
```

**Default:**
```ini
cccstealth = -1
```

---

### fakedelay
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Set fake delay time individually for user.

```ini
fakedelay =  0  # fake delay disabled
fakedelay = -1  # fake delay of oscam.conf[global] (default)
fakedelay = nn  # fake delay in milliseconds for user
```

**Format:**
```ini
fakedelay = -1|0|milliseconds
```

**Example:**
```ini
fakedelay = 500
```

**Default:**
```ini
fakedelay = -1
```

---

### numusers
**🔵 Parameter depends on setup/program version**

**(requires `CS_ANTICASC` compilation flag)**

Used only if anticascading is enabled!

User per account.

```ini
numusers = -1  # global value from oscam.conf, default
numusers =  5  # maximal 5 users
numusers =  0  # anticascading disabled
```

**Format:**
```ini
numusers = -1|0|count
```

**Example:**
```ini
numusers = 5
```

**Default:**
```ini
numusers = -1
```

---

### penalty
**🔵 Parameter depends on setup/program version**

**(requires `CS_ANTICASC` compilation flag)**

Used only if anticascading is enabled!

Level of penalty:

```ini
penalty = -1  # use value of penalty defined in oscam.conf (default)
penalty =  0  # only logging
penalty =  1  # send fake DWs
penalty =  2  # ban user temporary
penalty =  3  # send DWs with delay (fakedelay)
```

**Format:**
```ini
penalty = -1|0|1|2|3
```

**Example:**
```ini
penalty = 2
```

**Default:**
```ini
penalty = -1
```

---

### acosc_max_ecms_per_minute
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Maximum ECM requests allowed per minute for anticascading over SIDs count (ACoSC) for this user.

**Format:**
```ini
acosc_max_ecms_per_minute = -1|0|count
```

**Example:**
```ini
acosc_max_ecms_per_minute = 10
```

**Default:**
```ini
acosc_max_ecms_per_minute = -1
```

- `-1` = use global setting from oscam.conf
- `0` = unlimited
- `count` = limit to count ECMs per minute

---

### acosc_max_active_sids
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Maximum active SIDs with anti-cascading over SID.

```ini
acosc_max_active_sids =  0  # unlimited, default
acosc_max_active_sids = -1  # use global setting from oscam.conf [global]
```

**Format:**
```ini
acosc_max_active_sids = -1|0|count
```

**Example:**
```ini
acosc_max_active_sids = 5
```

**Default:**
```ini
acosc_max_active_sids = 0
```

---

### acosc_zap_limit
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Zap-limit for anticascading over SID.

```ini
acosc_zap_limit =  0  # unlimited, default
acosc_zap_limit = -1  # use global setting from oscam.conf[global]
```

**Format:**
```ini
acosc_zap_limit = -1|0|count
```

**Example:**
```ini
acosc_zap_limit = 10
```

**Default:**
```ini
acosc_zap_limit = 0
```

---

### acosc_penalty
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Level of penalty with anti-cascading over SID.

```ini
acosc_penalty = -1  # use global setting from oscam.conf [global]
acosc_penalty =  0  # only logging, default
acosc_penalty =  1  # send fake CW's
acosc_penalty =  2  # temporary user ban
acosc_penalty =  3  # send delayed CW's
```

**Format:**
```ini
acosc_penalty = -1|0|1|2|3
```

**Example:**
```ini
acosc_penalty = 2
```

**Default:**
```ini
acosc_penalty = 0
```

---

### acosc_penalty_duration
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Penalty duration for anti-cascading over SID (seconds).

```ini
acosc_penalty_duration =  0  # none, default
acosc_penalty_duration = -1  # use global setting from oscam.conf[global]
```

**Format:**
```ini
acosc_penalty_duration = -1|0|seconds
```

**Example:**
```ini
acosc_penalty_duration = 300
```

**Default:**
```ini
acosc_penalty_duration = 0
```

---

### acosc_delay
**🟢 Optional parameter**

**(requires `CS_ANTICASC` compilation flag)**

Duration of delay for anti-cascading over SID (milliseconds).

```ini
acosc_delay =  0  # none, default
acosc_delay = -1  # use global setting from oscam.conf[global]
```

**Format:**
```ini
acosc_delay = -1|0|milliseconds
```

**Example:**
```ini
acosc_delay = 500
```

**Default:**
```ini
acosc_delay = 0
```

---

### lb_nbest_readers
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Set count of best readers for load balancing.

```ini
lb_nbest_readers = -1  # use global lb_nbest_readers in oscam.conf
lb_nbest_readers =  1  # default
```

**Format:**
```ini
lb_nbest_readers = -1|count
```

**Example:**
```ini
lb_nbest_readers = 2
```

**Default:**
```ini
lb_nbest_readers = 1
```

---

### lb_nfb_readers
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Set count of fallback readers for load balancing for this user.

**Format:**
```ini
lb_nfb_readers = -1|count
```

**Example:**
```ini
lb_nfb_readers = 2
```

**Default:**
```ini
lb_nfb_readers = -1
```

`-1` = use global lb_nfb_readers in oscam.conf

---

### lb_nbest_percaid
**🟢 Optional parameter**

**(requires `WITH_LB` compilation flag)**

Set count of best readers per CAIDs for load balancing, wildcards CAIDs with two-digit CAIDs possible.

**Example:**
```ini
lb_nbest_percaid = 0100:4,0200:3,03:2,04:1  # wildcards CAIDs 03xx and 04xx
```

**Default:** none

---

### cwc_disable
**🟢 Optional parameter**

**(requires `CW_CYCLE_CHECK` compilation flag)**

Disable CW cycle check for this user.

```ini
cwc_disable = 0  # default
cwc_disable = 1  # disable cw cycle check
```

**Format:**
```ini
cwc_disable = 0|1
```

**Example:**
```ini
cwc_disable = 1
```

**Default:**
```ini
cwc_disable = 0
```

---

## Legend

- 🔴 **Required parameter** - Must be configured
- 🟢 **Optional parameter** - Can be omitted
- 🔵 **Depends on setup/program version** - Only needed in specific configurations
- 🟡 **⚠️ NEEDS REVIEW** - Missing documentation

---