#!/bin/bash
echo -e -n "Enter two Numbers[4 4]:"
read a b
c=`expr $a + $b`
echo " The addition of this two number is $c"
