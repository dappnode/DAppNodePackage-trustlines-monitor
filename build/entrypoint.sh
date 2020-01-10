#!/bin/bash

echo "Waiting for the node to start and the DNS is updated..."
# Delay to wait until the node is started and the DNS is updated
sleep 30

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

tlbc-monitor -c /shared/trustlines-spec.json -r /reports -d /state -u ${RPC_HOST}