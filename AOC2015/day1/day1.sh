#!/bin.bash

position=0

floor=0
while IFS= read -r -n1 char; do
	#echo "$char"
	if [[ "$char" == '(' ]]; then
		((floor++))
	elif [[ "$char" == ')' ]]; then
		((floor--))
	fi

	if [[ "$floor" == -1 ]]; then
	 	echo $position
		exit 1
	fi
		((position++))
done <puzz_input

echo $floor

