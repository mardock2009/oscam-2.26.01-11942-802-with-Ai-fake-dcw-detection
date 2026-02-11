> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# The Trac User and Administration Guide

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

*The [TracGuide](https://trac.streamboard.tv/oscam/wiki/TracGuide) is meant to serve as a starting point for all documentation regarding Trac usage and development. The guide is a free document, a collaborative effort, and a part of the [​Trac Project](https:https://trac.edgewall.org/intertrac/ "The Trac Project") itself.*

## Introduction

Trac is an enhanced wiki and issue tracking system for software development projects. Trac uses a minimalistic approach to web-based software project management. It helps developers write great software while staying out of the way. Trac should impose as little as possible on a team's established development process and policies.

It provides an interface to Subversion as well as other version control systems, an integrated Wiki and convenient reporting facilities.

Trac allows wiki markup in issue descriptions and commit messages, creating links and seamless references between bugs, tasks, changesets, files and wiki pages. A timeline shows all current and past project events in order, making the acquisition of an overview of the project and tracking progress very easy. The roadmap shows the road ahead, listing the upcoming milestones.

## User Guide

+   Using the Wiki subsystem:
    +   [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) — How to use the built-in Wiki.
    +   [WikiFormatting](https://trac.streamboard.tv/oscam/wiki/WikiFormatting) — Reference to the wiki syntax.
+   Using the Version Control subsystem:
    +   [TracBrowser](https://trac.streamboard.tv/oscam/wiki/TracBrowser) — Browsing source code with Trac.
    +   [TracChangeset](https://trac.streamboard.tv/oscam/wiki/TracChangeset) — Viewing changes to source code.
    +   [TracRevisionLog](https://trac.streamboard.tv/oscam/wiki/TracRevisionLog) — Viewing change history.
+   Using the Ticket subsystem:
    +   [TracTickets](https://trac.streamboard.tv/oscam/wiki/TracTickets) — Using the issue tracker.
    +   [TracRoadmap](https://trac.streamboard.tv/oscam/wiki/TracRoadmap) — Tracking project progress.
    +   [TracReports](https://trac.streamboard.tv/oscam/wiki/TracReports) — Writing and using reports.
    +   [TracQuery](https://trac.streamboard.tv/oscam/wiki/TracQuery) — Executing custom ticket queries.
    +   [TracBatchModify](https://trac.streamboard.tv/oscam/wiki/TracBatchModify) - Modifying several tickets in one request.
+   Other modules and general topics:
    +   [TracSearch](https://trac.streamboard.tv/oscam/wiki/TracSearch) — Full text search in all content.
    +   [TracTimeline](https://trac.streamboard.tv/oscam/wiki/TracTimeline) — Historic perspective on a project.
    +   [TracRss](https://trac.streamboard.tv/oscam/wiki/TracRss) — RSS content syndication.
    +   [TracAccessibility](https://trac.streamboard.tv/oscam/wiki/TracAccessibility) — Accessibility keys.

## Administrator Guide

+   Installation and upgrade:
    +   [TracInstall](https://trac.streamboard.tv/oscam/wiki/TracInstall) — How to install and run Trac.
    +   [TracUpgrade](https://trac.streamboard.tv/oscam/wiki/TracUpgrade) — How to upgrade existing installations.
    +   [TracImport](https://trac.streamboard.tv/oscam/wiki/TracImport) — Importing tickets from other bug databases.
    +   [TracPlugins](https://trac.streamboard.tv/oscam/wiki/TracPlugins) — Installing and managing Trac extensions.
+   Configuration and customization:
    +   [TracIni](https://trac.streamboard.tv/oscam/wiki/TracIni) — Trac configuration file reference.
    +   [TracPermissions](https://trac.streamboard.tv/oscam/wiki/TracPermissions) — Access control and permissions.
    +   [TracNavigation](https://trac.streamboard.tv/oscam/wiki/TracNavigation) — Customize main navigation menus.
    +   [TracInterfaceCustomization](https://trac.streamboard.tv/oscam/wiki/TracInterfaceCustomization) — Customizing the Trac interface.
    +   [TracLogging](https://trac.streamboard.tv/oscam/wiki/TracLogging) — The Trac logging facility.
+   Administering the Version Control subsystem:
    +   [TracRepositoryAdmin](https://trac.streamboard.tv/oscam/wiki/TracRepositoryAdmin) — Management of Source Code Repositories.
+   Administering the Ticket subsystem:
    +   [TracTicketsCustomFields](https://trac.streamboard.tv/oscam/wiki/TracTicketsCustomFields) — Expanding tickets with customized fields.
    +   [TracNotification](https://trac.streamboard.tv/oscam/wiki/TracNotification) — Email notification.
    +   [TracWorkflow](https://trac.streamboard.tv/oscam/wiki/TracWorkflow) — Configurable Ticket Workflow.
+   Reference:
    +   [TracEnvironment](https://trac.streamboard.tv/oscam/wiki/TracEnvironment) — All you need to know about Trac environments.
    +   [TracAdmin](https://trac.streamboard.tv/oscam/wiki/TracAdmin) — Administering a Trac project via the command-line.

## Support and Other Sources of Information

+   [​Trac FAQ](https:https://trac.edgewall.org/intertrac/TracFaq "TracFaq in The Trac Project") — A collection of Frequently Asked Questions on the project website.
+   [​TracDev](https:https://trac.edgewall.org/intertrac/TracDev "TracDev in The Trac Project") and [​API docs](https:https://trac.edgewall.org/intertrac/TracDev/ApiDocs "TracDev/ApiDocs in The Trac Project") — Trac Developer documentation.
+   [TracSupport](https://trac.streamboard.tv/oscam/wiki/TracSupport) — How to get more information.

If you are looking for a good place to ask a question about Trac, see the [​MailingList](https:https://trac.edgewall.org/intertrac/MailingList "MailingList in The Trac Project"). It provides a friendly environment to discuss openly among Trac users and developers.

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracGuide?action=diff&version=8 "Version 8 by trac") [3 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.