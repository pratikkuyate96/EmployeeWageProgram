#!/bin/bash

#CONSTANTS
EMPLOYEE_RATE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
MAX_WORKING_DAYS=20
MAX_WORKING_HOURS=100

#VARIABLE
workingDays=0
workingHours=0

function getWorkingHours() {
	case $1 in
		$IS_FULL_TIME)
			empHours=8
			;;
		$IS_PART_TIME)
			empHours=4
			;;
		*)
			empHours=0
			;;
	esac
	echo $empHours
}

while [[ $workingDays -le $MAX_WORKING_DAYS && $workingHours -le $MAX_WORKING_HOURS ]]
do
	((workingDays++))
	empHours="$(getWorkingHours $((RANDOM%3)) )"
	workingHours=$(($workingHours + $empHours))
done

totalSalary=$(($workingHours * $EMPLOYEE_RATE_PER_HOUR))
echo $workingHours $totalSalary
