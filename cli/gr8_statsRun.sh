#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

if [ "$#" -ne 2 ]; then
  echo "Usage: " `basename $0` "[success_status|job_id|run_status] [last_hour|last_24_hours|last_7_days|last_30_days|last_365_days]"
  exit 0
fi

curl -s -X GET \
  -H "X-Auth-Token: $GR8_BI_TOK" \
  $GR8_BASE_URL/current/$GR8_BI_ACT/run/stats/$1?time_period=$2 | tee $DIR/.lastresponse
