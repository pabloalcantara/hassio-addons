# RsyncD for Home Assistant

Enable RsyncD for all default maps of Hassio (config, ssl, addons, backup, share and media)

## Configuration

```yaml
Options:
username: admin #Username to RsyncD
password: admin #Password to RsyncD
hosts_allow: * #IP/Network list than can access RsyncD

Network:
Port: 14678 #Port for RsyncD
```

### Option: `server` (required)

Server host or IP, e.g. `localhost`.

### Option: `port` (required)

Server ssh port, e.g. `22`.

### Option: `directory` (required)

Directoryon the server for backups, e.g. `~/hassio-backups`.

### Option: `user` (required)

Server ssh user, e.g. `root`.

### Option: `password` (required)

Server ssh password, e.g. `password`.

### Option: `auto_purge` (required)

The number of recent backups keep in Home Assistant, e.g. "5". Set to "0" to disable automatic deletion of backups.

## How to use

Run addon in the automation, example automation below:

```yaml
- alias: 'hassio_daily_backup'
  trigger:
    platform: 'time'
    at: '3:00:00'
  action:
    - service: 'hassio.backup_full'
      data_template:
        name: "Automated Backup {{ now().strftime('%Y-%m-%d') }}"
        password: !secret hassio_snapshot_password
    # wait for snapshot done, then sync snapshots
    - delay: '00:10:00'
    - service: 'hassio.addon_start'
      data:
        addon: '2caa1d32_rsync_backups' # you can get the addon id from URL when you go to the addon info
```
