#!/bin/sh

#out=$(curl -X POST -H "Content-Type: application/json" -d '{"data": $1}' https://8pors5yzt1.execute-api.us-east-2.amazonaws.com/test/predictor)

#y=`echo $out | jq '.scores[0].score'`
#z=1.4

#if (( $(echo "$y > $z" |bc -l) )); then
# 	echo "Anomaly detected"
#else
#	echo "All good"
#fi

#echo $out
change=$(curl -X POST -u $uname:$pass https://dev77787.service-now.com/api/now/table/incident}
cnumber=`echo $change | jq '.result.number'`
echo $cnumber > cfile
#echo $1
#echo $uname
#echo $pass

