#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/cli_env.sh

curl -s -X GET \
  -H "X-Auth-Token: $GR8_BI_TOK" \
  ${BASE_URL}/current/$GR8_BI_ACT/job/list | tee $DIR/.lastresponse
