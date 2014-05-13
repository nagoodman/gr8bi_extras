#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "Usage: " `basename $0` "job_id [key] [value]"
  exit 0
fi

KEY=MYKEY
VALUE=MYVALUE

if [ "$2" ]; then 
  KEY=$2 
fi

if [ "$3" ]; then 
  VALUE=$3 
fi

#!/bin/bash

curl -s -X POST \
  -H "Content-Type: application/json" \
  -d "{ \"job_id\" : \"$1\", \"params\": {\"$KEY\": \"$VALUE\"}}" \
  --header "X-Auth-Token: $GR8_BI_TOK" \
  "$BASE_URL/current/$GR8_BI_ACT/run"
