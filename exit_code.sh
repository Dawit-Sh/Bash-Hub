#!/bin/bash 

# any non-zero exit code is failure 
# $? default set exit code check 

val=200

if [ $val -eq 200 ]
then 
    echo "the value in Check"
    exit 0
else 
    echo "value tampered with"
    exit 100 
fi