#!/bin/bash

aws s3 sync s3://resi-dependencies .

aws s3api list-objects --bucket resi-dependencies > list-objects.json


