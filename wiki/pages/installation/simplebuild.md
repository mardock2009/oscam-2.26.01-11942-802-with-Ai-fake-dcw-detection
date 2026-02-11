# Simplebuild

> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

Simplebuild 3 (s3) is an automated build script that simplifies compiling OSCam for various target platforms. It handles toolchain management, cross-compilation, and provides a graphical menu interface for configuration.

## Overview

Simplebuild 3 provides:
- Automated OSCam compilation with common configurations
- Support for multiple target platforms and toolchains
- Graphical menu for easy configuration
- Integrated toolchain management with crosstool-NG
- Patch application support
- Profile-based builds

**Project Repository**: https://github.com/gorgone/s3_releases

## Installation

### Download Simplebuild 3

Clone the repository:

```bash
git clone https://github.com/gorgone/s3_releases.git
cd s3_releases
```

### Grant Root Execution (if needed)

To run everything as root user:

```bash
./s3 tcupdate --config "CTNG_BUILD_AS_ROOT" "1"
```

## Basic Commands

### Update and Maintenance

```bash
# Update Simplebuild 3 (from RC6 onwards)
./s3 update_me

# Clean Simplebuild 3
./s3 clean

# Update repository (SVN/Git)
./s3 repoup

# Download current source (automatically backed up)
./s3 checkout

# Reset/fix Simplebuild 3 installation
./s3 fix_me

# Clean repository (remove untracked files)
./s3 repoclean

# Restore repository from backup
./s3 reporestore
```

### System Information

```bash
# Check system requirements
./s3 syscheck

# Display system information
./s3 sysinfo

# Display Simplebuild version
./s3 version

# Show help
./s3 help
```

### Interactive Menu

Start the graphical menu interface:

```bash
./s3 menu
```

### Custom Configuration Path

Specify a custom configuration directory:

```bash
./s3 -c=/path/to/config/directory
```

## Toolchain Management

Simplebuild 3 includes integrated toolchain management using crosstool-NG.

### Update Toolchain

Update toolchain (from version 21 onwards):

```bash
./s3 tcupdate -u
# or
./s3 tcupdate --update_me
```

### Toolchain Operations

```bash
# Check if a specific toolchain is available
./s3 tccheck <toolchain>

# Repair a toolchain
./s3 tcrepair <toolchain>

# Edit toolchain configuration
./s3 tedit <toolchain>

# Load toolchain only (without building)
./s3 loadonly <toolchain>
```

### Update to gcc 10.2.0 and binutils 2.35

For all crosstool-NG based toolchain templates:

```bash
# Load the latest toolchain templates
./s3 tcupdate --update_me

# Install the latest version of crosstool-NG (with gcc 10.2.0 support)
./s3 tcupdate --setup

# Reset and detect the latest versions of integrable libraries
./s3 tcupdate --reset
```

This recreates the s3.TUP configuration file and determines the most current versions of integrable libraries.

## Working with Patches

### Apply a Patch Manually

1. Copy the patch file to:
   ```bash
   /opt/s3_releases/oscam-svn/
   ```

2. Apply the patch:
   ```bash
   patch -p1 < filename.patch
   # or
   patch -p0 < filename.patch
   ```

### Use Built-in Patch Support

1. Copy the patch to:
   ```bash
   .../s3/support/patches/
   ```

2. Build with patch for a specific target (e.g., mipsoe20):
   ```bash
   ./s3 mipsoe20 USE_PATCH
   ```

3. Or select in the menu:
   - **CONFIGURE** → **BUILD_EXTRA** → select **USE_PATCH**

### Patch Management

```bash
# Download/get a patch
./s3 get_patch

# Apply patch to repository
./s3 repopatch
```

## Building OSCam

### Using the Menu

1. Start the menu:
   ```bash
   ./s3 menu
   ```

2. Configure your build options through the graphical interface

3. Select your target platform and build

### Command Line Build

Build for a specific target (replace `<target>` with your platform):

```bash
./s3 <target>
```

Common targets include:
- `mipsoe20` - MIPS platforms
- `arm` - ARM-based devices
- `pc` - Native PC build

With additional options:
```bash
./s3 <target> USE_PATCH -c=/custom/config/path

# Build with verbose output
./s3 <target> USE_VERBOSE

# Build with custom OSCam name
./s3 <target> -oscamname=myoscam

# Build with specific configuration directory
./s3 <target> -c=/etc/tuxbox/config

# Copy binaries to current directory
./s3 <target> here
```

### Build Options

Available USE flags for builds:
- `USE_PATCH` - Apply patches from support/patches/
- `USE_TARGZ` - Create tar.gz archive of binary
- `USE_VERBOSE` - Verbose build output
- `USE_STATIC` - Static linking
- `STATIC_LIBCRYPTO` - Static libcrypto
- `STATIC_SSL` - Static SSL
- `STATIC_LIBUSB` - Static libusb
- `STATIC_PCSC` - Static PCSC
- `USE_STAPI` - STAPI support
- `USE_STAPI5` - STAPI5 support

### Module Control

Enable/disable specific modules:
```bash
# Enable all modules
./s3 <target> all_on

# Disable all modules
./s3 <target> all_off

# Enable specific module types
./s3 <target> addons_on protocols_on readers_on

# Disable specific module types
./s3 <target> addons_off protocols_off readers_off card_readers_off
```

## Profiles

Simplebuild supports build profiles for repeatable configurations. Profiles are stored in:
```
.../s3/support/profiles/
```

### Using Profiles

Use a profile:
```bash
./s3 <target> -p=profile_name
# or
./s3 <target> -P=profile_name
```

### Managing Profiles

```bash
# Manage build profiles
./s3 profiles

# Manage SSH upload profiles
./s3 ssh_profiles
```

## Configuration

### Edit Configuration

```bash
# Edit Simplebuild configuration
./s3 cedit
```

### Language Selection

```bash
# Select interface language
./s3 lang_select
```

## Binary Upload

After building, you can upload binaries to your target device:

```bash
# Upload binary using SSH profile
./s3 upload <profile_name>

# Upload cam binary
./s3 upload_cam <profile_name>
```

## Directory Structure

After installation, Simplebuild creates the following structure:

- `support/` - Main support directory
  - `archive/` - Build archives
  - `binaries/` - Compiled binaries
  - `configs/` - Configuration files
  - `downloads/` - Downloaded files
  - `functions/` - Script functions
  - `logs/` - Build logs
  - `patches/` - Patch files
  - `profiles/` - Build profiles
  - `software/` - Additional software
  - `toolchains/` - Cross-compilation toolchains

## Notes

- Developed by Gorgone and WXbet
- Simplebuild 3 automates many aspects of OSCam compilation
- The graphical menu makes configuration easier for beginners
- Integrated toolchain management simplifies cross-compilation
- Regular updates ensure compatibility with latest OSCam versions
- Profiles allow for consistent, repeatable builds
- Supports plugins and extensions through the functions/ and software/ directories
- Automatic backup of repository before updates
- Direct menu mode available with DIRECTMENU=1 in config