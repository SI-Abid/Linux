#! /usr/bin/bash
# Description: Guess the number game
read -p "Enter your name: " name
num=$(((RANDOM % 100) + 1))
counter=0
prompt="Guess the number between 1 and 100: "
while true; do
    read -p "$prompt" guess
    if [[ $guess -eq $num ]]; then
        echo "You guessed it!"
        break
    elif [[ $guess -gt $num ]]; then
        echo "Too high!"
    else
        echo "Too low!"
    fi
    ((counter++))
done
echo "You guessed it in $counter tries."
# Write the name and number of tries to a file
echo "$name $counter" >> count.txt