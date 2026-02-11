> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Trac Logging

#### Table of Contents

+   [Index](https://trac.streamboard.tv/oscam/wiki/TracGuide)
+   [Installation](https://trac.streamboard.tv/oscam/wiki/TracInstall)
+   [Customization](https://trac.streamboard.tv/oscam/wiki/TracInterfaceCustomization)
+   [Plugins](https://trac.streamboard.tv/oscam/wiki/TracPlugins)
+   [Upgrading](https://trac.streamboard.tv/oscam/wiki/TracUpgrade)
+   [Configuration](https://trac.streamboard.tv/oscam/wiki/TracIni)
+   [Administration](https://trac.streamboard.tv/oscam/wiki/TracAdmin)
+   [Backup](https://trac.streamboard.tv/oscam/wiki/TracBackup)
+   [Logging](https://trac.streamboard.tv/oscam/wiki/TracLogging)
+   [Permissions](https://trac.streamboard.tv/oscam/wiki/TracPermissions)
+   [The Wiki](https://trac.streamboard.tv/oscam/wiki/TracWiki)
+   [Wiki Formatting](https://trac.streamboard.tv/oscam/wiki/WikiFormatting)
+   [Timeline](https://trac.streamboard.tv/oscam/wiki/TracTimeline)
+   [Repository Browser](https://trac.streamboard.tv/oscam/wiki/TracBrowser)
+   [Revision Log](https://trac.streamboard.tv/oscam/wiki/TracRevisionLog)
+   [Changesets](https://trac.streamboard.tv/oscam/wiki/TracChangeset)
+   [Tickets](https://trac.streamboard.tv/oscam/wiki/TracTickets)
+   [Workflow](https://trac.streamboard.tv/oscam/wiki/TracWorkflow)
+   [Roadmap](https://trac.streamboard.tv/oscam/wiki/TracRoadmap)
+   [Ticket Queries](https://trac.streamboard.tv/oscam/wiki/TracQuery)
+   [Batch Modify](https://trac.streamboard.tv/oscam/wiki/TracBatchModify)
+   [Reports](https://trac.streamboard.tv/oscam/wiki/TracReports)
+   [RSS Support](https://trac.streamboard.tv/oscam/wiki/TracRss)
+   [Notification](https://trac.streamboard.tv/oscam/wiki/TracNotification)

Trac supports logging of system messages using Python's [​logging module](https:https://docs.python.org/2/library/logging.html).

Logging is configured in the [\[logging\]](https://trac.streamboard.tv/oscam/wiki/TracIni#logging-section) section of [TracIni](https://trac.streamboard.tv/oscam/wiki/TracIni).

## Supported Logging Methods

The log method is set using the [\[logging\] log\_type](https://trac.streamboard.tv/oscam/wiki/TracIni#logging-log_type-option) option, which accepts the following values:

**none**

Suppress all log messages.

**file**

Log messages to a file, specified with the [\[logging\] log\_file](https://trac.streamboard.tv/oscam/wiki/TracIni#logging-log_file-option) option. Relative paths for `log_file` are resolved relative to the environment `log` directory.

**stderr**

Output log entries to console ([tracd](https://trac.streamboard.tv/oscam/wiki/TracStandalone) only).

**syslog**

(UNIX) Send log messages to the local syslogd via named pipe `/dev/log`. By default, syslog will write them to the `/var/log/messages` file.

**eventlog**

(Windows) Use the system's NT Event Log.

## Log Levels

The verbosity level of logged messages can be set using the [\[logging\] log\_level](https://trac.streamboard.tv/oscam/wiki/TracIni#logging-log_level-option) option. The log level defines the minimum level of urgency required for a message to be logged, and those levels are:

**CRITICAL**

Log only the most critical (typically fatal) errors.

**ERROR**

Log failures, bugs and errors.

**WARN**

Log warnings, non-interrupting events.

**INFO**

Diagnostic information, log information about all processing.

**DEBUG**

Trace messages, profiling, etc.

Additionally, you can enable logging of SQL statements at debug level. This is turned off by default, as it's very verbose. Set [\[trac\] debug\_sql = yes](https://trac.streamboard.tv/oscam/wiki/TracIni#trac-debug_sql-option) to activate.

## Log Format

The output format for log entries can be specified in the [\[logging\] log\_format](https://trac.streamboard.tv/oscam/wiki/TracIni#logging-log_format-option) option. The format is a string which can contain any of the [​Python logging Formatter variables](https:https://docs.python.org/2/library/logging.html#logrecord-attributes). Additionally, the following Trac-specific variables can be used:

**$(basename)s**

The environment directory name.

**$(path)s**

The absolute path of the environment directory.

**$(project)s**

The originating project's name.

Note that variables are identified using a dollar sign (`$(...)s`) instead of percent sign (`%(...)s`).

The default format is:

```
log_format = Trac[$(module)s] $(levelname)s: $(message)s
```

In a multi-project environment where all logs are sent to the same place (e.g. `syslog`), it makes sense to add the project name. In this example we use `basename` since that can generally be used to identify a project:

```
log_format = Trac[$(basename)s:$(module)s] $(levelname)s: $(message)s
```

* * *

See also: [TracIni](https://trac.streamboard.tv/oscam/wiki/TracIni), [TracEnvironment](https://trac.streamboard.tv/oscam/wiki/TracEnvironment)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracLogging?action=diff&version=7 "Version 7 by trac") [2 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.