> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Importing ticket data

#### Contents

1.  [TicketImportPlugin](#TicketImportPlugin)
2.  [ExportImportXlsPlugin](#ExportImportXlsPlugin)
3.  [Bugzilla](#Bugzilla)
4.  [Jira](#Jira)
5.  [Mantis](#Mantis)
6.  [PlanetForge](#PlanetForge)
7.  [Scarab](#Scarab)
8.  [Sourceforge](#Sourceforge)
9.  [Other](#Other)
    1.  [Comma delimited file - CSV](#Commadelimitedfile-CSV)

To migrate issue tickets from other issue-tracking systems into Trac or perform housekeeping actions on tickets or simply synchronize different databases, there are some tools, plugins and scripts available.

## TicketImportPlugin

[​TicketImportPlugin](https:https://trac-hacks.org/wiki/TicketImportPlugin): a plugin that lets you import or update into Trac a series of tickets from a **CSV file** or (if the [​xlrd library](https:https://pypi.python.org/pypi/xlrd) is installed) from an **Excel spreadsheet**.

## ExportImportXlsPlugin

[​ExportImportXlsPlugin](https:https://trac-hacks.org/wiki/ExportImportXlsPlugin): a plugin that adds an admin panel for exporting and importing tickets via **XLS file**. Requires the python packages xlwt/rxld.

## Bugzilla

[​BugzillaIssueTrackingPlugin](https:https://trac-hacks.org/wiki/BugzillaIssueTrackingPlugin): a plugin that integrates Bugzilla issue data into Trac keeping [TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks). Ticket data can be imported from Bugzilla using the [​bugzilla2trac.py](https:https://trac.edgewall.org/intertrac/browser%3Abranches/1.4-stable/contrib/bugzilla2trac.py "browser:branches/1.4-stable/contrib/bugzilla2trac.py in The Trac Project") script, available in the `contrib/` directory of the Trac distribution.

```
$ bugzilla2trac.py
bugzilla2trac - Imports a bug database from Bugzilla into Trac.

Usage: bugzilla2trac.py [options]

Available Options:
  --db <MySQL dbname>              - Bugzilla's database
  --tracenv /path/to/trac/env      - full path to Trac db environment
  -h | --host <MySQL hostname>     - Bugzilla's DNS host name
  -u | --user <MySQL username>     - effective Bugzilla's database user
  -p | --passwd <MySQL password>   - Bugzilla's user password
  -c | --clean                     - remove current Trac tickets before importing
  --help | help                    - this help info

Additional configuration options can be defined directly in the script.
```

Currently, the following data is imported from Bugzilla:

+   bugs
+   bug activity (field changes)
+   bug attachments
+   user names and passwords (put into an htpasswd file)

The script provides a number of features to ease the conversion, such as:

+   PRODUCT\_KEYWORDS: Trac has no concept of products, so the script provides the ability to attach a ticket keyword instead.
+   IGNORE\_COMMENTS: Don't import Bugzilla comments that match a certain regexp.
+   STATUS\_KEYWORDS: Attach ticket keywords for the Bugzilla statuses not available in Trac. By default, the `VERIFIED` and `RELEASED` Bugzilla statuses are translated into Trac keywords.

For more details on the available options, see the configuration section at the top of the script.

## Jira

[​JiraToTracIntegration](https:https://trac-hacks.org/wiki/JiraToTracIntegration): a plugin that provides tools to import Atlassian Jira backup files into Trac. The plugin consists of a Python 3.1 commandline tool that:

+   Parses the Jira backup XML file.
+   Sends the imported Jira data and attachments to Trac using the [​XmlRpcPlugin](https:https://trac-hacks.org/wiki/XmlRpcPlugin).
+   Generates a htpasswd file containing the imported Jira users and their SHA-512 base64 encoded passwords.

## Mantis

[​MantisImportScript](https:https://trac-hacks.org/wiki/MantisImportScript): a script to import the following type of data from Mantis into Trac:

+   bugs
+   bug comments
+   bug activity (field changes)
+   attachments (as long as the files live in the mantis database, not on the filesystem).

## PlanetForge

[​PlanetForgeImportExportPlugin](https:https://trac-hacks.org/wiki/PlanetForgeImportExportPlugin): this plugin exports Trac data (wiki, tickets, compoments, permissions, repositories, etc.) using the open format designed by the [​COCLICO](https:https://gforge.inria.fr/projects/coclico/) project. It extends the webadmin panel and the 'trac admin ...' command. Has no 'import' feature.

## Scarab

[​ScarabToTracScript](https:https://trac-hacks.org/wiki/ScarabToTracScript): a script that migrates Scarab issues to Trac tickets. Requires [​XmlRpcPlugin](https:https://trac-hacks.org/wiki/XmlRpcPlugin).

## Sourceforge

[​SfnToTracScript](https:https://trac-hacks.org/wiki/SfnToTracScript): importer of SourceForge's new backup file (originated from [​#Trac3521](https:https://trac.edgewall.org/intertrac/ticket%3A3521 "ticket:3521 in The Trac Project")). Also, ticket data can be imported from Sourceforge using the [​sourceforge2trac.py](https:https://trac.edgewall.org/intertrac/browser%3Abranches/1.4-stable/contrib/sourceforge2trac.py "browser:branches/1.4-stable/contrib/sourceforge2trac.py in The Trac Project") script, available in the contrib/ directory of the Trac distribution.

## Other

Since Trac uses a SQL database to store the data, you can also custom-import from other systems by examining the database tables. Just go into [​sqlite](https:https://www.sqlite.org/sqlite.html) command line to look at the tables and import them from your application.

### Comma delimited file - CSV

See [​csv2trac.2.py](https:https://trac.edgewall.org/intertrac/attachment%3Acsv2trac.2.py%3Awiki%3ATracSynchronize "attachment:csv2trac.2.py:wiki:TracSynchronize in The Trac Project") for details. This approach is particularly useful if you need to enter a large number of tickets by hand. Note that the ticket type type field, (task etc.) is also needed for this script to work with more recent Trac releases.

Comments on script: The script has an error on line 168: 'Ticket' needs to be 'ticket'. Also, the listed values for severity and priority are swapped.

* * *

See also:

+   to import/export wiki pages: [TracAdmin](https://trac.streamboard.tv/oscam/wiki/TracAdmin),
+   to export tickets: [TracTickets](https://trac.streamboard.tv/oscam/wiki/TracTickets), [TracQuery](https://trac.streamboard.tv/oscam/wiki/TracQuery)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracImport?action=diff&version=8 "Version 8 by trac") [2 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.