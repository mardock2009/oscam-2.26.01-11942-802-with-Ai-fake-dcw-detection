> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.cert

Configuration file for Issuer Public Keys (IPK).

## Overview

The `oscam.cert` file stores Issuer Public Keys (IPK) for OSCam. This file provides a mapping between CAID (Conditional Access Identification) and IPK/session keys in hexadecimal format.

## Important Note

This configuration file is currently only supported for Cryptoworks encryption systems. It is not used for SSL/TLS certificates as the filename might suggest, but rather for cryptographic keys specific to Cryptoworks conditional access systems.

## Purpose

The file allows OSCam to:
- Map CAIDs to their corresponding Issuer Public Keys
- Store session keys in hexadecimal format
- Support Cryptoworks decryption operations

## Syntax

The file uses a simple colon-separated format:

```
CAID:reserved:IPK
```

### Parameters

- **CAID**: Conditional Access Identification - numeric identifier for the encryption provider (in hexadecimal)
- **reserved**: Reserved field (typically set to 00000000)
- **IPK**: Issuer Public Key or session key in hexadecimal format

## Format Details

- All values are in hexadecimal format
- The reserved field is typically padded with zeros (00000000)
- The IPK field contains the actual cryptographic key data
- Each line represents one CAID-to-IPK mapping

## Example

```
0100:00000000:010203040506070809A0B0C0D0E0F
```

This example shows:
- CAID: 0100
- Reserved field: 00000000
- IPK: 010203040506070809A0B0C0D0E0F (hexadecimal key data)

## Multiple Entries

You can define multiple CAID-to-IPK mappings by adding additional lines:

```
0100:00000000:010203040506070809A0B0C0D0E0F
0200:00000000:0A1B2C3D4E5F6071829384A5B6C7D
0300:00000000:FEDCBA9876543210ABCDEF012345
```

## Use Cases

### Cryptoworks Systems

This file is specifically designed for Cryptoworks conditional access systems where:
- Issuer Public Keys are required for decryption
- Session keys need to be mapped to specific CAIDs
- Multiple providers may use different keys

### Key Management

The file provides a centralized location for:
- Storing cryptographic keys
- Managing multiple CAID mappings
- Updating keys without modifying other configuration files

## Security Considerations

- Keep this file secure as it contains cryptographic key material
- Restrict file permissions to prevent unauthorized access
- Only share keys with trusted parties
- Update keys regularly as required by your provider

## Limitations

- Currently only supported for Cryptoworks encryption systems
- Not applicable to other conditional access systems (Nagravision, Irdeto, Viaccess, etc.)
- Does not handle SSL/TLS certificates despite the filename

## Notes

- The file is optional and only needed when working with Cryptoworks systems
- If the file is not present, OSCam will function normally for other encryption systems
- The reserved field must be present but is not currently used
- Key format and length may vary depending on the specific Cryptoworks implementation
- Ensure keys are entered correctly in hexadecimal format without spaces or separators
