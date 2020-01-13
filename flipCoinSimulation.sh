#!/bin/bash -x
declare -A results
tripleHead=0
tripleTail=0
headTailTail=0
tailHeadTail=0
tailTailHead=0
tailHeadHead=0
headTailHead=0
headHeadTail=0
i=0
while [ $i  -lt 10 ]
do
	randomCheck=$((RANDOM%7))
	echo $randomCheck
	if [[ $randomCheck -eq 0 ]]
	then
		(( tripleHead++ ))
		results[HHH]=$tripleHead
	elif [[ $randomCheck -eq 1 ]]
	then
   	(( tripleTail++ ))
		results[TTT]=$tripleTail 
	elif [[ $randomCheck -eq 2 ]]
	then
		(( headTailTail++ ))
		results[HTT]=$headTailTail
	elif [[ $randomCheck -eq 3 ]]
	then
		(( tailHeadTail++ ))
		results[THT]=$tailHeadTail
	elif [[ $randomCheck -eq 4 ]]
	then
		 (( tailTailHead++ ))
		 results[TTH]=$tailTailHead
	elif [[ $randomCheck -eq 5 ]]
	then
		(( tailHeadHead++ ))
		 results[THH]=$tailHeadHead
	elif [[ $randomCheck -eq 6 ]]
	then
		(( headTailHead++ ))
		results[HTH]=$headTailHead
	else
		(( headHeadTail++ ))
		results[HHT]=$headHeadTail			
	fi;
	(( i++ ))
done
percentageOfTripleHead=$(( tripleHead*100/10 ))
percentageOftripleTail=$(( tripleTail*100/10 ))
percentageOfheadTailTail=$(( headTailTail*100/10 ))
percentageOftailHeadTail=$(( tailHeadTail*100/10 ))
percentageOftailTailHead=$(( tailTailHead*100/10 ))
percentageOftailHeadHead=$(( tailHeadHead*100/10 ))
percentageOfheadTailHead=$(( headTailHead*100/10 ))
percentageOfheadHeadTail=$(( headHeadTail*100/10 ))
echo "Percentage Of Tail Tail Tail is "$percentageOfTripleHead
echo "Percentage Of Head Head Head is "$percentageOftripleTail
echo "Percentage Of is Head Tail Tail"$percentageOfheadTailTail
echo "Percentage Of Tail Head Tail is"$percentageOftailHeadTail
echo "Percentage Of Tail Tail Head is "$percentageOftailTailHead
echo "Percentage Of Tail Head Head is "$percentageOftailHeadHead
echo "Percentage Of Head Tail Head is "$percentageOfheadTailHead
echo "Percentage Of Head Head Tail is "$percentageOfheadHeadTail

