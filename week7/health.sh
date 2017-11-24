#!/bin/bash

count= aws s3 l $1 | wc -l

echo "$count files found in bucket"
