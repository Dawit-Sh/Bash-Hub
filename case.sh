#!/bin/bash 

read -p "What is your name: " usr

echo -n "Hello $usr you are: "

case $usr in 
    YohannesTz)
        echo  "A Java worshiping narsisist"
        ;;

    Besufikad)
        echo  "A well rounded programmer"
        ;;

    *)
        echo  "Unkown"
        ;;
esac 
