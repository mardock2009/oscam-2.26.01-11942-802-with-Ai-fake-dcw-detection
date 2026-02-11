> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Customizing the Trac Interface

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

1.  [Project Logo and Icon](#ProjectLogoandIcon)
    1.  [Logo](#Logo)
    2.  [Icon](#Icon)
2.  [Custom Navigation Entries](#CustomNavigationEntries)
3.  [Site Appearance](#SiteAppearance)
    1.  [Sharing Templates in Multiple Environments](#SharingTemplatesinMultipleEnvironments)
4.  [Project List](#ProjectList)
5.  [Project Templates](#ProjectTemplates)

This page gives suggestions on how to customize the look of Trac. Topics include editing the HTML templates and CSS files, but not the program code itself. The topics show users how they can modify the look of Trac to meet their specific needs. Suggestions for changes to Trac's interface applicable to all users should be filed as tickets, not listed on this page.

## Project Logo and Icon

The easiest parts of the Trac interface to customize are the logo and the site icon. Both of these can be configured with settings in [trac.ini](https://trac.streamboard.tv/oscam/wiki/TracIni#project-section).

The logo or icon image should be put your environment's `htdocs` directory. You can actually put the logo and icon anywhere on your server (as long as it's accessible through the web server), and use their absolute or server-relative URLs in the configuration.

Next, configure the appropriate section of your trac.ini:

### Logo

Change the `src` setting to `site/` followed by the name of your image file. The `width` and `height` settings should be modified to match your image's dimensions. The Trac chrome handler uses `site/` for files within the project directory `htdocs`, and `common/` for the common `htdocs` directory belonging to a Trac installation. Note that `site/` is not a placeholder for your project name, it is the literal prefix. For example, if your project is named `sandbox`, and the image file is `red_logo.gif` then the `src` setting would be `site/red_logo.gif`, not `sandbox/red_logo.gif`.

```
[header_logo]
src = site/my_logo.gif
alt = My Project
width = 300
height = 100
```

### Icon

Icons are small images displayed by your web browser next to the site's URL and in the `Bookmarks` menu. Icons should be a 32x32 image in `.gif` or `.ico` format. Change the `icon` setting to `site/` followed by the name of your icon file:

```
[project]
icon = site/my_icon.ico
```

## Custom Navigation Entries

The `[mainnav]` and `[metanav]` sections of trac.ini be used to customize the navigation entries, disable them and even add new ones.

In the following example, we:

+   rename the link to [WikiStart](https://trac.streamboard.tv/oscam/wiki/WikiStart) to be *Home*
+   hide the *About* entry
+   make the *View Tickets* entry link to a specific report
+   add a *Builds* entry that links to an external build system
+   move the *Admin* entry to the meta navigation bar

    ```
    [mainnav]
    wiki.label = Home
    tickets.href = /report/24

    [metanav]
    about = disabled
    builds = enabled
    builds.href = https://travis-ci.org/edgewall/trac
    admin = enabled
    ```


See also [TracNavigation](https://trac.streamboard.tv/oscam/wiki/TracNavigation) for a more detailed explanation of the mainnav and metanav navigation.

## Site Appearance

Trac is using [​Jinja2](http://jinja.pocoo.org/) as the templating engine.

We have put in place a number of "placeholder" in the form of "include" directives. These files don't need to exist, but if they do, their content will be processed by Jinja2 as well. As such, they can make use of other "include" directives, or any other feature of Jinja2 to generate dynamic content.

There are three such placeholder templates:

+   `site_head.html`, which can be used to add content inside the generated `<head>` element
+   `site_header.html`, which can be used to **prepend** content inside the generated `<body>` element, before the standard content generated by Trac
+   `site_header.html`, which can be used to **append** content inside the generated `<body>` element, after the standard content generated by Trac

Say you want to add a link to a custom stylesheet, and then your own header and footer. Save the following content as `site_head.html`, `site_header.html` and `site_footer.html` inside your projects `templates/` directory (each Trac project can have their own "placeholder" files) e.g. `/path/to/env/templates/site_head.html`:

`site_head.html`:

```
  <!-- site_head.html: Add site-specific style sheet -->
  <link rel="stylesheet" href="${href.chrome('site/style.css')}" />
  <!-- /site_head.html -->
```

`site_header.html`:

```
    <!-- site_header.html: Add site-specific header -->
    <div id="siteheader">
      ## Place your header content here...
    </div>
    <!-- /site_header.html -->
```

`site_footer.html`:

```
    <!-- site_footer.html: Add site-specific footer -->
    <div id="sitefooter">
      ## Place your footer content here...
    </div>
    <!-- /site_footer.html -->
```

Notice that as Jinja2 is mostly content agnostic, you are free to open some `<div>` element in the `site_header.html` file and only close it in `site_footer.html` file. Besides, as in any other Trac Jinja2 template, you can use some Trac specific features, for example the `${href.chrome('site/style.css')}` attribute references `style.css` in the environment's `htdocs/` directory. In a similar fashion `${chrome.htdocs_location}` is used to specify the common `htdocs/` directory belonging to a Trac installation. That latter location can however be overriden using the [\[trac\] htdocs\_location](https://trac.streamboard.tv/oscam/wiki/TracIni#trac-htdocs_location-option) setting.

Example snippet of adding introduction text to the new ticket form (but not shown during preview):

+   first we need to introduce the extra "content" of this notice, if it's appropriate for the request. For that, we add this snippet in the `site_footer.html` placeholder file:

    ```
    # if req.path_info == '/newticket' and 'preview' not in req.args:
      <p id="ntg">Please make sure to search for existing tickets before reporting a new one!</p>
    # endif
    ```

+   second, we need to dynamically alter the rest of the content in order to position that notice at the desired location. For that, we add this snippet to the `site_head.html` placeholder file:

```
<script>
  jQuery(function($) {
    var $ntg = $("#newticketguide");
    if ($ntg.length)
      $("#propertyform").prepend($ntg.detach());
  });
</script>
```

This example illustrates a technique of using `req.path_info` to limit scope of changes to one view only. For instance, to make changes only for timeline and avoid modifying other sections, use `req.path_info == '/timeline'` as the condition in a `# if` test.

More examples snippets for placeholder files can be found at [​CookBook/SiteHtml](https:https://trac.edgewall.org/intertrac/wiki%3ACookBook/SiteHtml "wiki:CookBook/SiteHtml in The Trac Project").

Example snippets for `style.css` can be found at [​CookBook/SiteStyleCss](https:https://trac.edgewall.org/intertrac/wiki%3ACookBook/SiteStyleCss "wiki:CookBook/SiteStyleCss in The Trac Project").

### Sharing Templates in Multiple Environments

The `site_*.html` templates, despite their name, can be put in a shared templates directory, see the [\[inherit\] templates\_dir](https://trac.streamboard.tv/oscam/wiki/TracIni#inherit-templates_dir-option) option. This could provide easier maintenance, as global `site_head.html`, `site_header.html` and `site_footer.html` files can be made to `# include` any other local existing header, footer and newticket snippets.

## Project List

You can use a custom Genshi template to display the list of projects if you are using Trac with multiple projects.

The following is the basic template used by Trac to display a list of links to the projects. For projects that could not be loaded, it displays an error message. You can use this as a starting point for your own index template:

FIXME

```
<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:py="http://genshi.edgewall.org/"
      xmlns:xi="http://www.w3.org/2001/XInclude">
  <head>
    <title>Available Projects</title>
  </head>
  <body>
    <h1>Available Projects</h1>
    <ul>
      <li py:for="project in projects" py:choose="">
        <a py:when="project.href" href="$project.href"
           title="$project.description">$project.name</a>
        <py:otherwise>
          <small>$project.name: <em>Error</em> <br /> ($project.description)</small>
        </py:otherwise>
      </li>
    </ul>
  </body>
</html>
```

Once you've created your custom template you will need to configure the webserver to tell Trac where the template is located:

For [mod\_wsgi](https://trac.streamboard.tv/oscam/wiki/TracModWSGI):

```
os.environ['TRAC_ENV_INDEX_TEMPLATE'] = '/path/to/template.html'
```

For [FastCGI](https://trac.streamboard.tv/oscam/wiki/TracFastCgi):

```
FastCgiConfig -initial-env TRAC_ENV_PARENT_DIR=/parent/dir/of/projects \
              -initial-env TRAC_ENV_INDEX_TEMPLATE=/path/to/template
```

For [mod\_python](https://trac.streamboard.tv/oscam/wiki/TracModPython):

```
PythonOption TracEnvParentDir /parent/dir/of/projects
PythonOption TracEnvIndexTemplate /path/to/template
```

For [CGI](https://trac.streamboard.tv/oscam/wiki/TracCgi):

```
SetEnv TRAC_ENV_INDEX_TEMPLATE /path/to/template
```

For [TracStandalone](https://trac.streamboard.tv/oscam/wiki/TracStandalone), you'll need to set up the `TRAC_ENV_INDEX_TEMPLATE` environment variable in the shell used to launch tracd:

+   Unix:

    ```
    $ export TRAC_ENV_INDEX_TEMPLATE=/path/to/template
    ```

+   Windows:

    ```
    $ set TRAC_ENV_INDEX_TEMPLATE=/path/to/template
    ```


## Project Templates

The appearance of each individual Trac environment, ie instance of a project, can be customized independently of other projects, even those hosted on the same server. The recommended way is to use `site_{head,header,footer}.html` templates whenever possible, see [#SiteAppearance](https://trac.streamboard.tv/oscam/wiki/TracInterfaceCustomization#SiteAppearance). Using `site_{head,header,footer}.html` means changes are made to the original templates as they are rendered, and you should not normally need to redo modifications whenever Trac is upgraded. If you do make a copy of `theme.html` or any other Trac template, you need to migrate your modifiations to the newer version. If not, new Trac features or bug fixes may not work as expected.

With that word of caution, any Trac template may be copied and customized. The default Trac templates are located in the Trac egg or wheel, such as `/usr/lib/pythonVERSION/site-packages/Trac-VERSION.egg/trac/templates, ../trac/ticket/templates, ../trac/wiki/templates`. The [#ProjectList](https://trac.streamboard.tv/oscam/wiki/TracInterfaceCustomization#ProjectList) template file is called `index.html`, while the template responsible for main layout is called `theme.html`. Page assets such as images and CSS style sheets are located in the egg's or wheel's `trac/htdocs` directory.

However, do not edit templates or site resources inside the Trac egg/wheel. Reinstalling Trac overwrites your modifications. Instead use one of these alternatives:

+   For a modification to one project only, copy the template to project `templates` directory.
+   For a modification shared by several projects, copy the template to a shared location and have each project point to this location using the [\[inherit\] templates\_dir](https://trac.streamboard.tv/oscam/wiki/TracIni#inherit-templates_dir-option) option.

Trac resolves requests for a template by first looking inside the project, then in any inherited templates location, and finally inside the Trac egg or wheel.

Trac caches templates in memory by default to improve performance. To apply a template you need to restart the web server.

* * *

See also [TracIni](https://trac.streamboard.tv/oscam/wiki/TracIni), [TracNavigation](https://trac.streamboard.tv/oscam/wiki/TracNavigation)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracInterfaceCustomization?action=diff&version=9 "Version 9 by trac") [3 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.