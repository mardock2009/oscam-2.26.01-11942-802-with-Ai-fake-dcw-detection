> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Trac Backup

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

Trac backups are a copied snapshot of the entire [project environment](https://trac.streamboard.tv/oscam/wiki/TracEnvironment) directory, including the database. Backups can be created using the `hotcopy` command of [trac-admin](https://trac.streamboard.tv/oscam/wiki/TracAdmin).

**Note**: Trac uses the `hotcopy` nomenclature to match that of [​Subversion](http://subversion.tigris.org/), to make it easier to remember when managing both Trac and Subversion servers.

## Creating a Backup

Create a backup of a live [TracEnvironment](https://trac.streamboard.tv/oscam/wiki/TracEnvironment) by running:

```
$ trac-admin /path/to/projenv hotcopy /path/to/backupdir
```

The database will be locked while hotcopy is running.

The resulting backup directory is safe to handle using standard file-based backup tools like `tar` or `dump`/`restore`.

Please note, the `hotcopy` command will not overwrite a target directory. When the target exists the operation will end with an error: `Command failed: [Errno 17] File exists:` This is discussed in [​#3198](https:https://trac.edgewall.org/intertrac/%233198 "#3198 in The Trac Project").

## Restoring a Backup

To restore an environment from a backup, stop the process running Trac, ie the web server or [tracd](https://trac.streamboard.tv/oscam/wiki/TracStandalone), restore the contents of your backup to your [project environment](https://trac.streamboard.tv/oscam/wiki/TracEnvironment) directory and restart the process.

If you are using a database other than SQLite, you'll need to restore the database from the dump file. The dump file is saved in the environment `db` directory.

To restore a PostgreSQL database backup, use the command:

```
$ psql -U <user> -d <database> -f /path/to/postgresql.dump
```

The `<database>` option is the same as the [database connection string](https://trac.streamboard.tv/oscam/wiki/TracEnvironment#DatabaseConnectionStrings) in the [\[trac\] database](https://trac.streamboard.tv/oscam/wiki/TracIni#trac-database-option) option of the project's `trac.ini` file.

Similarly, for MySQL:

```
$ mysql -u <user> -p <database> < /path/to/mysql.dump
```

* * *

See also: [TracAdmin](https://trac.streamboard.tv/oscam/wiki/TracAdmin), [TracEnvironment](https://trac.streamboard.tv/oscam/wiki/TracEnvironment), [​TracMigrate](https:https://trac.edgewall.org/intertrac/TracMigrate "TracMigrate in The Trac Project")

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracBackup?action=diff&version=7 "Version 7 by trac") [3 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.