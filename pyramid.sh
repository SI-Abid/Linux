#! /bin/bash

for (( i=1 ; i<=10 ; i++ ))
do
	for (( j=10 ; j > i ; j-- ))
	do
		echo -n " "
	done
	for (( j=1 ; j <= 2*i-1 ; j++ ))
	do
		echo -n "*"
	done
	echo ""
done
