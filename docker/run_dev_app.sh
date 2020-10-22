#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
$DIR/run_tapyrusd_service.sh

export RPCCOOKIE=/root/.tapyrus/dev-1905960821/.cookie
export KEYDB=/root/dev-data/KEYS
export INDEXDB=/root/dev-data/db
export ZMQ=tcp://127.0.0.1:30001
export RPCCONCURRENT=32
export RPC=http://localhost:18443
export PORT=8080

node /root/dev-server/index.js
