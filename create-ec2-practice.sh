#! /bin/bash

NAMES=("mongodb" "redis")
INSTANCE_TYPE=""

for serverName in ${NAMES[@]}
do
    if  [  $serverName = "mongodb" || $serverName = "mysql" ]; then
        INSTANCE_TYPE="t3.medium"
    else
        INSTANCE_TYPE="t2.micro"
    fi
    echo "Creating server : $serverName"
done

