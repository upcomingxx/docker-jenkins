#!/bin/bash

get_id () {
  echo "$(docker ps -a | grep $1 | awk '{print $1}')"
}

RES=""
for CONT in $@; do
  ID=$(get_id "$CONT")
  RES="$ID $RES"
done
echo "$RES"
