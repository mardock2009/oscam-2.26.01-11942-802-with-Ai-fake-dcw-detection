> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/Monitoring

## Inhaltsverzeichnis

+   [1 Monitoring](#Monitoring)
    +   [1.1 Webinterface](#Webinterface)
        +   [1.1.1 Features](#Features)
        +   [1.1.2 Parameter](#Parameter)
        +   [1.1.3 Template System](#Template_System)
    +   [1.2 MicroMon](#MicroMon)
    +   [1.3 Splunk](#Splunk)

## Monitoring

### Webinterface

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Importand:**

The Webinterface uses only simple authentication. This authentication is not secure enough for usage from outside of your LAN because the complete traffic including your user-id and password is sent in plain text. An Intruder could take over the whole management of your system. If you plan to use the webinterface via internet it is highly recommended to do it via a SSL secured reverse proxy like Apache. Everything else is very critical. If you redistribute binaries from this branch - please inform the recipient about that!

Information and discussion about the developement of Webinterface you find [here](http://www.streamboard.tv/wbb2/thread.php?threadid=26719 "streamboard-thread:26719")

#### Features

**Already implemented:**

+   Edit User Config (Read & Write)
+   Edit Services (Read & Write)

**Work in progress:**

+   Edit Global Config (Read Ok, Write Ok, Update only after restart)
+   Edit Readers (Read Ok (not all parameters yet), Write NOk)

#### Parameter

**Look at oscam.conf \[webif\]** [OSCam/en/Config/oscam.conf#WebIf](/wiki/OSCam/en/Config/oscam.conf#WebIf "OSCam/en/Config/oscam.conf")

#### Template System

The Oscam webinterface allows you to create your own pages. To get the original tempates to start development request the non-linked page "savetemplates.html" Oscam will store this template files in the directory specified in "httptpl"

### MicroMon

A detailed documentation can be found here: **[MicroMon](/wiki/MicroMon "MicroMon")**

### Splunk

An add-on for Splunk is available to consolidate your OScam logs: **[Splunk](/wiki/OSCam/en/Monitoring/Splunk "OSCam/en/Monitoring/Splunk")**
