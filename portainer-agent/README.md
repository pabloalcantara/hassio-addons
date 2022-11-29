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
### Option: `username` (required)

e.g. `admin`.

### Option: `password` (required)

RsyncD password, e.g. `password`.

### Option: `hosts_allow` (required)

hosts_allow, e.g. `*` or `10.10.10.2,192.168.0.0/16`

### Option: `port` (required)

RsyncD port, e.g. `14678`

## Use
From the machine that you want to copy to/from, use:

rsync -av --port=\<port\> \<username\>@\<hassio server\>::\<map\>/* .

.e.g.: rsync -av --port=14678 admin@hassio.localhost::backup/* .

