> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# OSCam/en/Self-made

## Inhaltsverzeichnis

+   [1 Self-made OSCam](#Self-made_OSCam)
    +   [1.1 Introduction](#Introduction)
    +   [1.2 Environment](#Environment)
    +   [1.3 Required Packages](#Required_Packages)
    +   [1.4 Directory Contents](#Directory_Contents)
    +   [1.5 Checking out the source code with Subversion](#Checking_out_the_source_code_with_Subversion)
        +   [1.5.1 Initial checkout](#Initial_checkout)
        +   [1.5.2 Update](#Update)
    +   [1.6 Compilation](#Compilation)
    +   [1.7 Compiling for other platforms](#Compiling_for_other_platforms)
        +   [1.7.1 Example: DM800](#Example:_DM800)

## Self-made OSCam

### Introduction

This article describes the steps one must execute in order to build OSCam from source. All instructions quoted here have been tested on a Linux PC running **[Debian](http://www.debian.org/)** 6 - Squeeze.

### Environment

You need a Linux PC. Of course, it doesn't have to be a physical box, a virtual machine (VM) works just as well [![](/images/f/f6/Smiley_wink.png)](/wiki/Datei:Smiley_wink.png). We recommend the free [VMware Player](http://www.vmware.com/products/player/).

You can download your preferred [Linux distribution](http://en.wikipedia.org/wiki/Linux_distribution), as an ISO or as a virtual machine. As mentioned above, the contents of this article were tested on a Debian distribution. It should work almost the same way with Ubuntu.

### Required Packages

The following packages are needed for building OSCam:

```
apt-get install cvs subversion
apt-get install autoconf libccid automake libtool gettext make cmake
apt-get install patch ncurses-bin gcc g++ flex bison pkg-config libpng3
# zlib (development headers) - zlib1g-dev
apt-get install tar bzip2 gzip zlib1g-dev

# for sa and aes:
apt-get install libssl-dev libssl0.9.8

# for pcsc:
apt-get install libpcsclite1 libpcsclite-dev

# for smartreader branch:
apt-get install libusb-1.0-0 libusb-1.0-0-dev
```

### Directory Contents

```text
root@srv01:/var/shares/linux# tree oscam -L 2 -d
oscam
+-- bin                # this is where the compiled binary will be placed
¦   +-- archive        # here we archive other OScam binaries
+-- make               # this directory is where we "make" OScam
+-- svn-sb             # this is where the code is downloaded
¦   +-- branches       # Don't create this! It is automatically created by subversion
¦   +-- tags           # Don't create this! It is automatically created by subversion
¦   +-- trunk          # Don't create this! It is automatically created by subversion
+-- toolchains         # optional, contains toolchains for building OScam for other platforms; see Cross-Compiler
    +-- mipsel         # optional - mipsel-Toolchain, e.g. for Dbox2
    +-- ppc            # optional - ppc-Toolchain, e.g. for Dbox
    +-- tdt            # optional - sh4-Toolchain, e.g. for Kathrein
```

### Checking out the source code with Subversion

#### Initial checkout

We execute this only once, when we checkout the sources for the first time:

```
oscamRoot='/var/shares/linux/oscam' # modify this path to suit!
svnDir='svn-sb' # change this name to suit!
cd $oscamRoot
svn co http://streamboard.de.vu/svn/oscam $svnDir
```

#### Update

After the initial checkout, you only need to update the source code when something is changed in the [Repository](http://en.wikipedia.org/wiki/Apache_Subversion#Repository_access). Like so:

```
oscamRoot='/var/shares/linux/oscam'   # path where we have the source code
svnDir='svn-sb'                       # matches the name in initial checkout
svnBranch='trunk'                     # this is the subversion branch
cd $oscamRoot
svn up $svnDir/$svnBranch
```

### Compilation

There's nothing magic about this process, even though it only takes a few seconds [![](/images/f/f6/Smiley_wink.png)](/wiki/Datei:Smiley_wink.png):

```
# Modify variables as needed! ******************************
oscamRoot='/var/shares/linux/oscam'
ver='1.00'
svnDir='svn-sb'
svnBranch='trunk'
svnBuildDir=''
# **********************************************************
cd $oscamRoot
# update the source code ***********************************
svn up $svnDir/$svnBranch
# archive the current build (optional) *********************
mv $oscamRoot/bin/oscam* $oscamRoot/bin/archive/
#
cd $oscamRoot/make
# building for i686 with a Web Interface *******************
rm -fr $oscamRoot/make/*
cmake -DLIBUSBDIR=/usr -DWEBIF=1 -DCS_CONFDIR=/var/keys ../$svnDir/$svnBranch/$svnBuildDir
# if you have a multi-core CPU...
make -j4 # issue 4 parallel compiler jobs
# ... otherwise running 'make' will suffice
# rename the binary to reflect version number...
if [ -x "oscam" ]; then mv -f oscam ../bin/oscam-i686-$ver-$(svnversion -n ../$svnDir/$svnBranch/$svnBuildDir)-wi; fi;
if [ -x "utils/list_smargo" ]; then mv -f utils/list_smargo ../bin/; fi;
```

### Compiling for other platforms

[Cross-Compiling](http://de.wikipedia.org/wiki/Cross-Compiler) is the magic word. To compile OSCam for other platforms, we need additional [Toolchains](http://en.wikipedia.org/wiki/Toolchain). You can find more information on Toolchains and "***Cross-Compiling***" [**»here«**](http://www.streamboard.tv/oscam/wiki/crosscompiling "streamboard:oscam/wiki/crosscompiling").

#### Example: DM800

Toolchain-Data:

```
# toolchain-mipsel.cmake
set (OSCAM_SYSTEM_NAME Tuxbox)
set (CMAKE_SYSTEM_NAME Linux)
set (CMAKE_C_COMPILER /var/shares/linux/oscam/toolchains/mipsel/bin/mipsel-unknown-linux-gnu-gcc)
set (CMAKE_SYSTEM_PROCESSOR mips)
```

Checking out the source code and compilation:

```
# Modify variables as needed! ******************************
oscamRoot='/var/shares/linux/oscam'
ver='1.00'
svnDir='svn-sb'
svnBranch='trunk'
svnBuildDir=''
# **********************************************************
cd $oscamRoot
# update the source code ***********************************
svn up $svnDir/$svnBranch
# archive previous build (optional) ************************
mv $oscamRoot/bin/oscam* $oscamRoot/bin/archive/
#
cd $oscamRoot/make
# mipsel ***************************************************
rm -fr $oscamRoot/make/*
cmake -DLIBUSBDIR=/var/shares/linux/oscam/lib-mipsel/usr -DWEBIF=1 -DCS_CONFDIR=/var/keys -DCMAKE_TOOLCHAIN_FILE=../toolchains/toolchain-mipsel.cmake ../$svnDir/$svnBranch/$svnBuildDir
make -j4
if [ -x "oscam" ]; then mv oscam ../bin/oscam-mipsel-$ver-$(svnversion -n ../$svnDir/$svnBranch/$svnBuildDir)-wi; fi;
```