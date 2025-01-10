#!/bin/bash

#This script will record disk memory using free command


touch /tmp/system_memory

free >> /tmp/system_memory
date
echo --------------------------------------------------------
cat /tmp/system_memory
