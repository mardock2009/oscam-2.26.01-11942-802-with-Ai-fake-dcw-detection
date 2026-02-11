> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# MicroMon

## Introduction

### What is microMon
MicroMon is a universal monitor for displaying various logs, collecting statistics and evaluating the correct function of various servers.

### Who develops microMon
The microMon was first developed non-public by me alone. I primarily used microMon to monitor the status of my [[MPCS]]. After some Streamboard users suggested that I publish the program, I did so. In the course of many feature requests, more and more new functions were added. At some point, Streamboard user pattex approached me about whether he could participate in the development. The advantage was obvious (double manpower, fresh ideas and solution approaches) so I agreed quite quickly. A private SVN was set up, with which we now work. With pattex joining, so much was changed that we decided on a new major release (2.0 aka Thunderstorm). The name says it all. Like a real thunderstorm, new features came in 2.0 from revision to revision or old limitations fell away. Actually, each revision could almost have been a minor release.

**Back to Topic:**

Developers:
```
Alno, pattex (SB)
```

Support Mirrors/Documentation:
```
Deas, Schlappohr, holly2, Apollo (SB)
```

Software crypt support (Delphi):
```
wonderdoc, rudirabbit (SB)
```

Merciless testers and idea suppliers from SB:
```
-=HSKc=-Robby, Token and many others
```

### What can microMon do
* Live evaluation of mpcs log data with database functionality
* Via profiles it is possible to manage the data of several servers
* Log lines with defined content can be colored for better overview
* Via log filters certain events (actions) can be triggered, e.g. alerting via email
* Log outputs can be filtered by defined content to monitor certain events
* Statistics are created about e.g. online times of users and usage times of channels and much more
* Log outputs of other components can be displayed, e.g. camd3 syslog
* Micromon can monitor processes on the local system and restart them (watchdog)
* Reader performance can be displayed graphically
* Via the macro function telnet and Windows commands can be triggered
* MPCS user management

### System requirements

#### Windows
MicroMon is based on the .NET2.x Framework. The framework is available for all Windows versions from W2K. If .NET2.x Framework is not installed, the installer offers the download.
For storing historical data, the so-called JET driver is required. This should be available by default from Windows XP. The installer also checks for the presence of the JET driver and offers the download if necessary. NET2.x and also the JET driver are available free of charge from Microsoft.

#### Linux
Installation under Linux is also possible using Wine. However, in this case you have to do without the automatic post-installation of the .NET frameworks, the Jet driver and also the MDACs. These are best installed beforehand:

It's best to start with a clean Wine configuration (i.e. delete ~/.wine and configure with Wine winecfg). Then download the [[http://wiki.winehq.org/winetricks|Winetricks]] shell script from WineHQ and make it executable with:
```
chmod 755 winetricks
```

Then simply call ./winetricks and install NET20, Jet 4.0 and MDAC 2.7. After that you can use the microMon installer to install the program.

In openSUSE, the winetricks script is part of the wine package and can be started directly with the call:
```
winetricks
```
in the console. (not as root and not with sudo)

Some functions of microMon are somewhat limited under wine (e.g. groupings). Feasible adjustments are in progress.

## GUI

### Element Layout

#### Status Window
*This section is incomplete and needs to be revised.*

#### Log Window
*This section is incomplete and needs to be revised.*

#### Detail Window
*This section is incomplete and needs to be revised.*

## Setup

### Profiles
Except for a few global settings ("Misc Options Setup" --> "Settings all profiles"), the settings or data are stored in so-called profiles. The default profile has the name "Standard", it is already created when microMon is started for the first time. If additional servers with associated logs from [[Camd3]], Gbox, Mbox ... as well as visual settings are to be saved, additional profiles must be created. For this purpose, after changing the settings, the "Save As" button is pressed and a meaningful name for the new profile is entered.

For loading a profile when starting microMon there are 2 possibilities. On the one hand, the option "Select Profile on Startup" can be set in the settings under "Misc Options Setup". Every time microMon is started, a selection of profiles is now displayed. Furthermore, the profile can also be passed as a parameter to microMon. The call of microMon with a profile is as follows:

```
C:\microMon\mpcs_microMon.exe  /profile=<Profilename>   !!! without file extension *.mmp !!!
```

Specifying a profile as a parameter takes precedence over the set "Select Profile on Startup". The selection thus does not appear.
When loading a profile, the users belonging to the profile are also loaded from the user database (Clients.mmgp) and displayed.
If a profile is loaded, all changes to the settings and some visual settings are saved back to this profile.

Profile storage location:
```
C:\Documents and Settings\<WindowsUser>\Application Data\microMon   (XP)
C:\Users\<WindowsUser>\AppData\Roaming\microMon                    (Vista)
```

Explanation of file extensions:
```
*.mmp  - microMon Profile (Individual profiles)
*.mmgp - microMon global Profile (Profile for all instances)
```

A special case:
```
Clients.mmgp - here all clients that were ever recorded are stored
```

### MPCS Setup

#### IP Address/Hostname
IP or hostname of the MPCS server to be monitored
```
192.168.0.1
```
or
```
mein.dyndns.org
```

#### MPCS Port
Port of the MPCS server to be monitored. The port is specified in the mpcs.conf in the [monitor] section or can be changed there.
```
15000
```

#### MPCS Username | MPCS Password
Access data for the monitor access of the MPCS server to be monitored. For monitor access, any user account from mpcs.user that has an appropriate "MonLevel" can be used. The "MonLevel" can also be assigned globally in mpcs.conf in the [monitor] section, this then applies to all user accounts without specifying a "MonLevel".
```
Monitor
```

**The other information is optional and is not required for the pure log function**

### Statusview Setup
*This section is incomplete and needs to be revised.*

### Logwindow Setup

#### Creating Filter Rules
The filter rules refer to the MPCS logs. With regular expressions (RegEx) you can search for situations in the log. A new rule is created with "Add".
!!Attention!! If two or more rules (search patterns) apply to a log message, the **last** applicable rule is evaluated. The programmatically last applicable rule is the one that is also lowest in the list (Setup).

##### Name
The rule must have a unique name. With multiple rules of the same name, only the first rule is executed.

##### Search Pattern
Multiple search patterns can be linked with "|" (pipe) as logical "or" in one entry.
```
anonymous|unknown|fake
```

A logical "and" link would look like this:
```
found.*reader
```

Of course you can also combine both:
```
(not found|ignored|timeout|rejected).*reader
```

[[http://de.wikipedia.org/wiki/Regul%C3%A4rer_Ausdruck|Regular expressions]] are a powerful and very flexible tool for recognizing patterns in strings. This gives you all possibilities.

##### Colors
The two color fields set the foreground and background color of the found log message. After saving the rule, the rule is displayed in the overview in the selected colors.

##### Font
Under Font, the font of the found log message can be set. Double-clicking on the font name opens the font selection dialog known from Windows. After saving the rule, the font is transferred to the overview window above. The original state can be restored with "Reset Font".
!!Attention!! The log message height does not adapt to the font size. A font that is too large makes the log message unreadable.

##### Action
If a log message corresponding to the criteria is found, an action can also be executed in addition to formatting. The available actions are displayed in the selection box as soon as "Action" is checked. The two fields next to the action selection are the Initial Count and the Repeat Count. The following rules apply:

```
Initialcount=5         Action is triggered for the first time after 5 occurrences of the pattern
Wiederholungscount=0   Action is not triggered again
```

```
Initialcount=5         Action is triggered for the first time after 5 occurrences of the pattern
Wiederholungscount=10  Action is then triggered again every 10 occurrences of the pattern
```

#### Removing Filter Rules
*This section is incomplete and needs to be revised.*

### NewCS Setup
*This section is incomplete and needs to be revised.*

### G/Mbox Trace Setup
A new trace is added with "Add". As soon as a trace is added, you can make the settings in the Config window.

* Name (freely selectable but unique - each name may only exist once)
* Description (Description - has no meaning for the trace)
* Port (Number between 0 and 64000 - each port may only be occupied once)
* Logtype (GBox, MBox - currently has no influence on the program but can be used internally later)
* Enabled (only if a trace is "enabled" will a log register be displayed. This way you can hide rarely used traces without deleting them)

The trace is saved with "Save".

You can delete a trace by marking it in the list and clicking "Remove"

The name of a trace can no longer be changed after saving.

### Chart Setup
In Chart Setup you can set:
* Maximum value of Y axis
* Step size of Y axis

### Watchdog
Watchdogs can monitor the local system. If a watchdog is active, the specified program is monitored and restarted if the process is no longer running.

```
Example of MPCS monitoring:
Watchdog Name: MPCS
Computername:
Filename: c:\programme\mpcs\mpcs.exe
Parameter: -b
```

The parameter -b sends the mpcs immediately to the background.

The connection with actions is also planned here.

### Mail
This setup window is actually self-explanatory:
* SMTP Server -> Your mail server
* Port -> The SMTP port of your mail server
* Username -> Your SMTP username
* Password -> Your SMTP password
* Sender address -> Your sender email address

### Actions Setup

#### Creating Actions
Actions are the "handlers" (executors) in MicroMon. An action can be defined as:
* Sound
* Mail
* Macro

Multiple assignment is possible. For example, a macro can be executed and a mail can be sent at the same time. To create a new action, simply click "Add".

#### Removing Actions
An action can be deleted by marking it and clicking "Remove". MicroMon checks whether the action is in use. If the action is linked to a log rule, for example, the deletion is aborted and the first log rule to which the action is linked is displayed. The link must first be resolved.

#### Blocking
A blocking duration in seconds can be entered in this field. This blocking is intended for the case that a search pattern is suddenly found very often and the repeat count triggers an action every 5 seconds, for example. If this action is a mail action, a mail would be sent every 5 seconds. The blocking protects against this. If, for example, a 120 is entered here, the action is blocked for 2 minutes. Even if the action is triggered every 5 seconds, it is only executed every 2 minutes (120 seconds).

#### Sound
To play a sound with the action, "Sound" must be checked. Double-clicking on the path field opens a selection dialog. If a *.wav file is selected, it can be played with the Test button.

#### Mail
To add a mail to an action, "Mail" must be checked. Double-clicking on the subject field opens the Mail Setup. There you can set the recipient address, the subject line and the text. Additionally, there is the possibility to send log lines from the main log. The number of log lines is specified as a number from the bottom. A value of 50 therefore delivers the last 50 log lines. If there are fewer log lines in the main log than specified, all existing log lines are sent.

Prerequisite for sending mail is correct server data in the "Mail" setup.

When the mail wizard is completed, this mail can be triggered with "Test".

#### Macro
*This section is incomplete and needs to be revised.*

### Macro Setup

#### Creating Macros
*This section is incomplete and needs to be revised.*

#### Removing Macros
*This section is incomplete and needs to be revised.*

#### Telnet Macro
*This section is incomplete and needs to be revised.*

#### Windows Macro
*This section is incomplete and needs to be revised.*

### Misc Options Setup

#### Connect monitor at program start
When using profiles or when monitoring a single server, this function can be activated so that a connection to the server is established immediately when calling microMon.

#### Automatically check for updates
This is a global function and is therefore independent of the loaded profile.
If there are problems with the internet connection, this function should be deactivated. Manual checking for updates under "Extras" -> "Software update" is still possible.

#### Profile selection at program start
This is a global function and is therefore independent of the loaded profile.
If this function is activated, a selection window with the available profiles is displayed when microMon is started. Here you can now select the desired profile to be loaded. When using only one profile (server), this function can be deactivated. If microMon is called with the parameter "/profile=<Profilename>", the specified profile is loaded immediately, the selection window does not appear.

#### ProcessPriority
This is a global function and is therefore independent of the loaded profile.
Here the system priority of the program can be set in 6 levels. Recommendation: Normal

#### SRVID
Here you can choose between using the old mpcs.svrid and the new [[Srvid#microMon.srvid|microMon.srvid]]. The respective file must be in the same path as profile files (*.mmp).

## Changelog

```
2.1.0.878
Add:	new variables Caid and Sid for SrvId Naming
Fix:	Fix possible crash when connection to mpcs is lost
Upd:	Update micromon.srvid file
Add:	New Column GeoInfo in the clientwindow (Provider:http://freegeoip.appspot.com)

2.1.0.871
Upd:	Update mpcs.srvid file

2.1.0.870
Chg:	the internet address in the clientview ist now shown for inactive clients
Add:	New Button in Statistics that shows some user counts over time
Fix:	Memory Leak in Diagram
Add:	New Option to delete database entries after x days in the settings menue under database

2.1.0.858
Fix:	Some translation issues fixed
Fix:	mpcs.srvid parsing was broken

2.1.0.854
Add:	New Menue Entry under Extras -> ServiceIds File reload
Add:	New Column "Days payed left" in ClientView
Chg:	The databaseformat for the channelhistory is now sqlite
Upd:	Update micromon.srvid file
Add:	it is now possible to add the networkid to the caid in the micromon.srvid file

2.1.0.835
Add:	Active and Online Clients are now counted separately in Group Label

2.1.0.833
Chg:	Option crypted connection is now on per default
Chg:	Option SRVID uses microMon.srvid per default
Fix:	Log Entry "filter" is now processed and counted as "ignored"

2.1.0.825
Add:	New Statuslabel that shows the overall ecms per minute
Chg:	mailing the last n loglines now includes the line that fires the event
Chg:	microMon.srvid updated. thx to -=HSKc=-Robby@streamboad

2.1.0.819
Fix:	Wrong Template for Server status Channels now really fixed

2.1.0.817
Fix:	Wrong Template usage for channels in client window
add:	Timerange for History Entries for faster display

2.1.0.811
Fix:	Resolving of Services (CAID/SRVID)
Add:	New Column in Clientview that shows the last FOUND channel
Add:	It is now possible to send commands to mpcs via macros
Chg:	Ping Status takes less space now
Chg:	microMon.srvid updated. thx to -=HSKc=-Robby@streamboad

2.1.0.801
Fix:	Log dateparsing now bruteforce with German region settings (VNC issue)
Add:	Log parsing "expiered date" shown in log and counted under "r" (rejected)
Chg:	Toaster re- enabled under OStype "Wine"
Fix:	Manually added email addresses in action dialog settings now saved correctly
Fix:	After Resume from Hibernate the reconnect to the server waits for a valid connection or 30 seconds
Chg:	the reconnect is immediately after cardserver down detected thrown.
Add:	you can now change the connection timeout to the server in the settings dialog under mpcs

2.1.0.779
Chg:	Crypting now with own Code, no external dlls required
Chg:	New micromon.srvid format. Multiple CAIDS allowed, see wiki
Fix:	Channelname was sometimes wrong with new .srvid format in clientview
Fix:	Max User Info is now resetted correctly on double click.

2.1.0.766
Fix:	Onlineupdate autocheck
Fix:	Crypt checkbox shows status also if disabled
Fix:	Actions mailsend
Add:	Mailassistant - clientaddresses selectable
Chg:	Mailclient prepared internally for multi TO
Chg:	Play sound on action moved to a background thread
Add:	Srvid assignment with microMon.srvid over templates (Design up to user)
Add:	Change each log backcolor black <-> white (button in each head of log)
Chg:	Webinterface - Macros avail again.
Fix:	Wine environment detection
Add:	WebIf Client section
Add:	Min Responsetime and Current Responsetime columns added to Clients Section
Fix:	Memleak fixed
Add:	Prozesspriority can now be set under Settings -> Misc Options Setup
Chg:	MaxClients is now set whenever the count is hit.
Add:	WebIf Channel history for clients (clientname is link)

2.1.0.722
Chg:	microMon.srvid updated THX Robby
Add:	cryptcache - every command become encoded only one time externaly
Chg:	New rudirabbit encoding.dll
Add:	Button for setting standard pathes
Fix:	Memleak removed
Add:	Basic filemanager to perform fileactions to applicationfolder

2.1.0.693
Fix:	Crash after closing microMon

2.1.0.683
Fix:	Splitter Position not saved after restart
Add:	Enhanced debugmessage for rudi crypt

2.1.0.665
Fix: 	Exception in chart changing/ setting Y Values
Add: 	New microMon.srvid supported
Add: 	Some Wine compatibility
Add:	MPCS crypt connection - THX @ rudirabbit / wonderdoc
Fix:	Exception after changing minimize to tray in settings window

2.0.0.611
Fix:	Columnsizes are now saved
Fix:	Crash when no Entry is selected in Clientinfo and contextmenu is opened
Add:	security.dll is now included in Distribution. No function yet.
Add:	Some new Client Data in ClientView Contextmenue
Add:	it is now possible to hide the elements in the mainscreen via Menu View
Chg:	Autoupdate Servers are now selected by there response time

2.0.0.585
Fix:	GBox / MBox could not connect after disconnect - fixed in UDP core
Fix:    Exception on Telnettest if plink path not exist

2.0.0.580
Add:	Cleanup for V1.n Settings in "Misc Options"
Add:	Ping timeout configurable in "Misc Options". Default 2000mS
Chg:	Moved Ping to a separate thread
Chg:	GBox / MBox setup section comletely restructured
Chg:	GBox / MBox logging moved to new UDP Core and new Logoutput
Add:	Help window with Wiki page (Thanks @ Streamboard)

2.0.0.559
Chg:	Complete restructure of macro setup
Add:	Unlimited number of macros possible now
Alert:	Webinterface works not with the new macros -> commands disabled until solution found
Add:	Macros are avail in Action Setup
Add: 	Logrules have a complete Fontsetup now (smaller Fonts maybe for Netbooks useful)
Fix:	Exception in set split containers (minimize to tray)
Fix:	Minimize to tray issues
Fix: 	some code optimization - maybe fixing an invisible memleak
Fix:	Possible deadlock in syslog core
Chg:	Syslog/ camd3 Log moved to new Log output (less CPU Load)
Chg: Some cosmetic in Setup form

2.0.0.527
Fix:	NewCS Port causes Error if not numeric
Fix:	120dpi windows setting support
Add:	Instant UDP Log
Add:	Block Action for n Seconds (especially for mail to avoid flood)
Fix:	Action repeatcount = 0 avoid repeat
Add:	Some grouping in Clientdetails/ Channel History
Chg:	mpcs.srvid will not longer overwritten while install if exist
add:	new translation of some controls to german

2.0.0.478
Fix:	German Language was not displayed for some controls
Fix:	Removing of a Client works now
Fix:	Window Sizes with 120dpi

2.0.0.451
Fix:	cache0 causes sometimes error
Add:	Some more translations
Add:	In all Log Windows you can now copy all entries to clipboard
Fix:	lookup of hostnames in clientview was sometimes unknown host

2.0.0.443
Fix:	Custom Log works again
Fix:	Parsing of 0D05&FFFFFF (FFFFFF became ignored)
Add:	LogColor Font bold added
Fix:	On simulating log a nameles client could be created which raises an exeption on next start
Add:	the status of logwindows (play,pause,stop) is now saved
Add:	LogColors Count activated - shows how often a RegEx has matched
Add: 	LogColors Context added to delete all counts
Add:	LogColors Action selector
Add:	Actions Config - Actions can become used in LogColors as Alerthandler
Add: 	Mailsetup sender address
Fix:	Ping timout causes a hanging Stats refresh (I---- Messages) Ping get 3 Chances now
Add:	Partial Multilanguage Support (englisch,deutsch) not all is translated jet

2.0.0.356
Add:	DB Path per profile configurable (Setup "Logsettings")
Chg:    Path config for default logpath moved to setup "Logsettings"
Chg:    Standardpath for DB is now Applicationdata in userspace (MS conform)
Fix:	Watchdog stats refresh now on activate tab (only on firing WD before)
Add:	Plink.exe Path configurable
Add:	Watchdog stats columnsize saved per profile
Add:	New User changeable field "EMail" per Clientinfo
Chg:	New Configuration for coloring the log. the old settings are lost.
Fix:	Problem with icon column in clientview fixed

2.0.0.325
Fix:	Clientlist grows up on each save
Chg:	ClientInfo window - stats ordered by date descending
Fix:	Problem with database under 64bit os solved
Add:	the debuglevel can now be set with the contextmenue in the logwindows
Chg:	Reorganisation of the ClientInfo Window
Add:	New User changeable fields "Name" and "notice" per ClientInfo

2.0.0.300
Fix:	Autoupdate now working with all client security settings
Fix:	Crash with command line parameters
Chg:    sleeping clients are shown in clientdetails as "inactive"
Add:	Watchdog Stats Refresh active
Chg:	Clientload per profile

2.0.0.282
Add:	if an error ocurred while updating micromon, the errormessage now shows the filename of the updater
Chg:	client settings saved in extra file.
Add:	Additional Infos in show client info dialog
Add:	Zapping History in show client info dialog

2.0.0.271
Add:	changelog added

2.0.0.265
Add:	New Column in Clientview lastactive
Add:	New Column in Clientview clientaddress
Add:	New Column in Clientview maxtime
Add:	Column Channel ist now colored red when more than 10 seconds no ecm received
Add:	Column time is now colored if responsetime bad
Add:	Column maxtime is now colored if responsetime bad
Add:	you can now hide the column in Clientview by right clicking and go to Columns entry
Fix:	invalid ecm responses are now mapped to ignored to show them in column i in clientview
Add:	New Register Watchdog
Fix:	In Userconfig the Button to download is now enabled only if the connection is established
Add:	the toaster info to update the software is now clickable
Add:	the watchdog states can be changed with a new menuentry
```

## Change Requests / Feature Requests

### Change Requests

#### Request 1
```
Request Detail:

Signed: user1, user2,
```

### Feature Requests

#### Free Window Arrangement
```
Request Detail: I know it's difficult, but it would be a super feature.
The window arrangement freely selectable, like x-files/windows in Word .... Then also with window-arrange, overlapping, side by side, on top of each other ..

[saruman]: Or maybe offer two alternative window layouts? The original (as now)
and additionally maybe one that has the status at the top, next the user list and the logs at the bottom?

[Apollo]: Having all windows one below the other as an alternative layout would be advantageous for a low screen resolution.
And then also as a Windows Mobile version.

Signed: der Hase, saruman, Apollo
```

#### Debug Window Moveable
**You can hide not needed Tabs in Settings "Misc"**

```
Request Detail: To make the window sorting moveable.
This way you could change the order of the debug windows.
Either moveable tabs or configurable sorting via ini.file.

Background: at resolutions of ~1024 mpcs and gbox are no longer on
            one page and so switching from one debug to another is quite cumbersome

Signed: der Hase
```

#### Chart
```
Request Detail: Create a separate graph with the response times for each user.
In my opinion, everything can be in one graph, but the individual
response times then color-coded (i.e. assign a color to each user).

Signed: saruman
```

#### User Window (Sorting)
```
Request Detail: Can sorting of users by status be built in for wine?
If I read that correctly, sorting doesn't work together with grouping,
but wine doesn't group.

[saruman]: Yes, by status and within this sorting then alphabetically. That would be great.

Signed: Apollo, saruman
```

#### Reader Window
```
Allow sorting in the Reader windows (by clicking on the column name);

Then you could sort the chid by start or optionally by end date!

Signed: der Hase
```