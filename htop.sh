#!/bin/bash 

cmd=/usr/bin/htop

if [ -f $cmd ]
# if command -v checks if its present, no need for brackets when using this 
# [] are test commands, bash assumes it is a test command 
then 
    echo "$cmd is available"
else 
    echo "$cmd is not available"
fi 
