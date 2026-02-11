> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.guess

Configuration file for CAID guessing based on ECM length.

## Overview

The `oscam.guess` file is a CAID (Conditional Access Identification) guessing table that determines the CAID based on ECM (Entitlement Control Message) length. This file is only needed for specific protocols that do not pass CAID information in their communication.

## Important Note

This configuration file is currently only required for the BOMBA protocol. Most other protocols pass CAID information directly and do not need this file.

## Purpose

The file allows OSCam to:
- Automatically determine the CAID when it's not provided by the protocol
- Map ECM message lengths to their corresponding CAIDs
- Support protocols that lack native CAID transmission

## When to Use

You only need this file if:
- You are using the BOMBA protocol
- Your protocol does not transmit CAID information
- OSCam cannot automatically detect the CAID from the ECM data

For most standard protocols (newcamd, CCcam, camd3, etc.), this file is not necessary.

## Syntax

The file uses a simple colon-separated format:

```
<length of ECM>:<CAID>
```

### Parameters

- **length of ECM**: The length of the ECM message in hexadecimal format
- **CAID**: The Conditional Access Identification number in hexadecimal format

## Format Details

- Both values are in hexadecimal format
- The ECM length is the size of the ECM message
- Each line represents one length-to-CAID mapping
- Multiple mappings can be defined for different ECM lengths

## Example

```
12:3456
```

This example shows:
- ECM length: 12 (hexadecimal) = 18 bytes (decimal)
- CAID: 3456 (hexadecimal)

When OSCam receives an ECM message that is 18 bytes long, it will automatically assign CAID 3456 to it.

## Multiple Entries

You can define multiple ECM length-to-CAID mappings:

```
12:3456
1A:0100
20:0500
2E:1702
```

This configuration maps:
- 18-byte ECMs to CAID 3456
- 26-byte ECMs to CAID 0100 (Seca/Mediaguard)
- 32-byte ECMs to CAID 0500 (Viaccess)
- 46-byte ECMs to CAID 1702 (Sky Germany S02)

## Use Cases

### BOMBA Protocol

The primary use case is with the BOMBA protocol, which does not transmit CAID information:

```
# BOMBA protocol CAID guessing
10:0B00
12:0D00
14:0E00
```

### Legacy Systems

Some older or proprietary protocols may also benefit from CAID guessing:
- Custom card sharing protocols
- Modified or stripped-down protocols
- Legacy conditional access systems

## How It Works

1. OSCam receives an ECM message from a protocol that doesn't include CAID
2. OSCam measures the length of the ECM message
3. OSCam looks up the length in the oscam.guess file
4. If a match is found, OSCam assigns the corresponding CAID
5. Processing continues with the identified CAID

## Common CAID Values

For reference, here are some common CAID values:
- 0100: Seca/Mediaguard
- 0500: Viaccess
- 0600: Irdeto
- 0B00: Conax
- 0D00: Cryptoworks
- 0E00: PowerVu
- 1702: Sky Germany (Nagravision S02)
- 1833: Sky Germany (NDS HD+)

## Limitations

- Only works for protocols that don't pass CAID information
- Relies on ECM length being unique for each CAID
- If multiple CAIDs use the same ECM length, conflicts may occur
- Not applicable to most modern protocols

## Notes

- The file is optional and only needed for specific protocols like BOMBA
- Most users will never need to create or modify this file
- If the file is not present, OSCam will function normally for protocols that pass CAID
- ECM lengths must be specified in hexadecimal format
- Ensure mappings are accurate to avoid incorrect CAID assignment
- This is a specialized configuration for edge cases
