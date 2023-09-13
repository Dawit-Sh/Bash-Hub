#!/bin/bash

function test_Documents(){
    if [ -e ~/Documents ]
    then
        echo "it exisist"
    else
        echo "file missing"
    fi 
}

test_Documents  
