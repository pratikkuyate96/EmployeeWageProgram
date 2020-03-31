#! /bin/bash -x

#CONSTANTS
EMPLOYEE_RATE_PER_HOUR=20

isPresent=1
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is present"
	empHours=8
else
	echo "Employee is absent"
	empHours=0
fi
dailyWageCalculate=$(($empHours * $EMPLOYEE_RATE_PER_HOUR))
