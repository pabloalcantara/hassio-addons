set -e

echo "[Info] Starting Hass.io filebrowser!"
echo "[Info] Start filebrowser"
if [ ! -d "/addons/filebrowser" ] 
then
  mkdir -p /addons/filebrowser/
fi

ln -s /backup /mnt/backup
ln -s /config /mnt/config
ln -s /ssl /mnt/ssl
ln -s /addons /mnt/addons
ln -s /share /mnt/share
ln -s /media /mnt/media
filebrowser -p 9568 -a 0.0.0.0 -d /addons/filebrowser/database.db -r /mnt --prefixurl "/filebrowser"

echo "[Info] filebrowser Iniciado"
echo "[info] first run, login and password is "admin"
