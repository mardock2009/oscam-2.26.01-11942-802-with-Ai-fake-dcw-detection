> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Using Search

Trac has built-in search functionality to search for occurrences of keywords and substrings in wiki pages, tickets and changeset properties, such as author, revision and log messages.

In addition to the [Search module](https://trac.streamboard.tv/oscam/search), you will also find a small search field above the navigation bar. It provides convenient access to the search module from all pages.

The search results show the most recent modifications ranked first.

## Quick searches

For quick access to project resources, the quick-search field at the top of every page can be used to enter a [TracLink](https://trac.streamboard.tv/oscam/wiki/TracLinks), which will take you directly to the resource identified by that link:

+   \[42\] -- Opens change set 42
+   #42 -- Opens ticket number 42
+   {1} -- Opens report 1
+   /trunk -- Opens the browser for the `trunk` directory in the default repository
+   /repos1/trunk -- Opens the browser for the `trunk` directory in the `repos1` repository

To disable the Quickjump feature for a keyword start the query with an exclamation mark (`!`): use `!TracGuide` to search for occurrences of the literal word TracGuide.

## Search [TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks)

From the Wiki, it is possible to link to a specific search using `search:` links:

+   `search:?q=crash` will search for the string "crash"
+   `search:?q=trac+link&wiki=on` will search for "trac" and "link" in wiki pages only

## Search Filters

On the search page, pressing the modifier key while selecting a search filter will unselect all other search filters.

* * *

See also: [TracLinks](https://trac.streamboard.tv/oscam/wiki/TracLinks), [TracQuery](https://trac.streamboard.tv/oscam/wiki/TracQuery)

[Last modified](https://trac.streamboard.tv/oscam/wiki/TracSearch?action=diff&version=8 "Version 8 by trac") [2 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-06-07T14%3A06%3A46%2B02%3A00&precision=second "See timeline at 06/07/20 14:06:46") Last modified on 06/07/20 14:06:46

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.