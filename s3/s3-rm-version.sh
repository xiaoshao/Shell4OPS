#!/bin/bash

key=$1
bucket=$2
aws s3api delete-objects --bucket $bucket \
--delete `aws s3api list-object-versions --key $key --bucket $bucket | jq "{objects: [.Versions[] | {Key:.Key, VersionId : .VersionId}], quiet: false}"`
