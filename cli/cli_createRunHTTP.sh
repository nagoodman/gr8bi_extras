#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "Usage: " `basename $0` "job_id querystring"
  exit 0
fi

curl -v -s -X PUT \
  --header "X-Auth-Token: $GR8_BI_TOK" \
  "$BASE_URL/current/$GR8_BI_ACT/job/$1/run/http?$2"
