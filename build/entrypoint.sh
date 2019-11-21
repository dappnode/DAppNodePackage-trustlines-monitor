#!/bin/bash

VALIDATOR_IP=$(dig +short trustlines-validator.dappnode)
NODE_IP=$(dig +short trustlines.dappnode)

if [ ! -z "$VALIDATOR_IP" ]; then
    RPC_HOST=http://trustlines-validator.dappnode:8545
elif [ ! -z "$NODE_IP" ]; then
    RPC_HOST=http://trustlines.dappnode:8545
else 
    echo "Not found a valid RPC endpoint"
    exit 1
fi 

tlbc-monitor -c /config/trustlines-spec.json -r /reports -d /state -u ${RPC_HOST}