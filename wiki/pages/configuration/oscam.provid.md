> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.provid

Configuration file for provider ID mappings and display names.

## Overview

The `oscam.provid` file is a provider table that translates CAID (Conditional Access Identification) and Provider ID combinations into human-readable provider names and additional information. This file is used to display meaningful provider information in logs, monitoring outputs, and the web interface instead of just showing numeric CAID:ProvID combinations.

## Purpose

The file allows OSCam to:
- Convert numeric CAID:ProvID combinations into readable provider names
- Display additional information like satellite position and language
- Enhance log readability and web interface presentation
- Provide context for cards and readers in monitoring outputs
- Make it easier to identify providers across different protocols and readers

## When to Use

This file is useful for:
- Improving readability of OSCam logs and web interface
- Identifying which providers are available on your cards
- Monitoring and troubleshooting card sharing setups
- Documentation and system administration
- Making sense of provider information in reader statistics

The file is optional - OSCam will work without it, but provider information will only be displayed as numeric CAID:ProvID values.

## Syntax

The file uses a pipe-separated format:

```
<caid>:<provid>|<provider>|<satellite>|<language>
```

### Parameters

- **caid**: Conditional Access Identification in hexadecimal (e.g., 0100, 0500, 1702)
- **provid**: Provider ID in hexadecimal (e.g., 000000, 003411, 000401)
- **provider**: Human-readable provider name (e.g., "Sky Germany", "Canal+")
- **satellite**: Satellite position or transmission method (e.g., "19.2E", "Astra", "Cable")
- **language**: Language code or description (e.g., "de", "en", "fr")

## Format Details

- Values are separated by pipe characters (|)
- CAID and ProvID are in hexadecimal format
- Provider name, satellite, and language fields are free text
- Comments start with # character
- Empty lines are ignored
- Additional fields beyond language are optional

## Examples

### Basic Example

```
0100:012345|MyPay-TV|Astra 19E|German
```

This maps CAID 0100 with Provider ID 012345 to "MyPay-TV" on Astra 19.2E in German.

### Real-World Examples

```
# Sky Germany
1702:000000|Sky Germany S02|19.2E|de
1833:000401|Sky Germany HD+|19.2E|de

# Canal+
0100:003311|Canal+ France|19.2E|fr
0100:003315|Canal+ Espana|19.2E|es

# HD+
1830:003411|HDplus HD01|19.2E|de

# ORF
0D05:000000|ORF|19.2E|de
0D05:000004|ORF ICE|19.2E|de

# Mediaset
0100:00000B|Mediaset Italy|13E|it
```

### With Comments

```
# oscam.provid
# Provider table for OSCam
# Format: <caid>:<provid>|<provider>|<satellite>|<language>

# German Providers
1702:000000|Sky Germany S02|19.2E|de
1830:003411|HDplus HD01|19.2E|de

# French Providers
0100:003311|Canal+ France|19.2E|fr
0500:032830|Fransat|5W|fr
```

## Web Interface Display

When configured, the provider information appears in the OSCam web interface:

Instead of seeing:
```
1830:003411
```

You will see:
```
HDplus HD01 / 19.2E / de
```

This makes it much easier to identify which providers are available on your readers and cards.

## Common Provider Examples

### Sky Germany

```
1702:000000|Sky Germany S02|19.2E|de
1833:000401|Sky Germany NDS|19.2E|de
09C4:000000|Sky Germany V13|19.2E|de
```

### HD+

```
1830:003411|HDplus HD01|19.2E|de
1843:003411|HDplus HD02|19.2E|de
```

### Canal+

```
0100:003311|Canal+ France|19.2E|fr
0100:003315|Canal+ Espana|19.2E|es
0100:003317|Canal+ Polska|13E|pl
```

### ORF

```
0D05:000000|ORF|19.2E|de
0D05:000004|ORF ICE|19.2E|de
0D95:000000|ORF|19.2E|de
0D95:000004|ORF ICE|19.2E|de
```

### Viaccess Providers

```
0500:032830|Fransat|5W|fr
0500:042400|SRG Swiss|13E|de/fr/it
0500:050F00|Bis TV|19.2E|fr
```

## Building Your Provider List

### Finding CAID:ProvID Combinations

1. Check OSCam logs for CAID:ProvID values
2. Look at reader statistics in the web interface
3. Consult online provider databases
4. Use card information tools

### Adding New Entries

1. Identify the CAID:ProvID from logs or web interface
2. Research the provider name and details
3. Add a new line with the appropriate format
4. Restart OSCam or reload configuration
5. Verify the display in web interface

## File Location

The file should be placed in your OSCam configuration directory, typically:
- `/etc/tuxbox/config/oscam.provid`
- `/var/etc/oscam.provid`
- `/usr/local/etc/oscam.provid`

Or wherever your other OSCam configuration files are located.

## Best Practices

### Organization

- Group providers by country or encryption system
- Use comments to separate sections
- Keep entries alphabetically sorted within sections
- Include satellite position for clarity

### Naming Conventions

- Use clear, descriptive provider names
- Include card generation if applicable (S02, HD01, etc.)
- Specify satellite position in standard format (19.2E, 13E, etc.)
- Use standard language codes (de, en, fr, es, it, etc.)

### Maintenance

- Update entries when providers change
- Remove obsolete providers marked as "(Old)"
- Add new providers as they become available
- Keep the file synchronized across your OSCam instances

## Notes

- The file is optional and only affects display, not functionality
- OSCam will work without this file, showing only numeric values
- Changes take effect after OSCam restart or configuration reload
- The file can be quite large with hundreds of provider entries
- Community-maintained provider lists are available online
- Provider IDs may change when providers update their systems
- Some providers use multiple CAID:ProvID combinations
