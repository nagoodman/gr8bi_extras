#!/bin/bash


export GR8_BI_TOK=`cat ~/.gr8bi_token | egrep token | cut -f4 -d'"'`
export GR8_BI_ACT=`cat ~/.gr8bi_token | egrep act_id | cut -f4 -d'"'`

if [ -z "$CONFIG_ENV" ]; then
  export GR8_BASE_URL=https://api.gr8.bi
else
  export GR8_BASE_URL=$BASE_URL
fi

