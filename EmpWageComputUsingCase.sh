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

function totalDailyWage ()
{
	local empHrs=$1
	wage=$(($empHrs*$empRatePerHr))
	echo $wage
}

while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
((totalWorkingDays++))
empHrs="$( getWorkingHrs $((RANDOM%3)) )"
DailyWage=["$totalWorkingDays"]="$( totalDailyWage $empHrs )"
#salary=$(($empHrs*$empRatePerHr))
#totalSalary=$(($totalSalary+$salary))
totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$[($totalEmpHr*$empRatePerHr)]
echo "daily Wage" ${DailyWage[@]}
echo "All key " ${!DailyWage[@]}
