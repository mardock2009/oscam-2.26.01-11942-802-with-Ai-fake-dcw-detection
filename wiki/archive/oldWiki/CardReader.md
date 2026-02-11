> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# CardReader

1.  [Cardreader](#Cardreader)
    1.  [Supported readers](#Supportedreaders)
    2.  [Introduction](#Introduction)
    3.  [Eagle schematics :](#Eagleschematics:)
    4.  [Eagle board :](#Eagleboard:)
    5.  [Some comments :](#Somecomments:)

## Supported readers

+   Dreambox DM8000 internal reader

+   Dreambox DM800 internal reader

+   serial readers (e.g. µmouse)

+   Smargo Smartreader+


## Introduction

I needed a reader that works on all linux platform as well as Mac OS X. So I chose to use a [​FTDI MM232R module](http://www.ftdichip.com/Products/EvaluationKits/MM232R.htm) as it fits these requirements and also works on Windows.

I used Eagle to create the schema and the board and you can found all the files attached to this page (eagle files and images).

## Eagle schematics :

[![Eagle schematics](https://trac.streamboard.tv/oscam/raw-attachment/wiki/CardReader/cardreader.png "Eagle schematics")](https://trac.streamboard.tv/oscam/attachment/wiki/CardReader/cardreader.png)

## Eagle board :

[![Eagle board](https://trac.streamboard.tv/oscam/raw-attachment/wiki/CardReader/cardreader_board.png "Eagle board")](https://trac.streamboard.tv/oscam/attachment/wiki/CardReader/cardreader_board.png)

## Some comments :

I would recommend using a support for the oscillator so that you can easily change it (I used a 3.58MHz one and a 6MHz one for testing).

I didn't include any LED or anything that was not absolutely needed.

JP1 allows you to select between 5V and 3.3V operation, this can be useful for cards that needs a 3V power supply instead of 5V. If you use 3.3V you will need to find an oscillator that runs at 3.3V

In your \[reader\] section in oscam.server, you need to set the detect to : Detect = CTS

The internally generated clock (6MHz, 12MHz, 24MHz, and 48MHz) can be brought out of the device and used to drive a microcontroller or external logic (pin 9 of MM232R). I reprogram it's to 6MHz with FT\_PROG ( [​http://www.ftdichip.com/Resources/Utilities.htm](http://www.ftdichip.com/Resources/Utilities.htm) ). Result: scheme without oscillator :) . *Evg33*

[Last modified](https://trac.streamboard.tv/oscam/wiki/CardReader?action=diff&version=12 "Version 12 by landlord") [13 years ago](https://trac.streamboard.tv/oscam/timeline?from=2010-01-02T23%3A23%3A29%2B01%3A00&precision=second "See timeline at 01/02/10 23:23:29") Last modified on 01/02/10 23:23:29

### Attachments (4)

+   [cardreader.png](https://trac.streamboard.tv/oscam/attachment/wiki/CardReader/cardreader.png "View attachment")[​](https://trac.streamboard.tv/oscam/raw-attachment/wiki/CardReader/cardreader.png "Download") (17.9 KB ) - added by rorothetroll [14 years ago](https://trac.streamboard.tv/oscam/timeline?from=2009-05-17T02%3A31%3A10%2B02%3A00&precision=second "See timeline at 05/17/09 02:31:10"). Eagle schematics
+   [cardreader\_board.png](https://trac.streamboard.tv/oscam/attachment/wiki/CardReader/cardreader_board.png "View attachment")[​](https://trac.streamboard.tv/oscam/raw-attachment/wiki/CardReader/cardreader_board.png "Download") (6.7 KB ) - added by rorothetroll [14 years ago](https://trac.streamboard.tv/oscam/timeline?from=2009-05-17T02%3A31%3A33%2B02%3A00&precision=second "See timeline at 05/17/09 02:31:33"). Eagle board
+   [CardReader.sch](https://trac.streamboard.tv/oscam/attachment/wiki/CardReader/CardReader.sch "View attachment")[​](https://trac.streamboard.tv/oscam/raw-attachment/wiki/CardReader/CardReader.sch "Download") (13.4 KB ) - added by rorothetroll [14 years ago](https://trac.streamboard.tv/oscam/timeline?from=2009-05-17T02%3A39%3A37%2B02%3A00&precision=second "See timeline at 05/17/09 02:39:37"). Eagle schematics file
+   [CardReader.brd](https://trac.streamboard.tv/oscam/attachment/wiki/CardReader/CardReader.brd "View attachment")[​](https://trac.streamboard.tv/oscam/raw-attachment/wiki/CardReader/CardReader.brd "Download") (10.7 KB ) - added by rorothetroll [14 years ago](https://trac.streamboard.tv/oscam/timeline?from=2009-05-17T02%3A40%3A05%2B02%3A00&precision=second "See timeline at 05/17/09 02:40:05"). Eagle board file

Download all attachments as: [.zip](https://trac.streamboard.tv/oscam/zip-attachment/wiki/CardReader/)

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.