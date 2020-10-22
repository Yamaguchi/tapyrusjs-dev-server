#!/usr/bin/env bash

/usr/bin/tapyrusd -server -dev -txindex -zmqpubhashtx=tcp://127.0.0.1:30001 -zmqpubhashblock=tcp://127.0.0.1:30001 -rpcworkqueue=32 &
disown
sleep 2
/usr/bin/tapyrus-cli -dev generatetoaddress 432 mhQYgFmHJCNSjDpTeVhEYPyMd7bvwpJYKU c87509a1c067bbde78beb793e6fa76530b6382a4c0241e5e4a9ec0a0f44dc0d3
