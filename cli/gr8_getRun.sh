#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

if [ "$#" -ne 1 ]; then
  echo "Usage: " `basename $0` "run_id"
  exit 0
fi

curl -s -X GET \
  -H "X-Auth-Token: $GR8_BI_TOK" \
  $BASE_URL/current/$GR8_BI_ACT/run/$1 | tee $DIR/.lastresponse
