#!/bin/bash

if [ "$#" -eq 3 ]; then
  ./cli_createToken.sh $1 $2 $3
fi

export GR8_BI_TOK=`cat .temptoken | egrep token | cut -f4 -d'"'`
export GR8_BI_ACT=`cat .temptoken | egrep act_id | cut -f4 -d'"'`

echo "Setup Account $GR8_BI_ACT token: $GR8_BI_TOK"
