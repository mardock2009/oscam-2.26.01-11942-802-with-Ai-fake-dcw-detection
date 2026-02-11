> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# NewCS

## Inhaltsverzeichnis

+   [1 Was kann das Programm](#Was_kann_das_Programm)
+   [2 Welche Plattformen und Protokolle werden unterstützt](#Welche_Plattformen_und_Protokolle_werden_unterstützt)
+   [3 Konfiguration](#Konfiguration)
    +   [3.1 globals](#globals)
        +   [3.1.1 listening-ip](#listening-ip)
    +   [3.2 readers](#readers)
        +   [3.2.1 device](#device)
            +   [3.2.1.1 name](#name)
            +   [3.2.1.2 type](#type)
            +   [3.2.1.3 mhz](#mhz)
            +   [3.2.1.4 node](#node)
            +   [3.2.1.5 infinity\_number](#infinity_number)
            +   [3.2.1.6 slot](#slot)
            +   [3.2.1.7 parity](#parity)
            +   [3.2.1.8 reset](#reset)
            +   [3.2.1.9 export](#export)
            +   [3.2.1.10 enabled](#enabled)
            +   [3.2.1.11 blocksa](#blocksa)
            +   [3.2.1.12 blockua](#blockua)
            +   [3.2.1.13 blockga](#blockga)
            +   [3.2.1.14 blockC0](#blockC0)
            +   [3.2.1.15 boxkey](#boxkey)
            +   [3.2.1.16 rsa](#rsa)
            +   [3.2.1.17 irdetomode](#irdetomode)
            +   [3.2.1.18 irdeto-camkey](#irdeto-camkey)
            +   [3.2.1.19 irdeto-camkey-data](#irdeto-camkey-data)
            +   [3.2.1.20 crypto-special](#crypto-special)
            +   [3.2.1.21 ipk](#ipk)
            +   [3.2.1.22 ucpk](#ucpk)
            +   [3.2.1.23 PTShandshake](#PTShandshake)
            +   [3.2.1.24 carddetect](#carddetect)
            +   [3.2.1.25 newcamd\_port](#newcamd_port)
            +   [3.2.1.26 autosid](#autosid)
            +   [3.2.1.27 Seca-PPV](#Seca-PPV)
            +   [3.2.1.28 pincode](#pincode)
            +   [3.2.1.29 sid](#sid)
                +   [3.2.1.29.1 allow](#allow)
                +   [3.2.1.29.2 deny](#deny)
            +   [3.2.1.30 priority](#priority)
    +   [3.3 cache](#cache)
        +   [3.3.1 EMM](#EMM)
        +   [3.3.2 ECM](#ECM)
    +   [3.4 radegastserver](#radegastserver)
        +   [3.4.1 enabled](#enabled_2)
        +   [3.4.2 port](#port)
        +   [3.4.3 allow](#allow_2)
            +   [3.4.3.1 hostname](#hostname)
    +   [3.5 newcamdserver](#newcamdserver)
        +   [3.5.1 enabled](#enabled_3)
        +   [3.5.2 name](#name_2)
        +   [3.5.3 deskey](#deskey)
        +   [3.5.4 user](#user)
            +   [3.5.4.1 name](#name_3)
            +   [3.5.4.2 password](#password)
            +   [3.5.4.3 hostname](#hostname_2)
            +   [3.5.4.4 port](#port_2)
            +   [3.5.4.5 au](#au)
            +   [3.5.4.6 sidoverride](#sidoverride)
            +   [3.5.4.7 readers](#readers_2)
                +   [3.5.4.7.1 allow](#allow_3)
            +   [3.5.4.8 spider](#spider)
    +   [3.6 debug](#debug)
        +   [3.6.1 password](#password_2)
        +   [3.6.2 mode](#mode)
        +   [3.6.3 level](#level)
        +   [3.6.4 type](#type_2)
        +   [3.6.5 output](#output)
        +   [3.6.6 console\_options](#console_options)
        +   [3.6.7 logfile](#logfile)
        +   [3.6.8 file\_options](#file_options)
        +   [3.6.9 udp\_host](#udp_host)
        +   [3.6.10 udp\_port](#udp_port)
        +   [3.6.11 udp\_options](#udp_options)
        +   [3.6.12 tcp\_port](#tcp_port)
        +   [3.6.13 tcp\_options](#tcp_options)
    +   [3.7 httpd](#httpd)
        +   [3.7.1 server](#server)
            +   [3.7.1.1 port](#port_3)
            +   [3.7.1.2 enabled](#enabled_4)
        +   [3.7.2 user](#user_2)
            +   [3.7.2.1 name](#name_4)
            +   [3.7.2.2 password](#password_3)
            +   [3.7.2.3 accesslevel](#accesslevel)
    +   [3.8 chameleon2](#chameleon2)
        +   [3.8.1 server](#server_2)
            +   [3.8.1.1 port](#port_4)
            +   [3.8.1.2 enabled](#enabled_5)
            +   [3.8.1.3 realm](#realm)
        +   [3.8.2 peer](#peer)
            +   [3.8.2.1 hostname](#hostname_3)
            +   [3.8.2.2 port](#port_5)
            +   [3.8.2.3 name](#name_5)
            +   [3.8.2.4 password](#password_4)
            +   [3.8.2.5 realm](#realm_2)
        +   [3.8.3 user](#user_3)
            +   [3.8.3.1 name](#name_6)
            +   [3.8.3.2 password](#password_5)
            +   [3.8.3.3 realm](#realm_3)
        +   [3.8.4 virtualcards](#virtualcards)
            +   [3.8.4.1 vc](#vc)
                +   [3.8.4.1.1 caid](#caid)
                +   [3.8.4.1.2 provider](#provider)

# Was kann das Programm

NewCS ist ein Cardserver für das [NewCamd](/index.php?title=NewCamd&action=edit&redlink=1 "NewCamd (Seite nicht vorhanden)")\- und das [Radegast](/index.php?title=Radegast&action=edit&redlink=1 "Radegast (Seite nicht vorhanden)")\-Protokoll.

# Welche Plattformen und Protokolle werden unterstützt

NewCS bietet sowohl eine native Windows-Version als auch Versionen für diverse Linux-Systeme. Die Code-Basis unterscheidet sich scheinbar zwischen den Plattformen, da insbesondere die Windows-Version teils Bugs enthält, die in der Linux-Version nicht auftreten.

Für Linux existieren Binaries für:

+   i686-Systeme (Standard-PC)
+   x86\_64 (PCs mit 64Bit-Linux)
+   MIPS (Dreambox 7025)
+   PowerPC (alle anderen SD-Dreamboxen, Dbox2, TripleDragon, etc.)
+   Fritzbox (Freetz)
+   OpenWRT
+   QNAP NAS
+   Axis Etrax 100LX
+   ST40-Systeme (Kathrein UFS910, Abcom IPBox HD-Serie und ähnliche)

Für jede Linux-Version gibt es zudem spezielle Binaries um PC/SC- und Infinity-USB-Kartenleser zu unterstützen.

# Konfiguration

NewCS wird über eine zentrale XML-Datei konfiguriert. Der nachfolgende Code zeigt alle möglichen Optionen. Einzelne Optionen können auch auskommentiert werden sofern sie nicht benötigt werden.

```
<?xml version="1.0"?>
<newCSconfig>
	<globals>
		<listening-ip>192.168.1.1</listening-ip>
	</globals>
	<readers name="phoenix reader">
		<device>
			<!-- auskommentiert <name>Phoenix an seriell</name> -->
			<name>Phoenix an USB</name>
			<type>phoenix</type>
			<mhz>357</mhz>
			<node>/dev/ttyUSB0</node>
			<infinity_number>0</infinity_number>
			<slot>0</slot>
			<parity>None</parity>
			<reset>normal</reset>
			<export>Yes</export>
			<enabled>Yes</enabled>
			<blocksa>No</blocksa>
			<blockua>No</blockua>
			<blockga>No</blockga>
			<blockC0>Yes</blockC0>
			<boxkey>0000000000</boxkey>
			<rsa>0000000000</rsa>
			<irdetomode>0</irdetomode>
			<irdeto-camkey>0000000000000000</irdeto-camkey>
			<irdeto-camkey-data>0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000</irdeto-camkey-data>
			<crypto-special>No</crypto-special>
			<ipk>0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000</ipk>
			<ucpk>0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000</ucpk>
			<PTShandshake>Yes</PTShandshake>
			<carddetect>Yes</carddetect>
			<newcamd_port>15000</newcamd_port>
			<autosid>Yes</autosid>
			<Seca-PPV>No</Seca-PPV>
			<pincode>0000</pincode>
			<sid>
			        <allow>
				       <id>0000</id>
				       <id>0001</id>
				       <id>0002</id>
			        </allow>
			        <deny>
				       <id>0003</id>
				       <id>0004</id>
				       <id>0005</id>
			        </deny>
			</sid>
			<priority>round</priority>
		</device>
	</readers>
	<cache>
		<emm>20</emm>
		<ecm>-1</ecm>
	</cache>
	<radegastserver>
		<enabled>No</enabled>
		<port>16000</port>
		<allow>
			<hostname>localhost</hostname>
			<hostname>user1.dyndns.org</hostname>
		</allow>
	</radegastserver>
	<newcamdserver>
		<enabled>Yes</enabled>
		<name>newcs</name>
		<deskey>01 02 03 04 05 06 07 08 09 10 11 12 13 14</deskey>
		<user>
			<name>user1</name>
			<password>internal</password>
			<hostname>192.168.1.7</hostname>
			<port>15003</port>
			<au>on</au>
			<sidoverride>off</sidoverride>
			<readers>
				<allow>Phoenix1</allow>
			</readers>
			<spider>no</spider>
			<rate>2</rate>
			<cardlevel>1</cardlevel>
		</user>
	</newcamdserver>
	<debug>
		<password>xxxxxxxx</password>
		<mode>simple</mode>
		<level>spam</level>
		<type>all</type>
		<output>tcp</output>
		<console_options></console_options>
		<logfile>/var/log/newcs.log</logfile>
		<file_options>spam,all</file_options>
		<udp_host>192.168.1.10</udp_host>
		<udp_port>1000</udp_port>
		<udp_options>normal,init</udp_options>
		<tcp_port>1001</tcp_port>
		<tcp_options>normal,init,spam,all,internal</tcp_options>
	</debug>
	<httpd>
		<server>
			<port>8080</port>
			<enabled>yes</enabled>
		</server>
		<user>
			<name>newcs</name>
			<password>newcs</password>
			<accesslevel>admin</accesslevel>
		</user>
	</httpd>
	<chameleon2>
		<server>
			<port>1234</port>
			<enabled>yes</enabled>
			<realm>myShares</realm>
		</server>
		<peer>
			<hostname>localhost</hostname>
			<port>1234</port>
			<name>myname</name>
			<password>mypassword</password>
			<realm>myShares</realm>
		</peer>
		<user>
			<name>myname</name>
			<password>mypassword</password>
			<realm>myShares</realm>
		</user>
		<virtualcards>
			<vc>
				<caid>1801</caid>
				<provider>0000000</provider>
			</vc>
			<vc>
				<caid>1702</caid>
				<provider>0000000</provider>
			</vc>
	</virtualcards>
	</chameleon2>
</newCSconfig>
```

Im Folgenden werden die einzelnen Variablen erläutert.

## globals

Diese Sektion enthält globale Konfigurationsparameter, die für den gesamten Server gelten.

### listening-ip

Hiermit wird festgelegt, auf welchen IPs NewCS auf Verbindungen lauscht.

## readers

Enthält die Einstellungen für alle Kartenleser. Der verwendete Name (hier: "phoenix reader") kann beliebig gewählt werden.

### device

Es können beliebig viele dieser Sektionen angelegt werden. Jede steht für einen Kartenleser.

#### name

Ein Name für das Kartenlesegerät. Dient nur zur Darstellung (z.B. im Webinterface) und sollte eindeutig sein.

#### type

Der Typ des Kartenlesegeräts. Möglich sind phoenix, dbox, sci, dragon, sc8, mp35, smartreader, pcsc und infinity. Letztere beide benötigen aber ein spezielles Binary (siehe weiter oben).

#### mhz

Die Frequenz für den Kartenleser. Die Angabe erfolgt ohne Punkt bzw. Komma mit zwei Dezimalstellen, so dass der Wert "358" 3,58 Mhz entspricht. Möglich sind 153(1,53 Mhz), 358(3,58 Mhz), 368(3,68 Mhz), 450(4,5 Mhz), 536(5,36 Mhz), 600(6.00 Mhz), 715(7,15 Mhz), 800(8,00 Mhz) 1000(10,00 Mhz), 1071(10,71 Mhz), 1200 (12,00 Mhz), 1431(14,31 Mhz), 1600 (16,00 Mhz).

**Achtung: Zu hohe Werte führen zu einer Übertaktung und können den Kartenleser und/oder die Karte beschädigen. Normalerweise sollten "358" oder "600" verwendet werden.**

#### node

Gibt die Adresse an unter der der Leser erreichbar ist. Je nach System und Kartenleser müssen hier unterschiedliche Werte stehen.
Unter Windows ist hier COM1, COM2, usw. zu benutzen (auch bei Verwendung eines USB2Seriell-Adapters).
Unter Linux:

+   bei Verwendung einer seriellen Schnittstelle: /dev/tts/0, /dev/tts/1 usw. oder /dev/ttyS0, /dev/ttyS1 usw.
+   bei Verwendung eines USB2Seriell-Adapters: /dev/tts/USB0, /dev/tts/USB1 usw. oder /dev/ttyUSB0, /dev/ttyUSB1 usw.
+   bei Verwendung des internen Kartenlesers in einer Dreambox: /dev/sci0, /dev/sci1, usw.
+   bei Verwendung einer TripleDragon: /dev/cardreader0, /dev/cardreader1, usw.
+   bei Verwendung von PC/SC: 0, 1 usw.

#### infinity\_number

Nummer des Device. Gilt nur bei Benutzung des Binaries für Infinity USB. Mögliche Werte: 0, 1, usw.

#### slot

Erlaubt die Angabe des Slots bei Verwendung eines SC8-Kartenlesers. Mögliche Werte: 0-7

#### parity

Die Parität der seriellen Verbindung (wird bei sci und dragon ignoriert). Mögliche Werte: Odd, Even, None Ist hier Odd oder Even gewählt, so werden dem Datenstrom Bits hinzugefügt um Fehler zu erkennen (vgl. [Wikipedia](http://de.wikipedia.org/wiki/EIA-232#Datenrahmen_und_Timing)). Eine Änderung dieses Parameters kann dazu führen dass die Karte nicht mehr gelesen werden kann, daher lohnt es sich, im Fehlerfall die Optionen durchzuprobieren.

#### reset

Gibt die Reset-Methode des Kartenlesers an (wird bei sci und dragon ignoriert). normal wird für Phoenix-Kartenleser benötigt, inverse für Smartmouse-Kartenleser.

#### export

Bei Angabe von No können nur Nutzer auf localhost diesen Kartenleser nutzen, bei Yes können auch externe Nutzer auf diesen Kartenleser zugreifen.

#### enabled

Ob der Kartenleser aktiviert ist oder nicht. Yes zum aktivieren, No zum Deaktivieren.

#### blocksa

Bei Yes werden EMMs, die an bestimmte Gruppen von Karten adressiert sind (shared address-EMMs, entspricht D2 bei PW), geblockt, bei No werden diese an die Karte weitergeleitet.

#### blockua

Bei Yes werden EMMs, die an die Karte direkt adressiert sind (unique address-EMMs, entspricht D3 bei PW), geblockt, bei No werden diese an die Karte weitergeleitet.

#### blockga

Bei Yes werden EMMs, die an alle Karten adressiert sind (global address-EMMs, entspricht D0 bei PW), geblockt, bei No werden diese an die Karte weitergeleitet.

#### blockC0

Bei Yes werden Fake-EMMs geblockt, bei No werden diese an die Karte weitergeleitet.

#### boxkey

Der Boxkey (nur für Nagra- und NDS-Karten relevant, die diesen benötigen).

#### rsa

Erlaubt die Angabe des RSA-Keys des Nagra-Receivers.

#### irdetomode

Durch Angabe von 0 wird der europäische Irdetomodus aktiviert, bei 1 der alternative (Ozeanien).

#### irdeto-camkey

Ermöglich die Angabe des Camkeys für Irdeto-Karten (8 Byte Hex).

#### irdeto-camkey-data

Ermöglicht die Angabe der Camkey-Daten für Irdeto-Karten (64byte Hex)

#### crypto-special

Bei Yes können bei bestimmten Cryptoworkskarten MOSC-Operationen während des Betriebs durchgeführt werden, bei No wird dies deaktiviert.

#### ipk

Steht für Issuer Public Key und bezeichnet einen Schlüssel für Cryptoworkskarten für die Verschlüsselung zwischen Karte und Receiver (64 Byte Hex)

#### ucpk

Ein weitere Key für Cryptoworkskarten. (64 Byte Hex) Die nähere Bedeutung wird im [Forum](http://www.streamboard.tv/wbb2/thread.php?postid=248886#post248886 "streamboard-post:248886") beschrieben.

#### PTShandshake

Bei Yes wird ein spezieller HighBaud-Modus für Viaccess- und Cryptoworks-Karten aktiviert, bei No wird dieser deaktiviert.

#### carddetect

Bei Yes wird versucht, das Einstecken der Karte automatisch zu erkennen, bei no wird dies nicht versucht.

#### newcamd\_port

Der Port des [NewCamd](/index.php?title=NewCamd&action=edit&redlink=1 "NewCamd (Seite nicht vorhanden)")\-Servers für dieses Kartenlesegerät. Wirkt sich nur aus wenn weiter unten der NewCamd-Server auch aktiviert ist.

#### autosid

Bei Yes versucht NewCS selbst, die korrekten Service IDs anhand der Karte zu erkennen, bei No müssen diese manuell eingestellt werden.

#### Seca-PPV

to be filled

#### pincode

Erlaubt das Angeben des Pincodes der Karte für z.B. PPV oder Jugendschutz.

#### sid

Eine Sektion um manuell die erlaubten und verbotenen Service IDs der Karte zu definieren (um z.B. bestimmte Sender für das Sharing zu sperren).

##### allow

Listet alle erlaubten Service IDs auf. Einzelne Einträge bestehen aus einem id-Tag mit einer vierstelligen Zahl. Ist die ServiceID nur dreistellig (z.B. 123), so muss eine 0 vorangestellt werden (z.B. 0123).

##### deny

Listet alle verbotenenen Service IDs auf. Einzelne Einträge bestehen aus einem id-Tag mit einer vierstelligen Zahl. Ist die ServiceID nur dreistellig (z.B. 123), so muss eine 0 vorangestellt werden (z.B. 0123).

#### priority

Ermöglicht in gewisser Weise eine Priorisierung der ECMs von Usern wenn die Karte beschäftigt ist. Bei Verwendung von round sind alle gleichberechtigt ("Zufall"), bei fifo kommt der zuerst gesendete ECM auch zuerst an. Bei Verwendung von hard werden User, die eine niedrigere UserID haben (also in der Userliste der NewCamd-Konfiguration weiter vorne stehen) vor höheren UserIDs bevorzugt.

## cache

NewCS verfügt über einen Cache für EMMs und ECMs um die Performance zu steigern. Hiermit können die Parameter dieser Caches geändert werden.

### EMM

Anzahl der EMMs, die gespeichert werden von 0-255.

### ECM

Anzahl der ECMs, die gespeichert werden von 0-255. Alternativ kann ein Wert von -1 angegeben werden, wodurch der Cache automatisch verwaltet wird.

## radegastserver

Einstellungen für Cardsharing über das [Radegast](/index.php?title=Radegast&action=edit&redlink=1 "Radegast (Seite nicht vorhanden)")\-Protokoll.

### enabled

yes zum Einschalten, no zum Ausschalten des Radegastprotokolls.

### port

Der Port auf dem der Radegastserver läuft.

### allow

Eine Sektion um bestimmten IPs den Zugriff auf den Server zu gestatten. Es können beliebig viele hostname-Einträge hinzugefügt werden um diesen Zugriff zu gestatten.

#### hostname

Eine IP-Adresse oder DNS-Adresse, welche auf den Server zugreifen darf.

## newcamdserver

Einstellungen für Cardsharing über das [NewCamd](/index.php?title=NewCamd&action=edit&redlink=1 "NewCamd (Seite nicht vorhanden)")\-Protokoll.

### enabled

yes zum Einschalten, no zum Ausschalten des NewCamdprotokolls.

### name

Dient zur Identifikation gegenüber Clients. Hat nur kosmetische Auswirkungen.

### deskey

Ein DES-Schlüssel zur Verschlüsselung der Kommunikation. Sollte unbedingt geändert werden! Bitte das angegebene Format beachten (14 2-stellige Zahlen)!

### user

Erlaubt die Definition von Benutzern. Pro Nutzer muss eine eigene User-Sektion erstellt werden (inkl. <user> und </user>). Jeder Benutzer kann nur 1 Verbindung zum Server gleichzeitig aufbauen!

#### name

Der Benutzername für den Login (case-sensitive).

#### password

Das Passwort für den Login (case-sensitive).

#### hostname

Die IP-Adresse oder DNS-Adresse des Clients. Wird für den Reverse-Login verwendet. Auskommentieren wenn dieser nicht benötigt wird.

#### port

Der Port des Clients. Wird für den Reverse-Login verwendet und muss dementsprechend beim Client in der Firewall freigegeben sein. Auskommentieren wenn Reverse-Login nicht benötigt wird.

#### au

On wenn der Client EMMs zum Server senden darf, sonst Off.

#### sidoverride

On wenn der Client den Service ID-Filter (siehe Reader-Sektion oben!) ignorieren kann, sonst Off.

#### readers

Erlaubt die Angabe der erlaubten Kartenleser (Reader). Wenn dies auskommentiert ist, sind alle erlaubt! Es können beliebig viele allow-Einträge vorhanden sein.

##### allow

Die Bezeichnung des erlaubten Kartenlesers.

#### spider

Yes wenn der Client ein NewCamd-Cardspider sein darf, sonst No.

## debug

Enthält Einstellungen für das Loggen. Es ist möglich, in eine Datei zu loggen (file), an eine Rechner per UDP Logmeldungen (udp) zu senden oder sich die Meldungen per Telnet-Verbindung (tcp) anzusehen. Des Weiteren können die Meldungen auf dem ausführenden Rechner auf der Konsole angezeigt werden.

### password

Das Passwort für Telnet-Verbindungen. Muss mindestens aus 8 und maximal aus 25 Zeichen bestehen.

### mode

Erlaubt die Angabe von simple oder advanced. Im advanced-Modus können per Telnet mehr Kommandos ausgeführt werden (welche potentiell gefährlich sind!)

### level

Wie ausführlich die Debugausgaben sein sollen. Möglich sind (nach Ausführlichkeit der Meldungen sortiert): none, normal, verbose, spam und internal.

### type

Für welchen Typen Debugausgaben erzeugt werden. Möglich sind: Init, general, ecm, emm, net, io und all. Mehrere dieser Begriffe können durch Kommas getrennt angegeben werden (z.B. "Init,ecm,emm").

### output

Definiert, wo Logmeldungen ausgegeben werden sollen. Möglich sind: Console, udp, tcp, file und all. Mehrere dieser Begriffe können durch Kommas getrennt angegeben werden (z.b. "Console,tcp").

### console\_options

Ermöglicht eine separate Definition des Loglevels und der Logtypen (mit Komma getrennt) für die Konsole. Die möglichen Werte sind analog den Sektionen level und type! Kann auskommentiert werden um die Standardeinstellungen zu nutzen.

### logfile

Definiert den Speicherort der Logdatei.

### file\_options

Ermöglicht eine separate Definition des Loglevels und der Logtypen (mit Komma getrennt) für die Speicherung in der Logdatei. Die möglichen Werte sind analog den Sektionen level und type! Kann auskommentiert werden um die Standardeinstellungen zu nutzen.

### udp\_host

Gibt die IP-Adresse des Hosts an, an welchen die Logmeldungen per UDP versandt werden.

### udp\_port

Gibt den Port des Hosts an, an welchen die Logmeldungen per UDP versandt werden.

### udp\_options

Ermöglicht eine separate Definition des Loglevels und der Logtypen (mit Komma getrennt) für den Versand per UDP. Die möglichen Werte sind analog den Sektionen level und type! Kann auskommentiert werden um die Standardeinstellungen zu nutzen.

### tcp\_port

Gibt den Port für den Telnet-Server an, auf den man sich zu Debug-Zwecken und zur Steuerung von NewCS einloggen kann.

### tcp\_options

Ermöglicht eine separate Definition des Loglevels und der Logtypen (mit Komma getrennt) für den Telnet-Server. Die möglichen Werte sind analog den Sektionen level und type! Kann auskommentiert werden um die Standardeinstellungen zu nutzen.

## httpd

Eine Sektion für Einstellungen des Webinterfaces von NewCS. Die meisten Windows-Versionen unterstützen kein Webinterface. In diesem Fall sind die Einstellungen wirkungslos.

### server

Enthält generelle Servereinstellungen.

#### port

Der Port für den HTTP-Server

#### enabled

Ob der Server aktiviert ist oder nicht.

### user

Dient zur Definition von Zugangsdaten für den HTTP-Server. Es können mehrere dieser Sektionen existieren um unterschiedlichen Nutzern unterschiedliche Rechte zu gewähren.

#### name

Der Benutzername für den Login (case sensitive).

#### password

Das Passwort für den Login (case sensitive).

#### accesslevel

Die Rechte des Nutzers. Entweder admin für einen Administrator oder stats für einen User, der nur Statistiken sehen kann.

## chameleon2

Das Chameleon2-Protokoll stellt eine Art P2P-Technik für die Verteilung von Kartendaten dar. Die Kommunikation erfolgt dabei mittels einer proprietären Verschlüsselung welche mit dem Vorgängerprotokoll Chameleon nicht mehr kompatibel ist (dieses verwendete SSL). Der einzige kompatible Client ist derzeit (März 2009) die MGCamd, das Protokoll selbst ist "Work in progress" und kann sich jederzeit ändern.

[![](/images/4/44/UnderConstruction.png)](/wiki/Datei:UnderConstruction.png) **Diese Sektion ist unvollständig und muss überarbeitet werden.**

### server

Enthält Einstellungen für die Serverseite (Beantworten von Anfragen mit eigenen Karten).

#### port

Der Port für eingehende Verbindungen

#### enabled

Yes zum Einschalten, No zum Ausschalten des Servers.

#### realm

[![](/images/9/99/Unsure.png)](/wiki/Datei:Unsure.png) **Die folgenden Informationen sind möglicherweise nicht korrekt und sollten überprüft werden.**

Ein Realm zu den Clients übermittelt wird. Soll in Zukunft das Verbinden zu mehreren Netzwerken erlauben.

### peer

Enthält Einstellungen für die Verbindungen zu einem anderen Chameleon2-Server

#### hostname

IP oder DNS-Name des anderen Servers.

#### port

Port des anderen Servers.

#### name

Username zum Login (case sensitive).

#### password

Passwort zum Login (case sensitive).

#### realm

[![](/images/9/99/Unsure.png)](/wiki/Datei:Unsure.png) **Die folgenden Informationen sind möglicherweise nicht korrekt und sollten überprüft werden.**

Soll in Zukunft das Verbinden zu mehreren Netzwerken erlauben.

### user

Enthält Einstellungen für erlaubte User auf dem Server.

#### name

Username zum Login (case sensitive).

#### password

Passwort zum Login (case sensitive).

#### realm

[![](/images/9/99/Unsure.png)](/wiki/Datei:Unsure.png) **Die folgenden Informationen sind möglicherweise nicht korrekt und sollten überprüft werden.**

Soll in Zukunft das Verbinden zu mehreren Netzwerken erlauben.

### virtualcards

Ermöglicht das Hinzufügen von virtuellen Karten.

#### vc

Enthält die Daten für eine CAID/Provider-Kombination. Es können beliebig viele vc-Sektionen erstellt werden.

##### caid

Die CAID (Conditional Access Identification) gibt den verwendeten Verschlüsselungsanbieter an. Vgl. auch [diesen Link](http://www.vdr-wiki.de/wiki/index.php/CAID#CA-ID).

##### provider

Enthält eine Provider-ID. Manche Anbieter verwenden dies um die Datenströme von verschiedenen Pay-TV Anbietern zu trennen. Vgl. auch [diesen Link](http://www.vdr-wiki.de/wiki/index.php/CAID#Provider-ID_.2F_Ident).