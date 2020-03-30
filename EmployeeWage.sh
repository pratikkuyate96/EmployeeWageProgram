#!/bin/bash -x

#DECLARE_ARRAY
declare -a dailywage

#CONSTANTS
EMP_RATE_PER_HR=20
IS_FULL_TIME=2
IS_PART_TIME=1
MAX_WORKING_DAYS=20
MAX_WORKING_HOURS=100

#VARIABLE
workingDays=0
workingHours=0

function getWorkingHours() {
	randomCheck=$((RANDOM%2+1))
	case $randomCheck in
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

#To get daily wage of employee
function getDailyWage() {
	wagePerDay=$(($empHours * $EMP_RATE_PER_HR ))
echo $wagePerDay
}

#Calculate wage till the days and hours
function empWageComputation() {
while [[ $workingDays -ne $MAX_WORKING_DAYS && $workingHours -ne $MAX_WORKING_HOURS ]]
do
((workingDays++))
	empHours="$(getWorkingHours)"
	workingHours=$(($workingHours + $empHours))
	dailyWage[$workingDays]="$(getDailyWage)"
done
echo ${dailyWage[@]}
	totalSalary=$(($workingHours * $EMP_RATE_PER_HR))
}

empWageComputation
