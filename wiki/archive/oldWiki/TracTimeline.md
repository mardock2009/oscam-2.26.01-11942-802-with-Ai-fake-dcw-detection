> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# The Trac Timeline

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

Trac's timeline feature provides a historic view of the project in a single view.

It lists all Trac events that have occurred in chronological order, a brief description of each event and if applicable, the person responsible for the change.

The timeline lists these kinds of events:

+   **Wiki page events** — Pages created and edited
+   **Ticket events** — Tickets open/closed and updated
+   **Source code changes** — Repository check-ins
+   **Milestone** — Milestone completed

Each event entry provides a hyperlink to the specific event in question, who authored the change as well as a brief excerpt of the actual comment or text, if available.

It is possible to filter the displayed events with the various filters in the option panel:

+   *View changes from* — the date from which to start displaying events (current date if empty). Events that occurred after this date will not be shown, only those that occurred before that date.
+   *and X days back* — how many days backwards in time to get events.
+   *done by* — the author of an event. It accepts a space-separated list of authors for which events should be included. Alternatively, if the author names are prefixed by a "-" character, then the events having those authors will be excluded, and all the others included. Single or double quotes can be used for specifying author names containing space characters.
+   *Changesets in all repositories* — if you have more than one repository connected to your Trac project, then you can filter the output so events from specific repositories are not shown.
+   *Milestones reached* — display or hide milestones reached.
+   *Opened and closed tickets* — display or hide ticket open or close events.
+   *Wiki changes* — display or hide Wiki change events.

See TracIni's [\[timeline\] section](https://trac.streamboard.tv/oscam/wiki/TracIni#timeline-section) for timeline configuration options.

## RSS Support

The Timeline module supports subscription using RSS 2.0 syndication. To subscribe to project events, click the orange **XML** icon at the bottom of the page. See [TracRss](https://trac.streamboard.tv/oscam/wiki/TracRss) for more information on RSS support in Trac.

* * *

See also: [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki), [WikiFormatting](https://trac.streamboard.tv/oscam/wiki/WikiFormatting), [TracRss](https://trac.streamboard.tv/oscam/wiki/TracRss)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracTimeline?action=diff&version=7 "Version 7 by trac") [2 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.