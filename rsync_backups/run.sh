#!/bin/bash
set -e

echo "[Info] Starting Hass.io rsync-backups module backup!"
echo "[Info] Start rsync-backups"

CONFIG_PATH=/data/options.json
username=$(jq --raw-output ".username" $CONFIG_PATH)
password=$(jq --raw-output ".password" $CONFIG_PATH)
echo "$username:$password" > /etc/rsyncd.secrets
chmod 600 /etc/rsyncd.secrets
sed -i "s/auth users = username/auth users = $username/g" /data/options.json
cat /data/options.json
echo "[Info] rsync-backups Iniciado"
rsync --daemon --no-detach --config=/etc/rsyncd.conf
