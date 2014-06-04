#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/..
for x in `find . -type d -depth 1 | egrep -v zips`; 
do
  echo $x; 
  ZIPNAME="$DIR/"`basename $x`".zip";
  echo $ZIPNAME
  cd $DIR/../$x
  zip -r $ZIPNAME .
done
