#! /bin/bash -x

#CONSTANTS
EMP_RATE_PER_HR=20
IS_FULL_TIME=2
IS_PART_TIME=1

randomCheck=$((RANDOM%2+1))
if [ $randomCheck -eq $IS_FULL_TIME ]
then
	empHours=8
elif [ $randomCheck -eq $IS_PART_TIME ]
then
	empHours=4
else
	empHours=0
fi
dailyWageCalculate=$(($empHours * $EMP_RATE_PER_HR))
