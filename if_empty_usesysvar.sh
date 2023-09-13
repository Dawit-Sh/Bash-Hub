#!/bin/bash 


read -p "enter name: " name 
if [[ $name == "" ]]
then 
    echo "Hello $USER"
else 
    echo "hello $name"
fi
