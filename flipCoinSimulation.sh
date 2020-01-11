#!/bin/bash -x
declare -A results
doubleHead=0
doubleTail=0
headTail=0
tailHead=0
i=0
while [ $i  -lt 10 ]
do
	randomCheck=$((RANDOM%4))
	echo $randomCheck
	if [[ $randomCheck -eq 0 ]]
	then
		(( doubleHead++ ))
		results[HH]=$doubleHea
	elif [[ $randomCheck -eq 1 ]]
	then
   	(( doubleTail++ ))
		results[TT]=$doubleTail 
	elif [[ $randomCheck -eq 2 ]]
	then
		(( headTail++ ))
		results[HT]=$headTail
	else
		(( tailHead++ ))
		results[TH]=$tailHead
	fi;
	(( i++ ))
done
percentageOfDoubleHead=$(( doubleHead*100/10 ))
percentageOfDoubleTail=$(( doubleTail*100/10 ))
percentageOfHeadTail=$(( headTail*100/10 ))
percentageOfTailHead=$(( tailHead*100/10 ))
echo "Percentage Of Head Head is "$percentageOfDoubleHead
echo "Percentage Of Tail Tail is "$percentageOfDoubleTail
echo "Percentage Of Head Tail is "$percentageOfHeadTail
echo "Percentage Of Tail Head is "$percentageOfTailHead

