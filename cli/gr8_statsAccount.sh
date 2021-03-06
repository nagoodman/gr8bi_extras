#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

if [ "$#" -ne 1 ]; then
  echo "Usage: " `basename $0` "[count_object_types]"
  exit 0
fi

curl -s -X GET \
  -H "X-Auth-Token: $GR8_BI_TOK" \
  $GR8_BASE_URL/current/$GR8_BI_ACT/stats/$1 | tee $DIR/.lastresponse
