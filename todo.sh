#!/bin/sh

# From http://www.linuxweblog.com/bash-argument-numbers-check
EXPECTED_ARGS=1
E_BADARGS=65
if [ $# -gt $EXPECTED_ARGS ]
then
  echo "Usage: ./extract [starting_directory]" >&2
  exit $E_BADARGS
fi

# By default, start in the current working directory, but if they provide
# an argument, use that instead.
if [ $# -eq $EXPECTED_ARGS ]
then
	startingDir=$1
else
	startingDir="."
fi
	
# Start creating the HTML document
echo "<html><head></head><body>"
echo "<table border=1>"
echo "<tr><td>Location</td><td>Comment</td></tr>"


# The output of the find command will look like 
# ./Telephone.java:20:    // todo: Document

find $startingDir -name "*.java" -exec grep -Hin todo {} + | 
# Allows the script to read in piped in arguments
while read data; do

    # The location of the file is the first argument
    fileLoc=`echo "$data" | cut -d ":" -f 1`
    fileName=`basename $fileLoc`

    # the line number is the second
    lineNumber=`echo "$data" | cut -d ":" -f 2`

    # all arguments after the second colon are the comment.  Eliminate the TODO
    # text with a simple find and replace.
    # Note: only handles todo and TODO, would need some more logic to handle other cases
    comment=`echo "$data" | cut -d ":" -f 3- | sed -e 's/^[ 	]*//' -e 's/[\/*]*[ 	]*//' -e 's/TODO/todo/' -e 's/todo[:]*[ 	]*//'`
    echo "<tr>"
    echo "  <td><a href="$fileLoc">$fileName ($lineNumber)</a></td>"
    echo "  <td>$comment</td>"
    echo "</tr>"
done

# Finish off the HTML document
echo "</table>"
echo "</body></html>"

exit 0