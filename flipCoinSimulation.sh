#!/bin/bash -x
randomCheck=$(( RANDOM%2 ))
if [ $randomCheck -ge 1 ]
then 
    echo "Head"
else
   echo "Tail"
fi
