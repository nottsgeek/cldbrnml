#!/bin/sh

curl -X POST -H "Content-Type: application/json" \
    -d '{"data": "21"}' \
    https://8pors5yzt1.execute-api.us-east-2.amazonaws.com/test/predictor
