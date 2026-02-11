> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# The Trac Repository Browser

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

The Trac repository browser can be used to browse specific revisions of directories and files stored in the repositories associated with the Trac environment.

At the top-level of the repository browser is the **Repository Index**, listing all the configured repositories. Each repository has a name which is used as a path prefix in a "virtual" file hierarchy encompassing all the available repositories. One of the repositories can be configured with an empty name; this is the default repository. When such a default repository is present, its top-level files and directories are also listed, in a **Default Repository** section placed before the repository index. If the default repository is the only repository associated with the Trac environment, then the **Repository Index** will be omitted.

Directory entries are displayed in a list with sortable columns. The list entries can be sorted by *Name*, *Size*, *Age*/*Date* or *Author* by clicking on the column headers. The third sortable column is labeled *Age* when the *Time format* [preference](https://trac.streamboard.tv/oscam/prefs/localization) is *Relative* and *Date* when the *Time format* is *Absolute*. The sort order can be reversed by clicking on a given column header again.

The browser can be used to navigate through the directory structure by clicking on the directory names. Clicking on a file name will show the contents of the file. Clicking on the revision number of a file or directory will take you to the [TracRevisionLog](https://trac.streamboard.tv/oscam/wiki/TracRevisionLog) for that file. Note that there's also a *Revision Log* navigation link that will do the same for the path currently being examined. Clicking on the *diff* icon after revision number will display the changes made to the files modified in that revision. Clicking on the *Age*/*Date* of the file - will take you to that changeset in the timeline.

It's also possible to browse directories or files as they were in history, at any given repository revision. The default behavior is to display the latest revision but another revision number can easily be selected using the *View revision* input field at the top of the page.

The color bar next to the *Age*/*Date* column gives a visual indication of the age of the last change to a file or directory, following the convention that **blue** is oldest and **red** is newest, but this can be [configured](https://trac.streamboard.tv/oscam/wiki/TracIni#browser-color_scale-option).

At the top of the browser page, there's a *Visit* drop-down menu which you can use to select some interesting places in the repository, for example branches or tags. This is sometimes referred to as the *browser quickjump* facility. The precise meaning and content of this menu depends on your repository backend. For Subversion, this list contains by default the top-level trunk directory and sub-directories of the top-level branches and tags directories (`/trunk`, `/branches/*`, and `/tags/*`). This can be configured for more advanced cases through the `[svn]` [branches](https://trac.streamboard.tv/oscam/wiki/TracIni#svn-branches-option) and [tags](https://trac.streamboard.tv/oscam/wiki/TracIni#svn-tags-option) options.

If you're using a Javascript enabled browser, you'll be able to expand and collapse directories in-place by clicking on the arrow head at the right side of a directory. Alternatively, the [keyboard shortcuts](https://trac.streamboard.tv/oscam/wiki/TracAccessibility#TracBrowserAccessKeys) can be used.

For the Subversion backend, some advanced additional features are available:

+   The `svn:needs-lock` property is shown.
+   The `svn:mergeinfo` property shows eligible and merged revisions.
+   The `svn:externals` property can be [configured](https://trac.streamboard.tv/oscam/wiki/TracIni#svn:externals-section) to display a link to an external repository.
+   The `svn:mime-type` property is used to select the syntax highlighter for rendering the file. For example, setting `svn:mime-type` to `text/html` will ensure the file is highlighted as HTML, regardless of the file extension. It also allows selecting the character encoding used in the file content. For example, if the file content is encoded in UTF-8, set `svn:mime-type` to `text/html;charset=utf-8`. The `charset=` specification overrides the default encoding defined in the [\[trac\] default\_charset](https://trac.streamboard.tv/oscam/wiki/TracIni#trac-default_charset-option) option.

* * *

See also: [TracChangeset](https://trac.streamboard.tv/oscam/wiki/TracChangeset), [TracRevisionLog](https://trac.streamboard.tv/oscam/wiki/TracRevisionLog)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracBrowser?action=diff&version=8 "Version 8 by trac") [2 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.