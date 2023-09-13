#!/bin/bash

# A script to clear the cache on open suse to speed up zypper

usrr=$USER
path=/var/tmp

if [ -d $path ]; then
	cd $path && rm -rf *
else
	echo "Directory not found for $usrr"
fi
