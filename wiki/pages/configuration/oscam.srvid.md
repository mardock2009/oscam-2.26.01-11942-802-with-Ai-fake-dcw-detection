> [!NOTE]
> 🚧 **Parameters Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.srvid

Configuration file for service ID to channel name mappings.

## Overview

The `oscam.srvid` file maps service IDs (channels) to human-readable names and descriptions. This file is only needed when using the OSCam monitor or web interface. It translates numeric CAID:ProvID:SrvID combinations into meaningful channel names, making logs and the web interface much more readable and informative.

## Important Note

This file is only required if you are using the OSCam monitor or web interface. Without these features, the file serves no purpose and only consumes memory. For memory efficiency, only include the service IDs you actually need.

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

The file is optional and not needed if you don't use the monitor or web interface.

## File Format Requirements

The file must use Unix text file format (LF line endings, not CRLF). Using Windows line endings may cause parsing issues.

## Syntax

The file uses a pipe-separated format:

```
CAID1[@PROVID1[@PROVID2[@...]]][,CAID2[@PROVIDA[@PROVIDB[@...]]]]:service ID|[provider]|[name]|[type]|[description]
```

### Parameters

- **CAID**: One or more CAIDs in hexadecimal (max 10 per line)
- **@PROVID**: Optional provider ID(s) in hexadecimal
- **service ID**: Service ID (channel ID) in hexadecimal
- **provider**: Provider or satellite position (optional)
- **name**: Channel name (optional)
- **type**: Channel type like TV, Radio, etc. (optional)
- **description**: Additional description (optional)

## Format Details

- Multiple CAIDs are separated by commas
- Provider IDs are prefixed with @ symbol
- Fields are separated by pipe (|) characters
- All CAID, ProvID, and SrvID values are in hexadecimal
- Maximum 10 CAIDs per line
- Only one provider ID per CAID
- Non-zero provider IDs have priority over zero (catch-all) provider IDs

## Basic Examples

### Simple Entries

```
0001,0002,0003:000a|my provider 1|tv name|tv|my tv package
0004,0005,0006:000a|my provider 2|radio name 2|radio|my radio package
0006:000b|my provider 3|tv name 3|
```

### CAID with All Providers

```
# CAID 0100, all provider IDs, service ID 1111
0100:1111:x|y|z|v
```

### CAID with Specific Provider

```
# CAID 0100, provider ID 123456, service ID 1111
0100@123456:1111:x|y|z|v
```

### CAID with Zero (Catch-All) Provider

```
# CAID 0100, all providers, service ID 1111
0100@000000:1111:x|y|z|v
```

### Multiple CAID/Provider Combinations

```
# CAID 0100 with provider 123456 AND CAID 0200 with provider 654321, both for service ID 1111
0100@123456,0200@654321:1111:x|y|z|v
```

## Real-World Examples

### Sky Germany Channels

**Sky SAT:**

```
098C,098D,09F0:007F|Sky|13th Street|TV|Sky Starter Paket
098C,098D,09F0:0085|Sky|Beate Uhse|TV|Sky Starter Paket
098C,098D,09F0:0194|Sky|Cartoon Network|TV|Sky Starter Paket
```

**Sky Vodafone:**

```
098E,1838,1850,1854,1868:0074|Sky|Sky Cinema Action HD|TV|Sky Cinema Paket
098E,1838,1850,1854,1868:006B|Sky|Sky Cinema Classics HD|TV|Sky Cinema Paket
098E,1838,1850,1854,1868:008B|Sky|Sky Cinema Family HD|TV|Sky Cinema Paket
```

### HD+ Channels

```
1830,1843,1860,186A,186D,09C4,098C,098D:EF10|Astra HD+|RTL HD|TV|
1830,1843,1860,186A,186D,09C4,098C,098D:EF11|Astra HD+|VOX HD|TV|
1830,1843,1860,186A,186D,09C4,098C,098D:EF74|Astra HD+|SAT.1 HD|TV|
```

### ORF Channels

```
0D95,0D98,0648,0650,09C4,098C:132F|ORF Digital|ORF1 HD
0D95,0D98,0648,0650,09C4,098C:1330|ORF Digital|ORF2 HD
0D95,0D98,0648,0650,09C4,098C:33AC|ORF Digital|ATV HD
```

## Advanced Features

### Multicrypt Channels with Management CAID

For multicrypt channels, you can list all CAIDs used by the channel, including the management CAID 0000:

```
0000,1702,1837,1833,09C4,098C,0D05,0D95,0648,0D98,0650:0025|austriasat 19.2°E|AXN Action|TV|
```

This prevents "unknown program" messages in the web interface and makes it easy to see all CAIDs used by a channel.

### Finding CAIDs for Multicrypt Channels

Switch to the channel and check the OSCam logs:

```
2013/10/12 17:45:22 4DB510 c [DVBAPI] Receiver sends PMT command 3 for channel 0025
2013/10/12 17:45:22 4DB510 c [ADD PID 0] CAID: 1702 ECM_PID: 1725 PROVID: 000000
2013/10/12 17:45:22 4DB510 c [ADD PID 1] CAID: 1837 ECM_PID: 1FD1 PROVID: 000000
2013/10/12 17:45:22 4DB510 c [ADD PID 2] CAID: 1833 ECM_PID: 1825 PROVID: 000000
```

Use these CAIDs in your oscam.srvid entry.

### Free-to-Air (FTA) Channels

For FTA channels, use CAID FFFE:

```
FFFE:2404|Freesat 28.2°E|Film4|TV|Movies|
```

Note: FTA CAID changed from 0000 to FFFE. Management CAID 0000 is reserved for multicrypt channels.

## Provider ID Priority

When you have multiple entries for the same CAID and service ID:

```
0100@123456:1111:a|b|c|d
0100@000000:1111:x|y|z|v
```

- CAID 0100, provider 123456, service 1111 will use: a|b|c|d
- CAID 0100, all other providers, service 1111 will use: x|y|z|v

Non-zero provider IDs have priority over zero (catch-all) provider IDs.

## Multiple Providers for Same CAID

If you need multiple provider IDs for the same CAID and service ID:

```
# CAID 0100 with provider 123456 AND CAID 0100 with provider 654321
0100@123456,0100@654321:1111:x|y|z|v
```

## Web Interface Display

Without oscam.srvid:
```
2013/10/12 17:45:22 4DB510 c New program number: 0025 [pmt_list_management 3]
```

With oscam.srvid:
```
2013/10/12 17:45:22 4DB510 c New program number: 0025 (AXN Action) [pmt_list_management 3]
```

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

The oscam.srvid file is loaded into memory. For systems with limited RAM:
- Only include channels you actually use
- Remove unused entries
- Keep descriptions concise
- Consider using external tools that maintain their own service ID lists

## External Programs

Some external programs (like monitoring tools or configuration managers) use their own oscam.srvid files and don't need OSCam's internal file. Check your external tool's documentation.

## Best Practices

### Organization

- Group channels by provider or satellite
- Use comments to separate sections
- Keep entries sorted by CAID and service ID
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
# Sky Germany SAT - 19.2E
098C,098D,09F0:007F|Sky|13th Street|TV|Sky Starter Paket
098C,098D,09F0:0085|Sky|Beate Uhse|TV|Sky Starter Paket

# Sky Germany Vodafone - Cable
098E,1838,1850,1854,1868:0074|Sky|Sky Cinema Action HD|TV|Sky Cinema Paket
098E,1838,1850,1854,1868:006B|Sky|Sky Cinema Classics HD|TV|Sky Cinema Paket

# HD+ - 19.2E
1830,1843,1860,186A,186D,09C4,098C,098D:EF10|Astra HD+|RTL HD|TV|
1830,1843,1860,186A,186D,09C4,098C,098D:EF11|Astra HD+|VOX HD|TV|

# ORF Digital - 19.2E
0D95,0D98,0648,0650,09C4,098C:132F|ORF Digital|ORF1 HD
0D95,0D98,0648,0650,09C4,098C:1330|ORF Digital|ORF2 HD
```

## Limitations

- Maximum 10 CAIDs per line
- Only one provider ID per CAID per line
- File must use Unix line endings (LF)
- Only affects display, not functionality
- Consumes memory proportional to file size

## Troubleshooting

### Channel Names Not Showing

- Verify file is named oscam.srvid
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
- Community-maintained service ID lists are available online
- Some providers frequently change service IDs
- Keep backups before making major changes
- Test changes in web interface after updates
