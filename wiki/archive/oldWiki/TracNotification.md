> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Email Notification of Ticket Changes

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

Trac supports notification of ticket changes via email.

Email notification is useful to keep users up-to-date on tickets/issues of interest, and also provides a convenient way to post all ticket changes to a dedicated mailing list. For example, this is how the [​Trac-tickets](http://lists.edgewall.com/archive/trac-tickets/) mailing list is set up.

Disabled by default, notification can be activated and configured in [trac.ini](https://trac.streamboard.tv/oscam/wiki/TracIni).

## Receiving Notification Mails

When reporting a new ticket or adding a comment, enter a valid email address or your Trac username in the *reporter*, *assigned to/owner* or *cc* field. Trac may send you an email when changes are made to the ticket, depending on how your notification preferences are configured.

Permission groups can also be entered in the CC field, to notify all members of the group.

### How to use your username to receive notification mails

To receive notification mails, you can either enter a full email address or your Trac username. To get notified with a simple username or login, you need to specify a valid email address in the *Preferences* page.

Alternatively, a default domain name (**`smtp_default_domain`**) can be set in the [TracIni](https://trac.streamboard.tv/oscam/wiki/TracIni) file, see [Configuration Options](https://trac.streamboard.tv/oscam/wiki/TracNotification#ConfigurationOptions) below. In this case, the default domain will be appended to the username, which can be useful for an "Intranet" kind of installation.

When using apache and mod\_kerb for authentication against Kerberos / Active Directory, usernames take the form (**`username@EXAMPLE.LOCAL`**). To avoid this being interpreted as an email address, add the Kerberos domain to (**`ignore_domains`**).

### Ticket attachment notifications

Since 1.0.3 Trac will send notifications when a ticket attachment is added or deleted. Usually attachment notifications will be enabled in an environment by default. To disable the attachment notifications for an environment the `TicketAttachmentNotifier` component must be disabled:

```
[components]
trac.ticket.notification.TicketAttachmentNotifier = disabled
```

## Configuring SMTP Notification

**Important:** For [TracNotification](https://trac.streamboard.tv/oscam/wiki/TracNotification) to work correctly, the `[trac] base_url` option must be set in [trac.ini](https://trac.streamboard.tv/oscam/wiki/TracIni).

### Configuration Options

These are the available options for the `[notification]` section in trac.ini:

### `[notification]`

<table class="wiki"><tbody><tr class="even" id="notification-admit_domains-option"><td><a class="tracini-option" href="#notification-admit_domains-option"><code>admit_domains</code></a></td><td><p>Comma-separated list of domains that should be considered as valid for email addresses (such as localdomain).</p></td><td class="nodefault">(no default)</td></tr><tr class="odd" id="notification-ambiguous_char_width-option"><td><a class="tracini-option" href="#notification-ambiguous_char_width-option"><code>ambiguous_char_width</code></a></td><td><p>Width of ambiguous characters that should be used in the table of the notification mail.</p><p>If <code>single</code>, the same width as characters in US-ASCII. This is expected by most users. If <code>double</code>, twice the width of US-ASCII characters. This is expected by CJK users.</p></td><td class="default"><code>single</code></td></tr><tr class="even" id="notification-batch_subject_template-option"><td><a class="tracini-option" href="#notification-batch_subject_template-option"><code>batch_subject_template</code></a></td><td><p>Like <code>ticket_subject_template</code> but for batch modifications. (<em>since 1.0</em>)</p></td><td class="default"><code>${prefix} Batch modify: ${tickets_descr}</code></td></tr><tr class="odd" id="notification-default_format.email-option"><td><a class="tracini-option" href="#notification-default_format.email-option"><code>default_format.email</code></a></td><td><p>Default format to distribute email notifications.</p></td><td class="default"><code>text/plain</code></td></tr><tr class="even" id="notification-email_address_resolvers-option"><td><a class="tracini-option" href="#notification-email_address_resolvers-option"><code>email_address_resolvers</code></a></td><td><p>Comma separated list of email resolver components in the order they will be called. If an email address is resolved, the remaining resolvers will not be called.</p></td><td class="default"><code>SessionEmailResolver</code></td></tr><tr class="odd" id="notification-email_sender-option"><td><a class="tracini-option" href="#notification-email_sender-option"><code>email_sender</code></a></td><td><p>Name of the component implementing <code>IEmailSender</code>.</p><p>This component is used by the notification system to send emails. Trac currently provides <code>SmtpEmailSender</code> for connecting to an SMTP server, and <code>SendmailEmailSender</code> for running a <code>sendmail</code>-compatible executable.</p></td><td class="default"><code>SmtpEmailSender</code></td></tr><tr class="even" id="notification-ignore_domains-option"><td><a class="tracini-option" href="#notification-ignore_domains-option"><code>ignore_domains</code></a></td><td><p>Comma-separated list of domains that should not be considered part of email addresses (for usernames with Kerberos domains).</p></td><td class="nodefault">(no default)</td></tr><tr class="odd" id="notification-message_id_hash-option"><td><a class="tracini-option" href="#notification-message_id_hash-option"><code>message_id_hash</code></a></td><td><p>Hash algorithm to create unique Message-ID header. <em>(since 1.0.13)</em></p></td><td class="default"><code>md5</code></td></tr><tr class="even" id="notification-mime_encoding-option"><td><a class="tracini-option" href="#notification-mime_encoding-option"><code>mime_encoding</code></a></td><td><p>Specifies the MIME encoding scheme for emails.</p><p>Supported values are: <code>none</code>, the default value which uses 7-bit encoding if the text is plain ASCII or 8-bit otherwise. <code>base64</code>, which works with any kind of content but may cause some issues with touchy anti-spam/anti-virus engine. <code>qp</code> or <code>quoted-printable</code>, which works best for european languages (more compact than base64) if 8-bit encoding cannot be used.</p></td><td class="default"><code>none</code></td></tr><tr class="odd" id="notification-sendmail_path-option"><td><a class="tracini-option" href="#notification-sendmail_path-option"><code>sendmail_path</code></a></td><td><p>Path to the sendmail executable.</p><p>The sendmail program must accept the <code>-i</code> and <code>-f</code> options.</p></td><td class="default"><code>sendmail</code></td></tr><tr class="even" id="notification-smtp_always_bcc-option"><td><a class="tracini-option" href="#notification-smtp_always_bcc-option"><code>smtp_always_bcc</code></a></td><td><p>Comma-separated list of email addresses to always send notifications to. Addresses are not public (Bcc:).</p></td><td class="nodefault">(no default)</td></tr><tr class="odd" id="notification-smtp_always_cc-option"><td><a class="tracini-option" href="#notification-smtp_always_cc-option"><code>smtp_always_cc</code></a></td><td><p>Comma-separated list of email addresses to always send notifications to. Addresses can be seen by all recipients (Cc:).</p></td><td class="nodefault">(no default)</td></tr><tr class="even" id="notification-smtp_default_domain-option"><td><a class="tracini-option" href="#notification-smtp_default_domain-option"><code>smtp_default_domain</code></a></td><td><p>Default host/domain to append to addresses that do not specify one. Fully qualified addresses are not modified. The default domain is appended to all username/login for which an email address cannot be found in the user settings.</p></td><td class="nodefault">(no default)</td></tr><tr class="odd" id="notification-smtp_enabled-option"><td><a class="tracini-option" href="#notification-smtp_enabled-option"><code>smtp_enabled</code></a></td><td><p>Enable email notification.</p></td><td class="default"><code>disabled</code></td></tr><tr class="even" id="notification-smtp_from-option"><td><a class="tracini-option" href="#notification-smtp_from-option"><code>smtp_from</code></a></td><td><p>Sender address to use in notification emails.</p><p>At least one of <code>smtp_from</code> and <code>smtp_replyto</code> must be set, otherwise Trac refuses to send notification mails.</p></td><td class="default"><code>trac@localhost</code></td></tr><tr class="odd" id="notification-smtp_from_author-option"><td><a class="tracini-option" href="#notification-smtp_from_author-option"><code>smtp_from_author</code></a></td><td><p>Use the author of the change as the sender in notification emails (e.g. reporter of a new ticket, author of a comment). If the author hasn't set an email address, <code>smtp_from</code> and <code>smtp_from_name</code> are used instead. (<em>since 1.0</em>)</p></td><td class="default"><code>disabled</code></td></tr><tr class="even" id="notification-smtp_from_name-option"><td><a class="tracini-option" href="#notification-smtp_from_name-option"><code>smtp_from_name</code></a></td><td><p>Sender name to use in notification emails.</p></td><td class="nodefault">(no default)</td></tr><tr class="odd" id="notification-smtp_password-option"><td><a class="tracini-option" href="#notification-smtp_password-option"><code>smtp_password</code></a></td><td><p>Password for authenticating with SMTP server.</p></td><td class="nodefault">(no default)</td></tr><tr class="even" id="notification-smtp_port-option"><td><a class="tracini-option" href="#notification-smtp_port-option"><code>smtp_port</code></a></td><td><p>SMTP server port to use for email notification.</p></td><td class="default"><code>25</code></td></tr><tr class="odd" id="notification-smtp_replyto-option"><td><a class="tracini-option" href="#notification-smtp_replyto-option"><code>smtp_replyto</code></a></td><td><p>Reply-To address to use in notification emails.</p><p>At least one of <code>smtp_from</code> and <code>smtp_replyto</code> must be set, otherwise Trac refuses to send notification mails.</p></td><td class="default"><code>trac@localhost</code></td></tr><tr class="even" id="notification-smtp_server-option"><td><a class="tracini-option" href="#notification-smtp_server-option"><code>smtp_server</code></a></td><td><p>SMTP server hostname to use for email notifications.</p></td><td class="default"><code>localhost</code></td></tr><tr class="odd" id="notification-smtp_subject_prefix-option"><td><a class="tracini-option" href="#notification-smtp_subject_prefix-option"><code>smtp_subject_prefix</code></a></td><td><p>Text to prepend to subject line of notification emails.</p><p>If the setting is not defined, then <code>[$project_name]</code> is used as the prefix. If no prefix is desired, then specifying an empty option will disable it.</p></td><td class="default"><code>__default__</code></td></tr><tr class="even" id="notification-smtp_user-option"><td><a class="tracini-option" href="#notification-smtp_user-option"><code>smtp_user</code></a></td><td><p>Username for authenticating with SMTP server.</p></td><td class="nodefault">(no default)</td></tr><tr class="odd" id="notification-ticket_subject_template-option"><td><a class="tracini-option" href="#notification-ticket_subject_template-option"><code>ticket_subject_template</code></a></td><td><p>A Jinja2 text template snippet used to get the notification subject.</p><p>The template variables are documented on the <a class="wiki" href="https://trac.streamboard.tv/oscam/wiki/TracNotification#Customizingthee-mailsubject">TracNotification</a> page.</p></td><td class="default"><code>${prefix} #${ticket.id}: ${summary}</code></td></tr><tr class="even" id="notification-use_public_cc-option"><td><a class="tracini-option" href="#notification-use_public_cc-option"><code>use_public_cc</code></a></td><td><p>Addresses in the To and Cc fields are visible to all recipients.</p><p>If this option is disabled, recipients are put in the Bcc list.</p></td><td class="default"><code>disabled</code></td></tr><tr class="odd" id="notification-use_short_addr-option"><td><a class="tracini-option" href="#notification-use_short_addr-option"><code>use_short_addr</code></a></td><td><p>Permit email address without a host/domain (i.e. username only).</p><p>The SMTP server should accept those addresses, and either append a FQDN or use local delivery. See also <code>smtp_default_domain</code>. Do not use this option with a public SMTP server.</p></td><td class="default"><code>disabled</code></td></tr><tr class="even" id="notification-use_tls-option"><td><a class="tracini-option" href="#notification-use_tls-option"><code>use_tls</code></a></td><td><p>Use SSL/TLS to send notifications over SMTP.</p></td><td class="default"><code>disabled</code></td></tr></tbody></table>

### Example Configuration (SMTP)

```
[notification]
smtp_enabled = true
smtp_server = mail.example.com
smtp_from = notifier@example.com
smtp_replyto = myproj@projects.example.com
smtp_always_cc = ticketmaster@example.com, theboss+myproj@example.com
```

### Example Configuration (`sendmail`)

```
[notification]
smtp_enabled = true
email_sender = SendmailEmailSender
sendmail_path = /usr/sbin/sendmail
smtp_from = notifier@example.com
smtp_replyto = myproj@projects.example.com
smtp_always_cc = ticketmaster@example.com, theboss+myproj@example.com
```

### Subscriber Configuration

The default subscriptions are configured in the `[notification-subscriber]` section in trac.ini:

### `[notification-subscriber]`

The notifications subscriptions are controlled by plugins. All `INotificationSubscriber` components are in charge. These components may allow to be configured via this section in the `trac.ini` file.

See [TracNotification](https://trac.streamboard.tv/oscam/wiki/TracNotification) for more details.

Available subscribers:

| Subscriber | Description |
| --- | --- |
| `AlwaysEmailSubscriber` |  |
| `CarbonCopySubscriber` | Ticket that I'm listed in the CC field is modified |
| `NewTicketSubscriber` | Any ticket is created |
| `TicketOwnerSubscriber` | Ticket that I own is created or modified |
| `TicketPreviousUpdatersSubscriber` | Ticket that I previously updated is modified |
| `TicketReporterSubscriber` | Ticket that I reported is modified |
| `TicketUpdaterSubscriber` | I update a ticket |

Each user can override these defaults in his *Notifications* preferences.

For example to unsubscribe from notifications for one's own changes and comments, the rule "Never notify: I update a ticket" should be added above other subscription rules.

### Customizing the e-mail subject

The e-mail subject can be customized with the `ticket_subject_template` option, which contains a [​text template](http://genshi.edgewall.org/wiki/Documentation/text-templates.html) snippet. The default value is:

```
${prefix} #${ticket.id}: ${summary}
```

The following variables are available in the template:

+   `changes`: The ticket changes (prepared by [​Ticket.get\_change](https://trac.edgewall.org/intertrac/source%3A/branches/1.4-stable/trac/ticket/model.py "source:/branches/1.4-stable/trac/ticket/model.py in The Trac Project")).
+   `env`: The project environment (see [​env.py](https://trac.edgewall.org/intertrac/source%3A/branches/1.4-stable/trac/env.py "source:/branches/1.4-stable/trac/env.py in The Trac Project")).
+   `prefix`: The prefix defined in `smtp_subject_prefix`.
+   `summary`: The ticket summary, with the old value if the summary was edited.
+   `ticket`: The ticket model object (see [​model.py](https://trac.edgewall.org/intertrac/source%3A/branches/1.4-stable/trac/ticket/model.py "source:/branches/1.4-stable/trac/ticket/model.py in The Trac Project")). Individual ticket fields can be addressed by appending the field name separated by a dot, eg `$ticket.milestone`.

### Customizing the e-mail content

The notification e-mail content is generated based on `ticket_notify_email.txt` in `trac/ticket/templates`. You can add your own version of this template by adding a `ticket_notify_email.txt` to the templates directory of your environment. The default looks like this:

```
$ticket_body_hdr
$ticket_props
{% choose ticket.new %}\
{%   when True %}\
$ticket.description
{%   end %}\
{%   otherwise %}\
{%     if changes_body %}\
${_('Changes (by %(author)s):', author=change.author)}

$changes_body
{%     end %}\
{%     if changes_descr %}\
{%       if not changes_body and not change.comment and change.author %}\
${_('Description changed by %(author)s:', author=change.author)}
{%       end %}\
$changes_descr
--
{%     end %}\
{%     if change.comment %}\

${changes_body and _('Comment:') or _('Comment (by %(author)s):', author=change.author)}

$change.comment
{%     end %}\
{%   end %}\
{% end %}\

--
${_('Ticket URL: <%(link)s>', link=ticket.link)}
$project.name <${project.url or abs_href()}>
$project.descr
```

## Sample Email

```
#42: testing
---------------------------+------------------------------------------------
       Id:  42             |      Status:  assigned
Component:  report system  |    Modified:  Fri Apr  9 00:04:31 2004
 Severity:  major          |   Milestone:  0.9
 Priority:  lowest         |     Version:  0.6
    Owner:  anonymous      |    Reporter:  jonas@example.com
---------------------------+------------------------------------------------
Changes:
  * component:  changeset view => search system
  * priority:  low => highest
  * owner:  jonas => anonymous
  * cc:  daniel@example.com =>
         daniel@example.com, jonas@example.com
  * status:  new => assigned

Comment:
I'm interested too!

--
Ticket URL: <http://example.com/trac/ticket/42>
My Project <http://myproj.example.com/>
```

## Customizing e-mail content for MS Outlook

MS Outlook normally presents plain text e-mails with a variable-width font, and as a result the ticket properties table will most certainly look like a mess in MS Outlook. This can be fixed with some customization of the [e-mail template](https://trac.streamboard.tv/oscam/wiki/TracNotification#Customizingthee-mailcontent).

Replace the following second row in the template:

```
$ticket_props
```

with this (requires Python 2.6 or later):

```
--------------------------------------------------------------------------
{% with
   pv = [(a[0].strip(), a[1].strip()) for a in [b.split(':') for b in
         [c.strip() for c in
          ticket_props.replace('|', '\n').splitlines()[1:-1]] if ':' in b]];
   sel = ['Reporter', 'Owner', 'Type', 'Status', 'Priority', 'Milestone',
          'Component', 'Severity', 'Resolution', 'Keywords'] %}\
${'\n'.join('%s\t%s' % (format(p[0]+':', ' <12'), p[1]) for p in pv if p[0] in sel)}
{% end %}\
--------------------------------------------------------------------------
```

The table of ticket properties is replaced with a list of a selection of the properties. A tab character separates the name and value in such a way that most people should find this more pleasing than the default table when using MS Outlook.

#42: testing
\--------------------------------------------------------------------------

<table cellpadding="0"><tbody><tr><td>Reporter:</td><td>jonas@example.com</td></tr><tr><td>Owner:</td><td>anonymous</td></tr><tr><td>Type:</td><td>defect</td></tr><tr><td>Status:</td><td>assigned</td></tr><tr><td>Priority:</td><td>lowest</td></tr><tr><td>Milestone:</td><td>0.9</td></tr><tr><td>Component:</td><td>report system</td></tr><tr><td>Severity:</td><td>major</td></tr><tr><td>Resolution:</td><td></td></tr><tr><td>Keywords:</td><td></td></tr></tbody></table>

\--------------------------------------------------------------------------
Changes:

  \* component:  changeset view => search system
  \* priority:  low => highest
  \* owner:  jonas => anonymous
  \* cc:  daniel@example.com =>
          daniel@example.com, jonas@example.com
  \* status:  new => assigned

Comment:
I'm interested too!

\--
Ticket URL: <http://example.com/trac/ticket/42>
My Project <http://myproj.example.com/>

**Important**: Only those ticket fields that are listed in `sel` are part of the HTML mail. If you have defined custom ticket fields which are to be part of the mail, then they have to be added to `sel`. Example:

```
   sel = ['Reporter', ..., 'Keywords', 'Custom1', 'Custom2']
```

However, the solution is still a workaround to an automatically HTML-formatted e-mail.

## Using GMail as the SMTP relay host

Use the following configuration snippet:

```
[notification]
smtp_enabled = true
use_tls = true
mime_encoding = base64
smtp_server = smtp.gmail.com
smtp_port = 587
smtp_user = user
smtp_password = password
```

where *user* and *password* match an existing GMail account, ie the ones you use to log in on [​http://gmail.com](http://gmail.com/).

Alternatively, you can use `smtp_port = 25`.
You should not use `smtp_port = 465`. Doing so may deadlock your ticket submission. Port 465 is reserved for the SMTPS protocol, which is not supported by Trac. See [​#7107](https://trac.edgewall.org/intertrac/comment%3A2%3Aticket%3A7107 "comment:2:ticket:7107 in The Trac Project") for details.

## Troubleshooting

If you cannot get the notification working, first make sure the log is activated and have a look at the log to find if an error message has been logged. See [TracLogging](https://trac.streamboard.tv/oscam/wiki/TracLogging) for help about the log feature.

Notification errors are not reported through the web interface, so the user who submits a change or a new ticket never gets notified about a notification failure. The Trac administrator needs to look at the log to find the error trace.

### *Permission denied* error

Typical error message:

```
  ...
  File ".../smtplib.py", line 303, in connect
    raise socket.error, msg
  error: (13, 'Permission denied')
```

This error usually comes from a security settings on the server: many Linux distributions do not allow the web server (Apache, ...) to post email messages to the local SMTP server.

Many users get confused when their manual attempts to contact the SMTP server succeed:

```
telnet localhost 25
```

This is because a regular user may connect to the SMTP server, but the web server cannot:

```
sudo -u www-data telnet localhost 25
```

In such a case, you need to configure your server so that the web server is authorized to post to the SMTP server. The actual settings depend on your Linux distribution and current security policy. You may find help in the Trac [​MailingList](https://trac.edgewall.org/intertrac/MailingList "MailingList in The Trac Project") archive.

Relevant ML threads:

+   SELinux: [​http://article.gmane.org/gmane.comp.version-control.subversion.trac.general/7518](http://article.gmane.org/gmane.comp.version-control.subversion.trac.general/7518)

For SELinux in Fedora 10:

```
$ setsebool -P httpd_can_sendmail 1
```

### *Suspected spam* error

Some SMTP servers may reject the notification email sent by Trac.

The default Trac configuration uses Base64 encoding to send emails to the recipients. The whole body of the email is encoded, which sometimes trigger *false positive* spam detection on sensitive email servers. In such an event, change the default encoding to "quoted-printable" using the `mime_encoding` option.

Quoted printable encoding works better with languages that use one of the Latin charsets. For Asian charsets, stick with the Base64 encoding.

* * *

See also: [TracTickets](https://trac.streamboard.tv/oscam/wiki/TracTickets), [TracIni](https://trac.streamboard.tv/oscam/wiki/TracIni), [TracGuide](https://trac.streamboard.tv/oscam/wiki/TracGuide), [​TracDev/NotificationApi](https://trac.edgewall.org/intertrac/TracDev/NotificationApi "TracDev/NotificationApi in The Trac Project")

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracNotification?action=diff&version=8 "Version 8 by trac") [2 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.