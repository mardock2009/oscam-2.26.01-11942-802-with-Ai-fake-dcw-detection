# Supported Protocols, Card Readers, and Smart Cards

OSCam's versatility comes from its extensive support for multiple protocols, card reader types, and conditional access systems. This comprehensive compatibility makes OSCam adaptable to virtually any setup.

## Communication Protocols

### Protocol Overview

OSCam supports both UDP and TCP protocols, each with distinct characteristics:

**UDP (User Datagram Protocol)**
- **Connectionless**: No persistent connection between client and server
- **Lightweight**: Minimal overhead and faster transmission
- **Best for**: Stable, high-bandwidth networks where occasional packet loss is acceptable

**TCP (Transmission Control Protocol)**
- **Connection-oriented**: Maintains persistent connection with handshaking
- **Reliable**: Guarantees packet delivery with error checking and retransmission
- **Best for**: Unstable or low-bandwidth connections where reliability is critical
- **Performance**: Slight overhead is negligible for conditional access data

### Supported Protocol List

OSCam implements the following protocols for maximum compatibility:

| Protocol | Type | Features | Cascading Support |
|----------|------|----------|-------------------|
| **newcamd** | TCP | Standard newcamd protocol | ✓ Yes |
| **camd 3.3x** | TCP | Classic camd protocol | - |
| **camd 3.5x / 3.57x** | UDP | Extended ECM/EMM support (>256 bytes) | ✓ Yes |
| **camd 3.78x** | TCP | Extended ECM/EMM support (>256 bytes) | ✓ Yes |
| **CCcam** | TCP/UDP | Extended ECM/EMM support (>256 bytes) | ✓ Yes |
| **DVB API** | Local | Multi-tuner and PIP support | N/A |
| **gbox** | UDP | Gbox protocol | ✓ Yes |
| **serial** | Serial | HSIC, SSSP, BOMBA, DSR 9500 | - |
| **radegast** | TCP | Radegast protocol | ✓ Yes |

### Protocol Features

- **Cascading Support**: Connect to remote servers for load distribution
- **ECM Support**: Electronic Control Message processing
- **EMM Support**: Electronic Management Message handling
- **Extended Messages**: Support for messages larger than 256 bytes
- **Multi-tuner**: Simultaneous handling of multiple tuners
- **PIP Support**: Picture-in-Picture functionality

## Card Reader Support

OSCam supports a wide variety of card reader hardware through its modular architecture. The type of reader you choose depends on your setup requirements and available hardware.

### Serial Card Readers

**Mouse Protocol Readers**
- Standard mouse protocol with 3, 5, or 6 MHz clock speed
- Compatible with most Phoenix-style readers
- Reliable and widely available

**Internal Readers**
- Built-in readers in set-top boxes (e.g., Dreambox, VU+, Gigablue)
- Direct hardware access for optimal performance
- Platform-specific drivers

**Serial-USB Adapters**
- Connect serial readers via USB-to-serial converters
- Provides flexibility for systems without serial ports
- Driver support may vary by chipset

### USB Card Readers

**FTDI Chipset Readers**
- **Examples**: Smargo Smartreader+, Smartgo readers
- **Features**: Excellent Linux support, overclocking capable
- **Recommended**: Best choice for USB readers

**Prolific Chipset Readers**
- Basic USB reader support
- **Limitation**: Overclocking not supported
- Compatible but less feature-rich

**Other USB Readers**
- SC8in1: Multi-reader support
- MP35: AD-Teknik MP 3.6/USB Phoenix readers
- Various proprietary readers

### Reader Selection Guide

| Reader Type | Best For | Pros | Cons |
|-------------|----------|------|------|
| Internal | Embedded systems | Direct access, fast | Hardware-specific |
| USB (FTDI) | General purpose | Reliable, overclockable | Requires USB port |
| USB (Prolific) | Budget setups | Affordable | No overclocking |
| Serial | Legacy systems | Universal compatibility | Requires serial port |

For a complete list of tested devices and compatibility notes, see the [Device List](../../archive/oldWiki/DeviceList) in the archive.

## Supported Smart Cards

OSCam supports smart cards from major conditional access (CA) systems through its modular card reader implementation. Support depends on which CA modules are compiled into your OSCam build.

### Conditional Access Systems

OSCam can read and process smart cards from the following CA systems:

- **Nagravision**
- **Irdeto**
- **Conax**
- **Cryptoworks**
- **Seca (Mediaguard)**
- **Viaccess**
- **Videoguard (NDS)**
- **DRE Crypt**
- **Tongfang**
- **Bulcrypt**
- **Griffin**
- **DGCrypt**

### Card Compatibility Notes

- **Module Selection**: CA system support is determined at compile time
- **Multi-System Cards**: Some cards contain multiple CA systems
- **Regional Variations**: Same CA system may have different implementations

For detailed information about specific card models, provider compatibility, and known issues, refer to the [Cards List](../../archive/oldWiki/CardsList) in the archive.

## Configuration Considerations

### Choosing the Right Protocol

- **Local Setup**: Use DVB API for direct card reading
- **Network Sharing**: TCP-based protocols for reliable connections
- **High-Speed Networks**: UDP protocols for lower latency
- **Cascading**: Select protocols with explicit cascading support

### Reader Selection

- **Compatibility**: Verify reader support for your platform
- **Performance**: Internal readers typically offer best performance
- **Flexibility**: USB readers provide portability across systems
- **Overclocking**: Choose FTDI-based readers if overclocking is needed

### Module Configuration

Enable only the modules you need during compilation to:
- Minimize memory footprint
- Reduce attack surface
- Optimize performance
- Simplify troubleshooting

For compilation and module selection guidance, see the [Installation Guide](../installation/compile-from-source).
