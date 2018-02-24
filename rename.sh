#!/bin/bash
echo -e -n "Enter a old file Name:"
read A
echo -e -n "Enter a New file Name:"
read B
mv $A $B
echo "New file name is:$B"
