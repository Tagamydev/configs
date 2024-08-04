#!/bin/bash

DIF=$(diff <(hostnamectl | grep Chassis | awk '{print $2}') <(echo "laptop") | wc -l)

if [ $DIF -eq 0 ]
then
	echo "laptop"
else
	echo "desktop"
fi
