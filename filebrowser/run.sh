set -e

echo "[Info] Starting Hass.io filebrowser!"
echo "[Info] Start rsyncd"

CONFIG_PATH=/data/options.json
username=$(jq --raw-output ".username" $CONFIG_PATH)
password=$(jq --raw-output ".password" $CONFIG_PATH)
hosts_allow=$(jq --raw-output ".hosts_allow" $CONFIG_PATH)

#echo "$username:$password" > /etc/rsyncd.secrets
#chmod 600 /etc/rsyncd.secrets
#sed -i "s/auth users = username/auth users = $username/g" /etc/rsyncd.conf
#sed -i "s/hosts allow = hosts_allow/auth users = $hosts_allow/g" /etc/rsyncd.conf
echo "[Info] filebrowser Iniciado"
#pause
filebrowser -r /mnt
