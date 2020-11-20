#!/usr/bin/env bash

if [ ! -e ${CONF_DIR}/tapyrus.conf ]; then
  cat << EOS > ${CONF_DIR}/tapyrus.conf
rpcuser=rpcuser
rpcauth=user:41178a409d81d880da9067a3d0f9b0d3$97c47362b4fd1b2993e9db901f13eda03e5ba179b4dd715f50db78b1817819d8
bind=0.0.0.0
rpcallowip=0.0.0.0/0
server=1
keypool=1
discover=0
dev=1
txindex=1
zmqpubhashtx=tcp://127.0.0.1:30001
zmqpubhashblock=tcp://127.0.0.1:30001
rpcworkqueue=32
[dev]
port=12383
rpcport=12381
networkid=1905960821
EOS
fi

/usr/local/bin/entrypoint.sh
tapyrusd -datadir=${DATA_DIR} -conf=${CONF_DIR}/tapyrus.conf
disown
sleep 2
