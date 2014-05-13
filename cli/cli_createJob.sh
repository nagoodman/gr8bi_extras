#!/bin/bash

if [ "$#" -ne 3 ]; then
  echo "Usage: " `basename $0` "bun_id job_entry_point name"
  exit 0
fi

curl -s -X POST \
  -H "Content-Type: application/json" \
  -d "{ \"bun_id\" : \"$1\",\"job_entry_point\" : \"$2\", \"name\": \"$3\"}" \
  --header "X-Auth-Token: $GR8_BI_TOK" \
  "$BASE_URL/current/$GR8_BI_ACT/job"
