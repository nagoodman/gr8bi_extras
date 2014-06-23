#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

if [ "$#" -lt 2 ]; then
  echo "Usage: " `basename $0` "bun_id job_entry_point name \"{\"param1\":\"val1\"}\""
  exit 0
fi

if [ ! -z "$3" ]; then
  NAMESEG=", \"name\": \"$3\"";
fi

if [ ! -z "$4" ]; then
  PARAMSEG=", \"params\": $4";
fi


curl -s -X POST \
  -H "Content-Type: application/json" \
  -d "{ \"bun_id\" : \"$1\",\"job_entry_point\" : \"$2\" $NAMESEG $PARAMSEG}" \
  --header "X-Auth-Token: $GR8_BI_TOK" \
  "$BASE_URL/current/$GR8_BI_ACT/job" | tee $DIR/.lastresponse
