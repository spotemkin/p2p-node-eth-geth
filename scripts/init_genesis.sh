#!/bin/sh

echo "Initializing genesis block"
geth init --datadir /root/.ethereum root/genesis.json

echo "Starting geth"
# exec geth --datadir /root/.ethereum --networkid 42
exec geth --http --http.addr=0.0.0.0 --http.port=4242 --http.corsdomain=* --http.api=eth,net,web3,personal --networkid=133742 --nat=any --datadir /root/.ethereum
