#!/bin/bash
set -e

echo "[Info] Starting Hass.io rsync-backups module backup!"

CONFIG_PATH=/data/options.json
username=$(jq --raw-output ".username" $CONFIG_PATH)
password=$(jq --raw-output ".password" $CONFIG_PATH)

echo "[Info] Start rsync-backups"

echo "[Info] Start rsync backups to $rsyncurl"
echo "$username:$password" > /etc/rsyncd.secrets
chmod 600 /etc/rsyncd.secrets
cat /etc/rsyncd.secrets
echo "[Info] rsync-backups Iniciado"
rsync --daemon --no-detach --config=/etc/rsyncd.conf
