# Docker Installation

> [!NOTE]
> 🚧 **Update in Progress**
>
> We're actively modernizing and reorganizing this wiki to make it more accessible and up-to-date. During this transition, some parameters may still be missing or not up to date.
>
> If you find any errors or issues, please report them in the forum.

## Overview

OSCam can be easily deployed using Docker containers. This guide focuses on the [LinuxServer.io OSCam Docker image](https://docs.linuxserver.io/images/docker-oscam/), which provides a well-maintained, multi-architecture container with regular updates.

**Docker Image**: `lscr.io/linuxserver/oscam:latest`

**Official Documentation**: [LinuxServer.io - OSCam](https://docs.linuxserver.io/images/docker-oscam/)

**Source Code**: [GitHub - docker-oscam](https://github.com/linuxserver/docker-oscam)

## Supported Architectures

The LinuxServer.io OSCam image supports multiple architectures through Docker manifest:

| Architecture | Status | Tag Format |
|--------------|--------|------------|
| x86-64 | ✅ Supported | `amd64-<version tag>` |
| arm64 | ✅ Supported | `arm64v8-<version tag>` |

Simply pulling `lscr.io/linuxserver/oscam:latest` will automatically retrieve the correct image for your architecture.

## Installation Methods

### Docker Compose (Recommended)

Create a `docker-compose.yml` file:

```yaml
---
services:
  oscam:
    image: lscr.io/linuxserver/oscam:latest
    container_name: oscam
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
    volumes:
      - /path/to/oscam/data:/config
    ports:
      - 8888:8888
    devices:
      - /dev/ttyUSB0:/dev/ttyUSB0
    restart: unless-stopped
```

**Start the container**:
```bash
docker compose up -d
```

### Docker CLI

Run the container using docker command:

```bash
docker run -d \
  --name=oscam \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 8888:8888 \
  -v /path/to/oscam/data:/config \
  --device /dev/ttyUSB0:/dev/ttyUSB0 \
  --restart unless-stopped \
  lscr.io/linuxserver/oscam:latest
```

## Parameters

### Ports (`-p`)

| Parameter | Description |
|-----------|-------------|
| `8888:8888` | OSCam WebUI port |

The WebUI will be accessible at `http://your-server-ip:8888`

### Environment Variables (`-e`)

| Parameter | Description | Default |
|-----------|-------------|---------|
| `PUID=1000` | User ID for running the container | 1000 |
| `PGID=1000` | Group ID for running the container | 1000 |
| `TZ=Etc/UTC` | Timezone setting (e.g., `Europe/Berlin`, `America/New_York`) | Etc/UTC |

**Finding your PUID and PGID**:
```bash
id your_user
```

Example output:
```
uid=1000(your_user) gid=1000(your_user) groups=1000(your_user)
```

### Volume Mappings (`-v`)

| Parameter | Description |
|-----------|-------------|
| `/config` | OSCam configuration files and logs directory |

**Host Path Example**: `/path/to/oscam/data:/config`

This directory will contain:
- `oscam.conf` - Main configuration
- `oscam.server` - Reader/server definitions
- `oscam.user` - User accounts
- `oscam.services` - Service definitions
- `oscam.srvid` - Service ID mappings
- Log files

### Device Mappings (`--device`)

| Parameter | Description |
|-----------|-------------|
| `/dev/ttyUSB0` | Smart card reader device passthrough |

## Passing Through Smart Card Readers

### Method 1: ttyUSB Device

Most USB smart card readers appear as `/dev/ttyUSBX` devices.

**Find your device**:
```bash
dmesg | tail
```

Look for output like:
```
usb 1-1: new full-speed USB device number 2 using xhci_hcd
usb 1-1: Product: Smart Card Reader
usb 1-1: Manufacturer: Generic
usb 1-1: SerialNumber: 12345678
cdc_acm 1-1:1.0: ttyUSB0: USB ACM device
```

**Add to Docker Compose**:
```yaml
devices:
  - /dev/ttyUSB0:/dev/ttyUSB0
```

**Add to Docker CLI**:
```bash
--device /dev/ttyUSB0:/dev/ttyUSB0
```

### Method 2: USB Bus Path

If `/dev/ttyUSBX` doesn't appear, use the USB bus path.

**Find the Bus and Device number**:
```bash
lsusb
```

Example output:
```
Bus 002 Device 005: ID 076b:6622 OmniKey AG CardMan 6121
```

- **Bus**: 002
- **Device**: 005

**Add to Docker Compose**:
```yaml
devices:
  - /dev/bus/usb/002/005:/dev/bus/usb/002/005
```

**Add to Docker CLI**:
```bash
--device=/dev/bus/usb/002/005
```

### Multiple Smart Card Readers

Add one `--device` entry for each reader:

**Docker Compose**:
```yaml
devices:
  - /dev/ttyUSB0:/dev/ttyUSB0
  - /dev/ttyUSB1:/dev/ttyUSB1
```

**Docker CLI**:
```bash
--device /dev/ttyUSB0:/dev/ttyUSB0 \
--device /dev/ttyUSB1:/dev/ttyUSB1
```

## Configuration

### Initial Setup

1. **Start the container** and wait for initialization
2. **Access the WebUI** at `http://your-server-ip:8888`
3. **Default credentials**: Usually no authentication required initially
4. **Configure OSCam** through the WebUI or by editing config files in the mounted `/config` directory

### Configuration Files Location

All configuration files are stored in the volume mapped to `/config`:

```
/path/to/oscam/data/
├── oscam.conf          # Main configuration
├── oscam.server        # Readers and servers
├── oscam.user          # User accounts
├── oscam.services      # Service definitions
├── oscam.srvid         # Service name mappings
├── oscam.srvid2        # Alternative service mappings
├── oscam.dvbapi        # DVB API configuration
├── oscam.whitelist     # IP whitelist
└── logs/               # Log files
```

### Editing Configuration Files

**Option 1: Direct File Editing**
```bash
# Edit files directly on the host
nano /path/to/oscam/data/oscam.conf
```

**Option 2: Via Container Shell**
```bash
# Access container shell
docker exec -it oscam /bin/bash

# Edit files inside container
vi /config/oscam.conf
```

**Option 3: WebUI Configuration**
- Navigate to `http://your-server-ip:8888`
- Use the web interface to edit configurations

## Container Management

### Starting and Stopping

**Docker Compose**:
```bash
# Start
docker compose up -d

# Stop
docker compose down

# Restart
docker compose restart oscam
```

**Docker CLI**:
```bash
# Start
docker start oscam

# Stop
docker stop oscam

# Restart
docker restart oscam
```

### Viewing Logs

**Real-time log monitoring**:
```bash
# Docker Compose
docker compose logs -f oscam

# Docker CLI
docker logs -f oscam
```

**View last 100 lines**:
```bash
docker logs --tail 100 oscam
```

### Shell Access

Access the container shell for troubleshooting:

```bash
docker exec -it oscam /bin/bash
```

## Updating the Container

### Via Docker Compose

1. **Pull the latest image**:
   ```bash
   docker compose pull oscam
   ```

2. **Recreate the container**:
   ```bash
   docker compose up -d oscam
   ```

3. **Remove old images** (optional):
   ```bash
   docker image prune
   ```

### Via Docker CLI

1. **Pull the latest image**:
   ```bash
   docker pull lscr.io/linuxserver/oscam:latest
   ```

2. **Stop the running container**:
   ```bash
   docker stop oscam
   ```

3. **Remove the container**:
   ```bash
   docker rm oscam
   ```

4. **Recreate with the same parameters**:
   ```bash
   docker run -d \
     --name=oscam \
     -e PUID=1000 \
     -e PGID=1000 \
     -e TZ=Etc/UTC \
     -p 8888:8888 \
     -v /path/to/oscam/data:/config \
     --device /dev/ttyUSB0:/dev/ttyUSB0 \
     --restart unless-stopped \
     lscr.io/linuxserver/oscam:latest
   ```

5. **Remove old images** (optional):
   ```bash
   docker image prune
   ```

## Complete Examples

### Basic Setup (Single Card Reader)

```yaml
---
services:
  oscam:
    image: lscr.io/linuxserver/oscam:latest
    container_name: oscam
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Berlin
    volumes:
      - ./oscam-config:/config
    ports:
      - 8888:8888
    devices:
      - /dev/ttyUSB0:/dev/ttyUSB0
    restart: unless-stopped
```

### Multi-Reader Setup

```yaml
---
services:
  oscam:
    image: lscr.io/linuxserver/oscam:latest
    container_name: oscam
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Berlin
    volumes:
      - ./oscam-config:/config
    ports:
      - 8888:8888
    devices:
      - /dev/ttyUSB0:/dev/ttyUSB0
      - /dev/ttyUSB1:/dev/ttyUSB1
      - /dev/bus/usb/002/005:/dev/bus/usb/002/005
    restart: unless-stopped
```

### Network Mode (Host Network)

```yaml
---
services:
  oscam:
    image: lscr.io/linuxserver/oscam:latest
    container_name: oscam
    network_mode: host
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Berlin
    volumes:
      - ./oscam-config:/config
    devices:
      - /dev/ttyUSB0:/dev/ttyUSB0
    restart: unless-stopped
```

## Support and Community

- **LinuxServer.io Forums**: [discourse.linuxserver.io](https://discourse.linuxserver.io/)
- **Discord**: [linuxserver.io/discord](https://linuxserver.io/discord)

## Important Notes

- Configuration files persist across container updates when using volume mounts
- WebUI is accessible on port 8888 by default
- Smart card reader passthrough requires proper device mapping
- Container runs as non-root user for security (PUID/PGID)
- Regular updates are recommended for security and stability
- Always backup your configuration before updating
