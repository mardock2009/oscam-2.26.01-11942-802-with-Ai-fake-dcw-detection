> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.ac

Configuration file for anti-cascading settings.

## Overview

The `oscam.ac` file is the anti-cascading table for OSCam. It prevents the unauthorized redistribution of control words (CWs) by clients, ensuring that received CWs are not cascaded to additional users without authorization. This security feature helps protect your card sharing setup from abuse.

## Purpose

Anti-cascading controls help prevent users from:
- Redistributing received control words to other users
- Creating unauthorized cascading chains
- Abusing shared card access

By defining time intervals for control word changes based on CAID and provider ID, OSCam can detect and prevent suspicious cascading behavior.

## Syntax

The file uses a simple format to define time intervals:

```
<CAID>:<provider ID>=<seconds>
```

or with wildcard for default values:

```
<CAID>:<provider ID>*=<seconds>
```

### Parameters

- **CAID**: Conditional Access Identification - numeric identifier for the encryption provider
- **provider ID**: Numeric identifier for the Pay TV provider
- **seconds**: Time interval in seconds defining the minimum time between control word changes

The asterisk (*) can be used to define a default value for all providers not explicitly listed.

## How It Works

The configuration defines the time interval in seconds when changing control words based on CAID and provider ID. If a client requests control words more frequently than the defined interval, it may indicate cascading behavior, and OSCam can take appropriate action.

## Examples

### Basic Configuration

```
0100:000000=10
*=7
```

For CAID 0100 with provider 000000, the time interval is set to 10 seconds. For all other CAIDs not explicitly defined, the default interval is 7 seconds.

### Sky Germany and HD+ Configuration

```
1702:000000 = 7    # Sky S02 - 7 second interval
1833:000401 = 7    # HD+ - 7 second interval
*=7                # Default 7 seconds for all other providers
```

### Alternative Sky Germany and HD+ Configuration

```
1702:000000 = 10   # Sky S02 - 10 second interval
1833:000401 = 10   # HD+ - 10 second interval
*=7                # Default 7 seconds for all other providers
```

### Multiple Providers

```
0100:000000=10     # Provider 1 - 10 seconds
0200:000001=8      # Provider 2 - 8 seconds
0300:000002=12     # Provider 3 - 12 seconds
*=7                # Default for all others
```

## Best Practices

### Choosing Time Intervals

- Typical intervals range from 7 to 10 seconds
- Shorter intervals (5-7 seconds) provide stricter anti-cascading protection
- Longer intervals (10-15 seconds) are more lenient but may miss some cascading attempts
- Consider the normal channel switching behavior of legitimate users

### Configuration Strategy

1. Start with a default value using the wildcard (*) entry
2. Add specific entries for high-value providers that need stricter control
3. Test the configuration to ensure legitimate users aren't affected
4. Monitor logs for potential cascading attempts

### Common Providers

- **1702:000000**: Sky Germany (S02 cards)
- **1833:000401**: HD+ Germany
- **0100:000000**: Seca/Mediaguard systems
- **0500:000000**: Viaccess systems
- **0D95:000000**: ORF ICE

## Notes

- The file is optional - OSCam will work without anti-cascading if this file is not present
- Time intervals should be balanced between security and user experience
- Too strict intervals may cause issues for legitimate users who switch channels frequently
- Monitor your logs to fine-tune the intervals for your specific setup
- Anti-cascading works in conjunction with other OSCam security features
