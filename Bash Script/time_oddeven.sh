#!/bin/bash

time=`date +%H`

if [ $((time%2)) -eq 0 ]
then
echo even
else
echo odd
fi
