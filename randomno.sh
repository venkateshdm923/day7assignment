#!/bin/bash 
 #to find second largest and second smallest
s1=999999 
s2=999999 
for i in $(seq 1 10) 
do 
# generate 10 random 3digit numbers
r=$(( $RANDOM % 900 + 100 )) #3 digit start from 100 so adding 100
echo $r 


if [ $s1 -gt $r ] 
then 
	s2=$s1 
	s1=$r 
elif [ \( $s2 -gt $r \) -a \( $s1 -ne $r \) ] 
then 
	s2=$r 
fi 
done 

echo "Smallest is $s1" 

echo "Second smallest is $s2"
