> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/Langzeitlog

## Inhaltsverzeichnis

+   [1 Langzeit Log erstellen](#Langzeit_Log_erstellen)
    +   [1.1 Vorbereiten des Sticks](#Vorbereiten_des_Sticks)
    +   [1.2 Erstellen des Script's](#Erstellen_des_Script's)
    +   [1.3 Anpassen der Parameter im Script](#Anpassen_der_Parameter_im_Script)
    +   [1.4 Ausführen und Auswerten](#Ausführen_und_Auswerten)

## Langzeit Log erstellen

Ich gebe hier die Möglichkeit, ein Langzeit Log auf einem USB-Stick zu erstellen. Oscam erstellt ja leider Maximal 2 log Dateien mit jeweils 10MB.,Dies langt leider nicht aus, wenn man Logs über Tage benötigt.

### Vorbereiten des Sticks

\- USB-Stick Formatieren auf gewünschtes Format



### Erstellen des Script's

\- folgendes scipt auf dem USB-Stick erstellen

```
 vi log.sh
```

```
 [i] drücken für Insertmode
```

\- script kopieren und einfügen

```
 #!/bin/sh
 ###BEGINN INFO
 #Für: Oscam
 #Beschreibung: Erstellt Oscam Langzeit Log
 #Author: Streamboard.de.vu
 ### END INFO

 #KONFIGURATION
 logdir=                 #zb  /usr/local/etc
 log=oscam.log
 logprev=oscam.log-prev
 count=1
 countmax=300    #300*10MB=3GB
 sleeptime=120     # sek.
 #ENDE


 while true ;do
 if [ -f $logdir/$logprev ]; then
  echo "$count"
  mv -f $logdir/$logprev $logdir/$count.log
  date >> $logdir/$count.log
  count=$((count+1))
 else
  sleep 1
 fi
 if [ $count -gt "$countmax" ]; then
  count=1
 fi
 sleep $sleeptime
 done
```



```
 [ESC] drücken für Insertmode verlassen
```

### Anpassen der Parameter im Script

```
      logdir     = logging Verzeichniss wo oscam.log liegt
      countmax   = Maximal zu erstellen Log's (300x10Mb =3Gb z.b)
      sleeptime  = Zeit die das Script wartet bis zum nächsten ausführen

```

\- Mit den Pfeiltasten an die zu ändernde stelle Navigieren

```
 [i] für insertmode
```

Werte ändern

```
 [ESC] für Insertmode verlassen
```

Wenn alles so ist wie gewünscht

```
[:] für Befehlsmodus
[w][q] für schreiben und verlassen
```

### Ausführen und Auswerten

\- Das Script muss die passenden Rechten vergeben werden

```
 netbook:~/oscam$ chmod +x ./log.sh

```

\- Das Script muss im Hintergrund ausgeführt werden in dem Verzeichniss wo es liegt

```
  netbook:~/oscam$ ./log.sh &
```