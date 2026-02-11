> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Trac Installation Guide for 1.3

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

Trac is written in the Python programming language and needs a database, [​SQLite](https://sqlite.org/), [​PostgreSQL](https://www.postgresql.org/), or [​MySQL](https://mysql.com/). For HTML rendering, Trac uses the [​Jinja2](http://jinja.pocoo.org/) templating system, though Genshi templates will still be supported until at least Trac 1.5.1.

Trac can also be localized, and there is probably a translation available in your language. If you want to use the Trac interface in other languages, then make sure you have installed the optional package [Babel](https://trac.streamboard.tv/oscam/wiki/TracInstall#OtherPythonPackages). Pay attention to the extra steps for localization support in the [Installing Trac](https://trac.streamboard.tv/oscam/wiki/TracInstall#InstallingTrac) section below. Lacking Babel, you will only get the default English version.

If you're interested in contributing new translations for other languages or enhancing the existing translations, please have a look at [​TracL10N](https://trac.edgewall.org/intertrac/wiki%3ATracL10N "wiki:TracL10N in The Trac Project").

What follows are generic instructions for installing and setting up Trac. While you may find instructions for installing Trac on specific systems at [​TracInstallPlatforms](https://trac.edgewall.org/intertrac/TracInstallPlatforms "TracInstallPlatforms in The Trac Project"), please **first read through these general instructions** to get a good understanding of the tasks involved.

#### Installation Steps

1.  [Dependencies](#Dependencies)
    1.  [Mandatory Dependencies](#MandatoryDependencies)
    2.  [Optional Dependencies](#OptionalDependencies)
2.  [Installing Trac](#InstallingTrac)
    1.  [Using `pip`](#Usingpip)
    2.  [Using installer](#Usinginstaller)
    3.  [Using package manager](#Usingpackagemanager)
3.  [Creating a Project Environment](#CreatingaProjectEnvironment)
4.  [Deploying Trac](#DeployingTrac)
    1.  [Running the Standalone Server](#RunningtheStandaloneServer)
    2.  [Running Trac on a Web Server](#RunningTraconaWebServer)
5.  [Configuring Authentication](#ConfiguringAuthentication)
6.  [Granting admin rights to the admin user](#Grantingadminrightstotheadminuser)
7.  [Configuring Trac](#ConfiguringTrac)
8.  [Using Trac](#UsingTrac)

## Dependencies

### Mandatory Dependencies

To install Trac, the following software packages must be installed:

+   [​Python](https://www.python.org/), version >= 2.7 and < 3.0 (note that we dropped the support for Python 2.6 in this release)
+   [​setuptools](https://pypi.org/project/setuptools), version >= 0.6
+   [​Jinja2](https://pypi.org/project/Jinja2), version >= 2.9.3

**Setuptools Warning:** If the version of your setuptools is in the range 5.4 through 5.6, the environment variable `PKG_RESOURCES_CACHE_ZIP_MANIFESTS` must be set in order to avoid significant performance degradation. More information may be found in [Deploying Trac](https://trac.streamboard.tv/oscam/wiki/TracInstall#DeployingTrac).

You also need a database system and the corresponding python bindings. The database can be either SQLite, PostgreSQL or MySQL.

#### For the SQLite database

You already have the SQLite database bindings bundled with the standard distribution of Python (the `sqlite3` module).

Optionally, you may install a newer version of [​pysqlite](https://pypi.org/project/pysqlite) than the one provided by the Python distribution. See [​PySqlite](https://trac.edgewall.org/intertrac/PySqlite%23ThePysqlite2bindings "PySqlite#ThePysqlite2bindings in The Trac Project") for details.

#### For the PostgreSQL database

You need to install the database and its Python bindings:

+   [​PostgreSQL](https://www.postgresql.org/), version 9.1 or later
+   [​psycopg2](https://pypi.org/project/psycopg2), version 2.0 or later

See [​DatabaseBackend](https://trac.edgewall.org/intertrac/DatabaseBackend%23Postgresql "DatabaseBackend#Postgresql in The Trac Project") for details.

#### For the MySQL database

Trac works well with MySQL, provided you use the following:

+   [​MySQL](https://mysql.com/), version 5.0 or later
+   [​PyMySQL](https://pypi.org/project/PyMySQL)

Given the caveats and known issues surrounding MySQL, read carefully the [​MySqlDb](https://trac.edgewall.org/intertrac/MySqlDb "MySqlDb in The Trac Project") page before creating the database.

### Optional Dependencies

#### Subversion

[​Subversion](https://subversion.apache.org/), 1.6.x or later and the ***corresponding*** Python bindings.

There are [​pre-compiled SWIG bindings](https://subversion.apache.org/packages.html) available for various platforms. See [​getting Subversion](https://trac.edgewall.org/intertrac/TracSubversion%23GettingSubversion "TracSubversion#GettingSubversion in The Trac Project") for more information.

**Note:**

+   Trac **doesn't** use [​PySVN](http://pysvn.tigris.org/), nor does it work yet with the newer `ctype`\-style bindings.
+   If using Subversion, Trac must be installed on the **same machine**. Remote repositories are [​not supported](https://trac.edgewall.org/intertrac/ticket%3A493 "ticket:493 in The Trac Project").

For troubleshooting information, see the [​TracSubversion](https://trac.edgewall.org/intertrac/TracSubversion%23Troubleshooting "TracSubversion#Troubleshooting in The Trac Project") page.

#### Git

[​Git](https://git-scm.com/) 1.5.6 or later is supported. More information is available on the [​TracGit](https://trac.edgewall.org/intertrac/TracGit "TracGit in The Trac Project") page.

#### Other Version Control Systems

Support for other version control systems is provided via third-party plugins. See [​PluginList#VersionControlSystems](https://trac.edgewall.org/intertrac/PluginList%23VersionControlSystems "PluginList#VersionControlSystems in The Trac Project") and [​VersionControlSystem](https://trac.edgewall.org/intertrac/VersionControlSystem "VersionControlSystem in The Trac Project").

#### Web Server

A web server is optional because Trac is shipped with a server included, see the [Running the Standalone Server](https://trac.streamboard.tv/oscam/wiki/TracInstall#RunningtheStandaloneServer) section below.

Alternatively you can configure Trac to run in any of the following environments:

+   [​Apache](https://httpd.apache.org/) with
    +   [​mod\_wsgi](https://github.com/GrahamDumpleton/mod_wsgi), see [TracModWSGI](https://trac.streamboard.tv/oscam/wiki/TracModWSGI) and [​ModWSGI IntegrationWithTrac](https://code.google.com/p/modwsgi/wiki/IntegrationWithTrac).
    +   [​mod\_python 3.5.0](http://modpython.org/), see [TracModPython](https://trac.streamboard.tv/oscam/wiki/TracModPython)
+   a [​FastCGI](https://fastcgi-archives.github.io/)\-capable web server (see [TracFastCgi](https://trac.streamboard.tv/oscam/wiki/TracFastCgi))
+   an [​AJP](https://tomcat.apache.org/connectors-doc/ajp/ajpv13a.html)\-capable web server (see [​TracOnWindowsIisAjp](https://trac.edgewall.org/intertrac/TracOnWindowsIisAjp "TracOnWindowsIisAjp in The Trac Project"))
+   Microsoft IIS with FastCGI and a FastCGI-to-WSGI gateway (see [​IIS with FastCGI](https://trac.edgewall.org/intertrac/CookBook/Installation/TracOnWindowsIisWfastcgi "CookBook/Installation/TracOnWindowsIisWfastcgi in The Trac Project"))
+   a CGI-capable web server (see [TracCgi](https://trac.streamboard.tv/oscam/wiki/TracCgi)), **but usage of Trac as a cgi script is highly discouraged**, better use one of the previous options.

#### Other Python Packages

+   [​Babel](http://babel.pocoo.org/), version 0.9.6 or >= 1.3, needed for localization support
+   [​docutils](http://docutils.sourceforge.net/), version >= 0.3.9 for [WikiRestructuredText](https://trac.streamboard.tv/oscam/wiki/WikiRestructuredText).
+   [​Pygments](http://pygments.org/) for [syntax highlighting](https://trac.streamboard.tv/oscam/wiki/TracSyntaxColoring).
+   [​Textile](https://pypi.org/project/textile) for rendering the [​Textile markup language](https://github.com/textile/python-textile).
+   [​pytz](http://pytz.sourceforge.net/) to get a complete list of time zones, otherwise Trac will fall back on a shorter list from an internal time zone implementation.
+   [​passlib](https://pypi.org/project/passlib) on Windows to decode [htpasswd formats](https://trac.streamboard.tv/oscam/wiki/TracStandalone#BasicAuthorization:Usingahtpasswdpasswordfile) other than `SHA-1`.
+   [​pyreadline](https://pypi.org/project/pyreadline) on Windows for trac-admin [command completion](https://trac.streamboard.tv/oscam/wiki/TracAdmin#InteractiveMode).

**Attention**: The available versions of these dependencies are not necessarily interchangeable, so please pay attention to the version numbers. If you are having trouble getting Trac to work, please double-check all the dependencies before asking for help on the [​MailingList](https://trac.edgewall.org/intertrac/MailingList "MailingList in The Trac Project") or [​IrcChannel](https://trac.edgewall.org/intertrac/IrcChannel "IrcChannel in The Trac Project").

Please refer to the documentation of these packages to find out how they are best installed. In addition, most of the [​platform-specific instructions](https://trac.edgewall.org/intertrac/TracInstallPlatforms "TracInstallPlatforms in The Trac Project") also describe the installation of the dependencies. Keep in mind however that the information there *probably concern older versions of Trac than the one you're installing*.

## Installing Trac

The [trac-admin](https://trac.streamboard.tv/oscam/wiki/TracAdmin) command-line tool, used to create and maintain [project environments](https://trac.streamboard.tv/oscam/wiki/TracEnvironment), as well as the [tracd](https://trac.streamboard.tv/oscam/wiki/TracStandalone) standalone server are installed along with Trac. There are several methods for installing Trac.

It is assumed throughout this guide that you have elevated permissions as the `root` user or by prefixing commands with `sudo`. The umask `0002` should be used for a typical installation on a Unix-based platform.

### Using `pip`

`pip` is the modern Python package manager and is included in Python 2.7.9 and later. Use [​get-pip.py](https://bootstrap.pypa.io/get-pip.py) to install `pip` for an earlier version of Python.

```
$ pip install Trac
```

`pip` will automatically resolve the *required* dependencies (Jinja2 and setuptools) and download the latest packages from pypi.org.

You can also install directly from a source package. You can obtain the source in a tar or zip from the [​TracDownload](https://trac.edgewall.org/intertrac/TracDownload "TracDownload in The Trac Project") page. After extracting the archive, change to the directory containing `setup.py` and run:

```
$ pip install .
```

`pip` supports numerous other install mechanisms. It can be passed the URL of an archive or other download location. Here are some examples:

+   Install the latest stable version from a zip archive:

    ```
    $ pip install https://download.edgewall.org/trac/Trac-latest.zip
    ```

+   Install the latest development version from a tar archive:

    ```
    $ pip install https://download.edgewall.org/trac/Trac-latest-dev.tar.gz
    ```

+   Install the unreleased 1.2-stable from subversion:

    ```
    $ pip install svn+https://svn.edgewall.org/repos/trac/branches/1.2-stable
    ```

+   Install the latest development preview (*not recommended for production installs*):

    ```
    $ pip install --find-links=https://trac.edgewall.org/wiki/TracDownload Trac
    ```


The optional dependencies can be installed from PyPI using `pip`:

```
$ pip install babel docutils pygments pytz textile
```

Additionally, you can install several Trac plugins from PyPI (listed [​here](https://pypi.org/search/?c=Framework+%3A%3A+Trac)) using pip. See [TracPlugins](https://trac.streamboard.tv/oscam/wiki/TracPlugins) for more information.

### Using installer

On Windows, Trac can be installed using the exe installers available on the [​TracDownload](https://trac.edgewall.org/intertrac/TracDownload "TracDownload in The Trac Project") page. Installers are available for the 32-bit and 64-bit versions of Python. Make sure to use the installer that matches the architecture of your Python installation.

### Using package manager

Trac may be available in your platform's package repository. However, your package manager may not provide the latest release of Trac.

## Creating a Project Environment

A [Trac environment](https://trac.streamboard.tv/oscam/wiki/TracEnvironment) is the backend where Trac stores information like wiki pages, tickets, reports, settings, etc. An environment is a directory that contains a human-readable [configuration file](https://trac.streamboard.tv/oscam/wiki/TracIni), and other files and directories.

A new environment is created using [trac-admin](https://trac.streamboard.tv/oscam/wiki/TracAdmin):

```
$ trac-admin /path/to/myproject initenv
```

[trac-admin](https://trac.streamboard.tv/oscam/wiki/TracAdmin) will prompt you for the information it needs to create the environment: the name of the project and the [database connection string](https://trac.streamboard.tv/oscam/wiki/TracEnvironment#DatabaseConnectionStrings). If you're not sure what to specify for any of these options, just press `<Enter>` to use the default value.

Using the default database connection string will always work as long as you have SQLite installed. For the other [​database backends](https://trac.edgewall.org/intertrac/DatabaseBackend "DatabaseBackend in The Trac Project") you should plan ahead and already have a database ready to use at this point.

Also note that the values you specify here can be changed later using [TracAdmin](https://trac.streamboard.tv/oscam/wiki/TracAdmin) or directly editing the [conf/trac.ini](https://trac.streamboard.tv/oscam/wiki/TracIni) configuration file.

Finally, make sure the user account under which the web front-end runs will have **write permissions** to the environment directory and all the files inside. This will be the case if you run `trac-admin ... initenv` as this user. If not, you should set the correct user afterwards. For example on Linux, with the web server running as user `apache` and group `apache`, enter:

```
$ chown -R apache:apache /path/to/myproject
```

The actual username and groupname of the apache server may not be exactly `apache`, and are specified in the Apache configuration file by the directives `User` and `Group` (if Apache `httpd` is what you use).

**Warning:** Please only use ASCII-characters for account name and project path, unicode characters are not supported there.

## Deploying Trac

**Setuptools Warning:** If the version of your setuptools is in the range 5.4 through 5.6, the environment variable `PKG_RESOURCES_CACHE_ZIP_MANIFESTS` must be set in order to avoid significant performance degradation.

If running `tracd`, the environment variable can be set system-wide or for just the user that runs the `tracd` process. There are several ways to accomplish this in addition to what is discussed here, and depending on the distribution of your OS.

To be effective system-wide a shell script with the `export` statement may be added to `/etc/profile.d`. To be effective for a user session the `export` statement may be added to `~/.profile`.

```
export PKG_RESOURCES_CACHE_ZIP_MANIFESTS=1
```

Alternatively, the variable can be set in the shell before executing `tracd`:

```
$ PKG_RESOURCES_CACHE_ZIP_MANIFESTS=1 tracd --port 8000 /path/to/myproject
```

If running the Apache web server, Ubuntu/Debian users should add the `export` statement to `/etc/apache2/envvars`. RedHat/CentOS/Fedora should can add the `export` statement to `/etc/sysconfig/httpd`.

### Running the Standalone Server

After having created a Trac environment, you can easily try the web interface by running the standalone server [tracd](https://trac.streamboard.tv/oscam/wiki/TracStandalone):

```
$ tracd --port 8000 /path/to/myproject
```

Then, open a browser and visit `http://localhost:8000/`. You should get a simple listing of all environments that `tracd` knows about. Follow the link to the environment you just created, and you should see Trac in action. If you only plan on managing a single project with Trac you can have the standalone server skip the environment list by starting it like this:

```
$ tracd -s --port 8000 /path/to/myproject
```

### Running Trac on a Web Server

Trac provides various options for connecting to a "real" web server:

+   [FastCGI](https://trac.streamboard.tv/oscam/wiki/TracFastCgi)
+   [Apache with mod\_wsgi](https://trac.streamboard.tv/oscam/wiki/TracModWSGI)
+   [Apache with mod\_python](https://trac.streamboard.tv/oscam/wiki/TracModPython)
+   [CGI](https://trac.streamboard.tv/oscam/wiki/TracCgi) *(should not be used, as the performance is far from optimal)*

Trac also supports [​AJP](https://trac.edgewall.org/intertrac/TracOnWindowsIisAjp "TracOnWindowsIisAjp in The Trac Project") which may be your choice if you want to connect to IIS. Other deployment scenarios are possible: [​nginx](https://trac.edgewall.org/intertrac/TracNginxRecipe "TracNginxRecipe in The Trac Project"), [​uwsgi](https://uwsgi-docs.readthedocs.io/en/latest/#Traconapacheinasub-uri), [​Isapi-wsgi](https://trac.edgewall.org/intertrac/TracOnWindowsIisIsapi "TracOnWindowsIisIsapi in The Trac Project") etc.

#### Generating the Trac cgi-bin directory

Application scripts for CGI, FastCGI and mod-wsgi can be generated using the [trac-admin](https://trac.streamboard.tv/oscam/wiki/TracAdmin) `deploy` command:

```
deploy <directory>

    Extract static resources from Trac and all plugins

```

Grant the web server execution right on scripts in the `cgi-bin` directory.

For example, the following yields a typical directory structure:

```
$ mkdir -p /var/trac
$ trac-admin /var/trac/<project> initenv
$ trac-admin /var/trac/<project> deploy /var/www
$ ls /var/www
cgi-bin htdocs
$ chmod ugo+x /var/www/cgi-bin/*
```

#### Mapping Static Resources

Without additional configuration, Trac will handle requests for static resources such as stylesheets and images. For anything other than a [TracStandalone](https://trac.streamboard.tv/oscam/wiki/TracStandalone) deployment, this is not optimal as the web server can be set up to directly serve the static resources. For CGI setup, this is **highly undesirable** as it causes abysmal performance.

Web servers such as [​Apache](https://httpd.apache.org/) allow you to create *Aliases* to resources, giving them a virtual URL that doesn't necessarily reflect their location on the file system. We can map requests for static resources directly to directories on the file system, to avoid Trac processing the requests.

There are two primary URL paths for static resources: `/chrome/common` and `/chrome/site`. Plugins can add their own resources, usually accessible at the `/chrome/<plugin>` path.

A single `/chrome` alias can used if the static resources are extracted for all plugins. This means that the `deploy` command (discussed in the previous section) must be executed after installing or updating a plugin that provides static resources, or after modifying resources in the `$env/htdocs` directory. This is probably appropriate for most installations but may not be what you want if, for example, you wish to upload plugins through the *Plugins* administration page.

The `deploy` command creates an `htdocs` directory with:

+   `common/` - the static resources of Trac
+   `site/` - a copy of the environment's `htdocs/` directory
+   `shared` - the static resources shared by multiple Trac environments, with a location defined by the `[inherit]` `htdocs_dir` option
+   `<plugin>/` - one directory for each resource directory provided by the plugins enabled for this environment

The example that follows will create a single `/chrome` alias. If that isn't the correct approach for your installation you simply need to create more specific aliases:

```
Alias /trac/chrome/common /path/to/trac/htdocs/common
Alias /trac/chrome/site /path/to/trac/htdocs/site
Alias /trac/chrome/shared /path/to/trac/htdocs/shared
Alias /trac/chrome/<plugin> /path/to/trac/htdocs/<plugin>
```

##### Example: Apache and `ScriptAlias`

Assuming the deployment has been done this way:

```
$ trac-admin /var/trac/<project> deploy /var/www
```

Add the following snippet to Apache configuration, changing paths to match your deployment. The snippet must be placed *before* the `ScriptAlias` or `WSGIScriptAlias` directive, because those directives map all requests to the Trac application:

```
Alias /trac/chrome /path/to/trac/htdocs

<Directory "/path/to/www/trac/htdocs">
  # For Apache 2.2
  <IfModule !mod_authz_core.c>
    Order allow,deny
    Allow from all
  </IfModule>
  # For Apache 2.4
  <IfModule mod_authz_core.c>
    Require all granted
  </IfModule>
</Directory>
```

If using mod\_python, add this too, otherwise the alias will be ignored:

```
<Location "/trac/chrome/common">
  SetHandler None
</Location>
```

Alternatively, if you wish to serve static resources directly from your project's `htdocs` directory rather than the location to which the files are extracted with the `deploy` command, you can configure Apache to serve those resources. Again, put this *before* the `ScriptAlias` or `WSGIScriptAlias` for the .\*cgi scripts, and adjust names and locations to match your installation:

```
Alias /trac/chrome/site /path/to/projectenv/htdocs

<Directory "/path/to/projectenv/htdocs">
  # For Apache 2.2
  <IfModule !mod_authz_core.c>
    Order allow,deny
    Allow from all
  </IfModule>
  # For Apache 2.4
  <IfModule mod_authz_core.c>
    Require all granted
  </IfModule>
</Directory>
```

Another alternative to aliasing `/trac/chrome/common` is having Trac generate direct links for those static resources (and only those), using the [trac.htdocs\_location](https://trac.streamboard.tv/oscam/wiki/TracIni#trac-htdocs_location-option) configuration setting:

```
[trac]
htdocs_location = http://static.example.org/trac-common/
```

Note that this makes it easy to have a dedicated domain serve those static resources, preferentially cookie-less.

Of course, you still need to make the Trac `htdocs/common` directory available through the web server at the specified URL, for example by copying (or linking) the directory into the document root of the web server:

```
$ ln -s /path/to/trac/htdocs/common /var/www/static.example.org/trac-common
```

#### Setting up the Plugin Cache

Some Python plugins need to be extracted to a cache directory. By default the cache resides in the home directory of the current user. When running Trac on a Web Server as a dedicated user (which is highly recommended) who has no home directory, this might prevent the plugins from starting. To override the cache location you can set the `PYTHON_EGG_CACHE` environment variable. Refer to your server documentation for detailed instructions on how to set environment variables.

## Configuring Authentication

Trac uses HTTP authentication. You'll need to configure your webserver to request authentication when the `.../login` URL is hit (the virtual path of the "login" button). Trac will automatically pick the `REMOTE_USER` variable up after you provide your credentials. Therefore, all user management goes through your web server configuration. Please consult the documentation of your web server for more info.

The process of adding, removing, and configuring user accounts for authentication depends on the specific way you run Trac.

Please refer to one of the following sections:

+   [TracStandalone#UsingAuthentication](https://trac.streamboard.tv/oscam/wiki/TracStandalone#UsingAuthentication) if you use the standalone server, `tracd`.
+   [TracModWSGI#ConfiguringAuthentication](https://trac.streamboard.tv/oscam/wiki/TracModWSGI#ConfiguringAuthentication) if you use the Apache web server, with any of its front end: `mod_wsgi`, `mod_python`, `mod_fcgi` or `mod_fastcgi`.
+   [TracFastCgi](https://trac.streamboard.tv/oscam/wiki/TracFastCgi) if you're using another web server with FCGI support (Cherokee, Lighttpd, LiteSpeed, nginx)

[​TracAuthenticationIntroduction](https://trac.edgewall.org/intertrac/TracAuthenticationIntroduction "TracAuthenticationIntroduction in The Trac Project") also contains some useful information for beginners.

## Granting admin rights to the admin user

Grant admin rights to user admin:

```
$ trac-admin /path/to/myproject permission add admin TRAC_ADMIN
```

This user will have an *Admin* navigation item that directs to pages for administering your Trac project.

## Configuring Trac

Configuration options are documented on the [TracIni](https://trac.streamboard.tv/oscam/wiki/TracIni) page.

[TracRepositoryAdmin](https://trac.streamboard.tv/oscam/wiki/TracRepositoryAdmin) provides information on configuring version control repositories for your project.

In addition to the optional version control backends, Trac provides several optional features that are disabled by default:

+   [Fine-grained permission policy](https://trac.streamboard.tv/oscam/wiki/TracFineGrainedPermissions#AuthzPolicy)
+   [Custom permissions](https://trac.streamboard.tv/oscam/wiki/TracPermissions#CreatingNewPrivileges)
+   [Ticket deletion](https://trac.streamboard.tv/oscam/wiki/TracTickets#deleter)
+   [Ticket cloning](https://trac.streamboard.tv/oscam/wiki/TracTickets#cloner)
+   [Ticket changeset references](https://trac.streamboard.tv/oscam/wiki/TracRepositoryAdmin#CommitTicketUpdater)

## Using Trac

Once you have your Trac site up and running, you should be able to create tickets, view the timeline, browse your version control repository if configured, etc.

Keep in mind that *anonymous* (not logged in) users can by default access only a few of the features, in particular they will have a read-only access to the resources. You will need to configure authentication and grant additional [permissions](https://trac.streamboard.tv/oscam/wiki/TracPermissions) to authenticated users to see the full set of features.

*Enjoy!*

[​The Trac Team](https://trac.edgewall.org/intertrac/TracTeam "TracTeam in The Trac Project")

* * *

See also: [​TracInstallPlatforms](https://trac.edgewall.org/intertrac/TracInstallPlatforms "TracInstallPlatforms in The Trac Project"), [TracGuide](https://trac.streamboard.tv/oscam/wiki/TracGuide), [TracUpgrade](https://trac.streamboard.tv/oscam/wiki/TracUpgrade)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracInstall?action=diff&version=8 "Version 8 by trac") [2 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.