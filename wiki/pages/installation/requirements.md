# Requirements

> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

This page summarizes what you typically need to **run** OSCam and (optionally) what you need to **build it from source**.

For step-by-step instructions, see:
- [Compile from Source](pages/installation/compile-from-source)
- [Simplebuild](pages/installation/simplebuild)
- [Cross Compile](pages/installation/cross-compile)
- [Docker Installation](pages/installation/docker-installation)
- [Linux Installation](pages/installation/linux-installation)
- [macOS Installation](pages/installation/macos-installation)
- [Windows Installation](pages/installation/windows-installation)

## System Requirements

OSCam is lightweight and runs on a wide range of systems.

### Supported operating systems (common)

- **Linux** (most common)
- **BSD** variants (depending on build options)
- **macOS** (typically built from source)
- **Windows** (typically via prebuilt binaries or building with a suitable toolchain)

### Supported CPU architectures

OSCam is commonly built for:

- **x86 / x86_64** (PCs, servers)
- **ARM / AArch64** (SBCs, NAS devices, embedded)

It can also be built for various embedded architectures (e.g., **MIPS/MIPSEL**, **PPC**, **SH4**) when using the right toolchain; see [Cross Compile](pages/installation/cross-compile).

### Typical resource needs

- **CPU**: Very low for basic operation; increases with heavy logging, many clients, or additional features/modules.
- **RAM**: Generally low; allow extra headroom on small embedded systems.
- **Disk**: Minimal for binaries and configuration; plan disk space based on your logging strategy.

## Hardware Requirements

Hardware requirements depend mostly on how OSCam interfaces with card/reader hardware.

### Network

- A stable network interface is recommended (Ethernet preferred on small devices).
- Reliable DNS/NTP can help avoid issues with name resolution and time-dependent logging.

### Smartcard reader hardware (optional)

Depending on your setup, you may need one of:

- **USB smartcard reader** (requires `libusb` support)
- **PC/SC-compatible reader** (requires `pcsc-lite` / `pcsclite` support and usually the `pcscd` daemon)
- **Internal/serial readers** on specific embedded/STB hardware (platform-specific)

### Headless operation

OSCam is commonly run headless. A local display/GUI is not required.

## Software Dependencies

There are two distinct cases:

1. **Runtime dependencies** (what the binary needs at runtime)
2. **Build dependencies** (what you need to compile OSCam)

### Runtime dependencies

At minimum you need:

- A standard C runtime (`libc`) for your platform

Feature-dependent runtime components (only if you enable/use them):

- **SSL/TLS**: OpenSSL runtime libraries (varies by distro)
- **PC/SC reader access**: `pcscd` service + `pcsclite` libraries
- **USB reader access**: `libusb-1.0` runtime libraries

### Build dependencies (compiling from source)

OSCam uses CMake; a typical build environment includes:

- `gcc` or `clang`
- `cmake`
- `make` (or Ninja)
- `git`
- `pkg-config`

For a concrete package list on Debian/Ubuntu (including optional SSL/PCSC/libusb packages), see [Compile from Source](pages/installation/compile-from-source).

### Feature → dependency mapping (overview)

| Feature | Typical dependency |
|---|---|
| SSL/TLS features (e.g., HTTPS in WebIF) | OpenSSL development + runtime libraries |
| PC/SC smartcard readers | `pcsc-lite` / `libpcsclite` (+ `pcscd`) |
| USB smartcard readers | `libusb-1.0` |

If you cross-compile, you need the **matching headers and libraries for the target architecture**, or you must build them for the target toolchain; see [Cross Compile](pages/installation/cross-compile).
