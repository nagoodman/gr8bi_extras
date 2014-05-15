#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

if [ "$#" -ne 2 ]; then
  echo "Usage: " `basename $0` "logfile url"
  exit 0
fi

curl -v -L -s -X PUT \
  --data @$1 \
  -H 'Content-Type: application/text' \
  "$2"  | tee $DIR/.lastresponse
