#!/bin/bash

if [ "$#" -ne 3 ]; then
  echo "Usage: " `basename $0` "email password act_id"
  exit 0
fi

curl -s -u $1:$2 \
  -X DELETE \
  $BASE_URL/current/act/$3
