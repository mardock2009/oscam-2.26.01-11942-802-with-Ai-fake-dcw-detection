> [!NOTE]
> 🚧 **Parameters Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.services

Configuration file for service definitions and mappings.

## Overview

The `oscam.services` file defines service groups in OSCam by mapping combinations of CAID (Conditional Access Identification), Provider ID, and Service ID (channel) into named service groups. These service definitions can then be referenced in other configuration files (like oscam.user and oscam.server) to control access and manage which services users and readers can access.

## Important Limitation

The number of services that will be considered per reader in oscam.server is limited to 64 entries. Each entry is counted as one combination of [service-name][CAID][provid][srvid]. Plan your service definitions accordingly to stay within this limit.

## Purpose

The file allows OSCam to:
- Group related channels into named service groups
- Control which services users can access
- Restrict readers to specific service groups
- Simplify configuration by using service names instead of listing individual channels
- Manage access permissions at the service group level

## When to Use

This file is useful for:
- Creating logical groupings of channels (e.g., "sports", "movies", "kids")
- Implementing access control for different user groups
- Restricting readers to specific channel packages
- Simplifying user and reader configuration
- Managing large channel lists more efficiently

The file is optional - without it, you must specify individual CAIDs, Provider IDs, and Service IDs directly in user and reader configurations.

## Syntax

Each service definition consists of a section header followed by required parameters:

```
[service name]
caid   = CAID[,CAID]...
provid = provider ID[,provider ID]...
srvid  = service ID[,service ID]...
```

### Required Parameters

All parameters are required for each service definition:

- **[service name]**: Unique name for the service group (section header)
- **caid**: One or more CAIDs in hexadecimal, comma-separated
- **provid**: One or more Provider IDs in hexadecimal, comma-separated
- **srvid**: One or more Service IDs in hexadecimal, comma-separated

### Optional Parameters (SVN 11588+)

These parameters were added in SVN revision 11588 (August 23, 2020):

- **disablecrccws_only_for_exception**: Define service as exception for disablecrccws_only_for settings (0|1, default: 0)
- **no_wait_time**: Define service as wait_time exception (0|1, default: 0)
- **lg_only_exception**: Define service as localgenerated-only exception for cache exchange (0|1, default: 0)

## Format Details

- Service names must be unique
- All values (CAID, provid, srvid) are in hexadecimal format
- Multiple values are separated by commas
- Service sections can appear multiple times in the file
- Comments start with # character
- Empty lines are ignored

## Basic Example

```
[myservice]
caid   = 0100,0200,000A
provid = 000001,ABCDEF
srvid  = 0001,0002,000A,000B
```

This defines a service named "myservice" that includes:
- CAIDs: 0100, 0200, and 000A
- Provider IDs: 000001 and ABCDEF
- Service IDs: 0001, 0002, 000A, and 000B

## Real-World Examples

### HD+ (Multicrypt)

```
[hdplus]
caid   = 1830,1843,1860,186A,186D
provid =
srvid  = 0002,126E,126F,1519,151A,157C,157F,1581,183D,2774,2E9B,2EAF,307A,30D6,5274,6FEC,6FEE,EF10,EF11,EF14,EF15,EF16,EF17,EF74,EF75,EF76,EF77,EF78,EF79,EF7A,07E4,07D0,07EE,07F8
```

### Sky Germany SAT - Starter Paket

```
[SAT-Sky-Starter-Paket]
caid   = 098C,098D,09F0
provid =
srvid  = 007F,0085,0194,0192,0016,0071,0191,00A8,0082,0077,0206,000D,0070,0017,0076,0093,007C,008E,006C,007E,0065,0088,007B
```

### Sky Germany SAT - Sport UHD

```
[SAT-Sky-Sport-UHD]
caid   = 098C,098D,09F0
provid =
srvid  = 0228,0229
```

### Sky Germany Vodafone - Sport Paket

```
[UM-Sky-Sport-Paket]
caid   = 098E,1838,1850,1854,1868
provid =
srvid  = 010C,0116,0120,012A,0134,013E,0148,0152,0102,010D,0011,0091,0090,008D,0072,0081
```

### ORF Digital (Multicrypt)

```
[orfcw]
caid   = 0D95,0D98
provid =
srvid  = 32C9,32CA,32CB,32CC,32CD,32CE,32CF,32D0,32D1,32D2,32D3,32D6,32D4,33A7,4E27,33A5,332D,3337,132F,1330,33AC,33FD,1334,33FA,33FB,33FC,33F5,33F6,33F7,33F8,33F9,1331,33FC,14B8
```

## Advanced Examples

### With Exception Parameters

```
[special_service]
caid   = 0100
provid = 000001
srvid  = 5000,5001
disablecrccws_only_for_exception = 1
no_wait_time = 1
lg_only_exception = 1
```

This service is configured with all exception flags enabled for special handling.

### Separate Service Groups by Content Type

```
[sky_sport_channels]
caid   = 098C,098D,09F0
provid =
srvid  = 0228,0229,010C,0116

[sky_cinema_channels]
caid   = 098E,1838,1850,1854,1868
provid =
srvid  = 0074,006B,008B

[hd_basic_channels]
caid   = 1830,1843,1860,186A,186D
provid =
srvid  = EF10,EF11,EF74,EF75
```

## Using Services in Other Configuration Files

### In oscam.user

```
[account]
user     = john
pwd      = password
services = hdplus,SAT-Sky-Starter-Paket
```

User "john" can only access channels defined in hdplus and SAT-Sky-Starter-Paket service groups.

### In oscam.server

```
[reader]
label    = myreader
protocol = internal
device   = /dev/sci0
services = orfcw,hdplus
```

This reader is restricted to only serve channels defined in the orfcw and hdplus service groups.

## Finding Service IDs

To populate your oscam.services file, you need to identify the Service IDs for your channels:

1. Check OSCam logs for CAID:ProvID:SrvID information
2. Use DVB analysis tools to scan your satellite/cable
3. Consult online channel databases
4. Check your card's entitlements in the web interface
5. Monitor ECM requests in OSCam logs

## Best Practices

### Naming Conventions

- Use descriptive, meaningful service names
- Use lowercase with underscores (e.g., sky_de_sport)
- Group related channels logically
- Keep names short but clear

### Organization

- Group services by provider or package
- Separate by content type (sports, movies, kids, etc.)
- Use comments to document service groups
- Keep related services together in the file

### Maintenance

- Document which channels belong to each service
- Update service definitions when channel lineups change
- Remove obsolete service definitions
- Test service restrictions after changes

### Performance

- Stay within the 64-service limit per reader
- Combine related channels into single services when possible
- Avoid overly granular service definitions
- Balance between flexibility and simplicity

## Troubleshooting

### User Can't Access Channels

- Verify the service is assigned to the user in oscam.user
- Check that the service definition includes the correct CAID/ProvID/SrvID
- Ensure service names match exactly (case-sensitive)
- Verify the reader has access to the service

### Service Not Working

- Check for typos in service names
- Verify hexadecimal values are correct
- Ensure all required parameters are present
- Check for duplicate service names

### 64-Service Limit Exceeded

- Consolidate similar services
- Remove unused service definitions
- Use broader service definitions
- Consider splitting across multiple readers

## Integration with Other Files

Services defined here are referenced in:
- **oscam.user**: Assign services to users
- **oscam.server**: Restrict readers to specific services
- **oscam.conf**: Global service settings

## Notes

- Service names must be unique across the entire file
- The file is optional but highly recommended for complex setups
- Services provide an abstraction layer for access control
- Changes require OSCam restart to take effect
- Service definitions don't affect card functionality, only access control
- The 64-service limit is per reader, not global
- Exception parameters (disablecrccws_only_for_exception, no_wait_time, lg_only_exception) were added in SVN 11588
- Exception services don't need to be assigned to users/readers to function
- Community-maintained service lists are available online for popular providers
