#!/bin/bash 

echo "Hello $USER, enter your login credentials.."

read -p 'Username:' usrn
read -sp 'Password:' passwrd

echo
echo "Thank you $usrn, you can proceed..." 

# -p which allows you to specify a prompt
# -s which makes the input silent