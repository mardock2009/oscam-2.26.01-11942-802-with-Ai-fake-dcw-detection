> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

# oscam.ratelimit

Configuration file for ECM rate limiting.

## Overview

The `oscam.ratelimit` file controls the rate limiting of ECM (Entitlement Control Message) requests in OSCam. This feature was introduced in SVN revision 8869 on August 25, 2013. It allows you to limit the number of different service IDs (channels) that can be requested within a specific time interval, helping to prevent abuse and manage server load.

## Purpose

The file allows OSCam to:
- Limit the rate of ECM requests for specific CAID/Provider combinations
- Control how many different channels can be accessed within a time window
- Prevent rapid channel hopping or zapping abuse
- Manage server load and card wear
- Implement fair usage policies for shared cards

## When to Use

This file is useful for:
- Preventing users from rapidly switching between many channels
- Protecting cards from excessive ECM requests
- Implementing usage quotas for card sharing
- Reducing server load from abusive clients
- Enforcing fair usage policies

The file is optional - without it, OSCam places no rate limits on ECM requests.

## Syntax

The file uses a colon-separated format:

```
CAID:provider ID:service ID:ChID:ratelimitecm:ratelimitseconds:srvidholdseconds
```

### Parameters

- **CAID**: Conditional Access Identification in hexadecimal (e.g., 0100, 0500, 1702)
- **provider ID**: Provider ID in hexadecimal (e.g., 000000, 003411)
- **service ID**: Service ID in hexadecimal (specific channel or use wildcard)
- **ChID**: Channel ID in hexadecimal
- **ratelimitecm**: Number of different SIDs (channels) allowed within the time interval
- **ratelimitseconds**: Time interval in seconds for the rate limit
- **srvidholdseconds**: Extra time in seconds a service ID is kept in a slot before another service ID can take its place

## Format Details

- All CAID, provider ID, service ID, and ChID values are in hexadecimal
- Time values (ratelimitseconds and srvidholdseconds) are in decimal seconds
- Each line represents one rate limit rule
- Multiple rules can be defined for different CAID/Provider combinations

## Example

```
0100:00002A:3A3A:4A00:0002:0010:0004
```

This example configures:
- CAID: 0100
- Provider ID: 00002A
- Service ID: 3A3A
- Channel ID: 4A00
- Rate limit: 2 different channels
- Time interval: 10 seconds
- Hold time: 4 seconds

This means a user can access only 2 different channels within any 10-second period, and each channel slot is held for an additional 4 seconds before it can be replaced.

## How It Works

### Rate Limiting Mechanism

1. OSCam tracks ECM requests for each CAID:ProvID combination
2. It maintains a list of recently accessed service IDs (channels)
3. When a new channel is requested, OSCam checks if the limit is reached
4. If the limit is exceeded within the time window, the request is denied
5. After the time interval expires, the counter resets

### Slot Hold Time

The `srvidholdseconds` parameter adds "stickiness" to channel slots:
- When you switch to a channel, it occupies a slot
- That slot is held for the specified extra time
- This prevents rapid slot turnover and encourages staying on channels longer
- After the hold time expires, the slot can be reused for a different channel

## Use Cases

### Preventing Channel Hopping

Limit users to 3 channels per 30 seconds:

```
1702:000000::::0003:0030:0010
```

This allows accessing 3 different channels in 30 seconds, with each channel held for 10 extra seconds.

### Provider-Specific Limits

Different limits for different providers:

```
# Sky Germany - 2 channels per 15 seconds
1702:000000::::0002:0015:0005

# HD+ - 4 channels per 20 seconds
1830:003411::::0004:0020:0008

# Canal+ - 3 channels per 30 seconds
0100:003311::::0003:0030:0010
```

### Strict Zapping Control

Very restrictive limit for shared cards:

```
0500:032830::::0001:0060:0030
```

This allows only 1 channel per 60 seconds, effectively preventing channel switching for a full minute.

### Moderate Usage Policy

Balanced approach for normal usage:

```
# Allow 5 channels per 20 seconds
1702:000000::::0005:0020:0005
```

## Wildcards

You can use wildcards in the configuration:

### All Providers for a CAID

```
0100:::::0003:0030:0010
```

Applies to all providers under CAID 0100.

### All CAIDs

```
:::::0002:0015:0005
```

Applies globally to all CAIDs and providers (use with caution).

## Best Practices

### Setting Appropriate Limits

- Consider normal viewing patterns (most users watch 1-2 channels)
- Allow some flexibility for legitimate channel browsing
- Balance between preventing abuse and user experience
- Test limits with real usage before deploying

### Time Intervals

- Shorter intervals (10-20 seconds) provide tighter control
- Longer intervals (30-60 seconds) are more lenient
- Match intervals to your usage policy goals

### Hold Times

- Hold times should be shorter than the rate limit interval
- Typical values: 3-10 seconds
- Longer hold times discourage rapid switching
- Too long may frustrate legitimate users

### Monitoring

- Monitor logs for rate limit violations
- Adjust limits based on actual usage patterns
- Consider different limits for different user groups
- Review and update limits periodically

## Troubleshooting

### Users Can't Switch Channels

- Limits may be too restrictive
- Increase `ratelimitecm` value
- Increase `ratelimitseconds` interval
- Reduce `srvidholdseconds` hold time

### Abuse Still Occurring

- Limits may be too lenient
- Decrease `ratelimitecm` value
- Decrease `ratelimitseconds` interval
- Increase `srvidholdseconds` hold time

### Legitimate Users Affected

- Review actual usage patterns
- Adjust limits to accommodate normal behavior
- Consider different limits for trusted users
- Use per-user limits in oscam.user instead

## Integration with Other Settings

Rate limiting works in conjunction with:
- User-specific limits in oscam.user
- Anti-cascading settings in oscam.ac
- Service restrictions in oscam.services
- Reader priorities in oscam.dvbapi

## Notes

- This feature was added in SVN 8869 (August 25, 2013)
- The file is optional - OSCam works without rate limiting
- Rate limits apply per user/client connection
- Limits are enforced in real-time
- Exceeding limits results in ECM request denial
- Users may see "no matching reader" or similar errors when limited
- Rate limiting helps protect cards from excessive wear
- Can significantly reduce server load in shared environments
- Should be balanced with user experience considerations
