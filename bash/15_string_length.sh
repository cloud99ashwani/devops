#!/bin/bash
#Bash program to find the length of a string  

str="Welcome to DevOps"  
length=${#str}  
echo "Length of '$str' is $length"
length=`expr "$str" : '.*'`
echo "Length of '$str' is $length"  
length=`echo $str | wc -c`  
echo "Length of '$str' is $length"  
length=`echo $str |awk '{print length}'`  
echo "Length of '$str' is $length"