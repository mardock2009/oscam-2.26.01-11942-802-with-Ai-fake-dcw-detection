> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/examples/Reader

## Inhaltsverzeichnis

+   [1 Example Reader Configurations](#Example_Reader_Configurations)
    +   [1.1 Serial-Mouse kompatible Reader](#Serial-Mouse_kompatible_Reader)
    +   [1.2 USB-Mouse kompatible Reader](#USB-Mouse_kompatible_Reader)
    +   [1.3 Remote Camd3.78x Reader with fallback for group 1](#Remote_Camd3.78x_Reader_with_fallback_for_group_1)
    +   [1.4 Remote Newcamd Reader with fallback for group 2](#Remote_Newcamd_Reader_with_fallback_for_group_2)
    +   [1.5 Remote CCcam Reader](#Remote_CCcam_Reader)
    +   [1.6 PCSC Reader](#PCSC_Reader)
    +   [1.7 Smargo Smartreader+](#Smargo_Smartreader+)
    +   [1.8 Internal Reader](#Internal_Reader)
    +   [1.9 Constant CW](#Constant_CW)
    +   [1.10 Remote Radegast Reader](#Remote_Radegast_Reader)
    +   [1.11 AD-Teknik](#AD-Teknik)
        +   [1.11.1 AB Multiprogrammer 3.5 serial](#AB_Multiprogrammer_3.5_serial)
        +   [1.11.2 AB Multiprogrammer 3.6. USB](#AB_Multiprogrammer_3.6._USB)
        +   [1.11.3 AB USB Phoenix at 6.00 mhz](#AB_USB_Phoenix_at_6.00_mhz)
    +   [1.12 sc8in1 reader](#sc8in1_reader)
+   [2 **Smargo Special**](#Smargo_Special)

## Example Reader Configurations

The **reader** is the module that allows OSCam server to translate ECMs received from clients into CWs, which are sent back to clients for decrypting channels. There are two types of readers: hardware readers, which are somehow connected to the machine which runs OSCam server, and remote readers, which are running on different machines than the one running the OSCam server.

For the hardware readers, OSCam needs to know what type the reader is, how it is connected to the machine, what protocol it "speaks", and what subscription cards are inserted in that device.

For the remote readers, OSCam must know the IP address and port where to connect, the protocol spoken, and how to authenticate itself (username/password). Again, you can specify subscriptions that can be found there.

The following list shows example configurations for the supported readers.

### Serial-Mouse kompatible Reader

```
[reader]
label    = myserialmouserreader
protocol = mouse
detect   = CD
device   = /dev/ttyS0
group    = 1
emmcache = 1,3,2
services = myservice,thisservice
caid     = 0100
```

### USB-Mouse kompatible Reader

```
[reader]
label     = myusbmousereader
protocol  = mouse
detect    = CD
device    = /dev/ttyUSB0
aeskey    = 0102030405060708090a0b0c0d0e0f10
group     = 2
emmcache  = 1,3,2
services  = services2
caid      = 0200
```

### Remote Camd3.78x Reader with fallback for group 1

```
[reader]
label     = mycamd378xreader
protocol  = cs378x
device    = 192.168.0.1,1234
user      = user1,
password  = password1
group     = 1
fallback  = 1
```

### Remote Newcamd Reader with fallback for group 2

```
[reader]
label     = mynewcamdreader
protocol  = newcamd
key       = 0102030405060708091011121314
device    = 192.168.0.2,2345
user      = user2
password  = password2
group     = 2
fallback  = 1
```

### Remote CCcam Reader

```
[reader]
label     = mycccamreader
protocol  = cccam
device    = 192.168.0.3,3456
user      = user3
password  = password3
group     = 3
caid      = 0300,0400,0500
cccversion= 1.2.3
cccbuild  = 4567
```

### PCSC Reader

```
[reader]
label     = mypcscreader
protocol  = pcsc
device    = 0
aeskey    = 0102030405060708090a0b0c0d0e0f10
group     = 4
caid      = 0600
```

### Smargo Smartreader+

```
# example 1
[reader]
label     = mysmargoreader
protocol  = smartreader
device    = 001:002
aeskey    = 0102030405060708090a0b0c0d0e0f10
group     = 5
caid      = 0700

# example 2
[reader]
label      = mysmargoreader
protocol   = smartreader
device     = Serial:Reader 1
detect     = cd
mhz        = 600
cardmhz    = 600
emmcache   = 1,3,2
group      = 5
services   = my_services
```

### Internal Reader

```
[reader]
label     = myinternalreader
protocol  = internal
device    = /dev/sci0
group     = 6
caid      = 0800
```

### Constant CW

```
[reader]
label     = myconstantcw
protocol  = constcw
device    = /var/keys/constant.cw
group     = 7
```

### Remote Radegast Reader

```
[reader]
label        = myradegastreader
protocol     = radegast
device       = 192.168.0.6,56789
group        = 9
caid         = 0500
```

### AD-Teknik

#### AB Multiprogrammer 3.5 serial

```
[reader]
label        = mymultiprogrammer3.5
protocol     = mp35
detect       = CD
device       = /dev/ttyS1
group        = 10
emmcache     = 1,3,2
services     = services10
caid         = 0900
```

#### AB Multiprogrammer 3.6. USB

```
[reader]
label        = mymultiprogrammer3.6
protocol     = mp35
detect       = CD
device       = /dev/ttyUSB1
group        = 11
emmcache     = 1,3,2
services     = services11
caid         = 1000
```

#### AB USB Phoenix at 6.00 mhz

```
[reader]
label        = mymultiprogrammerUSBPhoenix
protocol     = mp35
detect       = CD
device       = /dev/ttyUSB2
mhz          = 600
group        = 12
emmcache     = 1,3,2
services     = services12
caid         = 1100
```

### sc8in1 reader

```
[reader]
label        = mysc8in1reader
protocol     = sc8in1
device       = /dev/ttyUSB0:1
group        = 13
emmcache     = 1,3,2
services     = services11
caid         = 1200
```

## **Smargo Special**

First, read about **udev** => [http://en.wikipedia.org/wiki/Udev](http://en.wikipedia.org/wiki/Udev)

Smargo readers do not offer clear identification in a standard manner, at least before firmware 1.04. Starting from firmware 1.04, one can assign a clear identifier with the Smargo tools. To find out how to set the identifier (the clear name), please refer to the Smargo tool documentation, which should be included in the Smargo tools package.

The following example shows three Smargos and a MasterCRD on Debian Linux.

We **remove all Smargos from the PC** and attach them in sequence, while using Smargo tools to identify each device, as follows:

```
cd /where/the/smargotools/are # change directory to where Smargo tools are
```

```
# Attach first Smargo WITHOUT card, in a different USB slot, and then...
./srp_tool -n 1 # we assign identifier "1" to this device, later assigned to OSCam as "Serial:Reader 1"
```

```
# Attach another Smargo, then...
./srp_tool -n 2 # we assign identifier "2" to this device, later assigned to OSCam as "Serial:Reader 2"
```

```
# and so on...
```

An example using udev-rules:

```
# provide new udev-rules
vi /lib/udev/rules.d/10-usb-name-for-example.rules
```

```
# then type as follows:
```

```
# Smargo 1
SUBSYSTEMS=="usb", KERNEL=="ttyUSB*", ATTRS{serial}=="Reader 1", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", SYMLINK+="smargo1", MODE="0666"
# Smargo 2
SUBSYSTEMS=="usb", KERNEL=="ttyUSB*", ATTRS{serial}=="Reader 2", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", SYMLINK+="smargo2", MODE="0666"
# Smargo 3
SUBSYSTEMS=="usb", KERNEL=="ttyUSB*", ATTRS{serial}=="Reader 3", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", SYMLINK+="smargo3", MODE="0666"
# MasterCRD over Serial connector *************************
SUBSYSTEMS=="usb", KERNEL=="ttyUSB*", ATTRS{idVendor}=="4711", ATTRS{idProduct}=="4712", SYMLINK+="masterCRD", MODE="0666"
```

An example udev-rule for Smargo SmartReader and Triple Reader+ [\[1\]](http://www.streamboard.tv/wbb2/thread.php?postid=454631):

```
# File: /etc/udev/rules.d/45-smargo-reader.rules
############################## smargo tripple ###########################
SUBSYSTEMS=="usb", ATTRS{interface}=="Triple Reader+", ATTRS{../serial}=="12345678", ATTRS{bInterfaceNumber}=="01", SYMLINK+="sc/my-special-card", GOTO="smargo_tripple_end"
SUBSYSTEMS=="usb", ATTRS{interface}=="Triple Reader+", SYMLINK+="sc/triple-$attr{../serial}-$attr{bInterfaceNumber}"
LABEL="smargo_tripple_end"
############################## smargo stick ##############################
SUBSYSTEMS=="usb", KERNEL=="ttyUSB*", ATTRS{serial}=="Reader 1234567", SYMLINK+="sc/my-very-important-card"
```

Finally, modify oscam.server as follows:

```
[reader]
label               = my_smargo1
protocol            = smartreader     # or "mouse"
device              = Serial:Reader 1 # /dev/smargo1, if "mouse"
detect              = cd
mhz                 = 600
cardmhz             = 600
emmcache            = 1,3,2
group               = 1

[reader]
label               = my_smargo2
protocol            = mouse           # or "smartreader"
device              = /dev/smargo2    # Serial:Reader 2, if "smartreader"
detect              = cd
mhz                 = 368
cardmhz             = 368
emmcache            = 1,3,2
group               = 2

# and so on...
```