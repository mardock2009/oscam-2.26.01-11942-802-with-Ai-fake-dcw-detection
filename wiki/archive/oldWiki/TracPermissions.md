> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Trac Permissions

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

Trac uses a simple, case sensitive, permission system to control what users can and can't access.

Permissions are managed using the [trac-admin](https://trac.streamboard.tv/oscam/wiki/TracAdmin) tool or the *General / Permissions* panel in the *Admin* tab of the web interface.

In addition to the default permission policy described in this page, it is possible to activate additional permission policies by enabling plugins and listing them in [\[trac\] permission\_policies](https://trac.streamboard.tv/oscam/wiki/TracIni#trac-permission_policies-option). See [TracFineGrainedPermissions](https://trac.streamboard.tv/oscam/wiki/TracFineGrainedPermissions) for more details.

Non-authenticated users accessing the system are assigned the name *anonymous*. Assign permissions to the *anonymous* user to set privileges for anonymous/guest users. The parts of Trac that a user does not have privilege for will not be displayed in the navigation. In addition to these privileges, users can be granted additional individual rights in effect when authenticated and logged into the system. All logged in users belong to the virtual group *authenticated*, which inherits permissions from *anonymous*.

## Graphical Admin Tab

To access this tab, a user must have one of the following permissions: `TRAC_ADMIN`, `PERMISSION_ADMIN`, `PERMISSION_GRANT`, `PERMISSION_REVOKE`. The permissions can be granted using the `trac-admin` command (more on `trac-admin` below):

```
$ trac-admin /path/to/projenv permission add bob TRAC_ADMIN
```

Then, the user `bob` will be able to see the Admin tab, and can access the permissions menu. This menu will allow you to perform all the following actions, but from the browser rather than requiring root access to the server. **Use at least one lowercase character in user names, as all-uppercase names are reserved for permissions.**

[![admin.png](https://trac.streamboard.tv/oscam/chrome/common/guide/admin.png "admin.png")](https://trac.streamboard.tv/oscam/chrome/common/guide/admin.png)

[![admin-permissions.png](https://trac.streamboard.tv/oscam/chrome/common/guide/admin-permissions.png "admin-permissions.png")](https://trac.streamboard.tv/oscam/chrome/common/guide/admin-permissions.png)

[![admin-permissions-TICKET_ADMIN.png](https://trac.streamboard.tv/oscam/chrome/common/guide/admin-permissions-TICKET_ADMIN.png "admin-permissions-TICKET_ADMIN.png")](https://trac.streamboard.tv/oscam/chrome/common/guide/admin-permissions-TICKET_ADMIN.png)

From the graphical admin tab, users with `PERMISSION_GRANT` will only be allowed to grant permissions that they possess, and users with `PERMISSION_REVOKE` will only be allowed to revoke permissions that they possess. For example, a user cannot grant `MILESTONE_ADMIN` unless they have `PERMISSION_GRANT` and `MILESTONE_ADMIN`, and they cannot revoke `MILESTONE_ADMIN` unless they have `PERMISSION_REVOKE` and `MILESTONE_ADMIN`. `PERMISSION_ADMIN` just grants the user both `PERMISSION_GRANT` and `PERMISSION_REVOKE`, and users with `TRAC_ADMIN` can grant or revoke any permission.

## Available Privileges

To enable all privileges for a user, use the `TRAC_ADMIN` permission. Having `TRAC_ADMIN` is like being `root` on a \*NIX system: it will allow you to perform any operation.

Otherwise, individual privileges can be assigned to users for the various different functional areas of Trac (**note that the privilege names are case-sensitive**):

### Repository Browser

<table class="wiki"><tbody><tr><td><code>BROWSER_VIEW</code></td><td>View directory listings in the <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracBrowser">repository browser</a></td></tr><tr><td><code>FILE_VIEW</code></td><td>View files in the <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracBrowser">repository browser</a></td></tr><tr><td><code>CHANGESET_VIEW</code></td><td>View <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracChangeset">repository check-ins</a></td></tr><tr><td><code>LOG_VIEW</code></td><td>View revision logs of files and directories in the <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracBrowser">repository browser</a></td></tr></tbody></table>

### Ticket System

<table class="wiki"><tbody><tr><td><code>TICKET_VIEW</code></td><td>View existing <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracTickets">tickets</a> and perform <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracQuery">ticket queries</a></td></tr><tr><td><code>TICKET_CREATE</code></td><td>Create new <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracTickets">tickets</a></td></tr><tr><td><code>TICKET_APPEND</code></td><td>Add comments and attachments to <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracTickets">tickets</a>, and edit description of ticket the user created</td></tr><tr><td><code>TICKET_CHGPROP</code></td><td>Modify <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracTickets">ticket</a> properties (priority, assignment, keywords, etc.) with the following exceptions: edit description of tickets created by others, add/remove other users from cc field when logged in</td></tr><tr><td><code>TICKET_MODIFY</code></td><td>Includes both <code>TICKET_APPEND</code> and <code>TICKET_CHGPROP</code>, and in addition allows resolving <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracTickets">tickets</a> in the <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracWorkflow">default workflow</a>. Tickets can be assigned to users through a <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracTickets#Assign-toasDrop-DownList">drop-down list</a> when the list of possible owners has been restricted.</td></tr><tr><td><code>TICKET_EDIT_CC</code></td><td>Full modify cc field</td></tr><tr><td><code>TICKET_EDIT_DESCRIPTION</code></td><td>Modify description field. User with <code>TICKET_APPEND</code> or <code>TICKET_CHGPROP</code> can modify description of ticket they created.</td></tr><tr><td><code>TICKET_EDIT_COMMENT</code></td><td>Modify another user's comments. Any user can modify their own comments by default.</td></tr><tr><td><code>TICKET_BATCH_MODIFY</code></td><td><a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracBatchModify">Batch modify</a> tickets</td></tr><tr><td><code>TICKET_ADMIN</code></td><td>All <code>TICKET_*</code> permissions, deletion of ticket attachments and modification of the reporter field, which grants ability to create a ticket on behalf of another user (it will appear that another user created the ticket). It also allows managing ticket properties through the web administration module.</td></tr></tbody></table>

### Roadmap

<table class="wiki"><tbody><tr><td><code>MILESTONE_VIEW</code></td><td>View milestones and assign tickets to milestones.</td></tr><tr><td><code>MILESTONE_CREATE</code></td><td>Create new milestones</td></tr><tr><td><code>MILESTONE_MODIFY</code></td><td>Modify milestones</td></tr><tr><td><code>MILESTONE_DELETE</code></td><td>Delete milestones</td></tr><tr><td><code>MILESTONE_ADMIN</code></td><td>All <code>MILESTONE_*</code> permissions</td></tr><tr><td><code>ROADMAP_VIEW</code></td><td>View the <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracRoadmap">roadmap</a> page, which is not yet the same as MILESTONE_VIEW, see <a class="ext-link" href="https:https://trac.edgewall.org/intertrac/%234292" title="#4292 in The Trac Project"><span class="icon">​</span>#4292</a></td></tr><tr><td><code>ROADMAP_ADMIN</code></td><td>to be removed with <a class="ext-link" href="https:https://trac.edgewall.org/intertrac/%233022" title="#3022 in The Trac Project"><span class="icon">​</span>#3022</a>, replaced by MILESTONE_ADMIN</td></tr></tbody></table>

### Reports

<table class="wiki"><tbody><tr><td><code>REPORT_VIEW</code></td><td>View <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracReports">reports</a>, i.e. the <em>View Tickets</em> link.</td></tr><tr><td><code>REPORT_SQL_VIEW</code></td><td>View the SQL query of a <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracReports">report</a></td></tr><tr><td><code>REPORT_CREATE</code></td><td>Create new <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracReports">reports</a></td></tr><tr><td><code>REPORT_MODIFY</code></td><td>Modify <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracReports">reports</a></td></tr><tr><td><code>REPORT_DELETE</code></td><td>Delete <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracReports">reports</a></td></tr><tr><td><code>REPORT_ADMIN</code></td><td>All <code>REPORT_*</code> permissions</td></tr></tbody></table>

### Wiki System

<table class="wiki"><tbody><tr><td><code>WIKI_VIEW</code></td><td>View <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracWiki">wiki</a> pages</td></tr><tr><td><code>WIKI_CREATE</code></td><td>Create new <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracWiki">wiki</a> pages</td></tr><tr><td><code>WIKI_MODIFY</code></td><td>Modify <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracWiki">wiki</a> pages</td></tr><tr><td><code>WIKI_RENAME</code></td><td>Rename <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracWiki">wiki</a> pages</td></tr><tr><td><code>WIKI_DELETE</code></td><td>Delete <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracWiki">wiki</a> pages and attachments</td></tr><tr><td><code>WIKI_ADMIN</code></td><td>All <code>WIKI_*</code> permissions, plus the management of <em>readonly</em> pages.</td></tr></tbody></table>

### Permissions

<table class="wiki"><tbody><tr><td><code>PERMISSION_GRANT</code></td><td>add/grant a permission</td></tr><tr><td><code>PERMISSION_REVOKE</code></td><td>remove/revoke a permission</td></tr><tr><td><code>PERMISSION_ADMIN</code></td><td>All <code>PERMISSION_*</code> permissions</td></tr></tbody></table>

### Others

<table class="wiki"><tbody><tr><td><code>TIMELINE_VIEW</code></td><td>View the <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracTimeline">timeline</a> page</td></tr><tr><td><code>SEARCH_VIEW</code></td><td>View and execute <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracSearch">search</a> queries</td></tr><tr><td><code>CONFIG_VIEW</code></td><td>Enables additional sections on <em>About Trac</em> that show the current configuration and the list of installed plugins</td></tr><tr><td><code>EMAIL_VIEW</code></td><td>Shows email addresses even if <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracIni#trac-section">trac show_email_addresses</a> configuration option is false</td></tr></tbody></table>

## Attachment Permissions

Attachment permissions are handled by `LegacyAttachmentPolicy`, and unlike the permissions discussed so far, the permissions provided by `LegacyAttachmentPolicy` are not directly granted. Rather, the ability to create, view and delete attachments is determined by the attachment's parent realm and permissions the user possesses for that realm.

The attachment actions are determined by the following permissions in the ticket, wiki and milestone realms:

| Granted By: | Ticket | Wiki | Milestone |
| --- | --- | --- | --- |
| `ATTACHMENT_CREATE` | `TICKET_APPEND` | `WIKI_MODIFY` | `MILESTONE_MODIFY` |
| `ATTACHMENT_VIEW` | `TICKET_VIEW` | `WIKI_VIEW` | `MILESTONE_VIEW` |
| `ATTACHMENT_DELETE` | `TICKET_ADMIN` | `WIKI_DELETE` | `MILESTONE_DELETE` |

If explicit attachment permissions are preferred, `ATTACHMENT_CREATE`, `ATTACHMENT_DELETE` and `ATTACHMENT_VIEW` can be created using the [​ExtraPermissionsProvider](https:https://trac.edgewall.org/intertrac/ExtraPermissionsProvider "ExtraPermissionsProvider in The Trac Project"). The simplest implementation is to simply define the actions.

```
[extra-permissions]
_perms = ATTACHMENT_CREATE, ATTACHMENT_DELETE, ATTACHMENT_VIEW
```

An alternative configuration adds an `ATTACHMENT_ADMIN` meta-permission that grants the other 3 permission.

```
[extra-permissions]
ATTACHMENT_ADMIN = ATTACHMENT_CREATE, ATTACHMENT_DELETE, ATTACHMENT_VIEW
```

The explicit permissions can be used in concert with `LegacyAttachmentPolicy`, or `LegacyAttachmentPolicy` can be removed from `permission_policies`, in which case only users that have been explicitly granted the corresponding attachment actions will be able to create, delete and view attachments.

## Granting Privileges

You grant privileges to users using [trac-admin](https://trac.streamboard.tv/oscam/wiki/TracAdmin). The current set of privileges can be listed with the following command:

```
$ trac-admin /path/to/projenv permission list
```

This command will allow the user *bob* to delete reports:

```
$ trac-admin /path/to/projenv permission add bob REPORT_DELETE
```

The `permission add` command also accepts multiple privilege names:

```
$ trac-admin /path/to/projenv permission add bob REPORT_DELETE WIKI_CREATE
```

Or add all privileges:

```
$ trac-admin /path/to/projenv permission add bob TRAC_ADMIN
```

## Permission Groups

There are two built-in groups, *authenticated* and *anonymous*. Any user who has not logged in is automatically in the *anonymous* group. Any user who has logged in is also in the *authenticated* group. The *authenticated* group inherits permissions from the *anonymous* group. For example, if the *anonymous* group has permission WIKI\_MODIFY, it is not necessary to add the WIKI\_MODIFY permission to the *authenticated* group as well.

Custom groups may be defined that inherit permissions from the two built-in groups.

Permissions can be grouped together to form roles such as *developer*, *admin*, etc.

```
$ trac-admin /path/to/projenv permission add developer WIKI_ADMIN
$ trac-admin /path/to/projenv permission add developer REPORT_ADMIN
$ trac-admin /path/to/projenv permission add developer TICKET_MODIFY
$ trac-admin /path/to/projenv permission add bob developer
$ trac-admin /path/to/projenv permission add john developer
```

Group membership can be checked by doing a `permission list` with no further arguments; the resulting output will include group memberships. **Use at least one lowercase character in group names, as all-uppercase names are reserved for permissions**.

## Adding a New Group and Permissions

Permission groups can be created by assigning a user to a group you wish to create, then assign permissions to that group.

The following will add *bob* to the new group called *beta\_testers* and then will assign WIKI\_ADMIN permissions to that group. (Thus, *bob* will inherit the WIKI\_ADMIN permission)

```
$ trac-admin /path/to/projenv permission add bob beta_testers
$ trac-admin /path/to/projenv permission add beta_testers WIKI_ADMIN
```

## Removing Permissions

Permissions can be removed using the 'remove' command. For example:

This command will prevent the user *bob* from deleting reports:

```
$ trac-admin /path/to/projenv permission remove bob REPORT_DELETE
```

Just like `permission add`, this command accepts multiple privilege names.

You can also remove all privileges for a specific user:

```
$ trac-admin /path/to/projenv permission remove bob '*'
```

Or one privilege for all users:

```
$ trac-admin /path/to/projenv permission remove '*' REPORT_ADMIN
```

## Creating New Privileges

To create custom permissions, for example to be used in a custom workflow, enable the optional [​tracopt.perm.config\_perm\_provider.ExtraPermissionsProvider](https:https://trac.edgewall.org/intertrac/ExtraPermissionsProvider "ExtraPermissionsProvider in The Trac Project") component in the "Plugins" admin panel, and add the desired permissions to the `[extra-permissions]` section in your [trac.ini](https://trac.streamboard.tv/oscam/wiki/TracIni#extra-permissions-section). For more information, please refer to the documentation on the [TracIni](https://trac.streamboard.tv/oscam/wiki/TracIni#extra-permissions-section) page after enabling the component.

## Default Permissions

By default on a new Trac installation, the *anonymous* user will have *view* access to everything in Trac, but will not be able to create or modify anything. On the other hand, the *authenticated* users will have the permissions to *create and modify tickets and wiki pages*.

***anonymous***

```
BROWSER_VIEW
CHANGESET_VIEW
FILE_VIEW
LOG_VIEW
MILESTONE_VIEW
REPORT_SQL_VIEW
REPORT_VIEW
ROADMAP_VIEW
SEARCH_VIEW
TICKET_VIEW
TIMELINE_VIEW
WIKI_VIEW
```

***authenticated***

```
TICKET_CREATE
TICKET_MODIFY
WIKI_CREATE
WIKI_MODIFY
```

* * *

See also: [TracAdmin](https://trac.streamboard.tv/oscam/wiki/TracAdmin), [TracFineGrainedPermissions](https://trac.streamboard.tv/oscam/wiki/TracFineGrainedPermissions)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracPermissions?action=diff&version=8 "Version 8 by trac") [3 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.