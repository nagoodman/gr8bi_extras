#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

if [ "$#" -ne 3 ]; then
  echo "Usage: " `basename $0` "job_id key value"
  exit 0
fi

if [ "$2" = "params" ]; then
  SEG="\"$2\" : $3"
else
  SEG="\"$2\" : \"$3\""
fi

curl -s -X PATCH \
  -H "Content-Type: application/json" \
  -d "{ $SEG }" \
  --header "X-Auth-Token: $GR8_BI_TOK" \
  "$BASE_URL/current/$GR8_BI_ACT/job/$1" | tee $DIR/.lastresponse
