#!/bin/bash

password=""
echo -n "Enter Username : "
read username
pass_var="Enter Password :"
# echo -n "$pass_var"
while IFS= read -p "$pass_var" -r -s -n 1 char
do
    if [[ $char == $'\0' ]]
    then
        break
    fi
    pass_var='*'
    password+="$char"
done

echo
echo "Username : $username"
echo "Password : $password"
