#!/bin/bash -x
echo "Welcome to the branch"

isPresent=1
isPartTime=2
ratePerHrs=20
noOfHrs=8
noOfPartTimeHrs=4
checkAttendance=$((RANDOM%3))

if [ $checkAttendance -eq $isPresent ]
then 
	echo "Employee is present"
	payment=$(($ratePerHrs*$noOfHrs))
	echo "$payment"
elif [ $isPartTime -eq $checkAttendance ]
then
	echo "Employee is part time"
	payment=$(($ratePerHrs*$noOfPartTimeHrs))
	echo "$payment"
else
	echo "Employee is absent"
	echo "Payment is 0"
fi
