# Compile from Source

> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

This guide describes how to compile OSCam from source code on your system. The build process is straightforward and typically requires only standard development tools.

## Overview

OSCam uses CMake as its build system. The typical workflow is:

1. Get the source code from GitLab
2. Configure build options (optional)
3. Run CMake to generate build files
4. Compile with `make`

In most cases, no special programs or libraries are required except:
- `gcc` (or `clang`) - C compiler
- `make` - build automation tool
- `cmake` - cross-platform build system
- `libc` - standard C library
- `libssl-dev` - OpenSSL development libraries (for SSL support)
- `git` - to get the source code

## Prerequisites

### Debian/Ubuntu

Install the base toolchain and then add feature-specific dependencies as needed.

#### Base build (required)

```bash
apt-get install build-essential cmake git pkg-config
```

#### Helpful tools (recommended)

```bash
apt-get install dialog patch wget
```

#### Feature-specific dependencies

```bash
# SSL/TLS (WebIF HTTPS, SSL features)
apt-get install libssl-dev

# PCSC smartcard support (use distro pcsc-lite)
apt-get install libpcsclite-dev pcscd

# USB smartreader support (libusb)
apt-get install libusb-1.0-0-dev
```

#### Building pcsc-lite from source (Meson, optional)

Most users should use distribution packages. If you need to build pcsc-lite yourself:

```bash
# Build tools
apt-get install meson ninja-build flex pkg-config

# Pick ONE backend (reader access)
apt-get install libudev-dev
# or
apt-get install libusb-1.0-0-dev

# Optional integrations
apt-get install libsystemd-dev libpolkit-gobject-1-dev
```

## Getting the Source Code

The official OSCam repository is hosted on GitLab at: https://git.streamboard.tv/common/oscam

### Initial Clone

Clone the OSCam source code from the official GitLab repository:

```bash
git clone https://git.streamboard.tv/common/oscam.git
cd oscam
```

This will download the latest version from the default branch (master).

### Updating the Source

After the initial clone, update to the latest version:

```bash
cd oscam
git pull
```

### Checking Out Specific Commits or Tags

If you need a specific version or commit:

```bash
cd oscam

# List available tags
git tag

# Checkout a specific tag (e.g., 11895)
git checkout 11895

# Checkout a specific commit
git checkout <commit-hash>

# Return to the latest version
git checkout master
git pull

# Check current commit and branch
git log -1
git branch
```

### Viewing Commit History

```bash
# View recent commits
git log --oneline -10

# View detailed information about current commit
git show
```

## Build Configuration

OSCam contains many features that can be enabled or disabled to customize your build.

### Configuration Menu

Start the graphical configuration utility (requires `dialog` package):

```bash
./config.sh --gui
```

This opens an interactive menu where you can select/deselect features.

### Configuration Shortcuts

Quick configuration presets:

```bash
# Disable everything
make allnoconfig

# Enable everything
make allyesconfig

# Restore default configuration
make defconfig
```

### Command Line Configuration

Use the `config.sh` script for command-line configuration:

```bash
# Enable WEBIF and SSL
./config.sh --enable WEBIF WITH_SSL

# Disable WEBIF but enable SSL
./config.sh --disable WEBIF --enable WITH_SSL

# Restore defaults and disable specific features
./config.sh --restore --disable WEBIF READER_NAGRA

# Use defaults with only one reader enabled
./config.sh --restore --disable readers --enable READER_BULCRYPT

# Disable everything and enable specific features only
./config.sh --disable all --enable WEBIF MODULE_NEWCAMD READER_BULCRYPT
```

For more configuration options, run:

```bash
./config.sh --help
```

See also: [README.config](https://git.streamboard.tv/common/oscam/-/blob/master/README.config?ref_type=heads)

## Basic Compilation

### Standard Build

Compile OSCam with default settings:

```bash
cd oscam
mkdir build
cd build
cmake ..
make
```

The compiled binary will be located in the `build` directory as `oscam`.

### Multi-Core Compilation

Speed up compilation on multi-core systems:

```bash
# Run 4 parallel compiler jobs
make -j4

# Or use the number of CPU cores you have
make -j$(nproc)
```

## Special Builds

### Build with libusb (USB Smartreader Support)

#### Installing libusb from Source

If your distribution doesn't have libusb packages:

```bash
cd /tmp
wget https://github.com/libusb/libusb/releases/download/v1.0.29/libusb-1.0.29.tar.bz2
tar -xf libusb-1.0.29.tar.bz2
cd libusb-1.0.29
```

`libusb` uses autotools. Build and install with the default options:

```bash
./configure
make
sudo make install
```

##### udev / shared / static options

Depending on your platform and packaging needs you may want to adjust the `./configure` options:

```bash
# Build without udev integration
./configure --disable-udev
make
sudo make install

# Prefer shared library build
./configure --enable-shared --disable-static
make
sudo make install

# Prefer static library build
./configure --enable-static --disable-shared
make
sudo make install
```

#### Building OSCam with libusb

```bash
cd oscam
mkdir build
cd build

# Dynamic linking
cmake -DUSE_LIBUSB=1 ..
make

# Static linking
cmake -DUSE_LIBUSB=1 -DLIBUSB_LIB=/usr/local/lib/libusb-1.0.a ..
make
```

#### macOS Specific

```bash
cd oscam
mkdir build
cd build

# Static libusb on macOS
cmake -DUSE_LIBUSB=1 -DLIBUSB_LIB="/usr/local/lib/libusb-1.0.a -lobjc -framework IOKit -framework CoreFoundation" ..
make

# With custom prefix (e.g., macports)
cmake -DUSE_LIBUSB=1 -DEXTRA_FLAGS="-I/opt/local/include -L/opt/local/lib" ..
make
```

### Build with PCSC Support

#### Installing PCSC from Source

If not available in your distribution:

```bash
cd /tmp
wget https://pcsclite.apdu.fr/files/pcsc-lite-2.4.1.tar.xz
tar -xf pcsc-lite-2.4.1.tar.xz
cd pcsc-lite-2.4.1
```

pcsc-lite now uses Meson (no autotools). Ensure the Meson build dependencies are installed (see prerequisites above).

Build and install with Meson:

```bash
meson setup builddir
meson compile -C builddir
sudo meson install -C builddir
```

##### Shared vs. Static pcsc-lite

```bash
# Shared library build (default)
meson setup builddir -Ddefault_library=shared
meson compile -C builddir
sudo meson install -C builddir

# Static library build
meson setup builddir -Ddefault_library=static
meson compile -C builddir
sudo meson install -C builddir
```

> [!NOTE]
> On macOS, pcsc-lite is provided by the system (CryptoTokenKit). You normally do not need to build pcsc-lite yourself.

#### Building OSCam with PCSC

```bash
cd oscam
mkdir build
cd build

# Standard PCSC build
cmake -DUSE_PCSC=1 ..
make

# With both PCSC and libusb
cmake -DUSE_PCSC=1 -DUSE_LIBUSB=1 ..
make
```

## Testing Patches

Patches contain code changes and are often posted in bug reports or forum threads for testing.

### Applying a Patch

Once you've saved a patch file to your `oscam` directory:

```bash
# Apply the patch
patch -p1 < file.patch

# Or sometimes
patch -p0 < file.patch
```

The `-p1` parameter tells `patch` how many directory levels to strip from paths in the patch.

### Successful Patch Application

You should see output like:

```
patching file globals.h
patching file module-camd35.c
patching file module-cccam.c
Hunk #1 succeeded at 3200 (offset -2 lines).
```

After applying the patch, build OSCam normally and test the changes.

## Build Output

After a successful build, you'll find:

- `oscam` - Main OSCam binary in the `build` directory
- `Distribution/` - Distribution folder with binaries (depending on your configuration)
- `utils/list_smargo` - USB smartcard reader utility (if built with libusb)
