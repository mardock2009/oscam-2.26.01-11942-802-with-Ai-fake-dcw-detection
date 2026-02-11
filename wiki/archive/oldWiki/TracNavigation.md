> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Trac Navigation

The main and meta navigation entries can be customized in several ways. The `[mainnav]` and `[metanav]` configuration sections can be used to customize the navigation item text and link, change the ordering of the navigation items, disable them and add new ones.

The primary attributes that can be customized are `href`, `label`, `order` and `permission`.

### `[mainnav]`

`[mainnav]` corresponds to the **main navigation bar**, the one containing entries such as *Wiki*, *Timeline*, *Roadmap*, *Browse Source* and so on. This navigation bar is meant to access the default page of the main modules enabled in Trac that are accessible for the current user.

**Example**

In the following example we rename the link to [WikiStart](https://trac.streamboard.tv/oscam/wiki/WikiStart) *Home*, and make the *View Tickets* entry link to a specific report.

```
[mainnav]
wiki.label = Home
tickets.href = /report/24
```

Note the entries on the main navigation are displayed in uppercase regardless of the casing of the `label`, unless this aspect of the styling is overridden through [interface customization](https://trac.streamboard.tv/oscam/wiki/TracInterfaceCustomization#SiteAppearance).

### `[metanav]`

`[metanav]` corresponds to the **meta navigation bar**, by default positioned above the main navigation bar and below the *Search* box. It contains the *Login*, *Logout*, *Help/Guide* etc. entries. This navigation bar is meant to access some global information about the Trac project and the current user.

There is one special entry in the `[metanav]` section: `logout.redirect` is the page the user sees after hitting the logout button. The *Help/Guide* link is also hidden in the following example.

**Example**

```
[metanav]
help = disabled
logout.redirect = wiki/Logout
```

### Extra Navigation Entries

New navigation entries can be arbitrarily defined and added to the navigation. A new entry can be defined by providing a name with value `enabled`. At a minimum, the `href` attribute should be specified to define a useful navigation entry. If the `label` attribute is not defined the entry's name will be used for the label.

The following example creates two new navigation items, one named *My Reports* and the other named *builds*. *My Reports* is only visible to users with `REPORT_VIEW` permission.

```
[mainnav]
myreports = enabled
myreports.href = /report/9
myreports.label = My Reports
myreports.permission = REPORT_VIEW

[metanav]
builds = enabled
builds.href = https://travis-ci.org/edgewall/trac
```

The entry names are always read as lowercase, as is the case for all keys in the trac.ini file due to the way the configuration parser is configured. If the example above used `BUILDS` rather than `builds` for the name, the entry would still be displayed as `builds`. Use the `label` attribute for case-sensitive customization of the navigation entry text.

### Relocating Entries

Navigation entries provided by Trac and plugins can be moved from the meta navigation bar to the main navigation bar, and vise-versa. The entry should be defined in the desired category as if it was a new entry. For example, to move the *Admin* entry to the metanav and rename it to *Administration*:

```
[metanav]
admin = enabled
admin.label = Administration
```

Attributes of the navigation item that are not overridden by the configuration will be preserved.

### URL Formats

Possible URL formats for `.href` or `.redirect`:

<table class="wiki"><tbody><tr><td><strong>config</strong></td><td><strong>redirect to</strong></td></tr><tr><td><code>wiki/Logout</code></td><td><code>/projects/env/wiki/Logout</code></td></tr><tr><td><code>http://hostname/</code></td><td><code>http://hostname/</code></td></tr><tr><td><code>/projects</code></td><td><code>/projects</code></td></tr></tbody></table>

### Ordering

The `order` attribute specifies the order in which the navigation items are displayed. This can be particularly useful for plugins that add navigation items.

Non-negative floating point values may be used for the `order` attribute. The navigation items will be arranged from left to right in increasing order. Navigation items without an `order` attribute are sorted alphabetically by name.

The default values are:

```
[mainnav]
browser.order = 4
newticket.order = 6
roadmap.order = 3
search.order = 7
tickets.order = 5
timeline.order = 2
wiki.order = 1

[metanav]
about.order = 5
help.order = 4
login.order = 1
logout.order = 2
prefs.order = 3
```

### Permissions

The `permission` attribute controls the visibility of the navigation item on the navigation bar. This is mainly useful for new entries in the navigation bar. Note that it does not provide access control to the URL that the navigation item directs to, and cannot override permission checks done by Trac and plugins.

For example, the *Roadmap* navigation item will only display for users with `ROADMAP_VIEW`. Adding the attribute `roadmap.permission = MILESTONE_VIEW` will require both `ROADMAP_VIEW` and `MILESTONE_VIEW` for the entry to be visible, but as noted will not provide access control for the `/roadmap` path. [TracFineGrainedPermissions](https://trac.streamboard.tv/oscam/wiki/TracFineGrainedPermissions) should be used for access control to modules provided by Trac and plugins.

### Context Navigation

Note that it is still not possible to customize the **contextual navigation bar**, i.e. the one usually placed below the main navigation bar.

* * *

See also: [TracInterfaceCustomization](https://trac.streamboard.tv/oscam/wiki/TracInterfaceCustomization)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracNavigation?action=diff&version=8 "Version 8 by trac") [3 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.