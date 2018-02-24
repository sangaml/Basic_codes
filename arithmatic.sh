#!/bin/bash
echo -e -n "Enter two numbers [4 4]:"
#-e =  enable interpretation of backslash escapes
#-n = do not output the trailing newline
read A B
#A & B are the variables
C=`expr $A + $B`
D=`expr $A - $B`
E=`expr $A \* $B`
F=`expr $A \ $B`
#expr - evaluate expressions
echo "Addition of two number:$C"
echo "Subtraction of two number:$D"
echo "Multiplication of two number:$E"
echo "Division of two number:$F"

