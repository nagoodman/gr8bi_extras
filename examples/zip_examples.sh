#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for x in `find $DIR -type d -depth 1 | egrep -v zips`; 
do
  echo $x; 
  ZIPNAME="$DIR/zips/"`basename $x`".zip";
  echo $ZIPNAME
  zip -r $ZIPNAME $x
done
