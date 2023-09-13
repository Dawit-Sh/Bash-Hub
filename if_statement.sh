#!/bin/bash 

num="102"

if [ $num -gt 100 ]
# -eq means is equal to
# -ne means is not equal to 
# -gt means is greater than
# -ge or -le means greater than or equal to, less than or equal to
# -lt means is less than 
# -f means check for a file 
# -d means check for a directory  
then
    echo "hypothesis true."
else
    echo "hypothesis false"
fi
# fi is closing 
