#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

if [ "$#" -ne 2 ]; then
  echo "Usage: " `basename $0` "zipfileLocation name"
  exit 0
fi

curl -L -s -X PUT \
  --data-binary @$1 \
  -H 'Content-Type: application/zip' \
  -H "X-Auth-Token: $GR8_BI_TOK" \
  $BASE_URL/current/$GR8_BI_ACT/jobBundle?name=$2 | tee $DIR/.lastresponse
