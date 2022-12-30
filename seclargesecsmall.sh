#!/bin/bash
 #to find second largest and second smallest

declare -A nums
while [[ ${#nums[@]} -ne 10 ]];
do 
# generate 10 random 3digit numbers
nums[$(($RANDOM%900+100))]=1;
done
# to store in an array
array=( "${!nums[@]}" )

echo ${array[@]} | awk 'BEGIN{RS=" ";} {print $1}'
echo ""
# sorting in ascending order
echo " Numbers in ascending order are as below"
echo ${array[@]} | awk 'BEGIN{RS=" ";} {print $1}' | sort
echo
echo "second largest is"
printf '%s\n' "${array[@]}" | sort -n | tail -2 | head -1  
printf '%s\n' 
echo "second smallest is"
printf '%s\n' "${array[@]}" | sort -n | head -2 | tail -1
