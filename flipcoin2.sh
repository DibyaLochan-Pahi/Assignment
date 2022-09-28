#!/bin/bash

read -p "Enter the how many time to toss : " num;
hcount=0;
tcount=0;
for ((i=1;i<=num;i++))
do
flip=$((RANDOM%2))
if [ $flip -eq 0 ]
then
	echo "$i is Head";
	((hcount++))
	else
	echo"$i is Tail";
	((tcount++))
fi
done
echo "Total Head is $hcount ";
echo "Total Tail is $tcount ";
if [ $hcount -gt $tcount ]
then
	echo "Winner is Head";
else
	echo "Winner is Tail";
fi

