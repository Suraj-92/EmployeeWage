#!/bin/bash -x
echo "Welcome to the branch"

isPresent=1
isPartTime=2
wagePerHrs=20
noOfHrs=8
noOfPartTimeHrs=4
checkAttendance=$((RANDOM%3))

if [ $checkAttendance -eq $isPresent ]
then 
	echo "Employee is present"
	payment=$(($wagePerHrs*$noOfHrs))
	echo "$payment"
elif [ $isPartTime -eq $checkAttendance ]
then
	echo "Employee is part time"
	payment=$(($wagePerHrs*$noOfPartTimeHrs))
	echo "$payment"
else
	echo "Employee is absent"
	echo "Payment is 0"
fi
