> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Webinterface

**!!! Important !!! If you want to use the Webinterface from outside of your LAN you must think about the security. Although the authentication itself via [​digest authentication](http://en.wikipedia.org/wiki/Digest_access_authentication) is relativele secure (no username/password in clear text), the pages themselves are transmitted in clear text (and if you open the configuration an intruder may read all necessary passwords). An intruder could take over the whole management of your system. If you plan to use the webinterface via internet it is highly recommended to do it via a SSL secured reverse proxy like Apache or activate the SSL functionality in OSCam (not available in all binaries). Make also sure that your password is secure and set the httpallowed parameter if possible.**

Information and discussion about the developement of Webinterface can be found [​here](http://streamboard.de.vu/wbb2/thread.php?threadid=30741)
Information about the XML Api (based on Webinterface; for program/library access) can be found [​in this thread](http://streamboard.de.vu/wbb2/thread.php?threadid=30478)

# Parameters for Webinterface

See [​the Wiki](http://streamboard.de.vu/wiki/index.php/OSCam/en/Config/oscam.conf#WebIf) for all configuration options.

# Template System

The Oscam webinterface allows a large customization by not only allowing custom css and js (see configuration options) but also by manipulating the html code itself. To get the original templates request the non-linked page "savetemplates.html" via your web browser. Oscam will store it's internal template files in the directory specified in "httptpl". You can then edit those files and they will be immediately used if you refresh your browser. You should remove unmodified templates after completing your changes and recheck them if you change OSCam revision.

# Using Apache to proxy requests to OSCam

The Apache module mod\_proxy can be used to proxy requests from the Internet to an OSCam server. For details on how to setup Apache please consult the Apache documentation.

```
ProxyRequests Off
      <Proxy *>
              Order deny,allow
              Allow from all
      </Proxy>
      ProxyPass /oscam/ http://localhost:8080/
      ProxyPassReverse /oscam/ http://localhost:8080/
```

## FAQ

Q: The webinterface does not work
A: Check your config. With the newest Trunk there is a own \[WEBIF\] section for all webinterface related parameters! Check the startup log for "HTTP Server listening on port <your port>"

Q: If I try to call the Webinterface with my Browser I get only a page "Error 403 - Forbidden"
A: You havn't defined an allowed IP/ IP Range wich is allowed to call the webinterface. Use the "httpallowed" Parameter

Q: Authentication does not work when trying to authenticate via my own program/library xy. A: Make sure that your program/library uses digest authentication and NOT basic authentication. Wget also seems to have it's bugs with digest authentication so use curl instead. An example usage of curl is

```
curl --verbose --digest -u <user>:<password> "http://user:password@myserver.dyndns.org:12345/oscamapi.html?part=status"
```

Please also remember to use the [​XML Api](http://streamboard.de.vu/wbb2/thread.php?threadid=30478) if possible as this is guaranteed to stay stable whereas [WebIf](https://trac.streamboard.tv/oscam/wiki/WebIf) parsing may fail someday when html code is changed.

## Reader Settings

```
==================== ===== =========== ======== ==== ====== ====== ====== ==== ===== ======== ========== ==========
Parameter \ Type     mouse smartreader internal pcsc serial cs357x cs378x gbox cccam radegast newcamd525 newcamd524
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
.                                                           camd35                            newcamd
==================== ===== =========== ======== ==== ====== ====== ====== ==== ===== ======== ========== ==========
device               x                          x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
key                                                                                           x          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
password                                                                  x                   x          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
premium                                                                   x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
account                                                     x      x           x              x          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
pincode              x     x           x        x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
readnano             x     x           x        x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
services             x     x           x        x    x      x      x      x    x     x        x          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
inactivitytimeout                                                  x           x     x        x          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
reconnecttimeout                                                   x           x     x        x          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
disableserverfilter                                                                           x          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
label                x     x           x        x    x      x      x      x    x     x        x          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
fallback             x     x           x        x    x      x      x      x    x     x        x          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
logport                                                     x      x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
caid                 x     x           x        x    x      x      x      x    x     x        x          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
boxid                x     x           x        x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
aeskeys              x     x           x        x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
detect               x     x           x        x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
protocol             x     x           x        x    x      x      x      x    x     x        x          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
rsakey               x     x           x        x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
boxkey               x     x           x        x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
detect               x                          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
mhz                  x     x                    x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
cardmhz              x     x                    x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
ident
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
class
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
chid
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
showcls              x     x           x        x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
group                x     x           x        x    x      x      x      x    x     x        x          x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
emmcache             x     x           x        x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
blocknano            x     x           x        x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
savenano             x     x           x        x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
readnano             x     x           x        x    x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
cccversion                                                                     x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
cccbuild                                                                       x
-------------------- ----- ----------- -------- ---- ------ ------ ------ ---- ----- -------- ---------- ----------
cccmaxhop                                                                      x
==================== ===== =========== ======== ==== ====== ====== ====== ==== ===== ======== ========== ==========

```

Please help us to document new features here. Feel free to pick informations we give in the forum and write down here.

Thanks, A., A.

[Last modified](https://trac.streamboard.tv/oscam/wiki/WebIf?action=diff&version=42 "Version 42 by Admin") [11 years ago](https://trac.streamboard.tv/oscam/timeline?from=2013-01-14T19%3A40%3A13%2B01%3A00&precision=second "See timeline at 01/14/13 19:40:13") Last modified on 01/14/13 19:40:13

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.