#!/bin/bash

echo "CO N Idle" >result.dat
for i in {1..50}
do
  ./loadtest $i &
idle=`mpstat 5 1 -o JSON | jq -C '.sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'`
pkill loadtest
echo "Users: $i Idle: $idle"
#https://stackoverflow.com/questions/3137094/how-to-count-lines-in-a-document
cnt=`wc -l < synthetic.dat`

echo "$cnt  $i  $idle" >>result.dat 


done
