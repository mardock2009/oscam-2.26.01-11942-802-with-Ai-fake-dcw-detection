> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# InterWiki

#### Contents

1.  [Definition](#Definition)
2.  [Link Syntax](#LinkSyntax)
3.  [\[interwiki\]](#interwiki)
4.  [Examples](#Examples)
5.  [List of Active Prefixes](#ListofActivePrefixes)

## Definition

An [InterWiki](https://trac.streamboard.tv/oscam/wiki/InterWiki) link can be used for referring to a Wiki page located in another Wiki system, and by extension, to any object located in any other Web application, provided a simple URL mapping can be done.

[InterWiki](https://trac.streamboard.tv/oscam/wiki/InterWiki) prefixes can even be used to introduce links to new protocols, such as `tsvn:` used by [​TortoiseSvn](https:https://trac.edgewall.org/intertrac/TortoiseSvn "TortoiseSvn in The Trac Project").

## Link Syntax

```
<target_wiki>(:<identifier>)+
```

The link is composed by the targeted Wiki (or system) name, followed by a colon, eg `MeatBall:`, followed by a page specification in the target. Note that, as for [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac) prefixes, **[InterWiki](https://trac.streamboard.tv/oscam/wiki/InterWiki) prefixes are case insensitive**.

The target Wiki URL is looked up in the [\[interwiki\]](https://trac.streamboard.tv/oscam/wiki/TracIni#interwiki-section) section of [TracIni](https://trac.streamboard.tv/oscam/wiki/TracIni) and in the [InterMapTxt](https://trac.streamboard.tv/oscam/wiki/InterMapTxt) wiki page, modeled after [​MeatBall:InterMapTxt](http://www.usemod.com/cgi-bin/mb.pl?InterMapTxt "InterMapTxt in MeatBall"). If a prefix is defined in both the `[interwiki]` section and [InterMapTxt](https://trac.streamboard.tv/oscam/wiki/InterMapTxt), the `[interwiki]` section takes precedence.

In addition to traditional InterWiki links, where the target is simply *appended* to the URL, Trac supports parametric InterWiki URLs: identifiers `$1`, `$2`, ... in the URL will be replaced by corresponding arguments. The argument list is formed by splitting the page identifier using the ":" separator.

## [\[interwiki\]](https://trac.streamboard.tv/oscam/wiki/TracIni#interwiki-section)

Every option in the `[interwiki]` section in [TracIni](https://trac.streamboard.tv/oscam/wiki/TracIni) defines one [InterWiki](https://trac.streamboard.tv/oscam/wiki/InterWiki) prefix. The option name defines the prefix. The option value defines the URL, optionally followed by a description separated from the URL by whitespace. Parametric URLs are supported as well.

**Example:**

```
[interwiki]
MeatBall = http://www.usemod.com/cgi-bin/mb.pl?
PEP = http://www.python.org/peps/pep-$1.html Python Enhancement Proposal $1
tsvn = tsvn: Interact with TortoiseSvn
```

## Examples

For the following excerpt of the [InterMapTxt](https://trac.streamboard.tv/oscam/wiki/InterMapTxt) page:

```
= InterMapTxt =
== This is the place for defining InterWiki prefixes ==

Currently active prefixes: [[InterWiki]]

This page is modelled after the MeatBall:InterMapTxt page.
In addition, an optional comment is allowed after the mapping.
----
{{{
PEP      http://www.python.org/peps/pep-$1.html           # Python Enhancement Proposal $1
Trac-ML  http://thread.gmane.org/gmane.comp.version-control.subversion.trac.general/$1  # Message $1 in Trac Mailing List

tsvn     tsvn:                                            # Interact with TortoiseSvn
...
MeatBall http://www.usemod.com/cgi-bin/mb.pl?
MetaWiki http://sunir.org/apps/meta.pl?
MetaWikiPedia http://meta.wikipedia.org/wiki/
MoinMoin http://moinmoin.wikiwikiweb.de/
...
}}}
```

Then,

+   `MoinMoin:InterWikiMap` will be rendered as [​MoinMoin:InterWikiMap](http://moinmoin.wikiwikiweb.de/InterWikiMap "InterWikiMap in MoinMoin") and the *title* for that link will be "InterWikiMap in MoinMoin".
+   `Trac-ML:4346` will be rendered as [​Trac-ML:4346](http://thread.gmane.org/gmane.comp.version-control.subversion.trac.general/4346 "Message 4346 in Trac Mailing List") and the *title* for that link will be "Message 4346 in Trac Mailing List".

## List of Active Prefixes

| *Prefix* | *Site* |
| --- | --- |
| [Acronym](http://www.acronymfinder.com/af-query.asp?String=exact&Acronym=RecentChanges) | [http://www.acronymfinder.com/af-query.asp?String=exact&Acronym=](http://www.acronymfinder.com/af-query.asp?String=exact&Acronym=) |
| [C2find](http://c2.com/cgi/wiki?FindPage&value=RecentChanges) | [http://c2.com/cgi/wiki?FindPage&value=](http://c2.com/cgi/wiki?FindPage&value=) |
| [c2Wiki](http://c2.com/cgi/wiki?RecentChanges) | [http://c2.com/cgi/wiki?](http://c2.com/cgi/wiki) |
| [Cache](http://www.google.com/search?q=cache:RecentChanges) | [http://www.google.com/search?q=cache:](http://www.google.com/search?q=cache:) |
| [CPAN](http://search.cpan.org/perldoc?RecentChanges) | [http://search.cpan.org/perldoc?](http://search.cpan.org/perldoc) |
| [DebianBug](http://bugs.debian.org/RecentChanges) | [http://bugs.debian.org/](http://bugs.debian.org/) |
| [DebianPackage](http://packages.debian.org/RecentChanges) | [http://packages.debian.org/](http://packages.debian.org/) |
| [Dictionary](http://www.dict.org/bin/Dict?Database=*&Form=Dict1&Strategy=*&Query=RecentChanges) | [http://www.dict.org/bin/Dict?Database=\*&Form=Dict1&Strategy=\*&Query=](http://www.dict.org/bin/Dict?Database=*&Form=Dict1&Strategy=*&Query=) |
| [Google](http://www.google.com/search?q=RecentChanges) | [http://www.google.com/search?q=](http://www.google.com/search?q=) |
| [GoogleGroups](http://groups.google.com/group/RecentChanges/msg/) | [Message $2 in $1 Google Group](http://groups.google.com/group/$1/msg/$2) |
| [JargonFile](http://downlode.org/perl/jargon-redirect.cgi?term=RecentChanges) | [http://downlode.org/perl/jargon-redirect.cgi?term=](http://downlode.org/perl/jargon-redirect.cgi?term=) |
| [MeatBall](http://www.usemod.com/cgi-bin/mb.pl?RecentChanges) | [http://www.usemod.com/cgi-bin/mb.pl?](http://www.usemod.com/cgi-bin/mb.pl) |
| [Mercurial](http://www.selenic.com/mercurial/wiki/index.cgi/RecentChanges) | [the wiki for the Mercurial distributed SCM](http://www.selenic.com/mercurial/wiki/index.cgi/) |
| [MetaWiki](http://sunir.org/apps/meta.pl?RecentChanges) | [http://sunir.org/apps/meta.pl?](http://sunir.org/apps/meta.pl) |
| [MetaWikiPedia](http://meta.wikipedia.org/wiki/RecentChanges) | [http://meta.wikipedia.org/wiki/](http://meta.wikipedia.org/wiki/) |
| [MoinMoin](http://moinmoin.wikiwikiweb.de/RecentChanges) | [http://moinmoin.wikiwikiweb.de/](http://moinmoin.wikiwikiweb.de/) |
| [PEP](http://www.python.org/peps/pep-RecentChanges.html) | [Python Enhancement Proposal](http://www.python.org/peps/pep-$1.html) |
| [RFC](http://rfc.net/rfcRecentChanges.html) | [IETF's RFC $1](http://rfc.net/rfc$1.html) |
| [trac-dev](http://thread.gmane.org/gmane.comp.version-control.subversion.trac.devel/RecentChanges) | [Message $1 in Trac Development Mailing List](http://thread.gmane.org/gmane.comp.version-control.subversion.trac.devel/) |
| [Trac-ML](http://thread.gmane.org/gmane.comp.version-control.subversion.trac.general/RecentChanges) | [Message $1 in Trac Mailing List](http://thread.gmane.org/gmane.comp.version-control.subversion.trac.general/) |
| [WhoIs](http://www.whois.sc/RecentChanges) | [http://www.whois.sc/](http://www.whois.sc/) |
| [Why](http://clublet.com/c/c/why?RecentChanges) | [http://clublet.com/c/c/why?](http://clublet.com/c/c/why) |
| [WikiPedia](http://en.wikipedia.org/wiki/RecentChanges) | [http://en.wikipedia.org/wiki/](http://en.wikipedia.org/wiki/) |

* * *

See also: [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac), [InterMapTxt](https://trac.streamboard.tv/oscam/wiki/InterMapTxt)

[Last modified](https://trac.streamboard.tv/oscam/wiki/InterWiki?action=diff&version=6 "Version 6 by trac") [2 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.