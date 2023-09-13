#!/bin/bash 


# $REPLY is the default read value if no variable is given 

echo -n "Hello $(basename $0) ! May i ask your name: "
read name
echo "Hello $name"
exit 0 
