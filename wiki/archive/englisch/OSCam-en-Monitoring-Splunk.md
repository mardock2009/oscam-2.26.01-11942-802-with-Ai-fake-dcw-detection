> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/Monitoring/Splunk

## Inhaltsverzeichnis

+   [1 Introduction](#Introduction)
    +   [1.1 Version](#Version)
    +   [1.2 What is Splunk](#What_is_Splunk)
    +   [1.3 Who created Splunk](#Who_created_Splunk)
    +   [1.4 Licensing](#Licensing)
    +   [1.5 What can we do with OSCam add-ons for Splunk](#What_can_we_do_with_OSCam_add-ons_for_Splunk)
    +   [1.6 System requirements](#System_requirements)
        +   [1.6.1 Windows](#Windows)
        +   [1.6.2 Non Windows](#Non_Windows)
+   [2 Installation](#Installation)
    +   [2.1 Splunk](#Splunk)
        +   [2.1.1 Installing Splunk](#Installing_Splunk)
            +   [2.1.1.1 Under Windows](#Under_Windows)
            +   [2.1.1.2 Under Ubuntu 16.04](#Under_Ubuntu_16.04)
                +   [2.1.1.2.1 Script to auto-start Splunk at boot](#Script_to_auto-start_Splunk_at_boot)
        +   [2.1.2 Run Splunk](#Run_Splunk)
        +   [2.1.3 Convert License](#Convert_License)
        +   [2.1.4 Make Splunk accept syslog data](#Make_Splunk_accept_syslog_data)
    +   [2.2 Firewall](#Firewall)
        +   [2.2.1 Windows](#Windows_2)
        +   [2.2.2 Router](#Router)
    +   [2.3 OSCam](#OSCam)
        +   [2.3.1 Make OSCam sending data](#Make_OSCam_sending_data)
        +   [2.3.2 Log card hop from OSCam](#Log_card_hop_from_OSCam)
    +   [2.4 Adding OSCam files for Splunk](#Adding_OSCam_files_for_Splunk)
        +   [2.4.1 Under Windows/Linux](#Under_Windows/Linux)
    +   [2.5 Updating OSCam files for Splunk](#Updating_OSCam_files_for_Splunk)
        +   [2.5.1 For Windows/Linux](#For_Windows/Linux)
+   [3 Using Splunk](#Using_Splunk)
    +   [3.1 Splunk view](#Splunk_view)
    +   [3.2 OSCam view](#OSCam_view)
        +   [3.2.1 OSCam info](#OSCam_info)
        +   [3.2.2 OSCam User Usage](#OSCam_User_Usage)
        +   [3.2.3 OSCam Reader Usage](#OSCam_Reader_Usage)
        +   [3.2.4 OSCam Error](#OSCam_Error)
+   [4 Other info](#Other_info)
    +   [4.1 OSCam debug](#OSCam_debug)
    +   [4.2 Support](#Support)

# Introduction

## Version

Current version 3.5

**3.0**

+   Updated to read servers without ":"
+   Removed limit in reading servers in gui to show all in list
+   Removed duplicate panel in OScam Reader Connections activities
+   Added info for "disconnect RTO"
+   Fixed lots of typos
+   Added info in OScam Restarts
+   Added host to view 7.4
+   Added info about manual user file save and extra panel for it
+   Added Panel 12. OSCam edit info
+   Changed order of view. Why some is wrong is more important than statistics.
+   Splitted panel 2.5 Invalid client in to 2.5 Wrong password and 2.6 Disabled account
+   Rewritten module 13 OScam ecm errors
+   Added more module info
+   Removed Anonymous from view 2.2, since anonymous is part of other action
+   Added props and eventtypes for debug level=1
+   Fixed regex to extract clients with all type of characters (change \[\\w-\] to \[\\S\])
+   Added eventtype for all log level
+   Added tags for log level
+   Added view for expired clients or clients outside timefream
+   Added some anticascading log info
+   Added Search to OSCam menu

**3.1**

+   Added missing info about "13. OSCam ecm errors".
+   Fixed wrong extraction of sid/pid etc
+   Fixed missing date range in "6. OSCam Channels not in oscam.srvid".

**3.2**

+   Correct file name
+   In view 2-3. Duplicate Clients, added IP of duplikat login attempt
+   Wrong server name extracted, fixed
+   In view 2-7. Expired clients, added missing "client=$Client$"
+   In view 4. Added hit counters in drop down boxes and removed anonymous
+   In view 7. Show only top 15 clients to not fill up the list
+   In view 1. and 2. added default to "span"
+   In view 1-13 added value counters for drop down boxes
+   In view 3. Added hit counters in found/not found
+   In view 11 fixed missing host= for "restart from web gui"
+   Added view 10. OSCam Serves map location
+   Added "limit=0" several places to not limit hosts/clients
+   In view 14. fixed som compiling errors
+   In view 12. fixed bad numbering

**3.3**

+   In view 1. and 2. Fixed missing search in host dropdown box
+   In view 2.7 added missing "client" in search
+   In view 2.7 added missing autohiding of panel
+   In view 1. and 2. foxed wrong hit counting
+   In view 2.4 Change from "<!\[CDATA\[..\]\]>" to "<" ">" to escape "<" and ">"
+   In view 1. removed internal card readers from statistics
+   In view 4. Changed Found/not Found to Drop down box
+   In view 10. Show number of unique ip per server
+   In view 9. Show number of unique ip per server and option to show ip
+   In view 9. Shows internal behind client name for private IP, client not shown on map
+   In view 1. and 2. fixed storting of drop down boxes alphabetically
+   Rewritten view 5. to show more exact number of viewers on each channel
+   Cleaned up all query in all views to conform more with standards, like "|" in front of the lines

**3.4**

+   In view 2.3. Duplicate Clients, added info if clients are form different location
+   In view 4. Added hit counter and distance. Add "c@p/i/s/l:h:j" to "ECM log format" to make distance work
+   In view 4. Added possibility to select a channel. This way you can see where its decoded from
+   Added "hideFilters='true'" to some of the panels
+   In view 5. fixed missing channel without name
+   Fixed missing newcam events
+   In view 2.5 and 2.6 fixed wrong search, did not work before
+   In view 1.10 DNS error, fixed to show DNS not wrongly named server
+   Added menu 15 to show when a client last logged in
+   In view 2.4 added missing client filter
+   Added view 2.8 Client try to use blocked services
+   Fixed view 1.10 DNS error not showing
+   In view 4. fixed distanse to show "99" when distanse is not set.
+   Added anticascading events
+   Added view 16. OSCam EMM
+   Added view 2.9 Invalid IP
+   Fixed various tyops
+   In view 1. fixed counters
+   In View 3 fixed counters
+   Added view 17. shows how many percent of ecm is located in oscam.srvid
+   In 2.4 added "maxspan=2" sec and use "where linecount=2" to speed up the search

**3.5** (06.03.2018)

+   Fixed typo in eventtype.conf and in view 12.4 and 12.3
+   Removed duplicate view 12.11
+   Added 16.2 AU view
+   Removed view 12 Overview
+   Added view 12 EMC timing
+   Added view 2.10 Anticascading
+   Added information about error writing to file
+   Added sorting of hits
+   Added in view 8 possibility to hide ECM panel
+   Added view 1.12 "ECM pending table overflow"
+   Added view 2.11 "Anticascading over Sid Count max activ sids reached (ACoSC)"
+   Added view 2.12 "Anticascading over Sid Count zap limit reached (ACoSC)"
+   Added vide 2.12 "Illegal username"
+   Added color to various view
+   Added cards info
+   Added in view 15 free text search for clients
+   Added in view 4 ecm info
+   Added view 18 Show information about Anticascading
+   Added view 19 Show number of cards (eksperimental)

## What is Splunk

Splunk is an universal tool for analyzing big data like logs, syslogs, files +++

## Who created Splunk

Splunk is developed and supported by www.splunk.com OSCam add-ons is developed by Jotne only. It was stared as a project to get some control of the server and the help some other also. There are for sure much more that can be done, but this is a way to help other out there to start using Splunk. I have worked with Splunk on professional basis, but still count my self as medium user of it. Lot of work has been done to index and categorize data coming from the OSCam server.

## Licensing

What we set up here is free. Splunk Enterprise will use with license named Free License with the following limits:

+   Max 500MB log data pr day. (This is more than you ever need and can easily handle many large OSCam servers)
+   No Alert and Monitoring
+   No distributed search
+   User manager (always logged inn with default user)
+   \+ some other stuff

## What can we do with OSCam add-ons for Splunk

The list of what you can do with this endless, but here is some:

+   See what channels a user/client request from you.
+   See what is requested from a reader/proxy.
+   General status panel with various information.
+   Error logs (by clients or readers)
+   Search logs
+   Count status of any events, averages
+   View events by at any time/time range
+   Manage many servers at once
+   Live view
+   Historical logs

## System requirements

What you need to run Splunk depends on OS you select, but the minimum supported is:

### Windows

+   2 GB Ram
+   32/64 bits
+   Windows
    +   Windows Client from Windows 7 and up
    +   Windows Server from Windows 2003 and up

### Non Windows

+   1 GB ram
+   32/64 bits
    +   Linux
    +   Solaris
    +   Mac OS X

# Installation

## Splunk

### Installing Splunk

To download **Splunk**, you need an account at www.splunk.com It free, so just create one.

Go to:**Products** -> **Overview** -> **Splunk® Enterprise** -> **Free download** Select your OS -> **Windows, Linux, Solaris, Mac OS**

#### Under Windows

Simply execute the downloaded file.

#### Under Ubuntu 16.04

Check if your Linux runs 32 bits or 64 bits with the command:

```
uname -a
```

If in the result you see, i363 or i686 it is a 32 bits system.
Otherwhise if you see, amd64 or x86\_64 it is a 64 bits.

Then donwload the right package (in .deb format (debian)), in the sample the name of the selected package is: splunk-6.3.3-f44afce176d0-linux-2.6-intel.deb

Voici la commande pour installer le package:

```
sudo dpkg -i ./your_selected_package_name.deb
```

Example log:

```
Selecting previously unselected package splunk.
(Reading database ... 832902 files and directories currently installed.)
Preparing to unpack .../splunk-6.3.3-f44afce176d0-linux-2.6-intel.deb ...
Unpacking splunk (6.3.3) ...
Setting up splunk (6.3.3) ...
complete
```

Splunk is installed in the folder: **/opt/splunk**

To start it:

```
sudo /opt/splunk/bin/splunk start
```

##### Script to auto-start Splunk at boot

Create a script called splunk in the folder /etc/init.d: **/etc/init.d/splunk**

With this inside:

```
#!/bin/sh
### BEGIN INIT INFO
# Provides:          splunk
# Required-Start:
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: splunk monitoring
# Description: Splunk
### END INIT INFO
splunk_exe="/opt/splunk/bin/splunk"
splunk_start="start"
splunk_stop="stop"

case "$1" in
start)
	exec $splunk_exe $splunk_start
	;;
stop)
	exec $splunk_exe $splunk_stop
	;;
restart|reload)
	$0 stop
	sleep 1
	$0 start
	;;
*)
	echo "Usage: $0 start|stop|restart"
	exit 1
	;;
esac
exit 0
```

Don't forget to make it executable thanks to:

```
sudo chmod 755 /etc/init.d/splunk
```

And to integrate it into the boot process:

```
sudo update-rc.d splunk defaults
```

### Run Splunk

At first run go to

```
localhost:8000 or
your_ip:8000
```

**Splunk** will ask you to change password for the **admin** account. Do so, but you do not need it more than once, since its gone when converting to free license group.

### Convert License

[![](/images/thumb/b/bb/Splunk_License_-1.jpg/300px-Splunk_License_-1.jpg)](/wiki/Datei:Splunk_License_-1.jpg)

I do recommend that you convert Splunk to Free license group now. But if you like, you can try it out with full license for 30 days. But its important you do convert it before 30 days, or you end up in a situation that it will be locked for use for 30 days if it past the 30 day trail.

To convert it do:

+   Settings -> Licensing.
+   Change license group.
+   Free license
+   Save
+   Restart Now (to activate the new license)

You can no go directly inn to **Splunk** without been asked for user/password.

### Make Splunk accept syslog data

We need to make **Splunk** accepting **syslog** packets on **UDP** port **514**.

+   Settings -> Data inputs -> UDP -> New
+   Make sure UDP is selected.
+   Port:514 (default syslog)
+   Next:
+   Source Type: Select
+   In the dropdown box type: syslog and drag scroll bar down until you find: Syslog (Output produced by many syslog daemons....)
+   \-> Review
+   \-> Submit
+   Start searching

## Firewall

Now Splunk is ready to collect data. But first you need to open your firewall, to get **UDP:514** to pass trough. If your OSCam is on another site, you need to add port forwarding in your internet router as well.

### Windows

Here is an sample on how to open Windows firewall.

+   Open Windows Firewall with Advanced Security (click Windows button, start type firewall)
+   Go to Inbound Rules
+   Right Inbound Rules
+   New Rules...
+   Program (this option is best, since you open all needed port in one go)
+   This program path: **%ProgramFiles%\\Splunk\\bin\\splunkd.exe**
+   next
+   Allow the connection
+   Next
+   make sure all is checked. (Domain,Private,Public)
+   Next
+   In name type: **Splunk**
+   Finish

### Router

If you traverse internet, you need to port forwarding UDP:514 packages.

+   Public port: 514
+   Internal port: 514
+   Internal ip\_of\_your\_splunk\_server\_ip

## OSCam

### Make OSCam sending data

[![](/images/thumb/6/65/Splunk_getting_data.jpg/300px-Splunk_getting_data.jpg)](/wiki/Datei:Splunk_getting_data.jpg)

Before we make OSCam send data we go to data view windows in Splunk to see data entering the system

+   In Splunk, select **splunk>** logo in upper left corner.
+   Click the green **\>Search & Reporting**
+   Click **Data Summary**

When OSCam start to send data, you should show it a couple seconds later

Head over to your OSCam

+   Config
+   Logging (section)
+   Syslog server: ip\_of\_your\_splunk\_server
+   Save
+   Restart
+   Restart (OSCam needs to be restarted)

Splunk should now counting up package coming from OSCam

### Log card hop from OSCam

To get how far away you get a card from, you need to tweak OSCam to give that information.

+   Config
+   Logging
+   ECM log format:
+   Add **c@p/i/s/l:h:j**

## Adding OSCam files for Splunk

### Under Windows/Linux

+   Download the Oscam\_for\_splunk.rar file here:

[Datei:OSCam Splunk 3.5.zip](/wiki/Datei:OSCam_Splunk_3.5.zip "Datei:OSCam Splunk 3.5.zip")

+   Unpack it
+   (Windows) Copy OSCam folder to: C:\\Program Files\\Splunk\\etc\\apps (make sure it bcomes C:\\Program Files\\Splunk\\etc\\apps\\OSCam\\...\\...\\)
+   (Linux) Copy OSCam folder to: /opt/Splunk/etc/apps
+   Restart Splunk: Settings -> Server controls -> Restart Splunk -> OK

Or in linux you can do:

```
sudo /opt/splunk/bin/splunk stop
sudo /opt/splunk/bin/splunk start
```

## Updating OSCam files for Splunk

### For Windows/Linux

You only need to do this part if you like to upgrade the OSCam files.

+   Download the latest version from link above.
+   Unpack it
+   Delete the OSCam folder %splunk\_home%/etc/app/OSCam
+   Copy new OSCam file to server in same place as the one you delete.
+   Restart Splunk

```
sudo /opt/splunk/bin/splunk start
```

# Using Splunk

[![](/images/thumb/4/42/Splunk_start.jpg/300px-Splunk_start.jpg)](/wiki/Datei:Splunk_start.jpg)

[![](/images/thumb/8/88/Splunk_User_Usage.jpg/300px-Splunk_User_Usage.jpg)](/wiki/Datei:Splunk_User_Usage.jpg)

[![](/images/thumb/4/4c/Splunk_default_view.jpg/300px-Splunk_default_view.jpg)](/wiki/Datei:Splunk_default_view.jpg)

[![](/images/thumb/c/cc/Splunk_detailed_view.jpg/300px-Splunk_detailed_view.jpg)](/wiki/Datei:Splunk_detailed_view.jpg)

Go to your Splunk Server and you get the main page up.

There you can select **Splunk>** or **OSCam** view

## Splunk view

Here you see all the detailed information coming from OSCam. You can also here go to the Dasboard an see the predefined OSCam view.

## OSCam view

This takes you to the predefined view.

### OSCam info

This view gives an overall quick status.

### OSCam User Usage

Here you see how what channels users request.

### OSCam Reader Usage

Here you see what is requested from Readers/Proxies.

### OSCam Error

Here can you what errors you get.

# Other info

## OSCam debug

You can change the debug level from the default 0 to some other.

I have not had time to index the debug message, so they are just received and not categorized.

## Support

If you have question? Ask them in the forum!

[Streamboard Forum post](http://www.streamboard.tv/wbb2/thread.php?threadid=44559)