#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

curl -s -X GET \
  -H "X-Auth-Token: $GR8_BI_TOK" \
  $GR8_BASE_URL/current/$GR8_BI_ACT/jobBundle/list | tee $DIR/.lastresponse
