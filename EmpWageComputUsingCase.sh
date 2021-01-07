#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
numWorkingDays=20
totalSalary=0
maxHrsInMonth=4

totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
((totalWorkingDays++))
empCheck=$((RANDOM%3))
case $empCheck in
	$isFullTime)
			empHrs=8;;
	
	$isPartTime)
			empHrs=4;;
	
	*)
			empHrs=0;;
esac
salary=$(($empHrs*$empRatePerHr))
totalSalary=$(($totalSalary+$salary))
totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$[($totalEmpHr*$empRatePerHr)]
