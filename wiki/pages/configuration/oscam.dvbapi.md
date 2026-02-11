> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.dvbapi

Configuration file for DVB API settings and channel mappings.

## Overview

The `oscam.dvbapi` file controls the behavior of OSCam's DVB API module. This configuration is essential for optimizing decryption performance on multicrypt channels by prioritizing specific CAIDs, ignoring unnecessary requests, and mapping encryption providers. The file helps accelerate channel opening times and reduces unnecessary server load.

## Syntax

Each line in the file starts with a letter indicating the directive type, followed by parameters:

### P - Priority
```
P: [CAID]:[provider ID]:[service ID]:[ECM PID]:[CHID] [continue]
```
Sets priority for specific CAIDs or providers. The optional `continue` parameter (value: 1) forces continuous retry attempts on the specified CAID, useful for Pay-Per-View services or card activation scenarios.

### I - Ignore
```
I: [CAID]:[provider ID]:[service ID]:[ECM PID]:[CHID]
```
Ignores specific encryption providers or Pay TV providers to prevent unnecessary ECM requests.

### M - Mapping
```
M: [CAID]:[provider ID]:[service ID]:[ECM PID] [target CAID]:[target provider ID]
```
Maps one CAID/provider to another, useful for redirecting requests (e.g., mapping Sky HD channels for S02 or D02 cards).

### D - Delay
```
D: [CAID]:[provider ID]:[service ID]:[ECM PID] delay
```
Adds a delay in milliseconds before writing the control word, useful when the server responds too quickly.

### L - ECM Length Filter
```
L: [CAID]:[provider ID]:[service ID]:[ECM PID] ECM length (hexa)
```
Filters ECM requests to only allow specific ECM lengths (in hexadecimal), useful for filtering broken mappings.

### X - Multi ECM (Demux)
```
X: [CAID]:[provider ID]:[service ID]:[ECM PID] demux
```
Adds decoding on an extra demux index on the same CA device (not supported on all set-top boxes).

### J - Join
```
J: [CAID]:[provider ID]:[service ID]:[ECM PID] join
```
Joins a CAID/provider/ECM PID to another ECM PID.

### A - Dummy ECM
```
A: ::[service ID]:[video PID]:[provider ID]::[ECM PID]
```
Sets a dummy ECM request with CAID FFFF for services with constant control words (for STBs without PMT PID support only).

### S - Device Settings
```
S: [device] [PMT file name]
```
Settings for DVB API device name and PMT file name (only valid for STAPI).

## Parameters

- **CAID**: Conditional Access Identification - numeric identifier for the encryption provider
- **provider ID**: Numeric identifier for the Pay TV provider
- **service ID**: Numeric identifier for the channel/service
- **ECM PID**: Entitlement Control Message PID
- **CHID**: Channel ID
- **continue**: Value of 1 enables continuous retry attempts

## Examples

### Priority Examples
```
P: 0100:123456       # Prioritize CAID 0100 with provider 123456
P: 0100 1            # Prioritize CAID 0100 with continuous retry (for PPV/card activation)
P: : 1               # Client continues requesting after 3 failed attempts (all CAIDs)
P: :1234             # Prioritize ECM with provider ID 1234 on all services
P: 0200              # Prioritize CAID 0200
P: 0300::9ABC        # Prioritize CAID 0300 only on service 9ABC
P: 1702              # Prioritize Sky S02
P: 1830              # Prioritize HD+ HD01
P: 0D95              # Prioritize ORF-ICE
```

### Ignore Examples
```
I: :654321           # Ignore provider ID 654321 for all services
I: 0                 # Ignore all CAIDs not previously specified in this file
I: 09C4              # Ignore Sky V13
```

### Mapping Examples
```
M: 0400 0500:123456  # Map CAID 0400 to CAID 0500 with provider ID 123456
M: 1834:000000:007E 1722  # Map CAID 1834 with provider 000000 and SID 007E to CAID 1722
```

### Delay Example
```
D: 0600 200          # Wait 200 ms before writing CW for CAID 0600
```

### ECM Length Filter Example
```
L: 0700 8e           # Only allow ECM length 8e (hex) for this CAID to filter broken mappings
```

## Use Cases

### Multicrypt Optimization
For channels with multiple encryption systems (e.g., Sky Germany with both Nagravision and NDS), prioritize the CAID matching your available cards to avoid unnecessary requests and speed up channel opening.

### Pay-Per-View Services
Use the `continue` parameter to keep retrying on a specific CAID until the card is activated:
```
P: 0100 1
```

### Server Load Reduction
Ignore CAIDs for which you have no cards to prevent unnecessary server requests:
```
I: 09C4              # Ignore if you don't have V13 cards
```

## Notes

- The `oscam.dvbapi` file is optional - DVB API will work without it
- This file should be customized to match your specific server/card configuration
- Proper configuration significantly improves channel switching speed
- Reduces unnecessary load on sharing servers
- Essential for optimal performance with multicrypt channels
