#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

log ()
{
        timestamp=$(date +"%Y-%m-%dT%H:%M:%S")
        echo "[${timestamp}] $1"
}

start_app()
{
  log "Running application..."
  meteor npm install
  DISABLE_WEBSOCKETS=1 & meteor --allow-superuser
}

pushd ${DIR} > /dev/null
start_app
popd > /dev/null
