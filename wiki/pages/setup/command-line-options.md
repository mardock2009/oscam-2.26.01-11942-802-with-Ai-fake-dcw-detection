# Command Line Options

OSCam offers extensive command-line configuration options to customize its behavior at startup. These parameters allow you to control directories, logging, debugging, and runtime behavior without modifying configuration files.

## Basic Usage

```bash
oscam [options]
```

## Quick Reference

### Essential Options

The most commonly used options for typical setups:

```bash
# Start as background daemon with custom config
oscam -b -c /etc/oscam

# Start with debug logging enabled
oscam -d 255

# Start with custom directories and pidfile
oscam -b -c /etc/oscam -t /var/tmp/oscam -B /var/run/oscam.pid
```

## Directory Configuration

Configure where OSCam looks for configuration files and stores temporary data.

| Option | Description | Default |
|--------|-------------|---------|
| `-c, --config-dir <dir>` | Configuration files directory | `/usr/local/etc` |
| `-t, --temp-dir <dir>` | Temporary files directory | `/tmp/.oscam` (Linux/macOS)<br>`OS-TMP` (Cygwin) |

**Example:**
```bash
oscam -c /etc/oscam -t /var/tmp/oscam
```

## Process Management

Control how OSCam runs as a system process.

| Option | Description | Notes |
|--------|-------------|-------|
| `-b, --daemon` | Run as background daemon | Standard mode for production |
| `-f, --foreground` | Run in foreground | Only on STAPI/STAPI5 systems |
| `-B, --pidfile <file>` | Create PID file at specified path | Useful for init scripts |
| `-w, --wait <seconds>` | Wait for system clock sync at startup | Default: `60` seconds |

**Daemon vs Foreground:**
- Use `-b` (daemon) for most systems to run OSCam in the background
- Use `-f` (foreground) on STAPI/STAPI5 systems or when debugging

**Example:**
```bash
oscam -b -B /var/run/oscam.pid -w 30
```

## Restart Behavior

Configure how OSCam handles restart requests (requires WebIf module).

| Option | Description |
|--------|-------------|
| `-r, --restart <level>` | Set restart level (see table below) |

**Restart Levels:**

| Level | Behavior | Use Case |
|-------|----------|----------|
| `0` | Exit on restart request | Manual control only |
| `1` | WebIf restart enabled (default) | Normal operation |
| `2` | Restart on segfaults | Automatic recovery |

**Example:**
```bash
oscam -b -r 2  # Restart automatically on crashes
```

## Logging Configuration

Control OSCam's logging behavior and verbosity.

### Basic Logging Options

| Option | Description | Default |
|--------|-------------|---------|
| `-I, --syslog-ident <ident>` | Syslog identifier | `oscam` |
| `-S, --show-sensitive` | Show sensitive data (serials, IDs) | Disabled (filtered) |
| `-d, --debug <level>` | Debug level mask | `0` (no debug) |

**Example:**
```bash
oscam -I oscam-server -S -d 255
```

### Debug Levels

Debug levels use bitmask values that can be combined by adding them together.

| Value | Component | What It Logs |
|-------|-----------|--------------|
| `0` | None | No extra debugging (default) |
| `1` | Errors | Detailed error messages |
| `2` | Cards | ATR parsing, ECM, EMM, and CW dumps |
| `4` | Reader Traffic | Communication with card readers |
| `8` | Client Traffic | Communication with clients |
| `16` | IFD Layer | Reader device traffic (IFD layer) |
| `32` | I/O Layer | Reader device traffic (I/O layer) |
| `64` | EMM | EMM processing and logging |
| `128` | DVBAPI | DVB API operations |
| `256` | Load Balancer | Load balancing decisions |
| `512` | Cache Exchange | CACHEEX operations |
| `1024` | Client ECM | Client ECM requests |
| `2048` | CSP | CSP protocol operations |
| `4096` | CWC | CWC protocol operations |
| `8192` | CW Cache | Control word caching (CS_CACHEEX_AIO) |
| `65535` | All | Enable all debug output |

**Common Debug Combinations:**

```bash
# Basic debugging (errors + card data)
oscam -d 3        # 1 + 2

# Client troubleshooting (errors + client traffic)
oscam -d 9        # 1 + 8

# Reader debugging (errors + reader traffic + IFD layer)
oscam -d 21       # 1 + 4 + 16

# Full card debugging (errors + cards + reader + IFD + I/O)
oscam -d 55       # 1 + 2 + 4 + 16 + 32

# Everything
oscam -d 65535
```

## Performance Tuning

Optimize OSCam's performance for your specific setup.

| Option | Description | Default | Maximum |
|--------|-------------|---------|---------|
| `-p, --pending-ecm <num>` | Maximum pending ECM packets | `32` | `4096` |

This setting controls the ECM queue size. Increase for high-traffic setups:

```bash
oscam -p 128  # For busy servers
```

## Development & Debugging

Advanced options for troubleshooting and development (not recommended for production).

| Option | Description | Requirements |
|--------|-------------|--------------|
| `-a, --crash-dump` | Write `oscam.crash` on segfault | GDB installed, debug binary |
| `-s, --capture-segfaults` | Capture segmentation faults | - |
| `-g, --gcollect <mode>` | Garbage collector debug mode | - |

**Garbage Collector Modes:**
- `1` - Immediate free (detect memory issues)
- `2` - Check for double frees

**Example:**
```bash
oscam -a -s -g 2  # Full crash debugging
```

## Information & Help

Get information about OSCam without starting the server.

| Option | Description |
|--------|-------------|
| `-h, --help` | Display help text |
| `-V, --build-info` | Show build configuration and version |

**Examples:**
```bash
# Show help
oscam -h

# Check compiled modules
oscam -V
```

## Complete Examples

### Production Setup
```bash
# Reliable production configuration
oscam -b \
      -c /etc/oscam \
      -t /var/tmp/oscam \
      -B /var/run/oscam.pid \
      -r 2 \
      -I oscam-prod
```

### Development & Testing
```bash
# Debug client issues
oscam -c /etc/oscam \
      -d 1033 \
      -S
```

### High-Performance Server
```bash
# Optimized for many clients
oscam -b \
      -c /etc/oscam \
      -p 256 \
      -r 1 \
      -w 30
```

### Troubleshooting
```bash
# Maximum debugging
oscam -d 65535 \
      -S \
      -a \
      -s
```

## Best Practices

### For Production
- Always use `-b` (daemon mode) on standard systems
- Set `-r 2` for automatic recovery from crashes
- Use `-B` with pidfile for proper init script integration
- Keep debug level at `0` unless troubleshooting

### For Testing
- Use meaningful syslog identifiers with `-I` when running multiple instances
- Enable sensitive data logging `-S` only during active troubleshooting
- Combine debug levels to focus on specific components
- Remember to disable debug logging after troubleshooting

### For Development
- Use crash dumps `-a` only with debug builds
- Monitor memory with garbage collector `-g` during testing
- Test restart behavior with `-r` levels before deployment

## Platform-Specific Notes

**STAPI/STAPI5 Systems:**
- Use `-f` (foreground) instead of `-b` (daemon)
- These platforms require foreground operation

**Embedded Devices:**
- Use lower `-w` values (10-20 seconds) if clock sync is fast
- Consider smaller `-p` values (16-32) if memory is limited

**Multi-Instance Setups:**
- Use unique `-I` identifiers for each instance
- Specify different `-t` temp directories for each instance
- Use separate `-B` pidfiles for process management