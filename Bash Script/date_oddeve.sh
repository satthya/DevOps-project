#!/bin/bash

# This script will print date and notify if its odd or even number

Date=`date +%d`

if [ $((Date % 2)) -eq 0 ]
then
	echo Even
else
	echo Odd
fi
