#!/bin/bash
learn="Start learning DevOps."  

# This is the basic example of 'for loop'.  
for learn in $learn  
do  
echo $learn  
done  
echo "Thank You."  

# This is the basic example to print a series of numbers from 1 to 10.  
for num in {1..10}  
do  
echo $num  
done  
echo "Series of numbers from 1 to 10."

#For Loop to Read a Range with Increment  
for num in {1..10..1}  
do  
echo $num  
done

#For Loop to Read a Range with Decrement 
for num in {10..0..1}  
do  
echo $num  
done  

array=(  "element1" "element 2" .  .  "elementN" )
for i in "${arr[@]}"  
do  
echo $i  
done  

#Array Declaration  
arr=( "Welcome""to""DevOps" )  

for i in "${arr[@]}"  
do  
echo $i  
done  


#For Loop to Read white spaces in String as word separators  
str="Let's start  
learning DevOps"
for i in $str;  
do  
echo "$i"  
done  

#For Loop to Read each line in String as a word  
str="Let's start  
learning   
Devops."  
for i in "$str";  
do  
echo "$i"  
done 

#For Loop to Read Three-expression  
for ((i=1; i<=10; i++))  
do  
echo "$i"  
done  

#Table of 2 
for table in {2..100..2}  
do  
echo $table  
if [ $table == 20 ]; then  
break  
fi  
done  

#Numbers from 1 to 20, ignoring from 6 to 15 using continue statement"  
for ((i=1; i<=20; i++));  
do  
if [[ $i -gt 5 && $i -lt 16 ]];  
then  
continue  
fi  
echo $i  
done  



