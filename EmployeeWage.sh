#! /bin/bash -x

#CONSTANTS
EMP_RATE_PER_HR=20
IS_FULL_TIME=2
IS_PART_TIME=1

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
dailyWageCalculate=$(($empHours * $EMP_RATE_PER_HR))
