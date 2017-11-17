#!/bin/bash

#sleep and a kill comman
# invoke load test
# sleep
# kill
#yous a forloop to iterate over a numeber of users range from 1....N users
#for [i -- $2]
#loadtest $i $1
#sleep
#kill

echo "invoke ./loadtest N T"
# it only runs this command and does not get to the sleep command ? 
#foreground and background process ? this is a foreground process which is atached to the terminal and background is detached from the terminal

#& means backgrounding 
./loadtest $1 &
#sleep for the duration of the load test T
sleep $2

#kill the load test
kill loadtest 
