#!/bin/bash 

while [ -f ~/testfile ]
do
    echo "file exist"
done 

echo "file no longer exist"
