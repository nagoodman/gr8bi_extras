#!/bin/bash

curl -s -X GET \
  -H "X-Auth-Token: $GR8_BI_TOK" \
  $BASE_URL/current/$GR8_BI_ACT/jobBundle/list
