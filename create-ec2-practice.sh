#! /bin/bash

NAMES=("mongodb" "redis" "mysql")
INSTANCE_TYPE=""

for serverName in ${NAMES[@]}
do
    if  [  $serverName = "mongodb" || $serverName = "mysql" ]; then
        INSTANCE_TYPE="t3.medium"
        echo "${INSTANCE_TYPE}"
    else
        INSTANCE_TYPE="t2.micro"
         echo "${INSTANCE_TYPE}"
    fi
    echo "Creating server : $serverName"
done

