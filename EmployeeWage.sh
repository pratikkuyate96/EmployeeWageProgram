#! /bin/bash -x

#CONSTANTS
EMP_RATE_PER_HR=20

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
dailyWageCalculate=$(($empHours * $EMP_RATE_PER_HR))
