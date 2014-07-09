#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

if [ "$#" -ne 1 ]; then
  echo "Usage: " `basename $0` "run_id"
  exit 0
fi

RUN_URL=`curl -s -X GET \
  -H "X-Auth-Token: $GR8_BI_TOK" \
  $GR8_BASE_URL/current/$GR8_BI_ACT/run/$1 \
  | egrep output_url | cut -f4 -d'"' `

curl -o $1.output.zip "$RUN_URL"
