> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en

## Table of contents

+   [What is OSCam?](/wiki/OSCam/en/What_is_OSCam "OSCam/en/What is OSCam")
+   [Which platforms are supported?](/wiki/OSCam/en/Which_plattforms_are_supported "OSCam/en/Which plattforms are supported")
+   [Which protocols, card readers and cards are supported?](/wiki/OSCam/en/Which_protocols_Card_Reader_and_Cards_are_supported "OSCam/en/Which protocols Card Reader and Cards are supported")
+   Configuration:
    +   [oscam.conf](/wiki/OSCam/en/Config/oscam.conf "OSCam/en/Config/oscam.conf")
    +   [oscam.server](/wiki/OSCam/en/Config/oscam.server "OSCam/en/Config/oscam.server")
    +   [oscam.user](/wiki/OSCam/en/Config/oscam.user "OSCam/en/Config/oscam.user")
    +   [oscam.dvbapi](/wiki/OSCam/en/Config/oscam.dvbapi "OSCam/en/Config/oscam.dvbapi")
    +   [oscam.ac](/wiki/OSCam/en/Config/oscam.ac "OSCam/en/Config/oscam.ac")
    +   [oscam.cert](/wiki/OSCam/en/Config/oscam.cert "OSCam/en/Config/oscam.cert")
    +   [oscam.guess](/wiki/OSCam/en/Config/oscam.guess "OSCam/en/Config/oscam.guess")
    +   [oscam.ird](/wiki/OSCam/en/Config/oscam.ird "OSCam/en/Config/oscam.ird")
    +   [oscam.provid](/wiki/OSCam/en/Config/oscam.provid "OSCam/en/Config/oscam.provid")
    +   [oscam.ratelimit](/wiki/OSCam/en/Config/oscam.ratelimit "OSCam/en/Config/oscam.ratelimit")
    +   [oscam.services](/wiki/OSCam/en/Config/oscam.services "OSCam/en/Config/oscam.services")
    +   [oscam.srvid2](/wiki/OSCam/en/Config/oscam.srvid2 "OSCam/en/Config/oscam.srvid2")
    +   [oscam.srvid](/wiki/OSCam/en/Config/oscam.srvid "OSCam/en/Config/oscam.srvid")
    +   [oscam.tiers](/wiki/OSCam/en/Config/oscam.tiers "OSCam/en/Config/oscam.tiers")
    +   [oscam.whitelist](/wiki/OSCam/en/Config/oscam.whitelist "OSCam/en/Config/oscam.whitelist")
    +   [oscam.cacheex](/wiki/OSCam/en/Config/oscam.cacheex "OSCam/en/Config/oscam.cacheex")
+   [Monitoring](/wiki/OSCam/en/Monitoring "OSCam/en/Monitoring")
+   [Picons for WebInterface (WebIf)](/wiki/OSCam/de/Picons "OSCam/de/Picons")
+   [AU (AutoUpdate)](/wiki/OSCam/en/AU "OSCam/en/AU")
+   [Loadbalancing](/wiki/OSCam/en/Loadbalancing "OSCam/en/Loadbalancing")
+   [OScam and VPN (**V**irtual **P**rivate **N**etwork)](/wiki/OSCam/en/OSCam_and_VPN "OSCam/en/OSCam and VPN")
+   example configurations:
    +   [A simple DBox2-Linux-Server-combination](/wiki/OSCam/en/examples/A_simple_DBox2-Linux-Server-combination "OSCam/en/examples/A simple DBox2-Linux-Server-combination")
    +   [Sky HD and MTV-Unlimited](/wiki/OSCam/en/examples/Sky_HD_and_MTV-Unlimited "OSCam/en/examples/Sky HD and MTV-Unlimited")
    +   [OSCam <---> ACamd and vPlug](/wiki/OSCam/en/examples/OSCam_with_ACamd "OSCam/en/examples/OSCam with ACamd")
    +   [Reader](/wiki/OSCam/en/examples/Reader "OSCam/en/examples/Reader")
    +   [Overclocking](/wiki/OSCam/en/examples/Overclocking "OSCam/en/examples/Overclocking")
+   [XML API](/wiki/OSCam/en/XML_API "OSCam/en/XML API")
+   [Shell commands](/wiki/OSCam/en/ShellCommands "OSCam/en/ShellCommands")
+   [OSCam self made](/wiki/OSCam/en/Self-made "OSCam/en/Self-made")
+   Scripts for your receiver:
    +   [DBox2](/wiki/OSCam/en/scripts/DBox2 "OSCam/en/scripts/DBox2")
    +   [Dreambox](/wiki/OSCam/en/scripts/Dreambox "OSCam/en/scripts/Dreambox")
    +   [Kathrein](/wiki/OSCam/en/scripts/Kathrein "OSCam/en/scripts/Kathrein")
+   [Small helpful scripts](/wiki/OSCam/en/SmallHelpfulScripts "OSCam/en/SmallHelpfulScripts")
+   [Central logging](/wiki/OSCam/en/CentralLogging "OSCam/en/CentralLogging")

* * *

+   For OSCam wiki authors:
    +   [Wiki Formatting](/wiki/HowTo_-_Wiki_Formatierungen "HowTo - Wiki Formatierungen")
    +   [Workaround](/wiki/OSCam/WikiWorkaround "OSCam/WikiWorkaround")

## Version

OSCam-Wiki updated for OSCam Version **1.20 Build #10094**. OSCam is being developed on a daily basis. Sometimes, the Wiki-Version will be lagging a little behind. We're doing our best to keep up though ;)

Beginning with build 4787, all changes, additions and deletions of parameters will be marked across the wiki documentation (using mm/dd/yyyy format). These changes are also marked in the parameters documentation pages. In addition, all change sets that have a modification, addition or deletion of parameters will be added to the table in the [Workaround](/wiki/OSCam/WikiWorkaround#changesets_for_Doku "OSCam/WikiWorkaround") page.



## Relevant Links

+   [StreamBoard OSCam-Wiki-Thread](http://www.streamboard.tv/wbb2/thread.php?threadid=30385 "streamboard-thread:30385")
+   [OSCam Documentation](http://www.streamboard.tv/svn/oscam/trunk/Distribution/doc/txt/ "streamboard:svn/oscam/trunk/Distribution/doc/txt/")
+   [OSCam source code versions](http://www.streamboard.tv/oscam/browser "streamboard:oscam/browser")



## Errors in this Wiki

This Wiki is the result of the work of numerous users from StreamBoard. It's natural that some errors might creep in:

+   Errors in spelling and in punctuation.
+   Errors in case.

Also there are a number of parameters under construction, marked with "Under Construction".

Every reader is invited to support the authors in eliminating of errors or amending of comments. Post in thread for this Wiki:

\[\[Streamboard-Thread:30385\]

This is the central point for the collection of errors, corrections and suggestions!


[![](/images/0/00/MessageS.png)](/wiki/Datei:MessageS.png) **Info:** Comments on the individual parameters and examples are always preceded with a **#**. This has the advantage that you can transfer this parameter with copy&paste into your own config!