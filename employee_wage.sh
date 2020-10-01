#!/bin/sh

echo "Welcome to Employee Wage Computation Program on Master Branch"

# check employee attendane
        isPresent=1
	randomCheck=$((1+Random%2))
	if [ $isPresent -eq $randomCheck ]
	then
		echo "Employee is present"
	else
		echo "Employee is absent"
	fi

# Calculate daily employee wage 
	wagePerHour=20
	hoursPerDay=8

	wagePerDay=$(($wagePerHour * $hoursPerDay))
	echo "Fulltime employee daily wage=$wagePerDay "

