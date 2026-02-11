> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Viewing Revision Logs

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

Each path in the *Repository Browser* contains a contextual navigation link to the *Revision Log*. The *Revision Log* displays a list of the most recent changesets in which the current path or any other path below it has been modified.

## The Revision Log Form

It is possible to set the revision at which the revision log should start, using the *View log starting at* field. An empty value or a value of *head* is interpreted as the newest changeset.

It is also possible to specify the revision at which the log should stop, using the *Back to* field. By default it is empty, which means the revision log will show the [default log limit](https://trac.streamboard.tv/oscam/wiki/TracIni#revisionlog-default_log_limit-option), which defaults to the latest 100 revisions.

There are three modes of operation of the revision log.

By default, the revision log *stops on copy*, which means that whenever an *Add*, *Copy* or *Rename* operation is detected, no older revision will be shown. That's very convenient when working with branches, as one only sees the history for that branch.

It is also possible to indicate that one wants include what happened before a *Copy* or *Rename* change, by selecting the *Follow copies* mode. This will continue to list all revisions across copies and renames. Each time the name of the path changes, there will be an additional indentation level. That way, the changes on the different paths are easily grouped together visually.

It is even possible to go past an *Add* change, in order to see if there has been a *Delete* change on that path, before that *Add*. This mode is labeled *Show only adds, moves and deletes*. The operation can be quite resource intensive and therefore take some time to display.

Finally, there's a checkbox *Show full log messages*, which controls whether the full content of the commit log message should be displayed for each change, or only a shortened version of it.

## The Revision Log Information

For each revision log entry, the following columns are displayed:

1.  The first column contains a pair of radio buttons and should be used for selecting the *old* and the *new* revisions that will be used for [viewing the actual changes](https://trac.streamboard.tv/oscam/wiki/TracRevisionLog#InspectingChangesBetweenRevisions).
2.  A color code (similar to the one used for the [changesets](https://trac.streamboard.tv/oscam/wiki/TracChangeset#ChangesetHeader)) indicates the kind of change. Clicking on this column refreshes the revision log so that it restarts with this change.
3.  The **Revision** number, displayed as `@xyz`. This is a link to the [TracBrowser](https://trac.streamboard.tv/oscam/wiki/TracBrowser), using the displayed revision as the base line. Next to it, you can see a little "wheel" icon [![changeset.png](https://trac.streamboard.tv/oscam/chrome/common/changeset.png "changeset.png")](https://trac.streamboard.tv/oscam/chrome/common/changeset.png), which is clickable and leads to the [TracChangeset](https://trac.streamboard.tv/oscam/wiki/TracChangeset) view for that revision.
4.  The **Age**/**Date** at which the change was made. Depending on your [session preference](https://trac.streamboard.tv/oscam/prefs/localization), the date is displayed in either *Relative* or *Absolute* format.
    +   *Relative* format shows the **Age**: the time elapsed as the number of hours, days, weeks, months, or years.
    +   *Absolute* format shows the **Date** of the revision as a datetime.
5.  The **Author** of the change.
6.  The **Log Message**, which contains either the truncated or full commit log message, depending on the value of the *Show full log messages* checkbox in the form above.

## Inspecting Changes Between Revisions

The *View changes...* buttons (placed above and below the list of changes, on the left side) will show the set of differences corresponding to the aggregated changes starting from the *old* revision (first radio-button) to the *new* revision (second radio-button), in the [TracChangeset](https://trac.streamboard.tv/oscam/wiki/TracChangeset) view.

Note that the *old* revision doesn't need to be actually *older* than the *new* revision: it simply gives a base for the diff. It's therefore entirely possible to easily generate a *reverse diff*, for reverting what has been done in the given range of revisions.

Finally, if the two revisions are identical, the corresponding changeset will be shown. This has the same effect as clicking on the changeset number.

## Alternative Formats

### The ChangeLog Text

At the bottom of the page, there's a *ChangeLog* link that will show the range of revisions as currently shown, but as a simple text, matching the usual conventions for ChangeLog files.

### RSS Support

The revision log also provides an RSS feed to monitor the changes. To subscribe to an RSS feed for a file or directory, open its revision log in the browser and click the orange 'XML' icon at the bottom of the page. For more information on RSS support in Trac, see [TracRss](https://trac.streamboard.tv/oscam/wiki/TracRss).

* * *

See also: [TracBrowser](https://trac.streamboard.tv/oscam/wiki/TracBrowser), [TracChangeset](https://trac.streamboard.tv/oscam/wiki/TracChangeset)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracRevisionLog?action=diff&version=7 "Version 7 by trac") [3 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.