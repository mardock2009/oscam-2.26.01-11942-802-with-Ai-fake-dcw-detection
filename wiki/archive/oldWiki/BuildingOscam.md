> **Archive Notice:** This is an archived page from the old Streamboard-Wiki and is no longer maintained. Information may be outdated and links may be broken.

# Building OSCAM

The OSCAM building (compilation) process is fairly straight forward. You get OSCAM from subversion (svn) then go to the directory where the OSCAM source code is and compile it by running `make`. In the usual case no extra programs and libraries are required, except `gcc` (or `clang`), `make`, libc and subversion to get the source code. The openssl development librairies and headers are required too, in order to built OSCAM with support for SSL among others. For distributions based on Debian / Ubuntu, the openssl package to install is `libssl-dev`.

Here are the basic commands to compile your own OSCAM:

```
svn checkout https://svn.streamboard.tv/oscam/trunk oscam-svn
cd oscam-svn
make
```

The full documentation of the build system and lots of examples is available at [http://www.streamboard.tv/oscam/browser/trunk/README.build](http://www.streamboard.tv/oscam/browser/trunk/README.build).

## Staying current

To update the source code from SVN, run this:

```
cd oscam-svn
svn update
# You'll see a list of the updated files
```

After the update is finished build the OSCAM like you normally do.

**NOTE:** Do not use `svn checkout` to update the source tree, that is the wrong thing to do! `svn checkout` should be used only for getting the source for the first time, to **update** the source to latest version you must use `svn update`.

## Building specific revisions

Sometimes a certain svn revision is not working or you want to test something specific. In that case you can use svn to switch to the revision you want by running the following:

```
cd oscam-svn
# Update to revision 7400
svn update -r 7400
# Go to newest revision
svn update -r HEAD
# Get info about the currently checkout revision
svn info .
```

## Cross compiling

If you want to build OSCAM for different system than yours, you probably should take look at [OSCAM cross compilation](https://trac.streamboard.tv/oscam/wiki/crosscompiling) page.

## Build configuration

OSCAM contains a lot of features that can be removed from the final binary in order to save space. To configure the OSCAM features that you want, start the graphical configuration utility (`dialog` program must be installed in order for this to work) and select/unselect options:

```
make config
```

Other useful configuration targets are:

```
# Disable everything in the config
make allnoconfig

# Enable everything in the config
make allyesconfig

# Restore default config values
make defconfig
```

The above targets are shortcuts that are running `config.sh` tool which deals with OSCAM configuration. You can use the tool to control and view OSCAM build parameters from the command line. You can read [config.sh --help](http://www.streamboard.tv/oscam/browser/trunk/README.config) to see what the tool offers. Here are some examples:

```
# Enable WEBIF and SSL
./config.sh --enable WEBIF WITH_SSL

# Disable WEBIF but enable WITH_SSL
./config.sh --disable WEBIF --enable WITH_SSL

# Restore defaults and disable WEBIF and READER_NAGRA
./config.sh --restore --disable WEBIF READER_NAGRA

# Use default config with only one enabled reader
./config.sh --restore --disable readers --enable READER_BULCRYPT

# Disable everything and enable webif, one module and one card reader
./config.sh --disable all --enable WEBIF MODULE_NEWCAMD READER_BULCRYPT
```

## Testing patches

Patches are files that contain code changes and are often posted in trouble tickets or forum threads from developers. Usually users are asked to test them in order to confirm that certain bug is fixed. Once the patch is saved in `oscam-svn` directory you have to apply it by running `patch` program:

```
patch -p1 < file.patch
# or
patch -p0 < file.patch
```

The `-p1` instruct `patch` program how much directories to cut from file names in the patch description.

If the patch is applied you'll see something like this:

```
$ patch -p1 < test.diff
patching file globals.h
patching file module-camd35.c
patching file module-cccam.c
Hunk #1 succeeded at 3200 (offset -2 lines).
Hunk #2 succeeded at 3251 (offset -2 lines).
patching file module-gbox.c
patching file module-lcd.c
patching file module-serial.c
```

Once the patch is applied build OSCAM like you normally do, test it and post the results.

## Special OSCAM builds

### Building OSCAM with support for smartreader (libusb)

To build OSCAM with libusb (smartreader) support on you have to install libusb first. If your distribution do not have libusb or libusb-dev package installed you have to install them or install libusb from source.

To install libusb from source, just download libusb (or libusbx) from their site, unarchive it and build it without any options. These following commands would download, compile and install libusb in `/usr/local`.

```
cd /tmp
wget https://github.com/libusb/libusb/releases/download/v1.0.26/libusb-1.0.26.tar.bz2
tar -xf libusb-1.0.26.tar.bz2
cd libusb-1.0.26
./configure
make
sudo make install
```

Now to build OSCAM with libusb support you need the following commands:

```
make USE_LIBUSB=1

# To build OSCAM with static libusb you have to change LIBUSB_LIB variable to point to the static library
make USE_LIBUSB=1 LIBUSB_LIB=/usr/local/lib/libusb-1.0.a

# Since OS X is kind of special to build with static libusb you have to use the following command
make USE_LIBUSB=1 LIBUSB_LIB="/usr/local/lib/libusb-1.0.a -lobjc -framework IOKit -framework CoreFoundation"

# If libusb is installed by macports or with different than the default prefix (for example /opt/local)
make USE_LIBUSB=1 EXTRA_FLAGS="-I/opt/local/include -L/opt/local/lib"

# Using predefined libusb target
make libusb
```

### Building OSCAM with PCSC support

To build OSCAM with PCSC support on you have to install pcsclite first. For example for Debian: `apt-get install libpcsclite-dev`. If your distribution do not have pcsclite installed you have to install it from source.

To install PCSC from source, just download pcsclite from their site, unarchive it and build it without any options. These following commands would download, compile and install pcsclite in `/usr/local`.

```
cd /tmp
wget https://pcsclite.apdu.fr/files/pcsc-lite-1.9.9.tar.bz2
tar -xf pcsc-lite-1.9.9.tar.bz2
cd pcsc-lite-1.9.9
./configure
make
sudo make install
```

Now to build OSCAM with PCSC support you need the following commands:

```
make USE_PCSC=1

# build with smartreader and PCSC support
make USE_PCSC=1 USE_LIBUSB=1

# Using predefined pcsc target
make pcsc
make pcsc-libusb
```

### Building OSCAM with SH4 with STAPI support

### Building OSCAM on OS X

You can build OSCAM on OS X just like you build it on Linux. The build system detects that you are building on OS X and finds the SDK versions automatically.

All of the examples posted in this page should work just fine. If there is a special OS X case it'll be pointed out (libusb static build require listing of additional libraries, see [#libusb](https://trac.streamboard.tv/oscam/wiki/BuildingOscam#libusb).

### Building OSCam on Windows

For a fully automated solution, see [BuildingOscam#WindowsFullAutomation](https://trac.streamboard.tv/oscam/wiki/BuildingOscam#WindowsFullAutomation).

If you want to build OSCam manually or partly automated, follow these instructions:

+   Download Cygwin from [​https://www.cygwin.com](https:https://www.cygwin.com/), start the installation and select the following additional packages in their most recent version:
    +   dialog
    +   gcc-core
    +   libssl-devel
    +   libusb1.0-devel
    +   make
    +   subversion
    +   zip
    +   patch
    +   wget
+   Check out the OSCam source code and store it in '~/oscam-svn', use

    ```
    cd ~/
    svn checkout https://svn.streamboard.tv/oscam/trunk oscam-svn
    ```

    +   To update the source code later, do not use 'svn checkout', but

        ```
        cd ~/oscam-svn
        svn update
        ```


If you want to add a patch, for example OSCam-Emu:

```
cd ~/oscam-svn
wget https://raw.githubusercontent.com/oscam-emu/oscam-emu/master/oscam-emu.patch
patch -p0 < oscam-emu.patch
```

From this point on, you can refer to the other build instructions for further details. A basic build can be created with:

```
cd ~/oscam-svn
make CONF_DIR=./
```

Enable or disable options with:

```
cd ~/oscam-svn
make config
```

Support for PCSC and LIBUSB can currently not be enabled via 'make config'. Use this command instead:

```
cd ~/oscam-svn
make config
make
make USE_LIBUSB=1 USE_PCSC=1 CONF_DIR=./ PCSC_LIB='-lwinscard'
```

The freshly compiled binaries are located in the Cygwin folder '~/oscam-svn/Distribution' (in Windows, this is '<Cygwin install dir>\\home\\<user name>\\oscam-svn/Distribution').

The OSCam binaries can be started from within the Cygwin terminal. If you want to use them without Cygwin, you need to place Cygwin runtime files ('cyg\*.dll') in the same folder as the binaries. The Cygwin program "cygcheck.exe" helps find the needed runtime files.

To build OSCam for Windows from the latest sources, with all options enabled, plus PCSC and LISUSB support as well as OSCam-Emu, use the following commands.

The script not only automates the build, but also

+   creates a folder '~/oscam-exe' containing
    +   oscam.exe
    +   list\_smargo.exe
    +   all Cygwin runtime dll files required by the exe files, so they can be run without Cygwin
    +   oscam-info.txt (the output of 'oscam.exe --build-info')
+   creates a folder '~/oscam-zip', with a zip file containing all the files from '~/oscam-exe'

```
cd ~/

if [ -d "oscam-exe" ]; then
  rm -r -f oscam-exe
fi

if [ -d "oscam-zip" ]; then
  rm -r -f oscam-zip
fi

if [ ! -d "oscam-svn" ]; then
  svn checkout https://svn.streamboard.tv/oscam/trunk oscam-svn
else
  rm -r -f oscam-svn
  svn checkout https://svn.streamboard.tv/oscam/trunk oscam-svn
fi

cd oscam-svn

if [ -f "oscam-emu.patch" ]; then
  rm -r -f oscam-emu.patch
fi

wget https://raw.githubusercontent.com/oscam-emu/oscam-emu/master/oscam-emu.patch
patch -p0 < oscam-emu.patch

make distclean
make allyesconfig
make USE_LIBUSB=1 USE_PCSC=1 PCSC_LIB='-lwinscard'

mkdir ~/oscam-exe

cd ~/oscam-exe
cp ~/oscam-svn/Distribution/*cygwin.exe* -t .

for i in $(ls *cygwin.exe*)
do
  mv $i ${i//cygwin.exe/cygwin}.exe
done

for z in $(ls oscam*.exe)
do
  mv $z oscam.exe
done

for i in $(ls list_smargo*.exe)
do
  mv $i list_smargo.exe
done

for i in $(ls *.exe)
do
  for x in $(cygcheck.exe ./$i)
  do
    if [[ $x =~ \\bin\\cyg.*\.dll ]]
    then
      cp $(cygpath -u $x) -t .
    fi
  done
done

./oscam.exe --build-info > oscam-info.txt

mkdir ~/oscam-zip
zip -9 ~/oscam-zip/${z//exe/zip} *
```

#### Full automation

The Windows build process can be further enhanced by

+   using a portable and therefore non-intrusive Cygwin installation
+   making sure all Cygwin packages, including the compiler, are up-to-date

This can be achieved by using the external script [​Build-OSCamForWindows.ps1](https:https://github.com/GruberMarkus/Build-OSCamForWindows).

Download the script, right-click it and select "Run with PowerShell". The script then takes care of everything.

You can also run the script from command line, as a scheduled task, etc.:

```
powershell.exe -ExecutionPolicy Bypass .\Build-OSCamForWindows.ps1
```

[Last modified](https://trac.streamboard.tv/oscam/wiki/BuildingOscam?action=diff&version=42 "Version 42 by Opti") [10 months ago](https://trac.streamboard.tv/oscam/timeline?from=2022-11-18T10%3A46%3A21%2B01%3A00&precision=second "See timeline at 11/18/22 10:46:21") Last modified on 11/18/22 10:46:21

**Note:** See [TracWiki](https://trac.streamboard.tv/oscam/wiki/TracWiki) for help on using the wiki.