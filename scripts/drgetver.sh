#!/bin/bash

if [ -z "$1" ]; then
    echo "Image id was not specified."
    exit 1
fi

docker ps -a | grep $1 | awk '{print $2}' | sed s/:/\\n/g | tail -1
