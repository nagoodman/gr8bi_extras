#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

if [ "$#" -ne 2 ]; then
  echo "Usage: " `basename $0` "email password"
  exit 0
fi

curl -v -s -X POST \
  -d "email=$1" \
  -d "password=$2" \
  $BASE_URL/current/act | tee $DIR/.lastresponse
