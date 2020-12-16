#!/bin/sh

z=$(aws sqs receive-message --queue-url https://sqs.us-east-2.amazonaws.com/169302816586/sagemaker --region us-east-2)
rcpthndle=`echo $z | jq -r '.Messages[0].ReceiptHandle'`
if [ -z "$rcpthndle" ]; then
	echo "something" > outfile
fi

aws sqs delete-message --queue-url https://sqs.us-east-2.amazonaws.com/169302816586/sagemaker --receipt-handle ${rcpthndle} --region us-east-2
x=`echo $z | jq -r '.Messages[0].Body'`

if [[ ${x} == "Abnormal" ]]; then
	echo "Abormal" > outfile
else
	echo "something" > outfile
fi
