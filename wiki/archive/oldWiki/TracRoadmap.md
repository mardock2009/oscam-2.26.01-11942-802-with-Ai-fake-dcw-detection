> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# The Trac Roadmap

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

The roadmap provides a view on the [ticket system](https://trac.streamboard.tv/oscam/wiki/TracTickets) that helps planning and managing the future development of a project.

## The Roadmap View

A roadmap is a list of future milestones. The roadmap can be filtered to show or hide *completed milestones* and *milestones with no due date*. In the case that both *show completed milestones* and *hide milestones with no due date* are selected, *completed* milestones with no due date will be shown.

## The Milestone View

A milestone is a future timeframe in which tickets are expected to be solved. You can add a description to milestones (using [WikiFormatting](https://trac.streamboard.tv/oscam/wiki/WikiFormatting)) describing main objectives, for example. In addition, tickets targeted for a milestone are aggregated, and the ratio between active and resolved tickets is displayed as a milestone progress bar. It is possible to further [​customise the ticket grouping](https:https://trac.edgewall.org/intertrac/TracRoadmapCustomGroups "TracRoadmapCustomGroups in The Trac Project") and have multiple ticket statuses shown on the progress bar.

It is possible to drill down into this simple statistic by viewing the individual milestone pages. By default, the active/resolved ratio will be grouped and displayed by component. You can also regroup the status by other criteria, such as ticket owner or severity. Ticket numbers are linked to [custom queries](https://trac.streamboard.tv/oscam/wiki/TracQuery) listing corresponding tickets.

## Roadmap Administration

With appropriate permissions it is possible to add, modify and remove milestones using either the web interface (roadmap and milestone pages), web administration interface or by using `trac-admin`.

## iCalendar Support

The Roadmap supports the [​iCalendar](https:https://www.ietf.org/rfc/rfc2445.txt) format to keep track of planned milestones and related tickets from your favorite calendar software. Many calendar applications support the iCalendar specification including:

+   [​Apple iCal](https:https://www.apple.com/ical/) for Mac OS X.
+   [​Mozilla Calendar](https:https://www.mozilla.org/projects/calendar/), cross-platform.
+   [​Korganizer](https:https://www.kde.org/applications/office/korganizer/), the calendar application of the [​KDE](http://www.kde.org/) project.
+   [​Evolution](https:https://wiki.gnome.org/Apps/Evolution), a contact manager, address manager and calendar for Gnome.
+   [​Microsoft Outlook](https:https://office.microsoft.com/en-us/outlook/) can also read iCalendar files and appears as a new static calendar in Outlook.
+   [​Google Calendar](https:https://www.google.com/calendar/).
+   [​Chandler](http://chandlerproject.org/), a personal and small-group task management and calendaring tool, Apache licensed and orphaned since 2009.

To subscribe to the roadmap, copy the iCalendar link from the roadmap (found at the bottom of the page) and choose the "Subscribe to remote calendar" action (or similar) of your calendar application, and insert the URL just copied.

For tickets to be included in the calendar as tasks, you need to be logged in when copying the link. You will only see tickets assigned to yourself and associated with a milestone.

More information about iCalendar can be found at [​Wikipedia](https:https://en.wikipedia.org/wiki/ICalendar).

* * *

See also: [TracTickets](https://trac.streamboard.tv/oscam/wiki/TracTickets), [TracReports](https://trac.streamboard.tv/oscam/wiki/TracReports), [TracQuery](https://trac.streamboard.tv/oscam/wiki/TracQuery), [​TracRoadmapCustomGroups](https:https://trac.edgewall.org/intertrac/TracRoadmapCustomGroups "TracRoadmapCustomGroups in The Trac Project")

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracRoadmap?action=diff&version=8 "Version 8 by trac") [2 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.