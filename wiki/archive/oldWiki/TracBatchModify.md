> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Trac Ticket Batch Modification

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

Trac supports modifying a batch of tickets in one request from [custom query](https://trac.streamboard.tv/oscam/wiki/TracQuery) results. The Batch Modify functionality only appears on Query pages (/query), not Report pages (/report). You must have JavaScript enabled in your browser.

To perform a batch modification, select the tickets you wish to modify and set the new field values using the section underneath the query results.

## List fields

The `Keywords` and `Cc` fields are treated as lists, where list items can be added and/or removed, as well as replacing the entire list value. All list field controls accept multiple items, such as multiple keywords or cc addresses.

## Excluded fields

Multi-line text fields are not supported, because no valid use-case has been presented for syncing them across several tickets. That restriction applies to the `Description` field as well as to any [custom field](https://trac.streamboard.tv/oscam/wiki/TracTicketsCustomFields#AvailableFieldTypesandOptions) of type 'textarea'. However, future versions of Trac could support batch modification of textareas in conjunction with more suitable actions like 'prepend', 'append' or 'search & replace' ([​#11197](https:https://trac.edgewall.org/intertrac/%2311197 "#11197 in The Trac Project")).

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracBatchModify?action=diff&version=4 "Version 4 by trac") [2 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.