#! /usr/bin/bash

text=''
tmp='Enter text: '
while IFS= read -p "$tmp" -r -s -n1 char; do
    if [[ $char == $'\0' ]]; then
        break
    fi
    if [[ $char == [a-z] ]]; then
        tmp=$(echo $char | tr 'a-z' 'n-za-m')
    elif [[ $char == [A-Z] ]]; then
        tmp=$(echo $char | tr 'A-Z' 'N-ZA-M')
    else
        tmp=$char
    fi
    text+=$char
done
echo
echo 'Your original text: '$text
