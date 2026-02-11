> [!NOTE]
> 🚧 **Parameters Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.whitelist

## Overview

The `oscam.whitelist` file is a global ECM (Entitlement Control Message) length whitelisting configuration file for OSCam. It allows you to filter ECM requests based on various criteria including CAID, provider ID, service ID, ECM PID, CHID, and ECM length. This file is useful for optimizing performance by filtering out unwanted or problematic ECM requests.

ECM whitelisting helps reduce unnecessary processing and can prevent issues with specific services or providers by allowing only known-good ECM lengths to be processed.

## File Location

```
/usr/local/etc/oscam.whitelist
```

or in your OSCam config directory.

## Entry Types

The file supports four different entry types, each with a specific prefix:

### m: Mapping

```
m: 3456:123456::::: 4567:234567:
```

Used for mapping between different identifiers.

### w: Whitelist Entry

```
w: [CAID][:][provider ID][:][service ID][:][ECM PID][:][CHID][:][ECM length 1[,ECM length 2]...]]
```

Defines ECM length whitelisting rules. Only ECMs matching these criteria will be processed.

### l: Whitelist When Matching

```
l: [CAID][:][provider ID][:][service ID][:][ECM PID][:][CHID][:][ECM length 1[,ECM length 2]...]]
```

ECM length whitelisting that does not proceed with any other ECM length. This is an abbreviation for normal ECM length whitelisting using the `w:` parameter.

### i: Ignore Entry

```
i: [CAID][:][provider ID][:][service ID][:][ECM PID][:][CHID][:][ECM length 1[,ECM length 2]...]]
```

Ignores ECM requests matching the specified criteria.

## Syntax

### Field Format

```
[prefix]:[CAID][:][provider ID][:][service ID][:][ECM PID][:][CHID][:][ECM length 1[,ECM length 2]...]]
```

### Field Descriptions

- **prefix**: Entry type (`m`, `w`, `l`, or `i`)
- **CAID**: Conditional Access ID (4-digit hexadecimal)
- **provider ID**: Provider identifier (hexadecimal)
- **service ID**: Service identifier (hexadecimal)
- **ECM PID**: ECM Process ID (hexadecimal)
- **CHID**: Channel ID (hexadecimal)
- **ECM length**: ECM length in bytes (decimal), multiple values separated by commas

All fields after the prefix are optional. Empty fields are indicated by consecutive colons.

## Processing Rules

The whitelist follows these important rules:

1. **First Match - First Used**: The first matching line in the file is applied
2. **No Filter Without Valid Lines**: If there are no valid lines in oscam.whitelist, no filtering is applied
3. **Default Deny**: When the end of file is reached and no line matches, the request is filtered (blocked)
4. **Blacklist Mode**: To use as a blacklist, add `w:` as the last line to allow all requests that don't match previous rules

## Examples

### Basic Examples

```
# Whitelist all CAID 0100
w:0100

# Ignore CAID 0200 with service ID 1234
i:0200::1234

# Ignore CHID 2345
i:::::2345

# Allow all others (blacklist mode)
w:
```

### Provider-Specific Examples

#### Sky Germany S02 (Nagra)

```
# S02
w:1702:000000::::93
```

#### Sky Germany S02-Tunnel

```
# S02-Tunnel
w:1833:000000::::89
```

#### Sky Germany V13 (NDS)

```
# V13
w:09C4:000000::::46,58,90,95
```

#### HD+ (Nagra)

```
# HD+
w:1830:000000::::92
w:1830:003411::::92
w:1830:008011::::92
```

#### ORF (CryptoWorks)

```
# CAMD3-Keys
w:0D05:::::9C
```

## Complete Example File

```
# oscam.whitelist - 2011/12/29
# Whitelist-Entry:
# w:caid:prov:srvid:pid:chid:ecmlen1[,ecmlen2,...,ecmlenN]
#
# Ignore-Entry:
# i:caid:prov:srvid:pid:chid:ecmlen1[,ecmlen2,...,ecmlenN]
#
# Example:
# w:1702 #all caid 1702 is on whitelist
# i:500::1234 #ignores all caid 0500 srvid 1234
#
# Rules:
# 1. First match - first used
# 2. No (valid) lines in oscam.whitelist, no filter
# 3. When end of file is reached and no line is matching, request is filtered.
#    If you want to use this as a blacklist, just add w: as your last line!
#    This matches all, so if no line before is matching, this entry allows all others
#
# Links:
# http://streamboard.gmc.to:8001/wiki/ECMLengthList

# WHITELIST ************************************************
# S02 ------------------------------------------------------
w:1702:000000::::93

# S02-Tunnel -----------------------------------------------
w:1833:000000::::89

# V13 ------------------------------------------------------
w:09C4:000000::::46,58,90,95

# HD+ ------------------------------------------------------
w:1830:000000::::92
w:1830:003411::::92
w:1830:008011::::92

# CAMD3-Keys -----------------------------------------------
w:0D05:::::9C

# IGNORES **************************************************
i:
```

## Use Cases

### Whitelist Mode (Default)

In whitelist mode, only explicitly allowed ECMs are processed:

```
# Allow only specific CAIDs
w:1702
w:09C4
w:1830

# Block everything else (implicit - no w: at end)
```

### Blacklist Mode

In blacklist mode, all ECMs are allowed except those explicitly blocked:

```
# Block specific problematic services
i:0500::1234
i:0100::5678

# Allow everything else
w:
```

### Mixed Mode

Combine whitelist and blacklist rules:

```
# Whitelist specific CAID with certain ECM lengths
w:1702:000000::::93

# Ignore problematic service
i:0500::1234

# Allow all other CAIDs
w:
```

## Configuration Tips

### Optimizing Performance

1. **Be Specific**: Use specific rules to reduce processing overhead
2. **Order Matters**: Place most frequently matched rules at the top
3. **Minimize Entries**: Only include rules you actually need
4. **Memory Consideration**: Avoid copying entire whitelist databases; use only what you need

### Finding ECM Lengths

To determine ECM lengths for your setup:

1. Enable debug logging in OSCam
2. Monitor ECM requests in the log
3. Note the ECM lengths for services you want to whitelist
4. Add appropriate entries to oscam.whitelist

### Testing Your Configuration

1. Start with a permissive configuration (`w:` at the end)
2. Add ignore rules for problematic services
3. Monitor logs to verify filtering is working
4. Gradually refine rules based on actual usage

## Common Patterns

### Allow Specific CAID

```
w:1702
```

### Allow CAID with Specific Provider

```
w:1702:000000
```

### Allow CAID with Specific ECM Lengths

```
w:09C4:000000::::46,58,90,95
```

### Ignore Specific Service

```
i:0500::1234
```

### Ignore Specific CHID

```
i:::::2345
```

### Allow Everything (Catch-All)

```
w:
```

## Troubleshooting

### No ECMs Being Processed

- Check if you have a catch-all `w:` rule at the end
- Verify your whitelist rules match your actual CAIDs
- Check for typos in hexadecimal values
- Ensure file has proper permissions

### Wrong ECMs Being Filtered

- Review rule order (first match wins)
- Check for overlapping rules
- Verify ECM lengths are correct
- Enable debug logging to see which rules are matching

### Performance Issues

- Reduce number of rules
- Use more specific rules to match faster
- Remove unused entries
- Consider using only essential whitelisting

## Related Configuration

### oscam.conf Settings

The whitelist file works in conjunction with oscam.conf settings:

```ini
[global]
# Enable ECM length filtering
ecmwhitelist = /path/to/oscam.whitelist
```

### Related Files

- **oscam.conf**: Main configuration file
- **oscam.services**: Service definitions
- **oscam.user**: User-specific settings that may override whitelist behavior

## Best Practices

1. **Start Simple**: Begin with basic rules and add complexity as needed
2. **Document Your Rules**: Use comments to explain why each rule exists
3. **Test Thoroughly**: Verify rules work as expected before deploying
4. **Keep It Minimal**: Only include rules you actually need to reduce memory usage
5. **Regular Maintenance**: Review and update rules as providers change
6. **Backup**: Keep a backup before making changes
7. **Monitor Logs**: Watch logs after changes to ensure correct behavior

## Advanced Usage

### Combining Multiple Criteria

```
# Whitelist specific CAID, provider, and ECM length
w:1702:000000::::93

# Ignore specific CAID and service combination
i:0500:123456:1234
```

### Provider-Specific Filtering

```
# Allow HD+ with all providers
w:1830:000000::::92
w:1830:003411::::92
w:1830:008011::::92

# Block specific problematic provider
i:0500:BADPROV
```

### Service-Level Control

```
# Allow specific services only
w:1702::SERVICE1
w:1702::SERVICE2

# Block all others (no catch-all w:)
```

## Performance Considerations

- Each line is evaluated sequentially until a match is found
- More specific rules (with more fields filled) may match faster
- Fewer total rules generally means better performance
- The file is loaded into memory, so size matters

## Important Notes

- Empty file or no valid entries means no filtering is applied
- The order of rules is critical - first match wins
- Use hexadecimal values for CAID, provider ID, service ID, ECM PID, and CHID
- Use decimal values for ECM lengths
- Multiple ECM lengths can be specified with commas
- To avoid unnecessary memory consumption, only copy the entries you actually need