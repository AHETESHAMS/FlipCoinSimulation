#!/bin/bash -x
declare -A results
head=0
tail=0
i=0
while [ $i  -lt 10 ]
do
	randomCheck=$((RANDOM%2))
	if [[ $randomCheck -ge 1 ]]
	then
		(( head++ ))
		results[H]=$head
	else
   	(( tail++ ))
		results[T]=$tail
	fi;
	(( i++ ))
done
percentageOfHead=$(( head*100/10 ))
percentageOfTail=$(( tail*100/10 ))
echo "Percentage Of Head is "$percentageOfHead
