#!bin/bash

#1- the script runs mpstat for 10 seconds and collects one sample of output
#2- the script uses pipe to jq identify the cpu-load value from mpstat
#3- the script uses jq tosubtract this number from 100 to obtain the utilization of the cpu

