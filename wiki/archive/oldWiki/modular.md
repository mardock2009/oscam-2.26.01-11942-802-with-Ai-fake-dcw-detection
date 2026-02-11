> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Modular

The modular branch allows you to compile oscam with the selected components only.


You can checkout the branch with the following command:
```
svn co http://streamboard.de.vu/svn/oscam/branches/modular/ oscam-modular
```
To select the components you have to edit the *oscam-config.h* and check the define for the component you want include or exclude.


e.g.


Build with Webinterface
```
#ifndef WEBIF
#define WEBIF
#endif
```

Build without Webinterface
```
#ifndef WEBIF
//#define WEBIF
#endif
```



## Module
*WEBIF* - Webinterface

*HAVE_DVBAPI* - dvbapi descrambling support

*MODULE_MONITOR* - monitor




## Protocols

*MODULE_CAMD33* - camd3.3 protocol

*MODULE_CAMD35* - camd3.5 protocol (udp)

*MODULE_CAMD35_TCP* - camd3.5 protocol (tcp/cs378x)

*MODULE_NEWCAMD* - newcamd protocol

*MODULE_CCCAM* - cccam protocol

*MODULE_RADEGAST* - radegast protocol

*MODULE_SERIAL* - serial devices support (HSIC, SSSP, bomba, dsr9500)


_Attention:_
This branch is very experimental.


If you remove protocol support and you use this protocol in your oscam.server oscam may crash at startup.





## Cardreader
*WITH_CARDREADER* - compile with support for local cardreader

Excluding Cardreader support automaticly disables the following reader.




*READER_NAGRA* - Nagravision support

*READER_IRDETO* - Irdeto support

*READER_CONAX* - Conax Support

*READER_CRYPTOWORKS* - Cryptoworks support

*READER_SECA* - Seca Support

*READER_VIACCESS* - Viaccess support

*READER_VIDEOGUARD* - Videoguard support

*READER_DRE* - Dre support




----



## Special Settings in modular branch

If you are using a reader with protocol mouse you can specify the ATR in reader config.

e.g.
```
[reader]
...
protocol = mouse
...
atr=3FFF9500FF918171FE4700444E4153503134322052657647433463
```
This will speed up card initialization but it may not work with all cards and all readers.


----


