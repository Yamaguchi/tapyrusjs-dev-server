#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
$DIR/run_tapyrusd_service.sh &

export RPCCOOKIE=/var/lib/tapyrus/dev-1905960821/.cookie
export KEYDB=/root/dev-data/KEYS
export INDEXDB=/root/dev-data/db
export ZMQ=tcp://127.0.0.1:30001
export RPCCONCURRENT=32
export RPC=http://localhost:12381
export PORT=8080

node /root/tapyrusjs-dev-server/index.js
