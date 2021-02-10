#!/bin/bash
if [ $BRANCH_NAME = "devel" ]
then
export AWS_ACCESS_KEY_ID=$DEVEL_AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$DEVEL_AWS_SECRET_ACCESS_KEY
export AWS_DEFAULT_REGION="us-east-1"
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set default.region us-east-1
else
export AWS_ACCESS_KEY_ID=$PROD_AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$PROD_AWS_SECRET_ACCESS_KEY
export AWS_DEFAULT_REGION="us-east-1"
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set default.region us-east-1
#teste
fi
