#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
numWorkingDays=20
totalSalary=0
maxHrsInMonth=4

totalEmpHr=0
totalWorkingDays=0

function getWorkingHrs ()
{
	case $1 in
   $isFullTime)
         empHrs=8;;

   $isPartTime)
         empHrs=4;;

   *)
         empHrs=0;;
esac
echo $empHrs

}
while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
((totalWorkingDays++))
empHrs="$( getWorkingHrs $((RANDOM%3)) )"

salary=$(($empHrs*$empRatePerHr))
totalSalary=$(($totalSalary+$salary))
totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$[($totalEmpHr*$empRatePerHr)]
