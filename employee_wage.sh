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
	#echo "Fulltime employee daily wage=$wagePerDay "

# Add Part Time Employee & Wage

	partTimeHour=4

	partTime_WagePerDay=$(($wagePerHour * $partTimeHour ))
	#echo "PartTime employee daily wage =$partTime_WagePerDay"

#  Solving using Switch Case Statement

case $randomCheck in
1)

	wagePerDay=$(( $wagePerHour * $hoursPerDay))
;;

2)

	partTime_WagePerDay=$(( $wagePerHour * $partTimeHour ))
;;
esac
	#echo "Fulltime employee daily wage=$wagePerDay "
	#echo "PartTime employee daily wage =$partTime_WagePerDay"
# Calculate wage for a Month

workday=20
TFWage=0
TPWage=0
for ((d=1;d<=$workday;d++ ))
do
	var=$(( 1+RANDOM%2 )) 
case $var  in
	1)
	 wagePerDay=$(( $wagePerHour * $hoursPerDay ))
;;
        2)
	 dailyWage=$(( $wagePerHour * $partTimeHour ))
;;
esac
	TFWage=$(($TFWage + $wagePerDay))
	TPWage=$(($TPWage+$dailyWage))
done
#      echo "Total FullTime Wages= $TFWage"
#     echo "Total PertTime Wages= $TPWage"

# Calculating wage for 20 days

 day=1
   hours=0
   FullTime=1
   PartTime=2
   salary=0
   totalSalary=0
while [ $day -le 20 ] || [ $hour -lt 100 ]
do
        var=$(( 1+ RANDOM%2))

        case  $var in
                $FullTime)
                        empName=FullTimeEmployee
                        empHours=$(($hour + $hoursPerDay))
;;

                $PartTime)
                empName=PartTimeEmployee
                 empHours=$(($hour + $partTimeHour))
;;
esac
     salary=$(( $empHours * $wagePerHour ))
 #    echo "salary" fo $empName on the $day is $salary
       totalSalary=$(($totalSalary + $salary ))
      ((day++))

done

#        echo "total salary=$totalSalary"


#  Calculate wages for a month


getTotal_WorkHour_Salary(){

while [ $day -le 20 ] && [ $hour -lt 100 ]
do
        var=$(( 1+ RANDOM%2))

        case  $var in
                $FullTime)
                        empName=FullTimeEmployee
                        empHours=$(($hour + $hoursPerDay));;

                $PartTime)
                empName=PartTimeEmployee
                 empHours=$(($hour + $partTimeHour))
;;
esac
     salary=$(( $empHours * $wagePerHour ))
     #echo "salary" fo $empName on the $day is $salary

        totalSalary=$(($totalSalary + $salary ))
      ((day++))
        ((hour++))
#echo "$salary                                    $totalSalary"
done
      #  echo "total salary= $totalSalary"

}
day=1
hour=0
getTotal_WorkHour_Salary $day $hour
 #echo  "total Salary= $totalSalary"
# echo "total hour=$empHours"

#  Calculate wages for a month

echo  "Salary                                 TotalSalary"
getTotal_WorkHour_Salary1(){

while [ $day -le 20 ] && [ $hour -lt 100 ]
do
        var=$(( 1+ RANDOM%2))

        case  $var in
                $FullTime)
                        empName=FullTimeEmployee
                        empHours=$(($hour + $hoursPerDay));;

                $PartTime)
                empName=PartTimeEmployee
                 empHours=$(($hour + $partTimeHour))
;;
esac
     salary=$(( $empHours * $wagePerHour ))


        totalSalary=$(($totalSalary + $salary ))
      ((day++))
        ((hour++))
echo "$salary                                    $totalSalary"
done


}
day=1
hour=0
getTotal_WorkHour_Salary1 $day $hour
 echo  "total Salary= $totalSalary"
 echo "total hour=$empHours"


echo  "day                             Salary                                 TotalSalary"
getTotal_WorkHour_Salary1(){

while [ $day -le 20 ] && [ $hour -lt 100 ]
do
        var=$(( 1+ RANDOM%2))

        case  $var in
                $FullTime)
                        empName=FullTimeEmployee
                        empHours=$(($hour + $hoursPerDay));;

                $PartTime)
                empName=PartTimeEmployee
                 empHours=$(($hour + $partTimeHour))
;;
esac
     salary=$(( $empHours * $wagePerHour ))
     #echo "salary" fo $empName on the $day is $salary

        totalSalary=$(($totalSalary + $salary ))
      ((day++))
        ((hour++))
echo "$day                               $salary                                    $totalSalary"
done


}
day=1
hour=0
getTotal_WorkHour_Salary1 $day $hour
 echo  "total Salary= $totalSalary"
 echo "total hour=$empHours"


