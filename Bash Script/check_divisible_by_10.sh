#!/bin/bash

# This script help to check the number is divisible by 10


number="Kindly provide a number"
echo $number
read number1

if [ $((number1%10)) -eq 0 ]
then
	echo Devisible by 10
else
	echo Not divisible by 10
fi
