#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

if [ "$#" -lt 1 ]; then
  echo "Usage: " `basename $0` "job_id querystring file"
  exit 0
fi

curl -s -X PUT \
  --header "X-Auth-Token: $GR8_BI_TOK" \
  --data-binary @$3 \
  -H 'Content-Type: application/octet-stream' \
  "$BASE_URL/current/$GR8_BI_ACT/job/$1/run/http?$2" | tee $DIR/.lastresponse



