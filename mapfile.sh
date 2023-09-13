#!/bin/bash 

mapfile -t myArray < myFile

echo "${myArray[0]}"
