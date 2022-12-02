#!/bin/bash
set -e

echo "[Info] Starting Hass.io portainer-agent!"
echo "[Info] Start portainer-agent"

CONFIG_PATH=/data/options.json
AGENT_SECRET=$(jq --raw-output ".agent_secret" $CONFIG_PATH)
AGENT_SECRET_TIMEOUT=$(jq --raw-output ".agent_secret_timeout" $CONFIG_PATH)
LOG_LEVEL=$(jq --raw-output ".log_level" $CONFIG_PATH)

echo "[Info] portainer-agent Iniciado"
/opt/agent/agent --port=9001
