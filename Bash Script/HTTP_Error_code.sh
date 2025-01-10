#!/bin/bash
#
#Create a shell script to print the HTTP error code of guvi.in & print, the success/failure message based on the error code response

HTTP_CODE=`curl -I -s http://guvi.in` 
HTTP_CODE1=`echo "$HTTP_CODE" | grep HTTP | awk '{print $2}'`

echo "$HTTP_CODE1"


if [ $HTTP_CODE1 -ge 200 ]  && [ $HTTP_CODE1 -le 206 ]
then
	echo "Success"
elif [ $HTTP_CODE1 -ge 400 ] && [ $HTTP_CODE1 -le 511 ]
then
	echo "Failure"
else
	echo "Redirectiton"
fi
