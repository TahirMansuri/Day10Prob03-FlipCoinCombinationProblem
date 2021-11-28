#!/bin/bash

echo "Welcome to  Flip Coin Combination Program";

#Flip Coin to get Head and Tail
for (( i=1; i<=20; i++ ))
do
	$flip=$((RANDOM%2));
	case $flip in
		0)
			echo "Head Comes";
		;;
		1)
			echo "Tail Comes";
		;;
	esac
done
