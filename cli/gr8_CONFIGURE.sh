#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$#" -ne 2 ]; then
  echo "Usage: " `basename $0` "email password"
  exit 0
fi

$DIR/gr8_createToken.sh $1 $2 2592000 
cp $DIR/.lastresponse ~/.gr8bi_token
