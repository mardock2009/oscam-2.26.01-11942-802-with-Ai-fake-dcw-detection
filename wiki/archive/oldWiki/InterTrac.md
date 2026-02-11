> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# InterTrac

Trac supports a convenient way to refer to resources of other Trac servers using Wiki markup. An InterTrac link can be seen as a scoped [TracLink](https://trac.streamboard.tv/oscam/wiki/TracLinks). It is used for referring to a Trac resource located in another Trac environment.

## Link Syntax

Simply use the name of the other Trac environment as a prefix, followed by a colon, ending with the resource located in the other environment:

```
<target_environment>:<TracLinks>
```

The other resource is specified using a regular TracLink, of any flavor.

That target environment name is either the real name of the environment or an alias. The aliases are defined in the `trac.ini` file, see below. The prefix is case insensitive.

If the [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac) link is enclosed in square brackets, like `[th:WikiExtrasPlugin]`, the [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac) prefix is removed in the displayed link like a normal link resolver would be. For example, the above would be displayed as `WikiExtrasPlugin`.

For convenience, there is also an alternate short-hand form, where an alias can be used as an immediate prefix for the identifier of a ticket, changeset or report, eg `#T234`, `[T1508]`, `[trac 1508]`.

## Examples

The only prefix defined by default is `trac`, which points to trac.edgewall.org. Additional prefixes can be specified in the [intertrac](https://trac.streamboard.tv/oscam/wiki/TracIni#intertrac-section) section of [TracIni](https://trac.streamboard.tv/oscam/wiki/TracIni). For example:

```
[intertrac]
# -- Example of setting up an alias:
t = trac

# -- Link to an external Trac:
genshi.title = Edgewall's Trac for Genshi
genshi.url = http://genshi.edgewall.org
```

The `.url` is mandatory and is used for locating the other Trac. It can be a relative URL when the Trac environment is located on the same server.

The `.title` information is used in a tooltip, ie when hovering the cursor over an [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac) link.

Now, given the above configuration, one could create the following links:

+   to this [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac) page:
    +   `trac:wiki:InterTrac` [​trac:wiki:InterTrac](https:https://trac.edgewall.org/intertrac/wiki%3AInterTrac "wiki:InterTrac in The Trac Project")
    +   `t:wiki:InterTrac` t:wiki:InterTrac
    +   `genshi:InterTrac` genshi:InterTrac
    +   Keys are case insensitive: `T:wiki:InterTrac` T:wiki:InterTrac
+   to the ticket [#234](https://trac.streamboard.tv/oscam/ticket/234 "#234: defect: Oscam server info (closed: invalid)"):
    +   `trac:ticket:234` [​trac:ticket:234](https:https://trac.edgewall.org/intertrac/ticket%3A234 "ticket:234 in The Trac Project")
    +   `trac:#234` [​trac:#234](https:https://trac.edgewall.org/intertrac/%23234 "#234 in The Trac Project")
    +   `genshi:#234` genshi:#234
    +   `#T234` #T234
+   to the changeset [\[1912\]](https://trac.streamboard.tv/oscam/changeset/1912 "modular: resync with trunk
    "):
    +   `trac:changeset:1912` [​trac:changeset:1912](https:https://trac.edgewall.org/intertrac/changeset%3A1912 "changeset:1912 in The Trac Project")
    +   `[T1912]` \[T1912\]
+   to the log range [\[3300:3330\]](https://trac.streamboard.tv/oscam/log/?revs=3300-3330):
    +   `trac:log:@3300:3330` [​trac:log:@3300:3330](https:https://trac.edgewall.org/intertrac/log%3A%403300%3A3330 "log:@3300:3330 in The Trac Project")
    +   `[trac 3300:3330]` [​\[trac 3300:3330\]](https:https://trac.edgewall.org/intertrac/log%3A/%403300%3A3330 "log:/@3300:3330 in The Trac Project")
    +   finally, to link to the start page of a remote trac, simply use its prefix followed by ':', inside an explicit link. Example: `[th: Trac Hacks]` (note that the *remote* Trac has to run Trac >= 0.11 for this to work*)*

The generic form `intertrac_prefix:module:id` is translated to the corresponding URL `<remote>/module/id`. Shorthand links are specific to some modules (e.g. #T234 is processed by the ticket module). For the rest (`intertrac_prefix:something`), we rely on the [quick jump](https://trac.streamboard.tv/oscam/wiki/TracSearch#quickjump) facility of the remote Trac.

## List of Active [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac) Prefixes

The following [InterTrac](https://trac.streamboard.tv/oscam/wiki/InterTrac) prefixes are available on this site:

| *Prefix* | *Trac Site* |
| --- | --- |
| [**trac**](https:https://trac.edgewall.org/timeline) | [The Trac Project](https:https://trac.edgewall.org/) |

* * *

See also: [TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks), [InterWiki](https://trac.streamboard.tv/oscam/wiki/InterWiki)

[Last modified](https://trac.streamboard.tv/oscam/wiki/InterTrac?action=diff&version=8 "Version 8 by trac") [2 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.