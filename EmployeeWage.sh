#!/bin/bash -x

#CONSTANTS
EMPLOYEE_RATE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
WORKING_DAYS=20

for (( number=1; number<=$WORKING_DAYS; number++ ))
do
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
	salary=$(($empHours * $EMPLOYEE_RATE_PER_HOUR))
	totalSalary=$(($totalSalary + $salary))
done
