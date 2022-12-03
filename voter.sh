#! /bin/bash

read -p "Enter country name: " country
read -p "Enter age: " age

if [ $country == "BD" ]
then
	if [ $age -ge 18 ]
	then
		echo "You can vote"
	else
		echo "You can't vote"
	fi
else
	echo "You can't vote"
fi
