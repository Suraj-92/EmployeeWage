#!/bin/bash -x
echo "Welcome to the branch"

isPresent=1
checkAttendance=$((RANDOM%2))

if [ $checkAttendance -eq $isPresent ]
then 
	echo "Employee is present"
else
	echo "Employee is absent"
fi
