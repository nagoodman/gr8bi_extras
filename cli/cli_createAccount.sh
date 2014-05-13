#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: " `basename $0` "email password"
  exit 0
fi

curl -s -X POST \
  -d "email=$1" \
  -d "password=$2" \
  $BASE_URL/current/act
