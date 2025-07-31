#!/bin/bash


start_point=0


for thing in $(cat "puzzleInput.txt"); do
#	echo "<$thing>"
	if [[ "$thing" == '(' ]]; then
		((start_point++))
	elif [[ "$thing" == ')' ]]; then
		((start_point--))
	fi
done
echo $start_point
