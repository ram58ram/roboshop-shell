#! /bin/bash

NAMES=("mongodb" "redis")

for serverName in ${NAMES[@]}
do
    echo "ServerName is: $serverName"
done