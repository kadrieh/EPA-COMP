#!/bin/bash

#Write a script to count the number of files in /tmp. If the number of files exceeds a parameter, have the script write an error message to a log file, using redirect append 

count=`ls /temp | wc -l`
max=3
if [ $count -ge $max ]; then
 echo"`date` Max number of files($count) exceeded in /temp >> /home/epa/log.txt"
fi
