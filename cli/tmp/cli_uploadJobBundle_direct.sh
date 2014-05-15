#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/cli_env.sh

if [ "$#" -ne 2 ]; then
  echo "Usage: " `basename $0` "zipfileLocation url"
  exit 0
fi

curl -v -L -s -X PUT \
  --data-binary @$1 \
  -H 'Content-Type: application/zip' \
  "$2"  | tee $DIR/.lastresponse
