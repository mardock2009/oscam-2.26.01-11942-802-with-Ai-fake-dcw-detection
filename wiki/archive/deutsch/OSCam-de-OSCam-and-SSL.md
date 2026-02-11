> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/de/OSCam and SSL

## Inhaltsverzeichnis

+   [1 SSL WebUI aktivieren](#SSL_WebUI_aktivieren)
    +   [1.1 1\. oscam.conf](#1._oscam.conf)
        +   [1.1.1 httpport](#httpport)
    +   [1.2 2\. oscam.pem](#2._oscam.pem)
        +   [1.2.1 Web Zertifikat erzeugen](#Web_Zertifikat_erzeugen)
    +   [1.3 3\. oscam.pem in das Konfigurationsverzeichnis kopieren und OSCam neu starten](#3._oscam.pem_in_das_Konfigurationsverzeichnis_kopieren_und_OSCam_neu_starten)

## SSL WebUI aktivieren

Um den SSL Zugriff auf die OSCAM WebUI zu aktivieren, sind mehrere Schritte notwendig.



### 1\. oscam.conf

#### httpport

Vor dem Port muss ein "+" hinzugefügt werden

<syntaxhighlight lang="bash"> httpport = +83 </syntaxhighlight>



### 2\. oscam.pem

#### Web Zertifikat erzeugen

<syntaxhighlight lang="bash">

1.  !/bin/bash
2.  Paßwortgeschützten Server Key erzeugen

openssl genrsa -des3 -out server.key 1024

1.  Ungeschützte Version extrahieren

openssl rsa -in server.key -out server.key.unsecure

1.  Certificate Signing Request (CSR) mit persönlichen Daten erzeugen

openssl req -new -key server.key -out server.csr

1.  Ein Jahr gültiges, selbst signiertes Zertifikat anfordern

openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

1.  CSR wird nicht mehr benötigt

rm server.csr

1.  Schlüssel + Zertifikat (in dieser Reihenfolge!)
2.  in einer Datei zusammenführen

cat server.key.unsecure server.crt > oscam.pem </syntaxhighlight>



### 3\. oscam.pem in das Konfigurationsverzeichnis kopieren und OSCam neu starten