#!/bin/bash
#DATE:-2-3-18
clear
RCol='\033[0m'
Red='\033[0;31m'
echo -e "
Press [1] for Addition:-
Press [2] for Substraction:-
Press [3] for Multiplication:-
Press [4] for Division:-"
read no

echo -n -e "Enter a two numbers:-"

read a b
case $no in 
1) echo "you select Addition"; 
	add=`expr $a + $b`
	echo 
	echo -e "${Red} Addition of two Numbers is $add ${RCol}"
	;;
2) echo "you Select Substraction"
	sub=`expr $a - $b`
	echo -e "${Red} Substraction of two Numbers is $sub ${RCol}"
	;;
3) echo "you select Multiplication"; 
	mul=`expr $a \* $b`
	echo -e "${Red}Multiplication of two Numbers is $mul ${RCol}"	
	;;

4) echo "you select Division"; 
	div=`expr $a / $b`
	echo -e "${Red}Division of two Numbers is $div ${RCol}"	
	;;
esac

