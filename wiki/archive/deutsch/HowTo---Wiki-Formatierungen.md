> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# HowTo - Wiki Formatierungen

## Inhaltsverzeichnis

+   [1 Teufelchen und Engelchen](#Teufelchen_und_Engelchen)
+   [2 HowTo - Wiki formatieren](#HowTo_-_Wiki_formatieren)
    +   [2.1 Textgestaltung](#Textgestaltung)
        +   [2.1.1 Kategorien](#Kategorien)
        +   [2.1.2 Farbige Texte](#Farbige_Texte)
        +   [2.1.3 Farbige Hinweise (Vorlagen)](#Farbige_Hinweise_\(Vorlagen\))
        +   [2.1.4 Status-Meldungen](#Status-Meldungen)
+   [3 Spezielle Vereinbarungen für den Artikel "Vom Auschecken bis zum Image"](#Spezielle_Vereinbarungen_für_den_Artikel_"Vom_Auschecken_bis_zum_Image")

## Teufelchen und Engelchen

[![](/images/7/71/ErrorS.png)](/wiki/Datei:ErrorS.png) **Wichtig!**

+   Schaue Dir den **Quellcode von bestehenden Dateien/Artikel** an, bevor Du Deine ersten Änderungen vornimmst.
+   **Nutze die Vorschau**, bevor Du eine Seite endgültig veränderst oder erstellst.
+   Wenn **ein und derselbe Text mehrfach verwendet** werden kann, erstelle eine Vorlage und nutze diese!
+   **Denke vorausschauend**, z.B. an die Multilingualität (Mehrsprachigkeit), bevor Du neue Seiten erstellst.
+   Benutze **HTML nur**, wenn der Wiki-Code nicht ausreicht!
+   Verwende **keine absoluten Links innerhalb des Wikis**, wenn Wiki-Links verwendet werden können! (Siehe nachfolgende Tabelle).
+   Für die Verlinkung zur Streamboard-Hauptseite existieren die folgenden Spezial-Linkmöglichkeiten:

| Syntax | Beschreibung | Beispiel |
| --- | --- | --- |
| Streamboard:<URL> | Verlinkung auf eine Seite der Streamboard-Domain. Achtung: Es dürfen keine Parameter im Link sein! | [Timeline](http://www.streamboard.tv/oscam/timeline "streamboard:oscam/timeline") |
| Streamboard-Post:<PostID> | Verlinkung eines Postings im Forum | [Erster Post](http://www.streamboard.tv/wbb2/thread.php?postid=1#post1 "streamboard-post:1") |
| Streamboard-Thread:<ThreadID> | Verlinkung eines Threads im Forum | [Erster Thread](http://www.streamboard.tv/wbb2/thread.php?threadid=1 "streamboard-thread:1") |
| Streamboard-Board:<BoardID> | Verlinkung eines Boards im Forum | [Smalltalk](http://www.streamboard.tv/wbb2/board.php?boardid=2 "streamboard-board:2") |
| Streamboard-Attachment:<AttachmentID> | Verlinkung eines Attachments im Forum | [mpcsmon-src-0.6.tar.bz2](http://www.streamboard.tv/wbb2/attachment.php?attachmentid=30197 "streamboard-attachment:30197") |

[![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Hinweise:**

+   Beachte auch Kleinigkeiten wie Absätze, Leerzeilen und Leerzeichen.
+   Verwende Leerzeichen anstatt Tabs, wenn Du eine Seite in einem externen Editor bearbeitest.



| Schlecht! - Bad! - Mauvais! | Gut! - Good! - Bon! | Kommentar - Comment - Commentaire |
| --- | --- | --- |
| \= Überschrift 1 = |  | Die **Ebene 1** ist für den Seitentitel reserviert und innerhalb von Artikeln **unerwünscht**.
Beginne also immer mit Ebene 2 und verwende Ebene 1 so gut wie nie.

 |
| \==Überschrift== | \== Überschrift == | Achte auf die Leerzeichen, auch wenn beides funkioniert. |
| \== '''Überschrift 2''' == | \== Überschrift 2 == | Es ist doch eine Überschrift, also verzichte bitte auf weitere Formatierungen. |
|

\== Überschrift 2 ==

\=== Überschrift 3 ===

 |

\== Überschrift 2 ==
\=== Überschrift 3 ===

 | Überschriften, oder Texte nach einer Überschrift, können direkt danach folgen, also ohne Absatz. |
| \[http://www.domain.irgendwo/wiki/index.php/Hauptseite\] | \[\[Hauptseite\]\] | **Links innerhalb eines Wikis sollten nicht absolut angegeben werden**! Denk nur mal daran, wenn das Wiki die Domain wechselt... |



## HowTo - Wiki formatieren

### Textgestaltung

Hier wird erklärt wie man verschieden Darstellungen von Texten im Wiki beeinflussen kann/sollte. Es handelt sich hier um ein MediaWiki-System, das dieselben Formatierungsmöglichkeiten bietet wie [Wikipedia](http://de.wikipedia.org/wiki/Hilfe:Bearbeiten).

| Ergebnis | Code | Kommentar |
| --- | --- | --- |
| *kursiv* | ''kursiv'' | z.B. für Dateinamen |
| **fett** | '''fett''' | z.B. für wichtige Hinweise |
| ***fett und kursiv*** | '''''fett und kursiv''''' | z.B. für wichtige Dateinamen |
| Wiki-Sonderzeichen, zB.: < > '' \[ \] == | <nowiki>Wiki-Sonderzeichen, zB.: < > '' \[ \] ==</nowiki> | z.B. für Code Schnipsel, damit vorkommende Zeichen vom Wiki nicht als Formatierung interpretiert werden |
|
```
wichtiger Hinweis
Zeile 2

Zeile 4
```

 | <LEERZEICHEN>wichtiger Hinweis
<LEERZEICHEN>Zeile 2
<LEERZEICHEN>
<LEERZEICHEN>Zeile 4 | Einfügen von Code, Kommandos oder wichtigen Hinweisen in einem Kasten werden per **Leerzeichen am Zeilenanfang** eingeleitet.

Mit *<LEERZEICHEN>* im Code-Beispiel ist ein echtes Leerzeichen gemeint, hierbei handelt es sich nicht um "Wiki-Code" ;)

 |
|

+   eins
+   zwei
    +   zwei-eins
    +   zwei-zwei
+   drei

 |

\* eins
\* zwei
\*\* zwei-eins
\*\* zwei-zwei
\* drei

 | Aufzählungen, z.B. benötigte Pakete |
| Überschriften | \== Überschrift Ebene 2 ==

\====== Überschrift Ebene 6 ======

 | Die **Ebene 1** ist für den Seitentitel reserviert und innerhalb von Artikeln **unerwünscht**. |
|

<syntaxhighlight lang="php"> <?php

1.  ich bin ein Kommentar

echo 'ich bin PHP Code'; ?> </syntaxhighlight>

 |

<syntaxhighlight lang="php">
<?php
\# ich bin ein Kommentar
echo 'ich bin PHP Code';
?>
</syntaxhighlight>


 | Syntaxhervorhebung in PHP |
|

<syntaxhighlight lang="bash">

1.  ich bin ein Kommentar

echo 'ich bin Bash Code' </syntaxhighlight>

 |

<syntaxhighlight lang="bash">
\# ich bin ein Kommentar
echo 'ich bin Bash Code'
</syntaxhighlight>


 | Syntaxhervorhebung in Bash |

Manuelle Zeilenumbrüche können mit <br /> erzwungen werden. Damit sollte aber sparsam umgegangen werden!



#### Kategorien

Jeder Artikel sollte kategorisiert werden und somit z.B. wie folgt beginnen:

```
[[Kategorie:OSCam]]
```

Die "Haupt"-Artikel/-Seiten dürfen auch mehreren Kategorien zugeordnet werden, z.B.:

```
[[Kategorie:HowTo]]
[[Kategorie:Cardserver]]
[[Kategorie:OSCam]]
```

Unter-Artikel/-Seiten sind wiederum nur der Kategorie der übergeordneten Seite zuzuordnen.



#### Farbige Texte

| Ergebnis | Code |
| --- | --- |
| ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA | <span style="background-color:Blue;color:White;padding:0 5px;">ÄNDERUNG - CHANGE - MODIFICATIONS - MODIFICA</span> |
| NEU - NEW - NOUVEAU - NUOVO | <span style="background-color:Green;color:White;padding:0 5px;">NEU - NEW - NOUVEAU - NUOVO</span> |
| HINWEIS - TIP - CONSEIL - NOTA | <span style="background-color:Yellow;padding:0 5px;">HINWEIS - TIP - CONSEIL - NOTA</span> |
| VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO | <span style="background-color:Red;color:White;padding:0 5px;">VERALTET - OBSOLETE - OBSOLÈTE - ANTIQUATO</span> |



#### Farbige Hinweise (Vorlagen)

Am "Code" siehst Du, dass viele (bzw. in diesem Fall englische und französische) Köche den Brei auch verderben können :(

| Ergebnis | Code |
| --- | --- |
|
[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parameter ist optional**

 | {{Optional}} |
|

[![](/images/d/dc/HakenRot.png)](/wiki/Datei:HakenRot.png) **Parameter wird benötigt**

 | {{Mandatory}} |
|

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **Parameter wird abhängig vom Setup/Programmversion benötigt.**

 | {{Depends}} |
|

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **parameter is optional**

 | {{Optional/en}} |
|

[![](/images/d/dc/HakenRot.png)](/wiki/Datei:HakenRot.png) **parameter is required**

 | {{required}} |
|

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **parameter depends on setup/programversion**

 | {{Depends/en}} |
|

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Ce paramètre est optionnel**

 | {{Pasindispensable}} |
|

[![](/images/d/dc/HakenRot.png)](/wiki/Datei:HakenRot.png) **Ce paramètre est obligatoire**

 | {{Obligatoire}} |
|

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **Ce paramètre dépend de la configuration/version du programme.**

 | {{Version}} |
|

[![](/images/4/46/HakenGruen.png)](/wiki/Datei:HakenGruen.png) **Parametro facoltativo**

 | {{Optional/it}} |
|

[![](/images/d/dc/HakenRot.png)](/wiki/Datei:HakenRot.png) **Parametro necessario**

 | {{Mandatory/it}} |
|

[![](/images/5/5e/HakenBlau.png)](/wiki/Datei:HakenBlau.png) **Parametro necessario secondo la impostazione e versione del programma**

 | {{Depends/it}} |



#### Status-Meldungen

| Ergebnis | Code |
| --- | --- |
| [![](/images/1/17/HelpS.png)](/wiki/Datei:HelpS.png) **Hilfe:** | \[\[Datei:HelpS.png|text-bottom\]\] '''Hilfe:''' oder "Help" für englisch, oder "Aide" für französisch, oder "Aiuto" für italienisch |
| [![](/images/0/00/MessageS.png)](/wiki/Datei:MessageS.png) **Info:** | \[\[Datei:MessageS.png|text-bottom\]\] '''Info:''' |
| [![](/images/a/a0/WarningS.png)](/wiki/Datei:WarningS.png) **Achtung:** | \[\[Datei:WarningS.png|text-bottom\]\] '''Achtung:''' oder "Attention" für englisch und französisch, oder "Attenzione" für italienisch |
| [![](/images/7/71/ErrorS.png)](/wiki/Datei:ErrorS.png) **Fehler:** | \[\[Datei:ErrorS.png|text-bottom\]\] '''Fehler:''' oder "Error" für englisch, oder "Erreur" für französisch, oder "Errore" für italienisch |
| [![](/images/c/c8/UnderConstruction.jpg)](/wiki/Datei:UnderConstruction.jpg) **Baustelle** | \[\[Datei:UnderConstruction.jpg|text-bottom\]\] '''Baustelle''' oder "Under Construction" für englisch, oder "En cours d'élaboration" für französisch, oder "in construzione" für italienisch |
| [![](/images/3/3a/Unsicher.gif)](/wiki/Datei:Unsicher.gif) **Unsicher** | \[\[Datei:Unsicher.gif|text-bottom\]\] '''Unsicher''' oder "Unsure" für englisch, oder "incertain" für französisch, oder "Incerto" für italinisch |
| [![](/images/f/ff/Obsolet.jpg)](/wiki/Datei:Obsolet.jpg) **Nicht mehr verwendet!** | \[\[Datei:Obsolet.jpg|text-bottom\]\] '''Nicht mehr verwendet''' oder "Obsolet!" für englisch, oder "Obsolète" für französisch, oder "non piu utilizzato" für italienisch |



## Spezielle Vereinbarungen für den Artikel "Vom Auschecken bis zum Image"

Allgemeines zum System

+   Linux USER ist **sb**
+   Linux HOSTNAME ist **build**

Vereinbarungen zum Compilieren

+   build-prefix ist **\--prefix=/dbox2**
+   cvsdir ist **\--with-cvsdir=/tuxbox-cvs**
+   maintainer-mode ist **\--enable-maintainer-mode**
+   targetrules ist **\--with-targetruleset=flash**