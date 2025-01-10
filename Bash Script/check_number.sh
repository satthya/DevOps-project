#!/bin/bash

#This script checking number greater or less than 100

user="Kindly provide a number?"

echo $user
read number

if [ $number -gt 100 ]
then
	echo number is greater than 100
else
	echo number is less than 100
fi
