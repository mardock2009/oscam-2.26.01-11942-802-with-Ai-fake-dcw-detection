> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Glossar

Hier soll ein kleines Glossar der häufig verwendeten Begriffe entstehen.

## Inhaltsverzeichnis

+   [1 C](#C)
+   [2 D](#D)
+   [3 E](#E)
+   [4 K](#K)
+   [5 O](#O)

## C

**Cardreader**: Kartenleser. Eine per serieller Schnittstelle, USB oder intern (per propietärem Anschluss) angeschlossene Hardwareeinheit zum Einbinden einer Smartcard in ein Entschlüsselungssystem. Siehe [Cardreader](/wiki/Cardreader "Cardreader").

**Cardserver**: Eine Software, welche ein oder mehrere Smartcards anspricht und deren Antworten an weitere Software (Emus) weitergibt. Siehe [Cardserver](/wiki/Cardserver "Cardserver").

**Cardsharing**: Ein System, welches die zur Entschlüsselung von Pay-Tv benötigten Informationen (dCWs) einer einzigen Smartcard vom sog. Server per Netzwerkkommunikation an mehrere sog. Clienten übermittelt.

**cCW**: Crypted Control Word. Das noch verschlüsselte Control Word (CW).

**CS**: siehe Cardsharing.

**CW**: Control Word. Das CW wird benötigt, um die verschlüsselten Bild/Tonsignale im DVB-Strom entschlüsseln zu können. Dabei wird alle paar Sekunden (je nach Verschlüsselungssystem 7-10 sek) ein neues verwendet.

## D

**dCW**: Decrypted Control Word. Das bereits von der Smartcard entschlüsselte Control Word (CW).

## E

**ECM**: Entitlement Control Message. Im DVB-Datenstrom werden diese ECMs mitgesendet und vom Entschlüsselungssystem an die Smartcard übermittelt. Diese entschlüsselt die in den ECMs enthaltenen cCWs und übermittelt die dCWs zurück an die DVB-Hardware, welche die dCWs benutzt, um die Bild/Tonsignale, welche mit dem CSA verschlüsselt sind, zu entschlüsseln. Siehe [ECM](/wiki/ECM "ECM").

**EMM**: Entitlement Management Messages. Im DVB-Datenstrom werden diese EMMs mitgesendet und vom Entschlüsselungssystem an die Smartcard übermittelt. Damit können Pay-Tv-Abos erstmalig freigeschaltet bzw dauerhaft freigehalten werden.

**Emu** (Emulator, auch Softcam, camd): Eine Software, welche die Funktion einer Smartcard nachbildet, also aus den cCWs mittels sog. Keys die dCWs berechnet. Viele Emus können auch die von einem Cardserver von einer Smartcard (oder einem anderem Emu) erhaltenen dCWs empfangen, an das Box-eigene Entschlüsselungssystem senden, und diese sogar an weitere Emus weitersenden. Dies nennt sich Cardsharing (kurz: CS).

## K

**Key bzw Keys**: Schlüssel (auch: Kekse, Futter). Eine Art "Passwort" (also letztendlich eine Bytefolge) welche es einem Emu ermöglicht aus einem cCW ein dCW zu berechnen.

## O

**Oscam**: "Open Source Conditional Access Module". Ein Cardserver.