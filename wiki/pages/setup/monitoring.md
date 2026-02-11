# Monitoring

OSCam provides several methods to monitor and manage your server, ranging from the built-in web interface to external monitoring solutions.

## Web Interface

⚠️ **Important Security Note:**

The Web Interface uses only simple authentication. This authentication is not secure enough for usage from outside of your LAN because the complete traffic including your user-id and password is sent in plain text. An intruder could take over the whole management of your system.

**Recommended security approaches (in order of preference):**
1. **Best:** Use a VPN connection to remotely access your server/home network
2. **Alternative:** Use a SSL-secured reverse proxy (e.g., Apache, Nginx) to encrypt web interface traffic

If you redistribute binaries - please inform the recipient about this security limitation!

### Features

**Implemented:**

- Edit User Config (Read: ✅, Write: ✅)
- Edit Services (Read: ✅, Write: ✅)
- Edit Readers (Read: ✅, Write: ✅)
- Edit Global Config (Read: ✅, Write: ✅, Update only after restart)
- View server status and statistics
- Monitor connected clients
- View reader status
- Access log files
- Restart server

### Configuration

Web interface configuration is done in the `oscam.conf` file under the `[webif]` section.

For detailed configuration parameters, see the archived [WebIf Configuration](../../archive/oldWiki/WebIf) documentation.

**Basic Configuration Example:**

```ini
[webif]
httpport     = 8888
httpuser     = admin
httppwd      = password
httpallowed  = 127.0.0.1,192.168.0.0-192.168.255.255
```

**Parameters:**

- `httpport` - Port number for the web interface (default: 8888)
- `httpuser` - Username for authentication
- `httppwd` - Password for authentication
- `httpallowed` - IP addresses/ranges allowed to access the interface
- `httptpl` - Directory for custom templates (optional)
- `httphelplang` - Help language (default: en)
- `httprefresh` - Auto-refresh interval in seconds
- `httphideidleclients` - Hide idle clients (0=no, 1=yes)

### Template System

The OSCam web interface allows you to create your own custom pages and themes.

**To get the original templates for development:**

1. Request the non-linked page `savetemplates.html` in your browser (e.g., `http://your-oscam:8888/savetemplates.html`)
2. OSCam will store the template files in the directory specified in the `httptpl` parameter

This allows you to customize the look and feel of the web interface to suit your preferences.

## Command Line Monitoring

OSCam also provides command-line options for monitoring and debugging. See the [Command Line Options](../setup/command-line-options) page for available debug levels and monitoring parameters.

## MicroMon

> **Note:** MicroMon may be outdated and no longer actively maintained. Consider using the built-in web interface or other modern monitoring solutions.

MicroMon is an external monitoring tool specifically designed for OSCam.

For detailed information, see the archived [MicroMon Documentation](../../archive/oldWiki/MicroMon).

MicroMon provides:
- Real-time monitoring of OSCam servers
- Statistics and performance metrics
- Multi-server support
- Custom alerting

## Splunk

> **Note:** The Splunk add-on may be outdated. Verify compatibility with current OSCam and Splunk versions before deployment.

An add-on for Splunk is available to consolidate and analyze your OSCam logs.

For detailed information, see the archived [Splunk Monitoring Documentation](../../archive/oldWiki/SplunkMonitoring).

Splunk integration provides:
- Centralized log management
- Advanced log analysis
- Dashboards and visualizations
- Alerting and reporting

## Best Practices

1. **Secure Remote Access**:
   - **Best:** Use a VPN connection to access your server/home network remotely
   - **Alternative:** If VPN is not possible, use a reverse proxy with SSL/TLS encryption
2. **Restrict Access**: Always limit web interface access to trusted networks
3. **Use Strong Passwords**: Never use default credentials
4. **Monitor Logs**: Regularly check logs for unusual activity
5. **Update Regularly**: Keep OSCam up to date with the latest security patches
6. **Backup Configuration**: Regularly backup your configuration files