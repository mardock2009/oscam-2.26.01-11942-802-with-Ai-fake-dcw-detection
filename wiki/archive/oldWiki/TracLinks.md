> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Trac Links

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

1.  [Where to use TracLinks](#WheretouseTracLinks)
2.  [Overview](#Overview)
3.  [Advanced use of TracLinks](#AdvanceduseofTracLinks)
    1.  [Relative links](#Relativelinks)
    2.  [Link anchors](#Linkanchors)
    3.  [InterWiki links](#InterWikilinks)
    4.  [InterTrac links](#InterTraclinks)
    5.  [Server-relative links](#Server-relativelinks)
    6.  [Quoting space in TracLinks](#QuotingspaceinTracLinks)
    7.  [Escaping Links](#EscapingLinks)
    8.  [Parameterized Trac links](#ParameterizedTraclinks)
4.  [TracLinks Reference](#TracLinksReference)
    1.  [attachment: links](#attachment:links)
    2.  [comment: links](#comment:links)
    3.  [htdocs: links](#htdocs:links)
    4.  [query: links](#query:links)
    5.  [search: links](#search:links)
    6.  [ticket: links](#ticket:links)
    7.  [timeline: links](#timeline:links)
    8.  [wiki: links](#wiki:links)
    9.  [Version Control system links](#VersionControlsystemlinks)
        1.  [source: links](#source:links)
        2.  [export: links](#export:links)
        3.  [log: links](#log:links)
        4.  [Multi-repository links](#Multi-repositorylinks)

[TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks) are a fundamental feature of Trac, allowing easy hyperlinking between the various entities in the system — such as tickets, reports, changesets, Wiki pages, milestones, and source files — from anywhere [WikiFormatting](https://trac.streamboard.tv/oscam/wiki/WikiFormatting) is used.

[TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks) are generally of the form **type:id** (where *id* represents the number, name or path of the item) though some frequently used kinds of items also have short-hand notations.

## Where to use [TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks)

You can use [TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks) in:

+   Source code (Subversion) commit messages
+   Wiki pages
+   Full descriptions for tickets, reports and milestones

and any other text fields explicitly marked as supporting [WikiFormatting](https://trac.streamboard.tv/oscam/wiki/WikiFormatting).

## Overview

| Wiki Markup | Display |
| --- | --- |
|
Wiki pages

`CamelCase` or `wiki:CamelCase`

Parent page

`[..]`

Tickets

`#1` or `ticket:1`

Ticket comments

`comment:1:ticket:2`

Reports

`{1}` or `report:1`

Milestones

`milestone:1.0`

Attachment

`attachment:example.tgz` (for current page attachment), `attachment:attachment.1073.diff:ticket:944` (absolute path)

Changesets

`r1`, `[1]`, `changeset:1` or (restricted) `[1/trunk]`, `changeset:1/trunk`, `[1/repository]`

Revision log

`r1:3`, `[1:3]` or `log:@1:3`, `log:trunk@1:3`, `[2:5/trunk]`

Diffs

`diff:@1:3`, `diff:plugins/0.12/mercurial-plugin@9128:9953`, `diff:tags/trac-0.9.2/wiki-default//tags/trac-0.9.3/wiki-default` or `diff:trunk/trac@3538//sandbox/vc-refactoring@3539`

Files

`source:trunk/COPYING`, `source:/trunk/COPYING@200` (at version 200), `source:/trunk/COPYING@200#L25` (at version 200, line 25), `source:/trunk/COPYING@200:27-30#L25` (at version 200, line 25, highlighting lines 27-30)



 |

Wiki pages

[CamelCase](https://trac.streamboard.tv/oscam/wiki/CamelCase) or [wiki:CamelCase](https://trac.streamboard.tv/oscam/wiki/CamelCase)

Parent page

[..](https://trac.streamboard.tv/oscam/wiki)

Tickets

[#1](https://trac.streamboard.tv/oscam/ticket/1 "#1: task: Logo of OScam (closed: invalid)") or [ticket:1](https://trac.streamboard.tv/oscam/ticket/1 "#1: task: Logo of OScam (closed: invalid)")

Ticket comments

[comment:1:ticket:2](https://trac.streamboard.tv/oscam/ticket/2#comment:1 "Comment 1 for #2: enhancement: N3 Polsat Card (closed: fixed)")

Reports

[{1}](https://trac.streamboard.tv/oscam/report/1) or [report:1](https://trac.streamboard.tv/oscam/report/1)

Milestones

milestone:1.0

Attachment

attachment:example.tgz (for current page attachment), attachment:attachment.1073.diff:ticket:944 (absolute path)

Changesets

[r1](https://trac.streamboard.tv/oscam/changeset/1 "initial import"), [\[1\]](https://trac.streamboard.tv/oscam/changeset/1 "initial import"), [changeset:1](https://trac.streamboard.tv/oscam/changeset/1 "initial import") or (restricted) [\[1/trunk\]](https://trac.streamboard.tv/oscam/changeset/1/trunk "initial import"), [changeset:1/trunk](https://trac.streamboard.tv/oscam/changeset/1/trunk "initial import"), [\[1/repository\]](https://trac.streamboard.tv/oscam/changeset/1/repository "initial import")

Revision log

[r1:3](https://trac.streamboard.tv/oscam/log/?revs=1-3), [\[1:3\]](https://trac.streamboard.tv/oscam/log/?revs=1-3) or [log:@1:3](https://trac.streamboard.tv/oscam/log/?revs=1-3), [log:trunk@1:3](https://trac.streamboard.tv/oscam/log/trunk?revs=1-3), [\[2:5/trunk\]](https://trac.streamboard.tv/oscam/log/trunk?revs=2-5)

Diffs

[diff:@1:3](https://trac.streamboard.tv/oscam/changeset?new=3&old=1 "Diff [1:3] for /"), [diff:plugins/0.12/mercurial-plugin@9128:9953](https://trac.streamboard.tv/oscam/changeset?new=9953&new_path=plugins%2F0.12%2Fmercurial-plugin&old=9128&old_path=plugins%2F0.12%2Fmercurial-plugin "Diff [9128:9953] for plugins/0.12/mercurial-plugin"), [diff:tags/trac-0.9.2/wiki-default//tags/trac-0.9.3/wiki-default](https://trac.streamboard.tv/oscam/changeset?new_path=tags%2Ftrac-0.9.3%2Fwiki-default&old_path=tags%2Ftrac-0.9.2%2Fwiki-default "Diff from tags/trac-0.9.2/wiki-default@latest to tags/trac-0.9.3/wiki-default@latest") or [diff:trunk/trac@3538//sandbox/vc-refactoring@3539](https://trac.streamboard.tv/oscam/changeset?new=3539&new_path=sandbox%2Fvc-refactoring&old=3538&old_path=trunk%2Ftrac "Diff from trunk/trac@3538 to sandbox/vc-refactoring@3539")

Files

[source:trunk/COPYING](https://trac.streamboard.tv/oscam/browser/trunk/COPYING)[​](https://trac.streamboard.tv/oscam/export/HEAD/trunk/COPYING "Download"), source:/trunk/COPYING@200 (at version 200), source:/trunk/COPYING@200#L25 (at version 200, line 25) source:/trunk/COPYING@200:28-31#L25 (at version 200, line 25, highlighting lines 28-31)



 |

**Note:** The [wiki:CamelCase](https://trac.streamboard.tv/oscam/wiki/CamelCase) form is rarely used, but it can be convenient to refer to pages whose names do not follow [WikiPageNames](https://trac.streamboard.tv/oscam/wiki/WikiPageNames) rules, ie single words, non-alphabetic characters, etc. See [WikiPageNames](https://trac.streamboard.tv/oscam/wiki/WikiPageNames) for more about features specific to links to Wiki page names.

<table><tbody><tr><td colspan="2">Trac links using the full (non-shorthand) notation can also be given a custom link title like this:</td></tr><tr><td><pre class="wiki">[ticket:1 This is a link to ticket number one] or
[[ticket:1|This is another link to ticket number one]].
</pre></td><td><p><a class="closed ticket" href="https://trac.streamboard.tv/oscam/ticket/1" title="#1: task: Logo of OScam (closed: invalid)">This is a link to ticket number one</a> or <a class="closed ticket" href="https://trac.streamboard.tv/oscam/ticket/1" title="#1: task: Logo of OScam (closed: invalid)">This is another link to ticket number one</a>.</p></td></tr><tr><td colspan="2">If the title is omitted, only the id (the part after the colon) is displayed:</td></tr><tr><td><pre class="wiki">[ticket:1] or [[ticket:2]]
</pre></td><td><p><a class="closed ticket" href="https://trac.streamboard.tv/oscam/ticket/1" title="#1: task: Logo of OScam (closed: invalid)">1</a> or <a class="closed ticket" href="https://trac.streamboard.tv/oscam/ticket/2" title="#2: enhancement: N3 Polsat Card (closed: fixed)">2</a></p></td></tr><tr><td colspan="2"><code>wiki</code> is the default if the namespace part of a full link is omitted:</td></tr><tr><td><pre class="wiki">[SandBox the sandbox] or
[[SandBox|the sandbox]]
</pre></td><td><p><a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/SandBox">the sandbox</a> or <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/SandBox">the sandbox</a></p></td></tr><tr><td colspan="2">The short form <em>realm:target</em> can also be wrapped within a &lt;...&gt; pair,<br>which allow for arbitrary characters (i.e. anything but &gt;)</td></tr><tr><td><pre class="wiki">&lt;wiki:Strange(page@!)&gt;
</pre></td><td><p>&lt;<a class="missing wiki">wiki:Strange(page@!)</a>&gt;</p></td></tr><tr><td colspan="2">Quoting can be used with the full notation to allow brackets in the label.</td></tr><tr><td><pre class="wiki">[TracIni#logging-log_type-option "[logging] log_type"]
</pre></td><td><p><a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracIni#logging-log_type-option">[logging] log_type</a></p></td></tr></tbody></table>

[TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks) are a very simple idea, but actually allow quite a complex network of information. In practice, it's very intuitive and simple to use, and we've found the "link trail" extremely helpful to better understand what's happening in a project or why a particular change was made.

## Advanced use of [TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks)

### Relative links

To create a link to a [​SubWiki](https:https://trac.edgewall.org/intertrac/SubWiki "SubWiki in The Trac Project")\-page just use a '/':

```
 WikiPage/SubWikiPage or ./SubWikiPage
```

To link from a [​SubWiki](https:https://trac.edgewall.org/intertrac/SubWiki "SubWiki in The Trac Project") page to a parent, simply use a '..':

```
  [..] or [[..]]
```

> [..](https://trac.streamboard.tv/oscam/wiki) or [..](https://trac.streamboard.tv/oscam/wiki)

To link from a [​SubWiki](https:https://trac.edgewall.org/intertrac/SubWiki "SubWiki in The Trac Project") page to a sibling page, use a '../':

```
  [../Sibling see next sibling] or [[../Sibling|see next sibling]]
```

> see next sibling or see next sibling

But in practice you often won't need to add the `../` prefix to link to a sibling page. For resolving the location of a wiki link, it's the target page closest in the hierarchy to the page where the link is written which will be selected. So for example, within a sub-hierarchy, a sibling page will be targeted in preference to a top-level page. This makes it easy to copy or move pages to a sub-hierarchy by [renaming](https://trac.streamboard.tv/oscam/wiki/WikiNewPage#renaming) without having to adapt the links.

To link explicitly to a toplevel Wiki page, use the `wiki:/` prefix. Be careful **not** to use the `/` prefix alone, as this corresponds to the [#Server-relativelinks](https://trac.streamboard.tv/oscam/wiki/TracLinks#Server-relativelinks) syntax and with such a link you will lack the `/wiki/` part in the resulting URL. A link such as `[../newticket]` will stay in the wiki namespace and therefore link to a sibling page.

### Link anchors

To create a link to a specific anchor in a page, use '#':

```
 [#Linkanchors Link anchors] or [[#Linkanchors|Link anchors]]
```

> [Link anchors](https://trac.streamboard.tv/oscam/wiki/TracLinks#Linkanchors) or [Link anchors](https://trac.streamboard.tv/oscam/wiki/TracLinks#Linkanchors)

Hint: when you hover your mouse over the title of a section, a '¶' character will be displayed. This is a link to that specific section and you can use this to copy the `#...` part inside a relative link to an anchor.

To create a link to the first or last occurrence of a term on a page, use a *pseudo anchor* starting with '#/' or '#?':

```
 [#/Milestone first occurrence of Milestone] or
 [#?Milestone last occurrence of Milestone]
```

> [first occurrence of Milestone](https://trac.streamboard.tv/oscam/wiki/TracLinks#/Milestone) or [last occurrence of Milestone](https://trac.streamboard.tv/oscam/wiki/TracLinks#?Milestone)

This will also highlight all other matches on the linked page. By default only case sensitive matches are considered. To include case insensitive matches append '/i':

```
 [#/Milestone/i first occurrence of Milestone or milestone] or
 [#?Milestone/i last occurrence of Milestone or milestone]
```

> [first occurrence of Milestone or milestone](https://trac.streamboard.tv/oscam/wiki/TracLinks#/Milestone/i) or [last occurrence of Milestone or milestone](https://trac.streamboard.tv/oscam/wiki/TracLinks#?Milestone/i)

*(since Trac 1.0)*

Such anchors can be very useful for linking to specific lines in a file in the source browser:

```
 [trac:source:tags/trac-0.12/trac/wiki/api.py#L127 Line 127] or
 [trac:source:tags/trac-0.12/trac/ticket/roadmap.py#L47 Line 47]
```

> [​Line 127](https:https://trac.edgewall.org/intertrac/source%3Atags/trac-0.12/trac/wiki/api.py%23L127 "source:tags/trac-0.12/trac/wiki/api.py#L127 in The Trac Project") or [​Line 47](https:https://trac.edgewall.org/intertrac/source%3Atags/trac-0.12/trac/ticket/roadmap.py%23L47 "source:tags/trac-0.12/trac/ticket/roadmap.py#L47 in The Trac Project")

(Hint: The line numbers displayed in the source browser are links to anchors on the respective lines.)

Since such links become outdated when the file changes, it can be useful to link using a '#/' pseudo anchor instead:

```
 [trac:source:trunk/trac/wiki/api.py#/IWikiSyntaxProvider IWikiSyntaxProvider] or
 [trac:source:trunk/trac/env.py#/ISystemInfoProvider ISystemInfoProvider]
```

> [​IWikiSyntaxProvider](https:https://trac.edgewall.org/intertrac/source%3Atrunk/trac/wiki/api.py%23/IWikiSyntaxProvider "source:trunk/trac/wiki/api.py#/IWikiSyntaxProvider in The Trac Project") or [​ISystemInfoProvider](https:https://trac.edgewall.org/intertrac/source%3Atrunk/trac/env.py%23/ISystemInfoProvider "source:trunk/trac/env.py#/ISystemInfoProvider in The Trac Project")

### [InterWiki](https://trac.streamboard.tv/oscam/wiki/InterWiki) links

Other prefixes can be defined freely and made to point to resources in other Web applications. The definition of those prefixes as well as the URLs of the corresponding Web applications is defined in a special Wiki page, the [InterMapTxt](https://trac.streamboard.tv/oscam/wiki/InterMapTxt) page. Note that while this could be used to create links to other Trac environments, there is a more specialized way to register other Trac environments which offers greater flexibility.

### [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac) links

This can be seen as a kind of [InterWiki](https://trac.streamboard.tv/oscam/wiki/InterWiki) link specialized for targeting other Trac projects.

Any type of Trac link can be written in one Trac environment and actually refer to resources in another Trac environment. All that is required is to prefix the Trac link with the name of the other Trac environment followed by a colon. The other Trac environment must be registered on the [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac) page.

A distinct advantage of [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac) links over [InterWiki](https://trac.streamboard.tv/oscam/wiki/InterWiki) links is that the shorthand form of Trac links can also be used, such as `{}`, `r`, `#`. For example, if T was set as an alias for Trac, then links to Trac tickets can be written as #T234, and links to Trac changesets can be written as [​\[trac 1508\]](https:https://trac.edgewall.org/intertrac/changeset%3A1508 "changeset:1508 in The Trac Project"). See [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac) for the complete details.

### Server-relative links

It is often useful to be able to link to objects in your project that have no built-in Trac linking mechanism, such as static resources, `newticket`, a shared `/register` page on the server, etc.

To link to resources inside the project, use either an absolute path from the project root, or a relative link from the URL of the current page (*Changed in 0.11*):

```
[/newticket Create a new ticket] or [[//newticket|Create a new ticket]]
[/ home] or [[/|home]]
```

Display: [Create a new ticket](https://trac.streamboard.tv/oscam/newticket) or [Create a new ticket](https://trac.streamboard.tv/newticket) [home](https://trac.streamboard.tv/oscam/) or [home](https://trac.streamboard.tv/oscam/)

To link to another location on the server (possibly outside the project but on the same host), use the `//` prefix (*Changed in 0.11*):

```
[//register Register Here] or [[//register|Register Here]]
```

Display: [Register Here](https://trac.streamboard.tv/register) or [Register Here](https://trac.streamboard.tv/register)

### Quoting space in [TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks)

Immediately after a [TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks) prefix, targets containing space characters should be enclosed in a pair of quotes or double quotes. Examples:

+   wiki:"The whitespace convention"
+   attachment:'the file.txt' or
+   attachment:"the file.txt"
+   attachment:"the file.txt:ticket:123"

Note that by using [​WikiCreole](https:https://trac.edgewall.org/intertrac/WikiCreole "WikiCreole in The Trac Project") style links, it's quite natural to write links containing spaces:

+   \[\[The whitespace convention\]\]
+   \[\[attachment:the file.txt\]\]

### Escaping Links

To prevent parsing of a TracLink, you can escape it by preceding it with a '!' (exclamation mark).

```
 !NoLinkHere.
 ![42] is not a link either.
```

Display:

> NoLinkHere. \[42\] is not a link either.

### Parameterized Trac links

Many Trac resources have more than one way to be rendered, depending on some extra parameters. For example, a Wiki page can accept a `version` or a `format` parameter, a report can make use of dynamic variables, etc.

Trac links can support an arbitrary set of parameters, written in the same way as they would be for the corresponding URL. Some examples:

+   `wiki:WikiStart?format=txt`
+   `ticket:1?version=1`
+   `[/newticket?component=module1 create a ticket for module1]`
+   `[/newticket?summary=Add+short+description+here create a ticket with URL with spaces]`

## [TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks) Reference

The following sections describe the individual link types in detail, as well as notes on advanced usage of links.

### attachment: links

The link syntax for attachments is as follows:

+   attachment:the\_file.txt creates a link to the attachment the\_file.txt of the current page
+   attachment:the\_file.txt:wiki:MyPage creates a link to the attachment the\_file.txt of the MyPage wiki page
+   attachment:the\_file.txt:ticket:753 creates a link to the attachment the\_file.txt of the ticket 753

Note that the older way, putting the filename at the end, is still supported: attachment:ticket:753:the\_file.txt, but is not recommended.

If you'd like to create a direct link to the content of the attached file instead of a link to the attachment page, simply use `raw-attachment:` instead of `attachment:`.

This can be useful for pointing directly to an HTML document, for example. Note that for this use case, you'd have to allow the web browser to render the content by setting [\[attachment\] render\_unsafe\_content](https://trac.streamboard.tv/oscam/wiki/TracIni#attachment-render_unsafe_content-option) = `enabled`. Caveat: only do that in environments for which you're 100% confident you can trust the people who are able to attach files, as this opens up your site to [​cross-site scripting](http://en.wikipedia.org/wiki/Cross-site_scripting "Cross-site_scripting in WikiPedia") attacks.

See also [#export:links](https://trac.streamboard.tv/oscam/wiki/TracLinks#export:links).

### comment: links

When you're inside a given ticket, you can simply write e.g. comment:3 to link to the third change comment. It is possible to link to a comment of a specific ticket from anywhere using one of the following syntax:

+   `comment:3:ticket:123`
+   `ticket:123#comment:3` (note that you can't write `#123#!comment:3`!)

It is also possible to link to the ticket's description using one of the following syntax:

+   `comment:description` (within the ticket)
+   `comment:description:ticket:123`
+   `ticket:123#comment:description`

### htdocs: links

Use `htdocs:path/to/file` to reference files in the `htdocs` directory of the Trac environment, the [web resource directory](https://trac.streamboard.tv/oscam/wiki/TracEnvironment#DirectoryStructure).

### query: links

See [TracQuery#UsingTracLinks](https://trac.streamboard.tv/oscam/wiki/TracQuery#UsingTracLinks) and [#ticket:links](https://trac.streamboard.tv/oscam/wiki/TracLinks#ticket:links).

### search: links

See [TracSearch#SearchTracLinks](https://trac.streamboard.tv/oscam/wiki/TracSearch#SearchTracLinks)

### ticket: links

> *aliases:* `bug:`, `issue:`

Besides the obvious `ticket:id` form, it is also possible to specify a list of tickets or even a range of tickets instead of the `id`. This generates a link to a custom query view containing this fixed set of tickets.

Example:

+   `ticket:5000-6000`
+   `ticket:1,150`

### timeline: links

Links to the timeline can be created by specifying a date in the ISO:8601 format. The date can be optionally followed by a time specification. The time is interpreted as being UTC time, but if you don't want to compute the UTC time, you can specify a local time followed by your timezone offset relative to UTC.

Examples:

+   `timeline:2008-01-29`
+   `timeline:2008-01-29T15:48`
+   `timeline:2008-01-29T15:48Z`
+   `timeline:2008-01-29T16:48+01`
+   `timeline:2008-01-29T16:48+0100`
+   `timeline:2008-01-29T16:48+01:00`

### wiki: links

See [WikiPageNames](https://trac.streamboard.tv/oscam/wiki/WikiPageNames) and [quoting space in TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks#QuotingspaceinTracLinks) above. It is possible to create a link to a specific page revision using the syntax [WikiStart@1](https://trac.streamboard.tv/oscam/wiki/WikiStart?version=1).

### Version Control system links

It should be noted that multiple repository support works by creating a kind of virtual namespace for versioned files in which the toplevel folders correspond to the repository names. Therefore, in presence of multiple repositories, a */path* specification in the syntax of links detailed below should start with the name of the repository. If omitted, the default repository is used. In case a toplevel folder of the default repository has the same name as a repository, the link directs to the latter. One can always access such folder by fully qualifying it. The default repository can be an alias of a named repository, or conversely, there may be one or more aliases for the default repository, ask your Trac administrator.

For example, `source:/trunk/COPYING` targets the path `/trunk/COPYING` in the default repository, whereas `source:/projectA/trunk/COPYING` targets the path `/trunk/COPYING` in the repository named `projectA`. This can be the same file if `'projectA'` is an alias to the default repository or if `''` (the default repository) is an alias to `'projectA'`.

#### source: links

> *aliases:* `browser:`, `repos:`

The default behavior for a `source:/some/path link` is to open the browser in that directory directory if the path points to a directory or to show the latest content of the file.

It's also possible to link directly to a specific revision of a file like this:

+   `source:/some/file@123` - link to the file's revision 123
+   `source:/some/file@head` - link explicitly to the latest revision of the file
+   `source:/some/file@named-branch` - link to latest revision of the specified file in `named-branch` (DVCS such as Git or Mercurial)

If the revision is specified, one can even link to a specific line number:

+   `source:/some/file@123#L10`
+   `source:/tag/0.10@head#L10`
+   `source:/some/file@named-branch#L10`

Finally, one can also highlight an arbitrary set of lines:

+   `source:/some/file@123:10-20,100,103#L99` - highlight lines 10 to 20, and lines 100 and 103, and target line 99
+   or without version number (the `@` is still needed): `source:/some/file@:10-20,100,103#L99`. Version can be omitted when the path is pointing to a source file that will no longer change (like `source:/tags/...`), otherwise it's better to specify which lines of *which version* of the file you're talking about.

Note that in presence of multiple repositories, the name of the repository is simply integrated in the path you specify for `source:` (e.g. `source:reponame/trunk/README`). *(since 0.12)*

#### export: links

To force the download of a file in the repository, as opposed to displaying it in the browser, use the `export` link. Several forms are available:

+   `export:/some/file` - get the HEAD revision of the specified file
+   `export:123:/some/file` - get revision 123 of the specified file
+   `export:/some/file@123` - get revision 123 of the specified file
+   `export:/some/file@named-branch` - get latest revision of the specified file in `named-branch` (DVCS such as Git or Mercurial).

This can be very useful for displaying XML or HTML documentation with correct stylesheets and images, in case that has been checked in into the repository. Note that for this use case, you'd have to allow the web browser to render the content by setting [\[browser\] render\_unsafe\_content](https://trac.streamboard.tv/oscam/wiki/TracIni#browser-render_unsafe_content-option) = `enabled`, otherwise Trac will force the files to be downloaded as attachments for security concerns.

If the path is to a directory in the repository instead of a specific file, the source browser will be used to display the directory (identical to the result of `source:/some/dir`).

#### log: links

The `log:` links are used to display revision ranges. In its simplest form, it can link to the latest revisions of the specified path, but it can also support displaying an arbitrary set of revisions.

+   `log:/` - the latest revisions starting at the root of the repository
+   `log:/trunk/tools` - the latest revisions in `trunk/tools`
+   `log:/trunk/tools@10000` - the revisions in `trunk/tools` starting from revision 10000
+   `log:@20788,20791:20795` - list revision 20788 and the revisions from 20791 to 20795
+   `log:/trunk/tools@20788,20791:20795` - list revision 20788 and the revisions from 20791 to 20795 which affect the given path
+   `log:/tools@named-branch` - the revisions in `tools` starting from the latest revision in `named-branch` (DVCS such as Git or Mercurial)

There are short forms for revision ranges as well:

+   `[20788,20791:20795]`
+   `[20788,20791:20795/trunk/tools]`
+   `r20791:20795` (but not `r20788,20791:20795` nor `r20791:20795/trunk`)

Finally, note that in all of the above, a revision range can be written either as `x:y` or `x-y`.

#### Multi-repository links

In the presence of multiple repositories, the name of the repository should be specified as the first part of the path:

+   `log:repos/branch`
+   `[20-40/repos]`
+   `r20/repos`

* * *

See also: [WikiFormatting](https://trac.streamboard.tv/oscam/wiki/WikiFormatting), [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki), [WikiPageNames](https://trac.streamboard.tv/oscam/wiki/WikiPageNames), [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac), [InterWiki](https://trac.streamboard.tv/oscam/wiki/InterWiki)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracLinks?action=diff&version=8 "Version 8 by trac") [2 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.