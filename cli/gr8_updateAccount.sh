#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

if [ "$#" -ne 5 ]; then
  echo "Usage: " `basename $0` "email password act_id key value"
  exit 0
fi

if [ "$4" = "params" ]; then
  SEG="\"$4\" : $5"
else
  SEG="\"$4\" : \"$5\""
fi

curl -s -X PATCH \
  -H "Content-Type: application/json" \
  -d "{ $SEG }" \
  -u "$1:$2" \
  "$GR8_BASE_URL/current/act/$3" | tee $DIR/.lastresponse
