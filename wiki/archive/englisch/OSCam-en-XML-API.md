> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/XML API

## Inhaltsverzeichnis

+   [1 XML API](#XML_API)
    +   [1.1 Introduction](#Introduction)
    +   [1.2 Overview](#Overview)
    +   [1.3 Example Responses](#Example_Responses)
    +   [1.4 XML-Parsing: PHP-Example](#XML-Parsing:_PHP-Example)

## XML API

### Introduction

OSCam also offers an [API](http://en.wikipedia.org/wiki/Web_service) (Application Programming Interface), which could be very useful for querying the server from an application, e.g. plugins. The API can be accessed through [http](http://en.wikipedia.org/wiki/Http) or [https](http://en.wikipedia.org/wiki/Https).

In a nutshell: the XML API can be used to query OSCam about various parameters (*version*, *starttime*, *uptime*), and statistics.


[![](/images/0/00/MessageS.png)](/wiki/Datei:MessageS.png) **NOTE:** The XML API is still under development. The information on this page is valid with version *OSCAM 1.00-unstable\_svn build #4641*. This is the according thread in the forum: [http://www.streamboard.tv/wbb2/thread.php?threadid=30478](http://www.streamboard.tv/wbb2/thread.php?threadid=30478) .

### Overview

Status without Log:

```
/oscamapi.html?part=status
```

Status with Log:

```
/oscamapi.html?part=status&appendlog=1
```

Reader status with EMM and LB statistics:

```
/oscamapi.html?part=readerstats&label=<readername>
```

Reader Entitlement (only cccam readers for now):

```
/oscamapi.html?part=entitlement&label=<readername>
```

User statistics (since [r4835](http://www.streamboard.tv/oscam/changeset/4835/trunk "streamboard:oscam/changeset/4835/trunk"))

```
/oscamapi.html?part=userstats
```

or

```
/oscamapi.html?part=userstats&label=<username>
```

For any errors, an error response is returned (in valid XML):

```
<?xml version="1.0" encoding="UTF-8"?>
<oscam version="1.00-unstable_svn build #4437" starttime="2011-01-12T23:44:35+0100" uptime="124500" >
    <error>part not found</error>
</oscam>
```

[![](/images/0/00/MessageS.png)](/wiki/Datei:MessageS.png) **NOTE:** Dates are represented in ISO, durations are integers (no of seconds)

### Example Responses

Status without Log ***/oscamapi.html?part=status***:

```
<?xml version="1.0" encoding="UTF-8"?>
<oscam version="1.00-unstable_svn build #4641" starttime="2011-01-28T16:00:17+0100" uptime="643" >
    <status>
        <client type="s" name="root" protocol="server" protocolext="" au="0">
          <request caid="0000" srvid="0000" ecmtime="0" answered=""></request>
          <times login="2011-01-28T16:00:17+0100" online="643" idle="0"></times>
          <connection ip="127.0.0.1" port="0">OK</connection>
        </client>
        <client type="h" name="root" protocol="monitor" protocolext="" au="0">
          <request caid="0000" srvid="0000" ecmtime="0" answered=""></request>
          <times login="2011-01-28T16:00:17+0100" online="643" idle="0"></times>
          <connection ip="127.0.0.1" port="0">OK</connection>
        </client>
        <client type="r" name="my_reader_1" protocol="mouse" protocolext="" au="0">
          <request caid="0000" srvid="0000" ecmtime="0" answered=""></request>
          <times login="2011-01-28T16:00:17+0100" online="643" idle="630"></times>
          <connection ip="127.0.0.1" port="0">CARDOK</connection>
        </client>
        <client type="r" name="my_reader_2" protocol="mouse" protocolext="" au="0">
          <request caid="0000" srvid="0000" ecmtime="0" answered=""></request>
          <times login="2011-01-28T16:00:17+0100" online="643" idle="629"></times>
          <connection ip="127.0.0.1" port="0">CARDOK</connection>
        </client>
        <client type="r" name="my_reader_3" protocol="mouse" protocolext="" au="0">
          <request caid="0000" srvid="0000" ecmtime="0" answered=""></request>
          <times login="2011-01-28T16:00:17+0100" online="643" idle="630"></times>
          <connection ip="127.0.0.1" port="0">CARDOK</connection>
        </client>
        <client type="c" name="cccam_2" protocol="newcamd (CCcam)" protocolext="" au="0">
          <request caid="FFFE" srvid="FFFE" ecmtime="0" answered=""></request>
          <times login="2011-01-28T16:00:33+0100" online="627" idle="58"></times>
          <connection ip="127.0.0.1" port="43111">OK</connection>
        </client>
        <client type="c" name="cccam_3" protocol="newcamd (CCcam)" protocolext="" au="0">
          <request caid="1702" srvid="00CA" ecmtime="0" answered="invalid"></request>
          <times login="2011-01-28T16:00:33+0100" online="627" idle="23"></times>
          <connection ip="127.0.0.1" port="33222">OK</connection>
        </client>
        <client type="c" name="cccam_1" protocol="newcamd (CCcam)" protocolext="" au="0">
          <request caid="1702" srvid="00CA" ecmtime="1" answered="invalid"></request>
          <times login="2011-01-28T16:00:56+0100" online="604" idle="23"></times>
          <connection ip="127.0.0.1" port="40333">OK</connection>
        </client>
    </status>
    <log><![CDATA[]]></log>
</oscam>
```

Reader status with EMM and LB statistics ***/oscamapi.html?part=readerstats&label=<readername>***

```
<?xml version="1.0" encoding="UTF-8"?>
<oscam version="1.00-unstable_svn build #4641" starttime="2011-01-28T16:00:17+0100" uptime="1718" >
    <reader label="my_reader_1">
        <emmstats totalwritten="4" totalskipped="0" totalblocked="0" totalerror="0">
            <emm type="unknown" result="error">0</emm>
            <emm type="unique" result="error">0</emm>
            <emm type="shared" result="error">0</emm>
            <emm type="global" result="error">0</emm>
            <emm type="unknown" result="written">0</emm>
            <emm type="unique" result="written">0</emm>
            <emm type="shared" result="written">0</emm>
            <emm type="global" result="written">4</emm>
            <emm type="unknown" result="skipped">0</emm>
            <emm type="unique" result="skipped">0</emm>
            <emm type="shared" result="skipped">0</emm>
            <emm type="global" result="skipped">0</emm>
            <emm type="unknown" result="blocked">0</emm>
            <emm type="unique" result="blocked">0</emm>
            <emm type="shared" result="blocked">0</emm>
            <emm type="global" result="blocked">0</emm>
        </emmstats>
        <ecmstats count="1" totalecm="68" lastaccess="2011-01-28T16:28:52+0100">
            <ecm caid="1702" provid="000000" srvid="00DF" channelname="Bundesliga" avgtime="541" lasttime="543" rc="0" rcs="found" lastrequest="2011-01-28T16:28:52+0100">68</ecm>
        </ecmstats>
    </reader>
</oscam>
```

User statistics ***/oscamapi.html?part=userstats&label=<username>***

```
<?xml version="1.0" encoding="UTF-8"?>
<oscam version="1.00-unstable_svn build #4840" revision="4840" starttime="2011-03-19T17:52:41+0000" uptime="1872" >
    <users>
        <user name="tm800">
            <stats>
                <cwok>238</cwok>
                <cwnok>10</cwnok>
                <cwignore>6</cwignore>
                <cwtimeout>0</cwtimeout>
                <cwcache>0</cwcache>
                <cwtun>0</cwtun>
                <cwlastresptime>109</cwlastresptime>
                <emmok>0</emmok>
                <emmnok>0</emmnok>
                <cwrate>7.49</cwrate>
            </stats>
        </user>
    </users>
    <totals>
        <cwok>597</cwok>
        <cwnok>10</cwnok>
        <cwignore>6</cwignore>
        <cwtimeout>0</cwtimeout>
        <cwcache>0</cwcache>
        <cwtun>0</cwtun>
    </totals>
</oscam>
```

### XML-Parsing: PHP-Example

```
<?php
# OSCam XML API example in PHP
# USER SETUP ***********************************************
$_CONSTANTS = array(
    'OSCAM_URL'         => 'http://127.0.0.1:4711/oscamapi.html'
   ,'LOCAL_ACCESS_ONLY' => true # true = call OSCam XML API by "wget"; false = call OSCam XML API by URL - default = true
   ,'NL'                => "\n" # Newline
);
# END USER SETUP *******************************************

# define constants *****************************************
foreach($_CONSTANTS as $key => $val) {
    if(is_array($_CONSTANTS[$key])) $$key = $val;
    else define($key, $val);
}
# save memory...
unset($_CONSTANTS);

# private vars *********************************************
define('PART_NAME', 'part');

# OSCam class **********************************************
class OSCam {
    public function getXMLfile($part) {
        $r = null;
        if(LOCAL_ACCESS_ONLY) {
            $r = trim(shell_exec('wget -O - "'.OSCAM_URL.'?'.PART_NAME.'='.$part.'"'));
        } else {
            $r = file_get_contents(OSCAM_URL.'?'.PART_NAME.'='.$part);
        }
        return $r;
    }

    public function getStatusNumOfType(&$xml, $nType) {
        $r = 0;
        $x = new SimpleXMLElement($xml);
        foreach($x->status->client as $c) {
            if(!empty($c['type']) && $c['type'] == $nType) $r++;
        }
        return $r;
    }
}

# OUTPUT-EXAMPLES ******************************************
$oc = new OSCam;

# status
$xml = $oc->getXMLfile('status');

echo NL.'<h1>XML status content:</h1>'.NL;
echo '<pre>'.htmlspecialchars($xml).'</pre>';

echo NL.'<h1>Number of readers:</h1>'.NL;
$t = $oc->getStatusNumOfType($xml, 'r');
echo '<pre>'.$t.'</pre>';

echo NL.'<h1>Number of active clients:</h1>'.NL;
$t = $oc->getStatusNumOfType($xml, 'c');
echo '<pre>'.$t.'</pre>';

?>
```