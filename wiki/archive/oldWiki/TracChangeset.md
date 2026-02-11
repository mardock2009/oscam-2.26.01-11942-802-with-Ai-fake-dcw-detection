> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Trac Changeset Module

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

#### Contents

1.  [Changeset Header](#ChangesetHeader)
2.  [Diff Views](#DiffViews)
3.  [The Different Ways to Get a Diff](#TheDifferentWaystoGetaDiff)
    1.  [Examining a Changeset](#ExaminingaChangeset)
    2.  [Downloading a Changeset](#DownloadingaChangeset)
    3.  [Examining Differences Between Revisions](#ExaminingDifferencesBetweenRevisions)
    4.  [Examining Differences Between Branches](#ExaminingDifferencesBetweenBranches)
    5.  [Checking the Last Change](#CheckingtheLastChange)

Trac has a built-in functionality for visualizing "diffs", or changes to files.

There are different kinds of *change sets*. Some correspond to revisions made in the repositories, others aggregate changes made in several revisions. Ultimately, any kind of difference can be shown.

The changeset view consists of two parts, the *header* and the *diff views*.

## Changeset Header

The header shows an overview of the whole changeset. Here you will find metadata:

+   Timestamp — When the changeset was commited
+   Author — Who commited the changeset
+   Message — A brief description from the author (the commit log message)
+   Location — Parent directory of all files affected by this changeset
+   Files — A list of files affected by this changeset

If more than one revision is involved in the set of changes being displayed, the *Timestamp*, *Author* and *Message* fields will not be shown.

A colored rectangle indicates how the file is affected by the changeset:

>   Green: Added
>   Red: Removed
>   Yellow: Modified
>   Blue: Copied
>   Gray: Moved

The color legend is located below the header.

## Diff Views

Below the header is the main part of the changeset, the diff view. Each file is shown in a separate section. There are two different diff styles: *inline* and *side-by-side*. You can switch between the styles using the preferences form:

+   The *inline* style shows the changed regions of a file underneath each other. A region removed from the file will be colored red, an added region will be colored green. If a region was modified, the old version is displayed above the new version. Line numbers indicate the exact position of the change in both the old and the new version of the file.
+   The *side-by-side* style shows the old version on the left and the new version on the right and this will typically require more screen width than the inline style. Added and removed regions will be colored in the same way as with the inline style (green and red), and modified regions will have a yellow background.

In addition, various advanced options are available in the preferences form for adjusting the display of the diffs:

+   You can set how many lines are displayed before and after every change, or display the changes in the context of the full file.
+   You can toggle whether blank lines, case changes and white space changes are ignored. This can be useful in more easily locating the functional changes.
+   You can toggle between contextual and unified diff views using the *Tabular* and *Unified* links at the top of each section.

## The Different Ways to Get a Diff

### Examining a Changeset

When viewing a repository check-in, such as when following a changeset [link](https://trac.streamboard.tv/oscam/wiki/TracLinks) or a changeset event in the [timeline](https://trac.streamboard.tv/oscam/wiki/TracTimeline), Trac will display the exact changes made by the check-in.

There will also be navigation links to the *Previous Changeset* and the *Next Changeset*.

### Downloading a Changeset

From the changeset view, the changeset can be downloaded in unified diff format using the links at the bottom of the page. The full content of each file in the changeset can also be downloaded as a zip archive.

### Examining Differences Between Revisions

Often you want to look at changes made on a file or on a directory spanning multiple revisions. The easiest way to get there is from the [TracRevisionLog](https://trac.streamboard.tv/oscam/wiki/TracRevisionLog), where you can select the *old* and the *new* revisions of the file or directory, and then click the *View changes* button.

### Examining Differences Between Branches

One of the core features of version control systems is the possibility to work simultaneously on different *Lines of Developments*, commonly called "branches". Trac enables you to examine the exact differences between such branches.

Following the **View changes ...** button in the [TracBrowser](https://trac.streamboard.tv/oscam/wiki/TracBrowser) leads to the diff page, where you can enter *From:* and *To:* path/revision pairs. The resulting set of differences consist of the changes that should be applied to the *From:* content to get to the *To:* content.

For convenience, it is possible to invert the roles of the *old* and the *new* path/revision pairs by clicking the *Reverse Diff* link on the changeset page.

### Checking the Last Change

Another way to examine changes is to use the *Last Change* link provided by the [TracBrowser](https://trac.streamboard.tv/oscam/wiki/TracBrowser).

This link will take you to the last change that was made on that path. From there, you can use the *Previous Change* and *Next Change* links to traverse the change history of the file or directory.

* * *

See also: [TracGuide](https://trac.streamboard.tv/oscam/wiki/TracGuide), [TracBrowser](https://trac.streamboard.tv/oscam/wiki/TracBrowser)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracChangeset?action=diff&version=8 "Version 8 by trac") [4 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

### Attachments (1)

+   [reader-irdeto.c](https://trac.streamboard.tv/oscam/attachment/wiki/TracChangeset/reader-irdeto.c "View attachment")[​](https://trac.streamboard.tv/oscam/raw-attachment/wiki/TracChangeset/reader-irdeto.c "Download") (42.9 KB ) - added by mrbody [8 years ago](https://trac.streamboard.tv/oscam/timeline?from=2015-11-29T16%3A42%3A17%2B01%3A00&precision=second "See timeline at 11/29/15 16:42:17"). New additions

Download all attachments as: [.zip](https://trac.streamboard.tv/oscam/zip-attachment/wiki/TracChangeset/)

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.