#!/bin/bash
aws ec2 describe-instance-status --instance-ids $1 > aws.txt

count=`grep running aws.txt | wc -l`

if [ $count -gt 0 ]; then

	echo "Instance Running"
else
	echo "Not running"
fi

