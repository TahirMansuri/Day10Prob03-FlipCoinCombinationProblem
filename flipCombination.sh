#!/bin/bash

function flipCombination()
{
# Creating Dictionary for Head and Tail
declare -A DoubletDict

# Variables
n=0;
F="";
index=1;

HCount=0;
TCount=0;

HHCount=0;
TTCount=0;
HTCount=0;
THCount=0;

HHHCount=0;
HHTCount=0;
HTHCount=0;
HTTCount=0;
THHCount=0;
THTCount=0;
TTHCount=0;
TTTCount=0;

Combination=$1

# Flip Coin to get Head and Tail
for (( i=1; i<=((10*$Combination)); i++ ))
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
        if (( n==$Combination ))
        then
                DoubletDict[$index]=$F;
                n=0;

		case $Combination in
			1)
				case $F in
					'H')
						((HCount++));;
					'T')
						((TCount++));;
				esac
			;;
			2)
			case $F in
				'HH')
					((HHCount++));;
				'TT')
					((TTCount++));;
				'TH')
					((THCount++));;
				'HT')
					((HTCount++));;
			esac
			;;
			3)
	   		case $F in
				'HHH')
					((HHHCount++));;
				'HHT')
					((HHTCount++));;
				'HTH')
					((HTHCount++));;
				'HTT')
					((HTTCount++));;
				'THH')
					((THHCount++));;
				'THT')
					((THTCount++));;
				'TTH')
					((TTHCount++));;
				'TTT')
					((TTTCount++));;
			esac
			;;
		esac
		F="";
		((index++));
	fi

done

case $Combination in
	1)
		#Getting Percentage of Head and Tail Occurance
		echo "Head Percentage="$(( ($HCount / 2) * 10 ));
		echo "Tail Percentage="$(( ($TCount / 2) * 10 ));
	;;
	2)
		#Getting Percentage of Head and Tail Double Occurance
		echo "HH Percentage="$(( $HHCount * 10 ));
		echo "TT Percentage="$(( $TTCount * 10 ));
		echo "TH Percentage="$(( $THCount * 10 ));
		echo "HT Percentage="$(( $HTCount * 10 ));
	;;
	3)
		#Getting Percentage of Head and Tail Triplet Occurance
		echo "HHH Percentage="$(( $HHHCount * 10 ));
		echo "HHT Percentage="$(( $HHTCount * 10 ));
		echo "HTH Percentage="$(( $HTHCount * 10 ));
		echo "HTT Percentage="$(( $HTTCount * 10 ));
		echo "THH Percentage="$(( $THHCount * 10 ));
		echo "THT Percentage="$(( $THTCount * 10 ));
		echo "TTH Percentage="$(( $TTHCount * 10 ));
		echo "TTT Percentage="$(( $TTTCount * 10 ));
	;;
esac
for key in ${!DoubletDict[@]}
do
	echo $key " : " ${DoubletDict[$key]};
done
}


