> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Using RSS with Trac

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

Several of the Trac modules support content syndication using the RSS ([​Really Simple Syndication](https:https://en.wikipedia.org/wiki/RSS)) XML format. RSS pushes out Trac updates whenever they occur and to whoever has subscribed to it. Using the RSS subscription feature in Trac, you can easily monitor progress of the project, a set of issues or even changes to a single file.

Trac supports RSS feeds in:

+   [TracTimeline](https://trac.streamboard.tv/oscam/wiki/TracTimeline) — Use the RSS feed to **subscribe to project events**. Monitor overall project progress in your favorite RSS reader.
+   [TracTickets](https://trac.streamboard.tv/oscam/wiki/TracTickets), [TracReports](https://trac.streamboard.tv/oscam/wiki/TracReports), and [TracQuery](https://trac.streamboard.tv/oscam/wiki/TracQuery) — Allows syndication of report and ticket query results. Be notified about important and relevant tickets.
+   [TracBrowser](https://trac.streamboard.tv/oscam/wiki/TracBrowser) and [TracRevisionLog](https://trac.streamboard.tv/oscam/wiki/TracRevisionLog) — Syndication of file changes. Stay up to date with changes to a specific file or directory.

## How to access RSS data

Where RSS is available in Trac you should find a small orange **RSS** icon, typically at the bottom of the page:

RSS feed

Clicking the icon will access the RSS feed for that specific resource.

**Note:** Different modules provide different data in their RSS feeds. Usually the syndicated information corresponds to the current view. For example, if you click the RSS link on a report page, the feed will be based on that report. It might be explained by thinking of the RSS feeds as an *alternate view of the data currently displayed*.

Since Trac 1.0 an RSS feed can be retrieved from a Trac site that requires authentication. Hover over the RSS icon, right click and *copy link address*.

## Links

+   *Specifications:*
    +   [​https://cyber.harvard.edu/rss/rss.html](https:https://cyber.harvard.edu/rss/rss.html) — RSS 2.0 Specification.

+   *Multi-platform RSS readers:*
    +   [​http://www.rssowl.org/](http://www.rssowl.org/) — Open source, Eclipse-based, RSS reader for Linux, Mac and Windows systems that supports https and authenticated feeds.

+   *Linux/BSD/\*n\*x systems:*
    +   [​http://liferea.sourceforge.net/](http://liferea.sourceforge.net/) — Open source GTK2 RSS Reader for Linux.
    +   [​Akregator](http://akregator.sourceforge.net/) — Open source KDE RSS Reader, part of KDE-PIM.

+   *Mac OS X systems:*
    +   [​https://ranchero.com/netnewswire/](https:https://ranchero.com/netnewswire/) — An excellent RSS reader for Mac OS X, has both free and paid versions.
    +   [​https://www.utsire.com/shrook/](https:https://www.utsire.com/shrook/) — An RSS reader for Max OS X that supports https, even with self signed certificates, and authenticated feeds.
    +   [​http://vienna-rss.sourceforge.net/](http://vienna-rss.sourceforge.net/) — Open source Feed Reader for Mac OS X with smart folders support.

+   *Windows systems:*
    +   [​http://www.rssreader.com/](http://www.rssreader.com/) — Free and powerful RSS Reader for MS Windows.
    +   [​https://www.sharpreader.net/](https:https://www.sharpreader.net/) — A free RSS Reader written in .NET for MS Windows.

+   *Firefox:*
    +   [​https://www.mozilla.org/products/firefox/](https:https://www.mozilla.org/products/firefox/) — Mozilla Firefox features plenty [​add-ons](https:https://addons.mozilla.org/en-US/firefox/search/?q=rss&appver=&platform=) for supporting RSS.

* * *

See also: [TracTimeline](https://trac.streamboard.tv/oscam/wiki/TracTimeline), [TracQuery](https://trac.streamboard.tv/oscam/wiki/TracQuery), [TracReports](https://trac.streamboard.tv/oscam/wiki/TracReports), [TracTickets](https://trac.streamboard.tv/oscam/wiki/TracTickets), [TracBrowser](https://trac.streamboard.tv/oscam/wiki/TracBrowser), [TracRevisionLog](https://trac.streamboard.tv/oscam/wiki/TracRevisionLog)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracRss?action=diff&version=7 "Version 7 by trac") [3 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.