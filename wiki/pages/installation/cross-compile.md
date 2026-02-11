# Cross Compile

> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

This guide describes how to cross-compile OSCam for different target architectures and platforms. Cross-compilation allows you to build OSCam binaries for systems different from your build machine.

For general information on building OSCam, see the [Compile from Source](pages/installation/compile-from-source) page.

## Overview

Cross-compilation involves using a toolchain (compiler, libraries, and headers) that targets a different architecture than your build system. For example, you can compile OSCam for ARM devices while building on an x86_64 Linux PC.

**Key components needed:**
- Cross-compilation toolchain for your target architecture
- OSCam source code
- Optional: OpenSSL, libusb, or PCSC libraries compiled for the target architecture

## Supported Target Architectures

OSCam can be cross-compiled for many embedded platforms and architectures:

### Mobile/Embedded
- **Android** (ARM/ARM64) - Smartphones, tablets, Android TV boxes
- **ARM** - Various ARM-based embedded devices

### Set-Top Boxes
- **MIPSEL** - Dreambox 800/8000/7025, VU+, DD-WRT routers
- **MIPS** - OpenWRT routers, Fonera, Fritzbox routers
- **PPC** (PowerPC) - Dreambox 500/600/7000/7020, DBox2
- **SH4** - Various set-top boxes with SH4 processors

### Network Devices
- **ARM** - NSLU2 (Unslug, OpenWRT), DOCKSTAR, COOLSTREAM
- **MIPSEL/ARM** - Broadcom-based devices

## General Cross-Compilation Process

The basic workflow for cross-compiling OSCam:

1. **Download and install** a cross-compilation toolchain for your target
2. **Get the OSCam source code** from GitLab (see [Compile from Source][Compile from Source](pages/installation/compile-from-source))
3. **Configure** OSCam build options as needed
4. **Cross-compile** using CMake with the toolchain

### Basic Cross-Compile Command Pattern

⚠️ **Note**: The following examples use the old `make` syntax. These need to be updated for CMake.

```bash
# Old make syntax (needs updating):
make CROSS=/path/to/toolchain/bin/arch-platform-
```

For CMake, you'll typically use a toolchain file:

```bash
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=/path/to/toolchain.cmake ..
make
```

## Toolchain Requirements

A cross-compilation toolchain includes:
- **Cross-compiler** (gcc or clang for target architecture)
- **C library** (glibc, uclibc, musl, etc.)
- **Headers and libraries** for the target system
- **Binutils** (linker, assembler, etc.)

### Pre-built Toolchains

Many pre-built toolchains are available from StreamBoard and other sources. These can be run on:
- 32-bit Linux distributions
- 64-bit Linux with 32-bit compatibility libraries

## Platform-Specific Guides

### Android

Building OSCam for Android devices requires the Android NDK (Native Development Kit).

⚠️ **Note**: NDK versions above r14b have issues with OpenSSL compilation due to the switch from GCC to Clang. Use NDK r13b or r14b for best results.

#### Requirements
- Android NDK r13b or r14b
- Linux build system

#### Download Android NDK

```bash
cd /
# NDK r14b (recommended)
wget https://dl.google.com/android/repository/android-ndk-r14b-linux-x86_64.zip
unzip android-ndk-r14b-linux-x86_64.zip

# Or NDK r13b
wget https://dl.google.com/android/repository/android-ndk-r13b-linux-x86_64.zip
unzip android-ndk-r13b-linux-x86_64.zip
```

#### Install Toolchain

```bash
cd /android-ndk-r14b/build/tools
export TOOLCHAIN=/android-toolchain

# Create standalone toolchain (API 21 = Android 5.0)
./make_standalone_toolchain.py --arch arm --api 21 --install-dir /android-toolchain
```

**API Levels** (select based on your target Android version):
- API 21-22: Android 5.0-5.1 (Lollipop)
- API 23: Android 6.0 (Marshmallow)
- API 24-25: Android 7.0-7.1 (Nougat)
- API 26-27: Android 8.0-8.1 (Oreo)
- API 28+: Android 9.0+ (Pie and later)

#### Install OpenSSL for Android

```bash
cd /
wget http://www.openssl.org/source/openssl-1.0.1g.tar.gz
tar -xf openssl-1.0.1g.tar.gz
cd openssl-1.0.1g

export CC=/android-toolchain/bin/arm-linux-androideabi-gcc
export RANLIB=/android-toolchain/bin/arm-linux-androideabi-ranlib

./Configure --prefix=/android-toolchain/sysroot/usr android
make
make install_sw
```

#### Cross-Compile OSCam for Android

⚠️ **Old SVN instructions - needs updating for Git/CMake**:

```bash
cd /
svn checkout https://svn.streamboard.tv/oscam/trunk oscam-svn
cd oscam-svn
./config.sh --enable WEBIF WITH_SSL IPV6SUPPORT

make static EXTRA_FLAGS="-pie" LIB_RT= LIB_PTHREAD= \
  CROSS=/android-toolchain/bin/arm-linux-androideabi-
```

### Dreambox 800/8000/7025 (MIPSEL)

#### Download and Install Toolchain

```bash
cd /tmp
sudo mkdir -p /opt/cross
wget https://files.streamboard.tv/toolchains/Toolchain_mipsel-tuxbox-linux.Dreambox.tar.bz2
sudo tar -xf Toolchain_mipsel-tuxbox-linux.Dreambox.tar.bz2 -C /opt/cross
```

#### Install OpenSSL (Optional)

```bash
cd /tmp
wget http://www.openssl.org/source/openssl-1.0.1g.tar.gz
tar -xf openssl-1.0.1g.tar.gz
cd openssl-1.0.1g

export TOOLCHAIN=/opt/cross/mipsel-unknown-linux-gnu
export CC=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu-gcc
export RANLIB=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu-ranlib

./Configure --prefix=$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/ \
  linux-generic32 shared
make
sudo make install
```

#### Install libusb (Optional)

```bash
cd /tmp
wget http://downloads.sourceforge.net/project/libusb/libusb-1.0/libusb-1.0.9/libusb-1.0.9.tar.bz2
tar -xf libusb-1.0.9.tar.bz2
cd libusb-1.0.9

export TOOLCHAIN=/opt/cross/mipsel-unknown-linux-gnu
export PATH="$TOOLCHAIN/bin:$PATH"

./configure --prefix=$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/ \
  --host=mipsel-unknown-linux-gnu --enable-shared=no
make
make install
```

#### Cross-Compile OSCam

⚠️ **Old make syntax - needs updating for CMake**:

```bash
export TOOLCHAIN=/opt/cross/mipsel-unknown-linux-gnu

# Basic compilation
make CROSS=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu-

# With SSL support
make CROSS=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu- USE_SSL=1

# With libusb support
make CROSS=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu- USE_LIBUSB=1

# With static libusb
make CROSS=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu- USE_LIBUSB=1 \
  LIBUSB_LIB="$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/lib/libusb-1.0.a -lrt"

# With PCSC support
make CROSS=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu- USE_PCSC=1 \
  EXTRA_FLAGS="-I$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/include/PCSC"

# All features combined
make CROSS=$TOOLCHAIN/bin/mipsel-unknown-linux-gnu- \
  CONF_DIR=/etc/tuxbox/config/ USE_LIBUSB=1 \
  LIBUSB_LIB="$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/lib/libusb-1.0.a -lrt" \
  USE_PCSC=1 USE_SSL=1 \
  EXTRA_FLAGS="-I$TOOLCHAIN/mipsel-unknown-linux-gnu/sys-root/usr/include/PCSC"
```

### MIPSEL Router / DD-WRT

#### Install Toolchain

```bash
cd /tmp
wget https://files.streamboard.tv/toolchains/Toolchain_MIPS-Router-uclib-0.9.28.bz2
tar -xvf Toolchain_MIPS-Router-uclib-0.9.28.bz2
sudo mkdir -p /opt/cross/mipsel
sudo mv toolchains/* /opt/cross/mipsel
```

#### Cross-Compile OSCam

```bash
export TOOLCHAIN=/opt/cross/mipsel/4.1.0-uclibc-0.9.28

# Basic compilation
make CROSS=$TOOLCHAIN/bin/mipsel-linux-uclibc-

# With SSL support
make CROSS=$TOOLCHAIN/bin/mipsel-linux-uclibc- USE_SSL=1

# With libusb support
make CROSS=$TOOLCHAIN/bin/mipsel-linux-uclibc- USE_LIBUSB=1

# With static libusb
make CROSS=$TOOLCHAIN/bin/mipsel-linux-uclibc- USE_LIBUSB=1 \
  LIBUSB_LIB="$TOOLCHAIN/lib/libusb-1.0.a"
```

## Available Toolchains

Pre-built toolchains are available for download from StreamBoard:

### Set-Top Boxes
- **Dreambox MIPSEL**: https://files.streamboard.tv/toolchains/Toolchain_mipsel-tuxbox-linux.Dreambox.tar.bz2
- **Dreambox MIPSEL with SSL**: https://files.streamboard.tv/toolchains/Toolchain_mipsel-tuxbox-linux.Dreambox.SSL.tar.bz2
- **Dreambox PPC (DM600/7000/7020)**: https://files.streamboard.tv/toolchains/Toolchain_powerpc-tuxbox-linux_DreamboxPPC.tar.bz2
- **Dreambox PPC with SSL**: https://files.streamboard.tv/toolchains/Toolchain_powerpc-tuxbox-linux_DreamboxPPC.SSL.tar.bz2
- **Dreambox PPC (DM500/DBox2)**: https://files.streamboard.tv/toolchains/Toolchain_powerpc-tuxbox-linux_dm500.tar.bz2
- **SH4**: https://files.streamboard.tv/toolchains/toolchain-sh4-tuxbox.bz2

### Routers
- **MIPS Router (DD-WRT)**: https://files.streamboard.tv/toolchains/Toolchain_MIPS-Router-uclib-0.9.28.bz2
- **MIPS Router (Fritzbox)**: https://files.streamboard.tv/toolchains/Toolchain_MIPS-Router-Fritzbox-uclib-0.9.29.tar.bz2

### ARM Devices
- **COOLSTREAM ARM**: https://files.streamboard.tv/toolchains/Toolchain-cross-arm-cx2450x-linux-gnueabi.tar.bz2
- **DOCKSTAR**: https://files.streamboard.tv/toolchains/Toolchain-armv5te_uclibc_eabi-dockstar.tar.bz2
- **ARM NSLU2 UNSLUG**: https://files.streamboard.tv/toolchains/Toolchain_armv5b-softfloat-linux_Unslug.tar.bz2

### OpenWRT SDK
- **MIPS OpenWRT**: http://downloads.openwrt.org/kamikaze/7.09/brcm47xx-2.6/OpenWrt-SDK-brcm47xx-2.6-for-Linux-i686.tar.bz2
- **MIPS Fonera**: http://downloads.openwrt.org/kamikaze/7.09/atheros-2.6/OpenWrt-SDK-atheros-2.6-for-Linux-i686.tar.bz2
- **ARM OpenWRT**: http://downloads.openwrt.org/kamikaze/7.09/ixp4xx-2.6/OpenWrt-SDK-ixp4xx-2.6-for-Linux-i686.tar.bz2

### Broadcom
- **Broadcom ARM/MIPSEL**: https://docs.broadcom.com/docs/12358538
  - For VU+ Solo4K (ARM): use `/opt/cross/stbgcc-4.8-1.5/bin/arm-linux-gnueabihf-`

## CMake Toolchain Files

For modern CMake-based builds, you'll need to create a toolchain file. Here's an example:

```cmake
# toolchain-mipsel.cmake
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR mips)

set(TOOLCHAIN_PREFIX /opt/cross/mipsel-unknown-linux-gnu)
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}/bin/mipsel-unknown-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}/bin/mipsel-unknown-linux-gnu-g++)

set(CMAKE_FIND_ROOT_PATH ${TOOLCHAIN_PREFIX})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
```

Then use it with CMake:

```bash
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../toolchain-mipsel.cmake ..
make
```

## Notes

- Most toolchains work on 32-bit Linux or 64-bit Linux with 32-bit compatibility libraries
- Toolchains include compiler, libc, and sometimes OpenSSL/libusb pre-compiled
- If using a toolchain not listed here, please share it on the StreamBoard forum
- Some toolchains are old; consider building your own modern toolchain for best results
