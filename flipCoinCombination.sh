#!/bin/bash

echo "Welcome to  Flip Coin Combination Program";

# Creating Dictionary for Head and Tail
declare -A HeadDict
declare -A TailDict

# Variables
headCount=0;
tailCount=0;

# Flip Coin to get Head and Tail
for (( i=1; i<=20; i++ ))
do
	flip=$((RANDOM%2));
	case $flip in
		0)
			((headCount++));
			HeadDict[$headCount]=$i;
			echo "Head Comes";
		;;
		1)
			((tailCount++));
			TailDict[$tailCount]=$i;
			echo "Tail Comes";
		;;
	esac
done

#Getting Percentage of Head and Tail Occurance
echo "Head Percentage="$(( (${#HeadDict[@]} / 2) * 10 ));
echo "Tail Percentage="$(( (${#TailDict[@]} / 2) * 10 ));
