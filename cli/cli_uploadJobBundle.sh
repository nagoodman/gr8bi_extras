#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: " `basename $0` "zipfileLocation name"
  exit 0
fi

curl -v -L -s -X PUT \
  --data-binary @$1 \
  -H 'Content-Type: application/zip' \
  -H "X-Auth-Token: $GR8_BI_TOK" \
  $BASE_URL/current/$GR8_BI_ACT/jobBundle?name=$2
