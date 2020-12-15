#!/bin/sh

out=$(curl -X POST -H "Content-Type: application/json" -d '{"data": "'"$1"'"}' https://8pors5yzt1.execute-api.us-east-2.amazonaws.com/test/s3usage)

y=`echo $out | jq '.predictions[0].score'`
z=210000000
echo $y
if (( $y > $z )); then
  change=$(curl -X POST -u $uname:$pass https://dev77787.service-now.com/api/now/table/incident)
  cnumber=`echo $change | jq '.result.number'`
  echo "High S3 Usage, Incident ${cnumber} raised and assigned." > cfile
else
  echo "Normal S3 usage" > cfile
fi
