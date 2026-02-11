> [!NOTE]
> 🚧 **Parameters Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.tiers

## Overview

The `oscam.tiers` file is a TIER configuration file for OSCam that provides mapping between CAID (Conditional Access ID), TIER ID (also known as CHID - Channel ID), and human-readable descriptions of TIERs. This file helps identify and label subscription packages and service tiers for various pay-TV providers.

TIERs represent subscription packages or service groups within a conditional access system. By defining these mappings, OSCam can display meaningful names for the services available on a smartcard in the WebIF (Web Interface).

## File Location

```
/usr/local/etc/oscam.tiers
```

or in your OSCam config directory.

## File Format

The file uses a simple line-based format with Unix text file format (LF line endings).

### Syntax

```
CAID[,CAID]...:TIER_ID|description
```

### Format Components

- **CAID**: Conditional Access ID (4-digit hexadecimal), multiple CAIDs can be specified separated by commas
- **TIER_ID**: Tier/Channel ID (4-digit hexadecimal)
- **description**: Human-readable description of the tier/service package
- **:** Separator between CAID list and TIER_ID
- **|** Separator between TIER_ID and description

### Important Notes

- Use Unix text file format only (LF line endings, not CRLF)
- Comments start with `#`
- Multiple CAIDs can share the same TIER_ID
- Entries should be sorted by TIER_ID within each card/provider section

## Examples

### Basic Example

```
0001,0002,0003:000a|my TIER 1
0004:000b|my TIER 2
0005:000b|my TIER 3
```

### Sky Germany V13/G02/G09 (NDS)

```
09C4,09C7:0046|HDplus [NDS]
09C4,09C7:007D|Sky Sport [NDS]
09C4,09C7:0081|Sky Bundesliga [NDS]
09C4,09C7:008E|Beate Uhse [NDS]
09C4,09C7:00C7|Sky Welt [NDS]
09C4,09C7:00C8|Sky Film [NDS]
09C4,09C7:00C9|Sky Welt HD [NDS]
09C4,09C7:00CA|Sky Film HD [NDS]
09C4,09C7:00CB|Sky Sport HD [NDS]
```

### Sky Germany S02/A02/P02/D02 (Nagra)

```
1702,1833,1722,1834:000F|Sky Sport Portal
1702,1833,1722,1834:00F0|Sky Bundesliga
1702,1833,1722,1834:026C|Sky Welt Extra 1
1702,1833,1722,1834:05E7|Blue Movie Portal
1702,1833,1722,1834:05F1|Sky Welt HD
1702,1833,1722,1834:0614|Sky Sport News [SD/HD]
1702,1833,1722,1834:7D21|Sky Welt
1702,1833,1722,1834:7D22|Sky Film
1702,1833,1722,1834:7D23|Sky Sport
```

### HD+ (Nagra)

```
# HDplus HD01 [Nagra]
1830:0064|Gratis Jahr
1830:0065|Ungenutzt
1830:0BEA|HDplus Paket

# HDplus HD02 [Nagra]
1843:0066|HDplus Paket [Nagra HD02]
1843:0067|HDplus Paket [Nagra HD02]
1843:0BEA|HDplus Paket [Nagra HD02]
```

### ORF-ICE (Irdeto Mode)

```
# Provider 1
0648:0001|ORF
0648:0002|ATV / Private
0648:000D|ORF-ICE Irdeto-Mode Unknown
0648:F000|ORF-ICE Irdeto-Mode Unknown

# Provider 2
0648:0015|ORF-ICE Irdeto-Mode Unknown
```

### ORF (CryptoWorks)

```
0D05,0D95:0001|ORF All
0D05,0D95:0010|ATV
```

## Complete Example File

```
# oscam.tiers
# TIER configuration file for OSCam
# Format: CAID[,CAID]...:TIER_ID|description

# Sky Germany V13/G02/G09 [NDS]
09C4,09C7:0046|HDplus [NDS]
09C4,09C7:0058|Sky 3D [NDS]
09C4,09C7:005A|Sky Sport HD Extra [NDS]
09C4,09C7:007D|Sky Sport [NDS]
09C4,09C7:0081|Sky Bundesliga [NDS]
09C4,09C7:008E|Beate Uhse [NDS]
09C4,09C7:00C0|Sky Welt Extra [NDS]
09C4,09C7:00C7|Sky Welt [NDS]
09C4,09C7:00C8|Sky Film [NDS]
09C4,09C7:00C9|Sky Welt HD [NDS]
09C4,09C7:00CA|Sky Film HD [NDS]
09C4,09C7:00CB|Sky Sport HD [NDS]
09C4,09C7:00F3|Blue Movie Info [NDS]

# ORF-ICE Irdeto-Mode
0648:0001|ORF
0648:0002|ATV / Private
0648:000D|ORF-ICE Irdeto-Mode Unknown

# ORF CW
0D05,0D95:0001|ORF All
0D05,0D95:0010|ATV

# Sky Germany S02/A02/P02/D02 [Nagra]
1702,1833,1722,1834:000F|Sky Sport Portal
1702,1833,1722,1834:00F0|Sky Bundesliga
1702,1833,1722,1834:026C|Sky Welt Extra 1
1702,1833,1722,1834:05E7|Blue Movie Portal
1702,1833,1722,1834:05F1|Sky Welt HD
1702,1833,1722,1834:0614|Sky Sport News [SD/HD]
1702,1833,1722,1834:7D21|Sky Welt
1702,1833,1722,1834:7D22|Sky Film
1702,1833,1722,1834:7D23|Sky Sport
1702,1833,1722,1834:7D27|Beate-Uhse

# HDplus HD01 [Nagra]
1830:0064|Gratis Jahr
1830:0065|Ungenutzt
1830:0BEA|HDplus Paket

# HDplus HD02 [Nagra]
1843:0066|HDplus Paket [Nagra HD02]
1843:0067|HDplus Paket [Nagra HD02]
1843:0BEA|HDplus Paket [Nagra HD02]

# Unity Media UM01/03/02/22,I12 [Nagra]
1722,1831,1835,1838:310B|Unity Media Unknown
1722,1831,1835,1838:3160|Unity Media Unknown
1722,1831,1835,1838:D4A7|Unity Media Unknown
```

## How TIERs Work

### Understanding TIERs

TIERs (or CHIDs) are identifiers used by conditional access systems to define which services or channels a subscriber has access to. Each smartcard contains entitlements that specify which TIERs are active.

### TIER Detection

To determine the TIERs available on an NDS card:

1. Set OSCam debug level to 4
2. Check bytes 11 and 12 in the line below "Decrypted (Payload)" in the log
3. Use this command to extract TIER IDs:

```bash
grep -ia -A1 'Decrypted' /tmp/oscam.log | tail -n 1 | sed 's/  */ /g' | cut -d " " -f16,17 | sed 's/ //g'
```

### WebIF Integration

Starting with OSCam 1.20-unstable r5920:
- If no TIER/CHID assignments are found in `oscam.tiers`
- OSCam will display CAID/Provider assignments from `oscam.provid` in the WebIF (if available)
- This provides fallback information when tier definitions are not configured

## Configuration Tips

### Organizing Your File

1. **Group by Provider**: Keep all entries for the same provider together
2. **Add Comments**: Use comments to identify provider and card type
3. **Sort by TIER_ID**: Within each provider section, sort entries by TIER_ID (ascending)
4. **Include Date**: Add a date comment when updating the file

### Example Organization

```
# oscam.tiers
# Last updated: 2024-01-15
# Source: http://www.streamboard.tv/wiki/Tiers

# ============================================
# Sky Germany V13/G02/G09 [NDS]
# ============================================
09C4,09C7:0046|HDplus [NDS]
09C4,09C7:007D|Sky Sport [NDS]
# ... more entries ...

# ============================================
# HD+ [Nagra]
# ============================================
1830,1843:0064|HD+ Gratisjahr (HD01)
1830,1843:0BEA|Jahresabo HD+
# ... more entries ...
```

### Maintaining Accuracy

- TIERs can change when providers update their systems
- Keep your `oscam.tiers` file updated with current information
- Community resources like the Streamboard Wiki maintain updated TIER lists
- Test your configuration after updates to ensure correct display in WebIF

## Common Providers

### Supported Systems

The `oscam.tiers` file commonly includes definitions for:

- **Sky Germany**: NDS (09C4, 09C7) and Nagra (1702, 1833, 1722, 1834) systems
- **HD+**: Nagra systems (1830, 1843)
- **ORF**: Irdeto (0648, 0650) and CryptoWorks (0D05, 0D95) systems
- **Unity Media**: Nagra systems (1722, 1831, 1835, 1838)
- **MTV Unlimited**: Conax systems (0B00)

### CAID Reference

Common CAIDs used in tier definitions:

- **09C4, 09C7, 098C**: NDS (VideoGuard) - Sky Germany
- **1702, 1722, 1833, 1834**: Nagra - Sky Germany
- **1830, 1843**: Nagra - HD+
- **0648, 0650**: Irdeto - ORF
- **0D05, 0D95, 0D98**: CryptoWorks - ORF
- **0B00**: Conax - MTV Unlimited

## Troubleshooting

### TIERs Not Displaying in WebIF

1. **Check File Format**: Ensure Unix line endings (LF, not CRLF)
2. **Verify Syntax**: Check for correct format with colons and pipes
3. **Match CAIDs**: Ensure CAIDs in the file match your card's CAID
4. **Check Permissions**: Verify OSCam can read the file
5. **Restart OSCam**: Changes require OSCam restart to take effect

### Finding TIER IDs

If you need to identify unknown TIER IDs:

1. Enable debug logging in OSCam (set debug level to 4)
2. Monitor the log file during card initialization
3. Look for "Decrypted (Payload)" entries
4. Extract bytes 11-12 for the TIER ID
5. Add the new TIER to your configuration file

### Incorrect Descriptions

- Verify TIER_ID matches the actual service
- Check for typos in hexadecimal values
- Consult community resources for accurate descriptions
- Update from maintained TIER lists

## Related Files

- **oscam.provid**: Provider ID definitions (fallback when tiers not defined)
- **oscam.services**: Service definitions and channel mappings
- **oscam.srvid**: Service ID to channel name mappings
- **oscam.conf**: Main configuration file

## Best Practices

1. **Use Comments**: Document the source and date of TIER information
2. **Consistent Formatting**: Maintain consistent spacing and organization
3. **Regular Updates**: Keep definitions current with provider changes
4. **Backup**: Keep a backup before making changes
5. **Test Changes**: Verify in WebIF after updating
6. **Community Resources**: Use maintained lists from Streamboard Wiki or similar sources
7. **Unix Format**: Always save with Unix line endings (LF)

## Notes

- This file is optional but recommended for better WebIF display
- Without this file, OSCam may fall back to displaying raw TIER IDs or provider information
- TIER definitions are provider-specific and may change over time
- Some TIERs may be marked as "Unknown" until proper identification
