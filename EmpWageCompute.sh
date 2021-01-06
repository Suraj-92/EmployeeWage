#!/bin/bash -x
echo "Welcome to the branch"

isPresent=1
wagePerHrs=20
noOfHrs=8
checkAttendance=$((RANDOM%2))

if [ $checkAttendance -eq $isPresent ]
then 
	echo "Employee is present"
	payment=$(($wagePerHrs*$noOfHrs))
	echo "$payment"
else
	echo "Employee is absent"
	echo "Payment is 0"
fi
