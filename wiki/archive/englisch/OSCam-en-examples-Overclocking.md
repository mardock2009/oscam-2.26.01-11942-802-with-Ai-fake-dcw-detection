> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/examples/Overclocking

## Inhaltsverzeichnis

+   [1 Overclocking Configuration Example](#Overclocking_Configuration_Example)
    +   [1.1 Dreambox and other internal readers](#Dreambox_and_other_internal_readers)
    +   [1.2 easymouse2 Reader](#easymouse2_Reader)
        +   [1.2.1 Example configuration S02](#Example_configuration_S02)
    +   [1.3 Phoenix/Smartmouse Reader](#Phoenix/Smartmouse_Reader)
    +   [1.4 Smargo Smartreader+](#Smargo_Smartreader+)
    +   [1.5 Baud Rates](#Baud_Rates)

## Overclocking Configuration Example

### Dreambox and other internal readers

For Dreambox and other internal readers the highest possible clock rate will be auto detected. The mhz parameter lets you override the values chosen by OSCam, if it differs from 357 and 358, but usually you will not set any value for mhz.

For certain Dreamboxes (especially PPC clones) the default mhz parameter leads to slow ECM times and/or "not found" ECMs. By setting mhz to values like 200, 300, 400, ... 1600, you can find a value that works for your receiver and your card. The higher themhz value, the slower the ECM time (strange enough).

If you choose the value too low, your card is not recognized (**no ATR** or **card not supported**). If you choose the value too high, you get slow ECM times. Our experience is that either no mhz line, or a line mhz = 1000 works best.

### easymouse2 Reader

#### Example configuration S02

Dip switch:

```
1. Dip    = bottom (5 Volt)
2. Dip    = bottom (Phoenix)
3. Dip    = top ---> Settings in Dip 4!
4. Dip    = 10 MHz
```

Configuration Reader:

```
[reader]
label                         = mymouse
enable                        = 1
protocol                      = mouse
device                        = /dev/ttyUSB0
services                      = skywelt,skyweltextra,skyfilm
caid                          = 1702
force_irdeto                  = 1
boxkey                        = 1122334455667788
detect                        = cd
mhz                           = 1000
cardmhz                       = 600
ident                         =
group                         = 1,2,3
emmcache                      = 1,3,2
blockemm-unknown              = 1
lb_weight                     = 100
```

### Phoenix/Smartmouse Reader

Overclocking does not work with Windows and Mac OS X. Set mhz equivalent to the frequency of the reader. OSCam can not set the frequency of the reader.

### Smargo Smartreader+

+   Use protocol = **smargo** for the kernel drivers (no libusb needed) or (not recommended)
+   Use protocol = **smartreader** for OSCam's driver implementation based on libusb.

Set the reader frequency with the native Smargo Smartreader+ tool (srp\_tools). If not setting **mhz** and **cardmhz**, OSCam tries to set the baudrate automatically, according to the maximum speed indicated by ATR. Overclocking is possible.

### Baud Rates

OSCam tries to set the baudrate automatically. A **standard serial port** has limited baudrate settings, so SC overclocking might not work. When using a serial reader the best way for overclocking is connecting it to a **FTDI based USB to serial port adapter**.

If overclocking does not work, verify the effective baudrate in the logfile. If it deviates too much from the requested baudrate, the SC will not be recognized (no ATR) and the value for mhz should be adjusted again. The higher the baudrate, the more accurate the effective baudrate can be.