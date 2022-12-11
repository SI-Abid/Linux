#! /usr/bin/bash

# input username and password
username=""
password=""
user_var="Enter username: "
pass_var="Enter password: "
while IFS= read -p "$user_var" -r -s -n 1 char; do
    if [[ $char == $'\0' ]]; then
        break
    fi
    user_var='#'
    username+="$char"
done
echo ""

while IFS= read -p "$pass_var" -r -s -n 1 char; do
    if [[ $char == $'\0' ]]; then
        break
    fi
    pass_var='#'
    password+="$char"
done
echo ""
# print
echo "Username: $username"
echo "Password: $password"
