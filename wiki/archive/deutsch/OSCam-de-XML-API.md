> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/XML API

## Inhaltsverzeichnis

+   [1 XML API](#XML_API)
    +   [1.1 Intro](#Intro)
    +   [1.2 Übersicht](#Übersicht)
    +   [1.3 Beispielausgaben](#Beispielausgaben)
    +   [1.4 XML-Parsing: PHP-Beispiel](#XML-Parsing:_PHP-Beispiel)
+   [2 XML status content:](#XML_status_content:)
+   [3 Number of readers:](#Number_of_readers:)
+   [4 Number of active clients:](#Number_of_active_clients:)

## XML API

### Intro

OSCam beinhaltet auch eine [API](http://de.wikipedia.org/wiki/Programmierschnittstelle) (Application Programming Interface), die z.B. für Imagebauer, Plugin-Entwickler, etc., von großem Nutzen sein kann. Der Zugriff auf die API erfolgt per [http](http://de.wikipedia.org/wiki/Hypertext_Transfer_Protocol) oder [https](http://de.wikipedia.org/wiki/Hypertext_Transfer_Protocol_Secure).

Kurzum: Mit der XML API können OSCam-Informationen, wie z.B. *version*, *starttime*, *uptime*, ..., sowie auch OSCam-Status, ausgewertet werden.


[![](/images/0/00/MessageS.png)](/wiki/Datei:MessageS.png) **Info:** Die XML API ist selbst noch in der Entwicklung. Nachfolgende Informationen wurden mit *OSCAM 1.00-unstable\_svn build #4641* gesammelt. Hier ist der entsprechende Thread im Forum: [http://www.streamboard.tv/wbb2/thread.php?threadid=30478](http://www.streamboard.tv/wbb2/thread.php?threadid=30478) .

### Übersicht

Status ohne Log:

```
/oscamapi.html?part=status
```

Status mit Log:

```
/oscamapi.html?part=status&appendlog=1
```

Readerstatus mit EMM und LB Stats:

```
/oscamapi.html?part=readerstats&label=<readername>
```

Reader Entitlement (momentan nur cccam reader - Karten):

```
/oscamapi.html?part=entitlement&label=<readername>
```

User Statistik (seit [r4835](http://www.streamboard.tv/oscam/changeset/4835/trunk "streamboard:oscam/changeset/4835/trunk"))

```
/oscamapi.html?part=userstats
```

or

```
/oscamapi.html?part=userstats&label=<username>
```

Bei falschem Aufruf sollte überall eine auswertbare XML Fehlermeldung kommen: <syntaxhighlight lang="xml"> <?xml version="1.0" encoding="UTF-8"?> <oscam version="1.00-unstable\_svn build #4437" starttime="2011-01-12T23:44:35+0100" uptime="124500" >

```
   <error>part not found</error>
```

</oscam> </syntaxhighlight>

[![](/images/0/00/MessageS.png)](/wiki/Datei:MessageS.png) **Info:** Datumsangaben sind in ISO - Zeitangaben in integer Sekunden

### Beispielausgaben

Status ohne Log ***/oscamapi.html?part=status***: <syntaxhighlight lang="xml"> <?xml version="1.0" encoding="UTF-8"?> <oscam version="1.00-unstable\_svn build #4641" starttime="2011-01-28T16:00:17+0100" uptime="643" >

```
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
```

</oscam> </syntaxhighlight>

Readerstatus mit EMM und LB Stats ***/oscamapi.html?part=readerstats&label=<readername>*** <syntaxhighlight lang="xml"> <?xml version="1.0" encoding="UTF-8"?> <oscam version="1.00-unstable\_svn build #4641" starttime="2011-01-28T16:00:17+0100" uptime="1718" >

```
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
```

</oscam> </syntaxhighlight>

User statistics ***/oscamapi.html?part=userstats&label=<username>*** <syntaxhighlight lang="xml">

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

</syntaxhighlight>

### XML-Parsing: PHP-Beispiel

<syntaxhighlight lang="php"> <?php

1.  OSCam XML API example in PHP
2.  USER SETUP \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

$\_CONSTANTS = array(

```
   'OSCAM_URL'         => 'http://127.0.0.1:4711/oscamapi.html'
  ,'LOCAL_ACCESS_ONLY' => true # true = call OSCam XML API by "wget"; false = call OSCam XML API by URL - default = true
  ,'NL'                => "\n" # Newline
```

);

1.  END USER SETUP \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

1.  define constants \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

foreach($\_CONSTANTS as $key => $val) {

```
   if(is_array($_CONSTANTS[$key])) $$key = $val;
   else define($key, $val);
```

}

1.  save memory...

unset($\_CONSTANTS);

1.  private vars \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

define('PART\_NAME', 'part');

1.  OSCam class \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

class OSCam {

```
   public function getXMLfile($part) {
       $r = null;
       if(LOCAL_ACCESS_ONLY) {
           $r = trim(shell_exec('wget -O - "'.OSCAM_URL.'?'.PART_NAME.'='.$part.'"'));
       } else {
           $r = file_get_contents(OSCAM_URL.'?'.PART_NAME.'='.$part);
       }
       return $r;
   }
```

```
   public function getStatusNumOfType(&$xml, $nType) {
       $r = 0;
       $x = new SimpleXMLElement($xml);
       foreach($x->status->client as $c) {
           if(!empty($c['type']) && $c['type'] == $nType) $r++;
       }
       return $r;
   }
```

}

1.  OUTPUT-EXAMPLES \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

$oc = new OSCam;

1.  status

$xml = $oc->getXMLfile('status');

echo NL.'

# XML status content:

'.NL; echo '

```
'.htmlspecialchars($xml).'
```

'; echo NL.'

# Number of readers:

'.NL;

$t = $oc->getStatusNumOfType($xml, 'r');

echo '

```
'.$t.'
```

'; echo NL.'

# Number of active clients:

'.NL;

$t = $oc->getStatusNumOfType($xml, 'c');

echo '

```
'.$t.'
```

';

?> </syntaxhighlight>