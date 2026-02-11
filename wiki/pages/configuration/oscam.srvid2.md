> [!NOTE]
> 🚧 **Parameters Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.srvid2

Configuration file for extended service ID mappings (version 2 format).

## Overview

The `oscam.srvid2` file is an alternative format to oscam.srvid that maps service IDs (channels) to human-readable names and descriptions. The key difference from oscam.srvid is that the service ID comes first in the format, followed by CAID and provider information. Like oscam.srvid, this file is only needed when using the OSCam monitor or web interface.

## Important Note

This file is only required if you are using the OSCam monitor or web interface. Without these features, the file serves no purpose and only consumes memory. For memory efficiency, only include the service IDs and provider IDs you actually need.

## Difference from oscam.srvid

The main difference between oscam.srvid and oscam.srvid2 is the field order:

- **oscam.srvid**: CAID[@PROVID]:SrvID|provider|name|type|description
- **oscam.srvid2**: SrvID:CAID[@PROVID]|name|type|description|provider

The srvid2 format places the service ID first, which can make the file easier to organize and search when you have many channels.

## Purpose

The file allows OSCam to:
- Display channel names instead of numeric service IDs in logs
- Show readable channel information in the web interface
- Provide better context in monitoring outputs
- Make dependencies between server, reader, and client more evident
- Improve troubleshooting by showing which channels are being accessed

## When to Use

This file is useful when:
- Using the OSCam web interface
- Using the OSCam monitor
- Troubleshooting channel access issues
- Monitoring which channels users are watching
- Analyzing server load by channel
- Preferring service ID-first organization

Choose oscam.srvid2 over oscam.srvid if you prefer organizing entries by service ID rather than by CAID.

## File Format Requirements

The file must use Unix text file format (LF line endings, not CRLF). Using Windows line endings may cause parsing issues.

## Syntax

The file uses a pipe-separated format with service ID first:

```
service ID:CAID1[@PROVID1[@PROVID2[@...]]][,CAID2[@PROVIDA[@PROVIDB[@...]]]]|[channel_name]|[type]|[description]|[provider]
```

### Parameters

- **service ID**: Service ID (channel ID) in hexadecimal
- **CAID**: One or more CAIDs in hexadecimal
- **@PROVID**: Optional provider ID(s) in hexadecimal
- **channel_name**: Channel name (optional)
- **type**: Channel type like TV, Radio, etc. (optional)
- **description**: Additional description (optional)
- **provider**: Provider or satellite position (optional)

## Format Details

- Service ID comes first, before the colon
- Multiple CAIDs are separated by commas
- Provider IDs are prefixed with @ symbol
- Fields are separated by pipe (|) characters
- All CAID, ProvID, and SrvID values are in hexadecimal
- Non-zero provider IDs have priority over zero (catch-all) provider IDs

## Basic Examples

### Simple Entries

```
000a:0001,0002,0003|tv name|tv|my description 1|provider 1
000a:0004,0005,0006|radio name 2|radio|my description 2|provider 2
000b:0006|tv name 3||my description 3|provider 3
000b:0007|tv name 4|||provider 4
```

### Service ID with All Providers

```
# Service ID 1111, CAID 0100, all provider IDs
1111:0100|x|y|z|v
```

### Service ID with Specific Provider

```
# Service ID 1111, CAID 0100, provider ID 123456
1111:0100@123456|x|y|z|v
```

### Service ID with Zero (Catch-All) Provider

```
# Service ID 1111, CAID 0100, all providers
1111:0100@000000|x|y|z|v
```

### Multiple CAID/Provider Combinations

```
# Service ID 1111, CAID 0100 with provider 123456 AND CAID 0200 with provider 654321
1111:0100@123456,0200@654321|x|y|z|v
```

## Real-World Examples

### Sky Germany Channels

**Sky SAT:**

```
007F:098C,098D,09F0|13th Street|TV|Sky Starter Paket|Sky
0085:098C,098D,09F0|Beate Uhse|TV|Sky Starter Paket|Sky
0194:098C,098D,09F0|Cartoon Network|TV|Sky Starter Paket|Sky
```

**Sky Vodafone:**

```
0074:098E,1838,1850,1854,1868|Sky Cinema Action HD|TV|Sky Cinema Paket|Sky
006B:098E,1838,1850,1854,1868|Sky Cinema Classics HD|TV|Sky Cinema Paket|Sky
008B:098E,1838,1850,1854,1868|Sky Cinema Family HD|TV|Sky Cinema Paket|Sky
```

### HD+ Channels

```
EF10:1830,1843,1860,186A,186D,09C4,098C,098D|RTL HD|TV||Astra HD+
EF11:1830,1843,1860,186A,186D,09C4,098C,098D|VOX HD|TV||Astra HD+
EF74:1830,1843,1860,186A,186D,09C4,098C,098D|SAT.1 HD|TV||Astra HD+
```

### ORF Channels

```
132F:0D95,0D98,0648,0650,09C4,098C|ORF1 HD|||ORF Digital
1330:0D95,0D98,0648,0650,09C4,098C|ORF2 HD|||ORF Digital
33AC:0D95,0D98,0648,0650,09C4,098C|ATV HD|||ORF Digital
```

## Advanced Features

### Multicrypt Channels with Management CAID

For multicrypt channels, list all CAIDs including the management CAID 0000:

```
0025:0000,1702,1837,1833,09C4,098C,0D05,0D95,0648,0D98,0650|AXN Action|TV||austriasat 19.2°E
```

This prevents "unknown program" messages in the web interface and shows all CAIDs used by the channel.

### Finding CAIDs for Multicrypt Channels

Switch to the channel and check the OSCam logs:

```
2013/10/12 17:45:22 4DB510 c [DVBAPI] Receiver sends PMT command 3 for channel 0025
2013/10/12 17:45:22 4DB510 c [ADD PID 0] CAID: 1702 ECM_PID: 1725 PROVID: 000000
2013/10/12 17:45:22 4DB510 c [ADD PID 1] CAID: 1837 ECM_PID: 1FD1 PROVID: 000000
2013/10/12 17:45:22 4DB510 c [ADD PID 2] CAID: 1833 ECM_PID: 1825 PROVID: 000000
```

Create the entry:
```
0025:0000,1702,1837,1833,09C4,098C,0D05,0D95,0648,0D98,0650|AXN Action|TV||austriasat 19.2°E
```

### Free-to-Air (FTA) Channels

For FTA channels, use CAID FFFE and provider ID FFFFFE:

```
2404:FFFE@FFFFFE|Film4|TV||Freesat 28.2°E
```

Note: FTA CAID changed from 0000 to FFFE, and provider ID changed from 000000 to FFFFFE. Management CAID 0000 is reserved for multicrypt channels.

## Provider ID Priority

When you have multiple entries for the same service ID and CAID:

```
1111:0100@123456|a|b|c|d
1111:0100@000000|x|y|z|v
```

- Service ID 1111, CAID 0100, provider 123456 will use: a|b|c|d
- Service ID 1111, CAID 0100, all other providers will use: x|y|z|v

Non-zero provider IDs have priority over zero (catch-all) provider IDs.

## Web Interface Display

Without oscam.srvid2:
```
2013/10/12 17:45:22 4DB510 c New program number: 0025 [pmt_list_management 3]
```

With oscam.srvid2:
```
2013/10/12 17:45:22 4DB510 c New program number: 0025 (AXN Action) [pmt_list_management 3]
```

## Comparison with oscam.srvid

### oscam.srvid format:
```
098C,098D,09F0:007F|Sky|13th Street|TV|Sky Starter Paket
```

### oscam.srvid2 format:
```
007F:098C,098D,09F0|13th Street|TV|Sky Starter Paket|Sky
```

The srvid2 format:
- Places service ID first (easier to sort by channel)
- Swaps the position of provider and name fields
- Otherwise functions identically to oscam.srvid

## Building Your Service ID List

### Finding Service IDs

1. Check OSCam logs for service ID information
2. Use DVB analysis tools to scan channels
3. Monitor ECM requests in OSCam logs
4. Check the web interface status page
5. Consult online channel databases

### Extracting from Logs

Look for lines like:
```
[DVBAPI] Receiver wants to demux srvid 0025 on adapter 0000
```

The service ID is 0025 in this example.

## Memory Considerations

The oscam.srvid2 file is loaded into memory. For systems with limited RAM:
- Only include channels you actually use
- Only include provider IDs you need
- Remove unused entries
- Keep descriptions concise
- Consider using external tools that maintain their own databases

## External Programs

Some external programs use their own databases and don't need OSCam's internal oscam.srvid2 file. Check your external tool's documentation.

## Best Practices

### Organization

- Sort entries by service ID for easy lookup
- Group related channels together
- Use comments to separate sections
- Document special entries

### Naming Conventions

- Use clear, descriptive channel names
- Include satellite position in provider field
- Specify channel type (TV, Radio, etc.)
- Add useful descriptions

### Maintenance

- Update when channel lineups change
- Remove obsolete channels
- Add new channels as they appear
- Keep synchronized with actual channel availability

### Example Organization

```
# Sky Germany SAT - 19.2E (Service IDs 007F-0194)
007F:098C,098D,09F0|13th Street|TV|Sky Starter Paket|Sky
0085:098C,098D,09F0|Beate Uhse|TV|Sky Starter Paket|Sky

# Sky Germany Vodafone - Cable (Service IDs 0074-008B)
0074:098E,1838,1850,1854,1868|Sky Cinema Action HD|TV|Sky Cinema Paket|Sky
006B:098E,1838,1850,1854,1868|Sky Cinema Classics HD|TV|Sky Cinema Paket|Sky

# HD+ - 19.2E (Service IDs EF10-EF74)
EF10:1830,1843,1860,186A,186D,09C4,098C,098D|RTL HD|TV||Astra HD+
EF11:1830,1843,1860,186A,186D,09C4,098C,098D|VOX HD|TV||Astra HD+

# ORF Digital - 19.2E (Service IDs 132F-33AC)
132F:0D95,0D98,0648,0650,09C4,098C|ORF1 HD|||ORF Digital
1330:0D95,0D98,0648,0650,09C4,098C|ORF2 HD|||ORF Digital
```

## Choosing Between oscam.srvid and oscam.srvid2

Use oscam.srvid2 if:
- You prefer organizing by service ID
- You frequently look up channels by their service ID
- You want service IDs at the beginning of each line

Use oscam.srvid if:
- You prefer organizing by CAID
- You want to group all channels for a specific CAID together
- You're using existing oscam.srvid files from the community

Both formats work identically in OSCam - choose based on your organizational preference.

## Troubleshooting

### Channel Names Not Showing

- Verify file is named oscam.srvid2
- Check file is in correct configuration directory
- Ensure Unix line endings (not Windows CRLF)
- Verify CAID:ProvID:SrvID matches exactly
- Restart OSCam after changes

### Wrong Channel Names

- Check for duplicate entries
- Verify provider ID priority rules
- Ensure hexadecimal values are correct
- Check for typos in CAID/ProvID/SrvID

### Memory Issues

- Reduce file size by removing unused entries
- Keep descriptions short
- Remove unnecessary fields
- Consider external service ID management

## Notes

- This file is only for display purposes in monitor and web interface
- Does not affect OSCam's decryption functionality
- Changes require OSCam restart to take effect
- File is optional and can be omitted if not using monitor/webif
- Can coexist with oscam.srvid, but only one will be used
- OSCam typically prefers oscam.srvid2 if both files exist
- Community-maintained service ID lists are available online
- Some providers frequently change service IDs
- Keep backups before making major changes
- Test changes in web interface after updates
