#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$#" -ne 2 ]; then
  echo "Usage: " `basename $0` "email password"
  exit 0
fi

$DIR/cli_createToken.sh $1 $2 43200
