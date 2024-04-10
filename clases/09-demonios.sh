#!/bin/bash
# Demonios

function manejador() {
    echo "acabo de recibir un SIGTERM"
}

trap manejador SIGTERM
trap - SIGTERM
trap -p

sleep 5

while [ 1 -eq 1 ]
do
    date
    sleep 1
done
