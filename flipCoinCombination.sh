#!/bin/bash

echo "Welcome to  Flip Coin Combination Program";

# Creating Dictionary for Head and Tail
declare -A DoubletDict

# Variables
n=0;
F="";
index=1;

HHCount=0;
TTCount=0;
HTCount=0;
THCount=0;

# Flip Coin to get Head and Tail
for (( i=1; i<=20; i++ ))
do
	flip=$((RANDOM%2));
	case $flip in
		0)
			F=$F"H";
		;;
		1)
			F=$F"T";
		;;
	esac
	((n++));
	if (( n==2 ))
	then
		DoubletDict[$index]=$F;
		n=0;

		case $F in
			'HH')
				((HHCount++));
			;;
			'TT')
				((TTCount++));
			;;
			'TH')
				((THCount++));
			;;
			'HT')
				((HTCount++));
			;;
		esac

		F="";
		((index++));
	fi

done

#Getting Percentage of Head and Tail Double Occurance
echo "HH Percentage="$(( $HHCount * 10 ));
echo "TT Percentage="$(( $TTCount * 10 ));
echo "TH Percentage="$(( $THCount * 10 ));
echo "HT Percentage="$(( $HTCount * 10 ));

for key in ${!DoubletDict[@]}
do
	echo $key " : " ${DoubletDict[$key]};
done
