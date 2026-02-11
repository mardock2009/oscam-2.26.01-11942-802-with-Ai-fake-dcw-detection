> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.ird

Configuration file for Irdeto CAID guessing by signature.

## Overview

The `oscam.ird` file is an Irdeto-specific guessing table that determines the CAID (Conditional Access Identification) based on signature bytes found in ECM messages. This file is specifically designed for Irdeto conditional access systems.

## Important Note

This configuration file is only used for Irdeto encryption systems (CAID 0x0600 series). It is recommended to create at least an empty `oscam.ird` file (e.g., with `touch oscam.ird`) to prevent OSCam from displaying a warning message during startup that the file was not found.

## Purpose

The file allows OSCam to:
- Automatically identify Irdeto CAIDs based on signature bytes in ECM messages
- Map specific byte patterns to their corresponding CAID and Service ID
- Support Irdeto systems where CAID identification requires signature analysis

## When to Use

You need this file if:
- You are working with Irdeto conditional access systems
- Your setup requires automatic CAID detection based on ECM signatures
- You want to avoid startup warnings about missing configuration files

For most users, creating an empty file is sufficient to suppress warnings. Advanced users working with Irdeto systems may need to populate it with specific signature mappings.

## Syntax

The file uses a colon-separated format based on ECM signature bytes:

```
<byte3>:<byte4-7>:<CAID>:<SID>
```

### Parameters

- **byte3**: The value of byte 3 in the ECM signature (hexadecimal)
- **byte4-7**: The values of bytes 4 through 7 in the ECM signature (hexadecimal)
- **CAID**: The Conditional Access Identification number (hexadecimal)
- **SID**: The Service ID (hexadecimal)

## Format Details

- All values are in hexadecimal format
- The signature bytes are extracted from specific positions in the ECM message
- Each line represents one signature-to-CAID/SID mapping
- Multiple mappings can be defined for different Irdeto providers

## Example

```
12:000000a:12ab:cd01
```

This example shows:
- Byte 3: 12 (hexadecimal)
- Bytes 4-7: 000000a (hexadecimal)
- CAID: 12ab (hexadecimal) - Irdeto CAID
- SID: cd01 (hexadecimal) - Service ID

When OSCam encounters an Irdeto ECM with these signature bytes, it will automatically assign CAID 12ab and Service ID cd01.

## Multiple Entries

You can define multiple signature mappings for different Irdeto providers:

```
12:000000a:12ab:cd01
15:0000010:0604:1234
18:0000020:0606:5678
1A:0000030:0608:9abc
```

This configuration maps different signature patterns to their respective Irdeto CAIDs and service IDs.

## Use Cases

### Irdeto Systems

The primary use case is with Irdeto conditional access systems:
- Irdeto 1 (CAID 0x0600)
- Irdeto 2 (CAID 0x0602, 0x0604, 0x0606, 0x0608, etc.)
- Various Irdeto providers with different signature patterns

### Automatic CAID Detection

When working with Irdeto cards or emulators where CAID needs to be determined from ECM signatures rather than being explicitly provided.

## How It Works

1. OSCam receives an Irdeto ECM message
2. OSCam extracts signature bytes from specific positions (bytes 3-7)
3. OSCam looks up the signature pattern in the oscam.ird file
4. If a match is found, OSCam assigns the corresponding CAID and SID
5. Processing continues with the identified CAID and service

## Common Irdeto CAID Values

For reference, here are common Irdeto CAID values:
- 0600: Irdeto 1
- 0602: Irdeto 2
- 0604: Irdeto 2 variant
- 0606: Irdeto 2 variant
- 0608: Irdeto 2 variant
- 060A: Irdeto 2 variant
- 060C: Irdeto 2 variant
- 060E: Irdeto 2 variant

## Best Practices

### Empty File Creation

Even if you don't need signature mapping, create an empty file to suppress warnings:

```bash
touch oscam.ird
```

### Signature Collection

To populate this file, you typically need to:
1. Analyze ECM messages from your Irdeto provider
2. Extract the signature bytes from positions 3-7
3. Determine the correct CAID and SID for each signature
4. Add entries to the file

### Testing

After adding entries:
1. Restart OSCam
2. Monitor logs for CAID detection
3. Verify that channels open correctly
4. Adjust mappings if needed

## Limitations

- Only applicable to Irdeto conditional access systems
- Requires knowledge of ECM structure and signature bytes
- Signature patterns must be unique for accurate identification
- Not used by other encryption systems (Nagravision, Viaccess, Seca, etc.)

## Notes

- The file is optional but recommended to avoid startup warnings
- Most users can simply create an empty file
- Advanced Irdeto configurations may require specific signature mappings
- Signature bytes are system-specific and vary by provider
- Incorrect mappings can lead to failed decryption attempts
- This is a specialized configuration for Irdeto systems only
