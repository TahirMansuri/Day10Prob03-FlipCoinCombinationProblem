#!/bin/bash

echo "Welcome to  Flip Coin Combination Program";

# Creating Dictionary for Head and Tail
declare -A DoubletDict

# Variables
n=0;
F="";
index=1;

HHHCount=0;
HHTCount=0;
HTHCount=0;
HTTCount=0;
THHCount=0;
THTCount=0;
TTHCount=0;
TTTCount=0;

# Flip Coin to get Head and Tail
for (( i=1; i<=30; i++ ))
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
	if (( n==3 ))
	then
		DoubletDict[$index]=$F;
		n=0;

		case $F in
			'HHH')
				((HHHCount++));
			;;
			'HHT')
				((HHTCount++));
			;;
			'HTH')
				((HTHCount++));
			;;
			'HTT')
				((HTTCount++));
			;;
			'THH')
				((THHCount++));
			;;
			'THT')
				((THTCount++));
			;;
			'TTH')
				((TTHCount++));
			;;
			'TTT')
				((TTTCount++));
			;;
		esac

		F="";
		((index++));
	fi

done

#Getting Percentage of Head and Tail Triplet Occurance
echo "HHH Percentage="$(( $HHHCount * 10 ));
echo "HHT Percentage="$(( $HHTCount * 10 ));
echo "HTH Percentage="$(( $HTHCount * 10 ));
echo "HTT Percentage="$(( $HTTCount * 10 ));
echo "THH Percentage="$(( $THHCount * 10 ));
echo "THT Percentage="$(( $THTCount * 10 ));
echo "TTH Percentage="$(( $TTHCount * 10 ));
echo "TTT Percentage="$(( $TTTCount * 10 ));

for key in ${!DoubletDict[@]}
do
	echo $key " : " ${DoubletDict[$key]};
done
