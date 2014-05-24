#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/.gr8_env.sh

if [ "$#" -ne 3 ]; then
  echo "Usage: " `basename $0` "directory kjb_location parameters"
  exit 0
fi

echo Zipping up $1 to /tmp/bundle.zip
if [ -e /tmp/bundle.zip ]
then
  rm /tmp/bundle.zip
fi
cd $1
zip -r /tmp/bundle.zip .

echo Uploading Job Bundle 

$DIR/gr8_uploadJobBundle.sh /tmp/bundle.zip AutoBundleName

BUN_ID=`cat $DIR/.lastresponse | egrep bun_id | cut -f4 -d'"'`

echo "Created bundle: $BUN_ID"
sleep 5

echo Creating job with entry_point : $2

$DIR/gr8_createJob.sh $BUN_ID $2 AutoJobName

JOB_ID=`cat $DIR/.lastresponse | egrep job_id | cut -f4 -d'"'`
sleep 5

echo "Created Job: $JOB_ID"

echo "Running Job with params: $3"

$DIR/gr8_createRunHTTP.sh $JOB_ID $3

RUN_ID=`cat $DIR/.lastresponse | egrep run_id | cut -f4 -d'"'`

echo "Created Run: $RUN_ID"
echo "To check status of the job, run:"
echo "$DIR/gr8_getRun.sh $RUN_ID"

