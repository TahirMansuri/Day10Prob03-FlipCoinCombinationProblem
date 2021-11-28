#!/bin/bash

source ./flipCombination.sh

echo "Welcome To Coin Flip Simulation";
echo "Select the Combination of Flips:"
echo "Press 1 for SINGLET Combination";
echo "Press 2 for DOUBLET Combination";
echo "Press 3 for TRIPLET Combination";
read -p "Enter Your Choice=" choice

case $choice in
	1)
		flipCombination 1;;
	2)
		flipCombination 2;;
	3)
		flipCombination 3;;
	*)
		echo "Please Enter the Choice Between 2 and 3 Only";
	;;
esac

