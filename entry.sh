#!/bin/sh

datadir="/root/.ethereum"

/geth \
--rinkeby \
--syncmode "light" \
--maxpeers 100 \
--maxpendpeers 100 \
--rpc --rpcaddr 0.0.0.0 \
--datadir $datadir \
--rpcport 8545 \
--rpcapi "miner,admin,db,eth,net,web3,personal"