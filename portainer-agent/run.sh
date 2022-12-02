#!/bin/bash
set -e

echo "[Info] Starting Hass.io portainer-agent!"
echo "[Info] Start portainer-agent"

CONFIG_PATH=/data/options.json
AGENT_SECRET=$(jq --raw-output ".agent_secret" $CONFIG_PATH)
LOG_LEVEL=$(jq --raw-output ".log_level" $CONFIG_PATH)

echo "[Info] portainer-agent Iniciado"
env
/opt/agent/agent --port=9001 --secret=$AGENT_SECRET --log-level=$LOG_LEVEL
