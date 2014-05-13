#!/bin/bash

if [ "$#" -ne 3 ]; then
  echo "Usage: " `basename $0` "email password seconds_from_now"
  exit 0
fi

curl -s -u $1:$2 \
  -X POST \
  -H "Content-Type: application/json" \
  -d "{ \"expire_seconds_from_now\" : \"$3\"}" \
  $BASE_URL/current/act/token | tee .temptoken
