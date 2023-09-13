#!/bin/bash 

fun_test(){
    echo "this works!!"
}

read -p "download books" bks
if [ $bks -eq 1 ]
then
    fun_test
else
    echo "404"
fi
