#!/bin/bash
# $1 = wallet address
# $2 = -testnet -regtest or empty
#
echo "Praying... Press [CTRL+C] to stop"
while :
do
  nobilitas-cli $2 generatetoaddress 1 $1
done
