> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.cacheex

## Overview

The `oscam.cacheex` file is an ECM length matching table for OSCam's cache exchange functionality. This optional configuration file allows you to define mappings between different CAIDs and ECM lengths for cache exchange operations.

## File Status

- **Optional**: Only needed for specific cache exchange scenarios
- **Primary Use**: Cache exchange mode 1 (CE1 - pull mode)
- **Available Since**: SVN 6252 (January 17, 2012)

## File Location

Default locations:
- `/usr/local/etc/oscam.cacheex`
- Or in your configured OSCam config directory

## When to Use This File

The `oscam.cacheex` file is primarily used for:

1. **ECM Length Mapping**: When cache exchange partners use different CAIDs but identical ECM lengths
2. **CE1 Mode**: Specifically for cache exchange pull mode (cacheex = 1)
3. **CAID Translation**: Mapping ECM requests from one CAID to another during cache lookup

**Note**: For most cache exchange setups, this file is not required. Simple cache exchange configurations work without ECM length mappings.

## Syntax

### Format

```ini
m:[CAID][:][provider ID][:][service ID][:][ECM PID][:][CHID][:][ECM length 1[,ECM length 2]...]=
  [CAID][:][provider ID][:][service ID][:][ECM PID][:][CHID][:][ECM length 1[,ECM length 2]...]]
```

### Field Descriptions

| Field | Description | Format | Required |
|-------|-------------|--------|----------|
| **m** | Mapping prefix | Fixed | Yes |
| **CAID** | Conditional Access ID | 4-digit hexadecimal | Optional |
| **provider ID** | Provider identifier | Hexadecimal | Optional |
| **service ID** | Service identifier | Hexadecimal | Optional |
| **ECM PID** | ECM Process ID | Hexadecimal | Optional |
| **CHID** | Channel ID | Hexadecimal | Optional |
| **ECM length** | ECM length in bytes | Decimal, comma-separated | Optional |
| **=** | Separator between source and target | Fixed | Yes |

**Syntax Rules**:
- Empty fields are represented by consecutive colons (`::`)
- Multiple ECM lengths are comma-separated (e.g., `93,95`)
- Left side of `=` is the incoming request (from cache exchange partner)
- Right side of `=` is the local cache lookup (what to search for locally)

## How It Works

The oscam.cacheex file defines ECM length matching rules for cache exchange mode 1 (CE1). When a CE1 reader receives an ECM request:

1. **Request Arrives**: ECM request comes in with specific CAID and ECM length
2. **Mapping Lookup**: OSCam checks oscam.cacheex for matching rules
3. **Translation**: If a match is found, the request is translated to the mapped CAID
4. **Cache Search**: OSCam searches the local cache using the translated values
5. **Response**: If found in cache, the CW is returned to the requesting partner

**Example Flow**:
```
Partner requests: CAID 1702, length 93
Mapping rule:     m:1702:::::93=1833:::::93
Cache lookup:     CAID 1833, length 93
```

This allows partners using different CAIDs to share cache effectively.

## Examples

### Basic CAID Mapping

Map CAID 1702 to CAID 1833 for ECM length 93:

```ini
# Sky Germany S02 to S02-Tunnel
m:1702:::::93=1833:::::93
```

### Multiple ECM Lengths

Match multiple ECM lengths for the same CAID mapping:

```ini
# ORF ICE mapping with multiple lengths
m:09C4:::::46,58,90,95=09C7:::::46,58,90,95
```

### Provider-Specific Mapping

Map specific provider IDs:

```ini
# HD+ with provider ID
m:1830:000000::::92=1830:003411::::92
```

### Service-Specific Mapping

Map specific service IDs:

```ini
# Map service 1234 to 5678
m:1702::1234:::93=1833::5678:::93
```

### Real-World Examples

```ini
# Sky Germany mappings
m:1702:::::93=1833:::::93
m:1702:::::95=1833:::::95

# HD+ mappings
m:1830:003411::::92=1830:000000::::92
m:1830:003411::::134=1830:000000::::134

# ORF mappings
m:0D95:::::144=0648:::::144
m:0D98:::::144=0650:::::144

# Viaccess mappings
m:0500:023800::::188=0500:032830::::188
m:0500:023800::::164=0500:032830::::164
```

### Complex Multi-Service Example

```ini
# Complete oscam.cacheex file example

# Sky Germany S02 standard lengths
m:1702:::::93=1833:::::93
m:1702:::::95=1833:::::95
m:1702:::::144=1833:::::144

# HD+ provider mapping
m:1830:003411::::92=1830:000000::::92
m:1830:003411::::134=1830:000000::::134
m:1830:003411::::188=1830:000000::::188

# ORF ICE to Cryptoworks mapping
m:09C4:::::46,58,90,95=09C7:::::46,58,90,95
m:0D95:::::144=0648:::::144
m:0D98:::::144=0650:::::144

# Viaccess TNTSAT to CSAT mapping
m:0500:030B00::::188=0500:032830::::188
m:0500:023800::::188=0500:032830::::188
```

## Best Practices

### When to Use Mappings

Use oscam.cacheex mappings when:
- Partners use different CAIDs for the same content
- You need to translate between tunnel CAIDs (e.g., 1702 ↔ 1833)
- Provider IDs differ but ECM structure is identical
- Service IDs need mapping between systems

### When NOT Needed

You don't need oscam.cacheex if:
- All partners use the same CAID structure
- Using CE2 or CE3 modes without CAID translation
- Simple cache sharing without mapping requirements

### File Maintenance

- **Comment Your Mappings**: Use `#` for comments to document each mapping purpose
- **Test Incrementally**: Add mappings one at a time and verify functionality
- **Monitor Cache Hits**: Check WebIF statistics to confirm mappings work
- **Keep It Simple**: Only add mappings you actually need

### Performance Considerations

- Each mapping adds minimal overhead to cache lookups
- More specific mappings (with service IDs) are faster than generic ones
- Use ECM length matching when possible to reduce false matches

## Troubleshooting

### Mapping Not Working

**Check the following**:
1. Verify ECM lengths match exactly (check logs)
2. Confirm CAID values are correct (4-digit hex)
3. Ensure provider IDs match if specified
4. Check that CE1 mode is enabled on the reader
5. Review cache exchange statistics in WebIF

**Common Issues**:
- **Wrong ECM Length**: ECM length must match exactly between source and target
- **Syntax Errors**: Missing colons or incorrect separator (must use `=`)
- **Case Sensitivity**: CAID values must be uppercase hexadecimal
- **File Not Loaded**: Check OSCam startup log for oscam.cacheex parsing errors

### Verification Methods

**Log Analysis**:
```
# Enable debug logging in oscam.conf
[global]
logfile = /var/log/oscam/oscam.log
disablelog = 0
```

Look for cache exchange activity in logs showing CAID translation.

**WebIF Statistics**:
- Navigate to Status → Cache Exchange
- Check "ECM-CW received" counters
- Verify mapped CAIDs appear in statistics

**Test Procedure**:
1. Add mapping to oscam.cacheex
2. Restart OSCam (or reload config if supported)
3. Monitor logs during channel change
4. Verify cache hit for mapped CAID
5. Check that correct CW is returned

## File Format Details

### Syntax Validation

**Valid Examples**:
```ini
m:1702:::::93=1833:::::93              # Valid: Basic CAID mapping
m:1830:003411::::92=1830:000000::::92  # Valid: Provider mapping
m:09C4:::::46,58,90=09C7:::::46,58,90  # Valid: Multiple lengths
```

**Invalid Examples**:
```ini
m:1702:::93=1833:::93                  # Invalid: Missing colons
1702:::::93=1833:::::93                # Invalid: Missing 'm:' prefix
m:1702:::::93-1833:::::93              # Invalid: Wrong separator (use =)
m:1702:::::93=                         # Invalid: Missing target
```

### Field Order

The field order is strict and must follow this pattern:
```
m:[CAID]:[ProvID]:[SrvID]:[PID]:[CHID]:[Length]=[CAID]:[ProvID]:[SrvID]:[PID]:[CHID]:[Length]
   └─1──┘ └──2──┘ └──3──┘ └─4─┘ └─5──┘ └──6───┘ └─1──┘ └──2──┘ └──3──┘ └─4─┘ └─5──┘ └──6───┘
```

### Comments

Comments can be added using `#`:
```ini
# This is a comment
m:1702:::::93=1833:::::93  # Inline comment
```

## Related Configuration

While this file focuses on ECM length mapping, cache exchange functionality requires configuration in other files:

### oscam.conf
- `cacheexwaittime` - Wait time for CE1 response
- `max_cache_time` - Cache retention time
- `max_cache_count` - Maximum ECMs in cache

See the oscam.conf documentation for complete cache exchange settings.

### oscam.server
- `cacheex` - Cache exchange mode (1, 2, or 3)
- `cacheex_maxhop` - Maximum hops for cache forwarding
- `cacheex_ecm_filter` - Filter which CAIDs are exchanged

See the oscam.server documentation for reader-specific cache exchange parameters.

### oscam.user
- `cacheex` - User cache exchange permission
- `cacheex_maxhop` - Maximum hops for this user

See the oscam.user documentation for user cache exchange settings.

## Important Notes

- **Optional File**: Most cache exchange setups work without this file
- **CE1 Specific**: Primarily used for cache exchange mode 1 (pull mode)
- **Text Format**: Use Unix text file format (LF line endings)
- **Case Sensitive**: CAID values must be uppercase hexadecimal
- **No Wildcards**: Each mapping must specify exact values or use empty fields
- **Directional**: Mappings work in one direction (left → right)
- **Restart Required**: Changes require OSCam restart to take effect

## Version History

| Version | Date | Description |
|---------|------|-------------|
| SVN 6252 | 2012-01-17 | Initial implementation of oscam.cacheex file |
| SVN 6280 | 2012-01-24 | Added support for multiple ECM lengths |
| SVN 8360 | 2013-09-15 | Enhanced CAID mapping flexibility |