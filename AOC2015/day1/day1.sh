#!/bin.bash

target=$(cat "target.txt")
position=0

floor=0
while IFS= read -r -n1 char; do
	#echo "$char"
	if [[ "$char" == '(' ]]; then
		((floor++))
		((position++))
	elif [[ "$char" == ')' ]]; then
		((floor--))
		((position++))
	fi

	if [[ "$floor" == -1 ]]; then
		echo $position
		return 1
	fi
done <puzz_input
