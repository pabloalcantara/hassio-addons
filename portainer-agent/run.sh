#!/bin/bash
set -e

echo "[Info] Starting Hass.io portainer-agent!"
echo "[Info] Start ortainer-agent"

#CONFIG_PATH=/data/options.json
#username=$(jq --raw-output ".username" $CONFIG_PATH)
#password=$(jq --raw-output ".password" $CONFIG_PATH)
#hosts_allow=$(jq --raw-output ".hosts_allow" $CONFIG_PATH)

#echo "$username:$password" > /etc/rsyncd.secrets
#chmod 600 /etc/rsyncd.secrets
#sed -i "s/auth users = username/auth users = $username/g" /etc/rsyncd.conf
#sed -i "s/hosts allow = hosts_allow/auth users = $hosts_allow/g" /etc/rsyncd.conf
echo "[Info] rsyncd Iniciado"
ls -lh /opt/agent
/opt/agent/agent --port=9001 --secret=da9s7dhasfy82g3kDe
