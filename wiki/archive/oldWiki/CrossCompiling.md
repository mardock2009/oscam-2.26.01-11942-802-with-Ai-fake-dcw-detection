> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Cross compiling OSCAM

1.  [Cross compiling OSCAM](#CrosscompilingOSCAM)
2.  [Toolchains / Cross compilers](#ToolchainsCrosscompilers)
3.  [Available Cross Compilers](#AvailableCrossCompilers)
    1.  [Android](#android)
        1.  [Download Android NDK (Native Development Kit)](#DownloadAndroidNDKNativeDevelopmentKit)
    2.  [***Very Important Note for NDK above 14b and 14b included :***](#VeryImportantNoteforNDKabove14band14bincluded:)
        1.  [Install the Toolchain (NDK)](#InstalltheToolchainNDK)
        2.  [Download and Install OpenSSl](#DownloadandInstallOpenSSl)
        3.  [Download the latest SVN and Cross Compile for Android Devices](#DownloadthelatestSVNandCrossCompileforAndroidDevices)
        4.  [Table about the Android Versions and API](#TableabouttheAndroidVersionsandAPI)
        5.  [Edit a APK and join the OSCam Binary Cross Compiled before.](#EditaAPKandjointheOSCamBinaryCrossCompiledbefore.)
    3.  [](#a)
    4.  [Dreambox 800/8000/7025 (MIPSEL)](#dm800_mipsel)
        1.  1.  [How to install the toolchain](#Howtoinstallthetoolchain)
            2.  [How to install openssl/libcrypto](#Howtoinstallopenssllibcrypto)
            3.  [How to install libusb](#Howtoinstalllibusb)
            4.  [How to install pcsc](#Howtoinstallpcsc)
            5.  [How to use cross compile OSCAM](#HowtousecrosscompileOSCAM)
    5.  [MIPSEL Router / DD-WRT toolchain](#mipsel_ddwrt)
        1.  1.  [How to install the toolchain](#Howtoinstallthetoolchain1)
            2.  [How to install openssl/libcrypto](#Howtoinstallopenssllibcrypto1)
            3.  [How to install libusb](#Howtoinstalllibusb1)
            4.  [How to use cross compile OSCAM](#HowtousecrosscompileOSCAM1)
    6.  [Mipsel PLI4 Dreambox HD800E,8000 VU+](#MIPSELPLI4)
        1.  1.  [How to install the Mipsel Pli4 toolchain](#HowtoinstalltheMipselPli4toolchain)
            2.  [How to use cross compile OSCAM](#HowtousecrosscompileOSCAM2)
4.  [Available toolchains](#Availabletoolchains)
    1.  [MIPS Router / OpenWRT](#mips_openwrt)
    2.  [MIPS Router / Fonera](#mips_fonera)
    3.  [MIPS Router Fritzbox](#mips_fritzbox)
    4.  [SH4](#sh4)
    5.  [Dreambox 500 /DM500 and DM500-S/ and Dbox2 (PPC Tuxbox Old)](#dm500_ppc)
    6.  [Dreambox 600/7000/7020 (PPC Tuxbox)](#dm7000_ppc)
    7.  [ARM NSLU2 UNSLUG](#nslu2_arm)
    8.  [ARM NSLU2 OpenWRT](#nslu_openwrt)
    9.  [COOLSTREAM ARM](#coolstream)
    10.  [DOCKSTAR](#dockstar_arm)
    11.  [BROADCOM ARM (and MIPSEL)](#broadcom_arm)

For general information on how to build OSCAM, see [BuildingOscam](https://trac.streamboard.tv/oscam/wiki/BuildingOscam) page. This page contains information about cross compilation.

# Toolchains / Cross compilers

A toolchain contains compiler, libraries (libc, openssl, others..) and headers needed for compilation of programs for a system different than the one you are building on, the so called *target system*. Target system is the architecture/CPU for which the cross compiler can build binaries. For example SH4 cross compiler can build binaries for SH4 architecture. Building a toolchain is not an easy process and is outside of the scope of this page.

**If you are using toolchain/cross compiler to build OSCAM that is not linked here, please share it with us in our forum.**

forum: [​https://board.streamboard.tv/](https:https://board.streamboard.tv/) Note: Registration Needed

The pre-built toolchains listed here can be run on any 32-bit Linux distro or on 64-bit Linux with with 32-bit compat libraries. These toolchains are provided with ready made instructions how to download, install and use them to compile your own OSCAM. Basically (minus the details), the procedure is:

+   Download and install toolchain.
+   Download or checkout OSCAM source code from SVN, see [GettingOscam](https://trac.streamboard.tv/oscam/wiki/GettingOscam) page for details.
+   Cross compile OSCAM by using

    ```
    make CROSS=/my-toolchain/bin/arch-platform-
    ```


For more cross compilation examples see the end of [​https://trac.streamboard.tv/oscam/browser/trunk/README.build](https:https://trac.streamboard.tv/oscam/browser/trunk/README.build)

# Available Cross Compilers

+   [Android Embedded Devices (Wetekplay "WeOS",SmartPhone,Tablet,...)](https://trac.streamboard.tv/oscam/wiki/crosscompiling#android)
+   [Broadcom ARM and MIPSEL](https://trac.streamboard.tv/oscam/wiki/crosscompiling#broadcom_arm)
+   [COOLSTREAM ARM](https://trac.streamboard.tv/oscam/wiki/crosscompiling#coolstream)
+   [Dreambox 500 /DM500 and DM500-S/ and Dbox2 (PPC Tuxbox Old)](https://trac.streamboard.tv/oscam/wiki/crosscompiling#dm500_ppc)
+   [Dreambox 600/7000/7020 (PPC Tuxbox)](https://trac.streamboard.tv/oscam/wiki/crosscompiling#dm7000_ppc)
+   [Dreambox 800/8000/7025 (MIPSEL)](https://trac.streamboard.tv/oscam/wiki/crosscompiling#dm800_mipsel)
+   [DOCKSTAR](https://trac.streamboard.tv/oscam/wiki/crosscompiling#dockstar_arm)
+   [MIPSEL Router / DD-WRT toolchain](https://trac.streamboard.tv/oscam/wiki/crosscompiling#mipsel_ddwrt)
+   [MIPS Router / OpenWRT](https://trac.streamboard.tv/oscam/wiki/crosscompiling#mips_openwrt)
+   [MIPS Router / Fonera](https://trac.streamboard.tv/oscam/wiki/crosscompiling#mips_fonera)
+   [MIPS Router Fritzbox](https://trac.streamboard.tv/oscam/wiki/crosscompiling#mips_fritzbox)
+   [Mipsel Pli4 Dreambox hd800se,8000 VU+ Currently](https://trac.streamboard.tv/oscam/wiki/crosscompiling#MIPSELPLI4)
+   [ARM NSLU2 UNSLUG](https://trac.streamboard.tv/oscam/wiki/crosscompiling#nslu2_arm)
+   [ARM NSLU2 OpenWRT](https://trac.streamboard.tv/oscam/wiki/crosscompiling#nslu_openwrt)
+   [SH4](https://trac.streamboard.tv/oscam/wiki/crosscompiling#sh4)

## Android

Building OSCam for Android is quite easy. Just follow these instructions: Before Beginning some steps say {releasenumber} change it for your NDK release Ex:. 16b,14b,13b,...

*OSCam can be compiled on Android since commit [r8339](https://trac.streamboard.tv/oscam/changeset/8339 "Add support for building OSCam with Android NDK.
The fixes that are ...").*

### Download Android NDK (Native Development Kit)

1.  Download Android NDK from [​https://developer.android.com/ndk/downloads/](https:https://developer.android.com/ndk/downloads/) or use this command below to download the latest NDK, please read the Note marked below before anything or use tested NDK r13b or r14b.

```
cd /
wget https://dl.google.com/android/repository/android-ndk-r16b-linux-x86_64.zip
```

***Note:*** Tested in r13b and r14b so if something go wrong at one step because you are using above r14b, download one of this version below and clean all folders created and repeat the steps below, the reason why versions above r14b don't work check ['Very important note...'](http://www.streamboard.tv/oscam/wiki/crosscompiling#VeryImportantNoteforNDKabove14band14bincluded:) below.

NDK 14b

```
cd /
wget https://dl.google.com/android/repository/android-ndk-r14b-linux-x86_64.zip
```

NDK 13b

```
cd /
wget https://dl.google.com/android/repository/android-ndk-r13b-linux-x86_64.zip
```

## ***Very Important Note for NDK above 14b and 14b included :***

All versions above NDK 14b use Clang to Compile out of the box (Standalone Toolchain) since you need to import the openssl you need to deploy the android ndk toolchain using clang. Issue reported in [​GithubAndroid-NDK](https:https://github.com/android-ndk/ndk/issues/445) and the issue are been reported two times in Openssl Github one in [​Openssl github issue #3826 reported by deveee](https:https://github.com/openssl/openssl/issues/3826) and the 2nd in [​Openssl Github issue #6879 reported by Screamfox](https:https://github.com/openssl/openssl/issues/6879), Google says they don't fix this issue since gcc is deprecated read here [​Google Changelog r14b](https:https://github.com/android-ndk/ndk/wiki/Changelog-r14#wont-fix) i belive this can be solved with a workaround and if some one have found a workaround please notice us in our forum (Link on the top of page) or edit correctly this wiki page \[Registration Required\].

*You can continue compiling OpenSSL with NDK r13b/r14b if you have any version below 14b you can continue this tutorial.*

### Install the Toolchain (NDK)

2.  Unzip the NDK.

```
unzip android-ndk-r{releasenumber}-linux-x86_64.zip
```

Note: Install Unzip required, install it using: apt install unzip.

3.  Go to the NDK directory after decompressed(Unziped).

```
cd /android-ndk-r{releasenumber}
```

4.  Inside the NDK directory go to the /android-ndk-r{releasenumber}**/build/tools**

```
cd build/tools
```

5.  Inside the **build/tools** directory export toolchain,

```
export TOOLCHAIN=/android-toolchain
```

6.  Still in the same directory (/android-ndk-r{releasenumber}/build/tools) and type this to install the toolchain,

```
./make_standalone_toolchain.py --arch arm --api 21 --install-dir /android-toolchain
```

[Note: change --api 21 if needed (This is depending the Android version your are compiling) so api 21 is for Android Version 5.0 see table below for more info. You can click any where here to jump to the table refereed before.](http://www.streamboard.tv/oscam/wiki/crosscompiling#TableabouttheAndroidVersionsandAPI)

### Download and Install OpenSSl

7.  Download OpenSSL

```
cd /
wget http://www.openssl.org/source/openssl-1.0.1g.tar.gz
```

Note: not tested in latest version please test it in newest version and say in forum if it's working on latest version or edit the OpenSSL link above and edit tar -xf command and cd command below (Next steps "8,9") to the version you have tested to keep this tutorial up to date.

8.  Extract the tar.gz

```
tar -xf openssl-1.0.1g.tar.gz
```

9.  Go to the directory you extracted.

```
cd openssl-1.0.1g
```

10.  Export the gcc in the Android Toolchain.

```
export CC=/android-toolchain/bin/arm-linux-androideabi-gcc
```

11.  Export the Ran Library to Android Toolchain.

```
export RANLIB=/android-toolchain/bin/arm-linux-androideabi-ranlib
```

12.  type ./configure to before make and make instal\_sw, this step is to set configuration before done and install the OpenSSL.

```
./Configure --prefix=/android-toolchain/sysroot/usr android
make
make install_sw
```

### Download the latest SVN and Cross Compile for Android Devices

13.  Download the latest SVN from Oscam/trunk repo.

```
cd /
svn checkout https://svn.streamboard.tv/oscam/trunk oscam-svn
cd oscam-svn
./config.sh --enable WEBIF WITH_SSL IPV6SUPPORT
```

14.  Cross Compile OSCam with Android Toolchain

```
make static EXTRA_FLAGS="-pie" LIB_RT= LIB_PTHREAD= CROSS=/android-toolchain/bin/arm-linux-androideabi-
```

### Table about the Android Versions and API

***Note: Change the parameter in step 6 if needed " --api 21 " to the version of your device look table below.***

<table class="wiki"><tbody><tr><td><strong>Android Code Name</strong></td><td><strong>Version Number</strong></td><td><strong>Linux Kernel Version</strong></td><td><strong>Initial Release Date</strong></td><td><strong>API LEVEL</strong></td><td><strong>Security Patches</strong></td></tr><tr><td>(No codename)</td><td>1.0</td><td>?</td><td>September 23, 2008</td><td>1</td><td>Unsupported</td></tr><tr><td>Petit Four</td><td>1.1</td><td>2.6.X</td><td>February 9, 2009</td><td>2</td><td>Unsupported</td></tr><tr><td>Cupcake</td><td>1.5</td><td>2.6.27</td><td>April 27, 2009</td><td>3</td><td>Unsupported</td></tr><tr><td>Donut</td><td>1.6</td><td>2.6.29</td><td>September 15, 2009</td><td>4</td><td>Unsupported</td></tr><tr><td>Eclair</td><td>2.0 – 2.1</td><td>2.6.29</td><td>October 26, 2009</td><td>5 – 7</td><td>Unsupported</td></tr><tr><td>Froyo</td><td>2.2 – 2.2.3</td><td>2.6.32</td><td>May 20, 2010</td><td>8</td><td>Unsupported</td></tr><tr><td>Gingerbread</td><td>2.3 – 2.3.7</td><td>2.6.35</td><td>December 6, 2010</td><td>9 – 10</td><td>Unsupported</td></tr><tr><td>Honeycomb</td><td>3.0 – 3.2.6</td><td>2.6.36</td><td>February 22, 2011</td><td>11 – 13</td><td>Unsupported</td></tr><tr><td>Ice Cream Sandwich</td><td>4.0 – 4.0.4</td><td>3.0.1</td><td>October 18, 2011</td><td>14 – 15</td><td>Unsupported</td></tr><tr><td>Jelly Bean</td><td>4.1 – 4.3.1</td><td>3.0.31 to 3.4.39</td><td>July 9, 2012</td><td>16 – 18</td><td>Unsupported</td></tr><tr><td><a class="missing wiki">KitKat</a></td><td>4.4 – 4.4.4</td><td>3.10</td><td>October 31, 2013</td><td>19 – 20</td><td>Unsupported</td></tr><tr><td>Lollipop</td><td>5.0 – 5.1.1</td><td>3.16.1</td><td>November 12, 2014</td><td>21 – 22</td><td>Unsupported</td></tr><tr><td>Marshmallow</td><td>6.0 – 6.0.1</td><td>3.18.10</td><td>October 5, 2015</td><td>23</td><td>Supported</td></tr><tr><td>Nougat</td><td>7.0 – 7.1.2</td><td>4.4.1</td><td>August 22, 2016</td><td>24 – 25</td><td>Supported</td></tr><tr><td>Oreo</td><td>8.0 – 8.1</td><td>4.10</td><td>August 21, 2017</td><td>26 – 27</td><td>Supported</td></tr><tr><td>Android P</td><td>9.0</td><td>?</td><td>July 25, 2018 (beta 4)</td><td>28</td><td>In beta, not yet supported</td></tr></tbody></table>

### Edit a APK and join the OSCam Binary Cross Compiled before.

Coming Soon..

## Dreambox 800/8000/7025 (MIPSEL)

+   Download: [​https://files.streamboard.tv/toolchains/Toolchain\_mipsel-tuxbox-linux.Dreambox.tar.bz2](https:https://files.streamboard.tv/toolchains/Toolchain_mipsel-tuxbox-linux.Dreambox.tar.bz2)
+   Download (SSL support): [​https://files.streamboard.tv/toolchains/Toolchain\_mipsel-tuxbox-linux.Dreambox.SSL.tar.bz2](https:https://files.streamboard.tv/toolchains/Toolchain_mipsel-tuxbox-linux.Dreambox.SSL.tar.bz2)
    +   Architecture: mipsel
    +   SSL installed: no / yes
    +   libusb installed: no (see how to install libusb in toolchain)

#### How to install the toolchain

Run the following commands as **NORMAL** (non-root user).

```
cd /tmp
sudo mkdir -p /opt/cross
wget https://files.streamboard.tv/toolchains/Toolchain_mipsel-tuxbox-linux.Dreambox.tar.bz2
sudo tar -xf Toolchain_mipsel-tuxbox-linux.Dreambox.tar.bz2 -C /opt/cross
```

#### How to install openssl/libcrypto

Run the following commands as **NORMAL** (non-root user).

```
cd /tmp
wget http://www.openssl.org/source/openssl-1.0.1g.tar.gz
tar -xf openssl-1.0.1g.tar.gz
cd openssl-1.0.1g
export TOOLCHAIN=/opt/cross/mipsel-unknown-linux-gnu
export CC=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu-gcc
export RANLIB=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu-ranlib
./Configure --prefix=$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/ linux-generic32 shared
make
sudo make install
```

#### How to install libusb

Run the following commands as **NORMAL** (non-root user).

```
cd /tmp
wget http://downloads.sourceforge.net/project/libusb/libusb-1.0/libusb-1.0.9/libusb-1.0.9.tar.bz2
tar -xf libusb-1.0.9.tar.bz2
cd libusb-1.0.9
export TOOLCHAIN=/opt/cross/mipsel-unknown-linux-gnu
export PATH="$TOOLCHAIN/bin:$PATH"
./configure --prefix=$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/ --host=mipsel-unknown-linux-gnu --enable-shared=no
make
make install
```

#### How to install pcsc

Run the following commands as **NORMAL** (non-root user).

```
cd /tmp
wget http://downloads.sourceforge.net/project/libusb/libusb-1.0/libusb-1.0.9/libusb-1.0.9.tar.bz2
tar -xf libusb-1.0.9.tar.bz2
cd libusb-1.0.9
export TOOLCHAIN=/opt/cross/mipsel-unknown-linux-gnu
export PATH="$TOOLCHAIN/bin:$PATH"
./configure --prefix=$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr --host=mipsel-unknown-linux-gnu
make
make install
cd /tmp
wget https://alioth.debian.org/frs/download.php/3757/pcsc-lite-1.8.6.tar.bz2
tar -xf pcsc-lite-1.8.6.tar.bz2
cd pcsc-lite-1.8.6
./configure CC=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu-gcc-4.3.2 --disable-libudev --host=mipsel-unknown-linux-gnu --prefix=$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr --exec-prefix=$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr --disable-shared LIBUSB_LIBS="-L$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/lib -lusb-1.0" LIBUSB_CFLAGS="-I$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/include/libusb-1.0"
make
make install
```

#### How to use cross compile OSCAM

Run the following commands as your regular user in the directory where OSCAM source is. See [GettingOscam](https://trac.streamboard.tv/oscam/wiki/GettingOscam).

```
# Set this variable to the root directory of your toolchain
export TOOLCHAIN=/opt/cross/mipsel-unknown-linux-gnu
# Default compilation
make CROSS=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu-

# Cross compile with SSL (and libcrypto) support
make CROSS=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu- USE_SSL=1

# Cross compile libusb (smartreader) support
make CROSS=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu- USE_LIBUSB=1

# Cross compile with static libusb (smartreader) support
make CROSS=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu- USE_LIBUSB=1 LIBUSB_LIB="$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/lib/libusb-1.0.a -lrt"

# Cross compile with pcsc support
make CROSS=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu- USE_PCSC=1 EXTRA_FLAGS="-I$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/include/PCSC"

# Cross compile with static libusb, pcsc, SSL support
make CROSS=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu- CONF_DIR=/etc/tuxbox/config/ USE_LIBUSB=1 LIBUSB_LIB="$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/lib/libusb-1.0.a -lrt" USE_PCSC=1 USE_SSL=1 EXTRA_FLAGS="-I$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/include/PCSC"
```

## MIPSEL Router / DD-WRT toolchain

+   Download: [​https://files.streamboard.tv/toolchains/Toolchain\_MIPS-Router-uclib-0.9.28.bz2](https:https://files.streamboard.tv/toolchains/Toolchain_MIPS-Router-uclib-0.9.28.bz2) (Size: 37MB)
    +   Architecture: mipsel LIBC: uclibc
    +   SSL installed: no (see how to install openssl in toolchain)
    +   libusb installed: no (see how to install libusb in toolchain)

#### How to install the toolchain

Run the following commands as **NORMAL** (non-root user).

```
cd /tmp
wget https://files.streamboard.tv/toolchains/Toolchain_MIPS-Router-uclib-0.9.28.bz2
tar -xvf Toolchain_MIPS-Router-uclib-0.9.28.bz2
sudo mkdir -p /opt/cross/mipsel
sudo mv toolchains/* /opt/cross/mipsel
```

#### How to install openssl/libcrypto

Run the following commands as **NORMAL** (non-root user).

```
cd /tmp
wget http://openssl.org/source/openssl-0.9.8x.tar.gz
tar -xf openssl-0.9.8x.tar.gz
cd openssl-0.9.8x
export TOOLCHAIN=/opt/cross/mipsel/4.1.0-uclibc-0.9.28
export CC=$TOOLCHAIN/bin/mipsel-linux-uclibc-gcc
export RANLIB=$TOOLCHAIN/bin/mipsel-linux-uclibc-ranlib
./Configure --prefix=/ linux-generic32 shared
make
sudo make INSTALL_PREFIX=$TOOLCHAIN install_sw
```

#### How to install libusb

Run the following commands as **NORMAL** (non-root user).

```
cd /tmp
wget http://downloads.sourceforge.net/project/libusb/libusb-1.0/libusb-1.0.9/libusb-1.0.9.tar.bz2
tar -xf libusb-1.0.9.tar.bz2
cd libusb-1.0.9
export TOOLCHAIN=/opt/cross/mipsel/4.1.0-uclibc-0.9.28
export PATH="$TOOLCHAIN/bin/:$PATH"
./configure --prefix=/ --host=mipsel-linux-uclibc
make
sudo make DESTDIR=$TOOLCHAIN install
```

#### How to use cross compile OSCAM

Run the following commands as your regular user in the directory where OSCAM source is. See [GettingOscam](https://trac.streamboard.tv/oscam/wiki/GettingOscam).

```
# Set this variable to the root directory of your toolchain
export TOOLCHAIN=/opt/cross/mipsel/4.1.0-uclibc-0.9.28
# Default compilation
make CROSS=$TOOLCHAIN/bin/mipsel-linux-uclibc-

# Cross compile with SSL (and libcrypto) support
make CROSS=$TOOLCHAIN/bin/mipsel-linux-uclibc- USE_SSL=1

# Cross compile libusb (smartreader) support
make CROSS=$TOOLCHAIN/bin/mipsel-linux-uclibc- USE_LIBUSB=1

# Cross compile with static libusb (smartreader) support
make CROSS=$TOOLCHAIN/bin/mipsel-linux-uclibc- USE_LIBUSB=1 LIBUSB_LIB="$TOOLCHAIN/lib/libusb-1.0.a"
```

## Mipsel PLI4 Dreambox HD800E,8000 VU+

+   Download (New PLI4 SSL LIBUSB PCSC gcc 4.8.1): [​https://www.dropbox.com/s/3hczxy3u189kgfa/Mipsel-Tuxbox-Pli4-gcc481-libc217-openssl101g-libusb109-pcsclite1811.tar.bz2?dl=1](https:https://www.dropbox.com/s/3hczxy3u189kgfa/Mipsel-Tuxbox-Pli4-gcc481-libc217-openssl101g-libusb109-pcsclite1811.tar.bz2?dl=1)
    +   Architecture : mipsel linux-3.2 gcc 4.8.1
    +   SSL installed : yes ver 1.0.1g
    +   libusb installed : yes ver 1.0.9
    +   pcsc installed : yes ver 1.8.11

#### How to install the Mipsel Pli4 toolchain

Run the following commands as **NORMAL** (non-root user).

```
cd /tmp
sudo mkdir /opt/cross
wget -O Mipsel-Tuxbox-Pli4-gcc481-libc217-openssl101g-libusb109-pcsclite1811.tar.bz2 https://www.dropbox.com/s/3hczxy3u189kgfa/Mipsel-Tuxbox-Pli4-gcc481-libc217-openssl101g-libusb109-pcsclite1811.tar.bz2?dl=1
sudo tar xf Mipsel-Tuxbox-Pli4-gcc481-libc217-openssl101g-libusb109-pcsclite1811.tar.bz2 -C /opt/cross  !!Note: do not use tar -xf but tar xf !!
```

#### How to use cross compile OSCAM

Run the following commands as your regular user in the directory where OSCAM source is. See [GettingOscam](https://trac.streamboard.tv/oscam/wiki/GettingOscam).

```
# Set this variable to the root directory of your toolchain
export TOOLCHAIN=/opt/cross/mipsel-tuxbox-linux-gnu
export PATH="$TOOLCHAIN/bin:$PATH"
# Default compilation
make CROSS=$TOOLCHAIN/bin/mipsel-tuxbox-linux-gnu-

# Cross compile with SSL (and libcrypto) support
make CROSS=$TOOLCHAIN/bin/mipsel-tuxbox-linux-gnu- USE_SSL=1

# Cross compile libusb (smartreader) support
make CROSS=$TOOLCHAIN/bin/mipsel-tuxbox-linux-gnu- USE_LIBUSB=1

# Cross compile with static libusb (smartreader) support
make CROSS=$TOOLCHAIN/bin/mipsel-tuxbox-linux-gnu- USE_LIBUSB=1 LIBUSB_LIB="$TOOLCHAIN/mipsel-tuxbox-linux-gnu/sysroot/usr/lib/libusb-1.0.a"

# Cross compile with pcsc support
make CROSS=$TOOLCHAIN/bin/mipsel-tuxbox-linux-gnu- USE_PCSC=1 EXTRA_FLAGS="-I$TOOLCHAIN/mipsel-tuxbox-linux-gnu/sysroot/usr/include/PCSC"

# Cross compile with libusb, pcsc, SSL support
make CROSS=$TOOLCHAIN/bin/mipsel-tuxbox-linux-gnu- CONF_DIR=/etc/tuxbox/config/ USE_LIBUSB=1 USE_PCSC=1 USE_SSL=1 EXTRA_FLAGS="-I$TOOLCHAIN/mipsel-tuxbox-linux-gnu/sysroot/usr/include/PCSC"

# Cross compile with static libusb, pcsc, SSL support
make CROSS=$TOOLCHAIN/bin/mipsel-tuxbox-linux-gnu- CONF_DIR=/etc/tuxbox/config/ USE_LIBUSB=1 LIBUSB_LIB="$TOOLCHAIN/mipsel-tuxbox-linux-gnu/sysroot/usr/lib/libusb-1.0.a -lrt" USE_PCSC=1 USE_SSL=1 EXTRA_FLAGS="-I$TOOLCHAIN/mipsel-tuxbox-linux-gnu/sysroot/usr/include/PCSC"
```

# Available toolchains

## MIPS Router / OpenWRT

Little endian Kernel 2.4x - [​http://downloads.openwrt.org/kamikaze/7.09/brcm-2.4/OpenWrt-SDK-brcm-2.4-for-Linux-i686.tar.bz2](http://downloads.openwrt.org/kamikaze/7.09/brcm-2.4/OpenWrt-SDK-brcm-2.4-for-Linux-i686.tar.bz2)

Little endian Kernel 2.6x - [​http://downloads.openwrt.org/kamikaze/7.09/brcm47xx-2.6/OpenWrt-SDK-brcm47xx-2.6-for-Linux-i686.tar.bz2](http://downloads.openwrt.org/kamikaze/7.09/brcm47xx-2.6/OpenWrt-SDK-brcm47xx-2.6-for-Linux-i686.tar.bz2)

## MIPS Router / Fonera

[​http://downloads.openwrt.org/kamikaze/7.09/atheros-2.6/OpenWrt-SDK-atheros-2.6-for-Linux-i686.tar.bz2](http://downloads.openwrt.org/kamikaze/7.09/atheros-2.6/OpenWrt-SDK-atheros-2.6-for-Linux-i686.tar.bz2)

## MIPS Router Fritzbox

[​https://files.streamboard.tv/toolchains/Toolchain\_MIPS-Router-Fritzbox-uclib-0.9.29.tar.bz2](https:https://files.streamboard.tv/toolchains/Toolchain_MIPS-Router-Fritzbox-uclib-0.9.29.tar.bz2)

## SH4

[​https://files.streamboard.tv/toolchains/toolchain-sh4-tuxbox.bz2](https:https://files.streamboard.tv/toolchains/toolchain-sh4-tuxbox.bz2)

TDT Tuxbox Toolchain, built on Ubuntu 10.4 with alborland´s easybuild script. For better supported toolchain you should install [​http://stlinux.com/](http://stlinux.com/)

## Dreambox 500 /DM500 and DM500-S/ and Dbox2 (PPC Tuxbox Old)

[​https://files.streamboard.tv/toolchains/Toolchain\_powerpc-tuxbox-linux\_dm500.tar.bz2](https:https://files.streamboard.tv/toolchains/Toolchain_powerpc-tuxbox-linux_dm500.tar.bz2)

## Dreambox 600/7000/7020 (PPC Tuxbox)

[​https://files.streamboard.tv/toolchains/Toolchain\_powerpc-tuxbox-linux\_DreamboxPPC.tar.bz2](https:https://files.streamboard.tv/toolchains/Toolchain_powerpc-tuxbox-linux_DreamboxPPC.tar.bz2)

With SSL support: [​https://files.streamboard.tv/toolchains/Toolchain\_powerpc-tuxbox-linux\_DreamboxPPC.SSL.tar.bz2](https:https://files.streamboard.tv/toolchains/Toolchain_powerpc-tuxbox-linux_DreamboxPPC.SSL.tar.bz2)

## ARM NSLU2 UNSLUG

[​https://files.streamboard.tv/toolchains/Toolchain\_armv5b-softfloat-linux\_Unslug.tar.bz2](https:https://files.streamboard.tv/toolchains/Toolchain_armv5b-softfloat-linux_Unslug.tar.bz2)

## ARM NSLU2 OpenWRT

[​http://downloads.openwrt.org/kamikaze/7.09/ixp4xx-2.6/OpenWrt-SDK-ixp4xx-2.6-for-Linux-i686.tar.bz2](http://downloads.openwrt.org/kamikaze/7.09/ixp4xx-2.6/OpenWrt-SDK-ixp4xx-2.6-for-Linux-i686.tar.bz2)

## COOLSTREAM ARM

[​https://files.streamboard.tv/toolchains/Toolchain-cross-arm-cx2450x-linux-gnueabi.tar.bz2](https:https://files.streamboard.tv/toolchains/Toolchain-cross-arm-cx2450x-linux-gnueabi.tar.bz2)

## DOCKSTAR

[​https://files.streamboard.tv/toolchains/Toolchain-armv5te\_uclibc\_eabi-dockstar.tar.bz2](https:https://files.streamboard.tv/toolchains/Toolchain-armv5te_uclibc_eabi-dockstar.tar.bz2)

## BROADCOM ARM (and MIPSEL)

[​https://docs.broadcom.com/docs/12358538](https:https://docs.broadcom.com/docs/12358538)

For VU+ Solo4K (ARM based) use: /opt/cross/stbgcc-4.8-1.5/bin/arm-linux-gnueabihf-

[Last modified](https://trac.streamboard.tv/oscam/wiki/crosscompiling?action=diff&version=85 "Version 85 by Opti") [3 years ago](https://trac.streamboard.tv/oscam/timeline?from=2020-11-01T12%3A22%3A24%2B01%3A00&precision=second "See timeline at 11/01/20 12:22:24") Last modified on 11/01/20 12:22:24

### Attachments (1)

+   [libnxp.so.gz](https://trac.streamboard.tv/oscam/attachment/wiki/crosscompiling/libnxp.so.gz "View attachment")[​](https://trac.streamboard.tv/oscam/raw-attachment/wiki/crosscompiling/libnxp.so.gz "Download") (70.2 KB ) - added by dingo35 [14 years ago](https://trac.streamboard.tv/oscam/timeline?from=2010-01-12T14%3A19%3A16%2B01%3A00&precision=second "See timeline at 01/12/10 14:19:16"). When compiling for Coolstream, you will add this library file for internal reader support.

Download all attachments as: [.zip](https://trac.streamboard.tv/oscam/zip-attachment/wiki/crosscompiling/)

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.