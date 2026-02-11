> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/What is OSCam

## Inhaltsverzeichnis

+   [1 What is OSCam?!](#What_is_OSCam?!)
    +   [1.1 Cardserver](#Cardserver)
    +   [1.2 Client](#Client)
    +   [1.3 Module](#Module)
        +   [1.3.1 oscam.version](#oscam.version)
        +   [1.3.2 Management modules](#Management_modules)

# What is OSCam?!

The most important: **OSCam is Open Source**

OSCam means **O**pen **S**ource **C**onditional **A**ccess **M**odul and is a non-profit community work of many developers. The development is **public**. The progress can be tracked by Oscam-[Timeline](http://www.streamboard.tv/oscam/timeline "streamboard:oscam/timeline") using changesets and tickets. The development steps are "svn's" (subversion). They are available for compilation (Look at Platforms).

"work in progress" due, however, that can be included in the documentation are only snapshots of the development. Help of user demand!

At the beginning of the development OScam was a pure **card-server**. Later, the area added **client**. This is to ensure that everything comes "from one source".

### Cardserver

Like its predecessor MPCS OSCam is mainly a protocol- and cross-platform card server.

### Client

The area **client** is controlled by the parameters **dvbapi**. **Server** and **client** will later be incorporated into one protocol, without having to resort to other protocols with **closed source**. Such protocols are still involved, without responsibility for what in these **black boxes** with the data and commands happened!

**Overview of the dependencies of server and client**

[![](/images/4/4f/Oscam-client.png)](/wiki/Datei:Oscam-client.png)

(Courtesy of **Alno** from his workshop 2 on this topic)

### Module

OSCam is modular, so the memory requirement can be minimized. One can OSCam select only the modules you really need. Servers with little memory are grateful!

The selection is done before **compilation**. Since compiling the advanced users remains reserved, it is not addressed in this document. In *streamboard* there are detailed threads that deal with compiling. There can check the user interested.

Nevertheless, the modules are listet below so you can decide in the selection of binaries are published, which version fits.

The selected modules are documented here:

#### oscam.version

```
Webif support
Webif with SSL support
Dvbapi
Gbox support
Anticasc support
ECM doublecheck
Irdeto guessing
Debug
LED support
Qboxhd-LED support
Log history
Monitor
camd33
Camd35 UDP
Camd35 TCP
Newcamd
Cccam
Radegast
Serial
ConstCW
Cardreader
Nagra
Irdeto
Conax
Cryptoworks
Seca
Viaccess
Videoguard
Dre
Tongfang
```

**Webinterface** shows you these files.

#### Management modules

The skript **config.sh** is an easy way

+   to display of all existing and selected them
    +   Modules
    +   Protocols and
    +   Reader

+   to change this selection and finally
+   to backup for the next request of a build, if you compiled your own.

In the event that this script is not found or does not exist, there is a download [Datei:Config.sh.rar](/wiki/Datei:Config.sh.rar "Datei:Config.sh.rar")