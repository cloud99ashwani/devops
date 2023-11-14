#!/bin/bash
#Nested if statement  
  
if [ $1 -gt 50 ]  
then  
  echo "Number is greater than 50."  
  
  if (( $1 % 2 == 0 ))  
  then  
    echo "and it is an even number."  
  fi  
fi


read -p "Enter a value:" value  
if [ $value -gt 9 ];  
then  
  if [ $value -lt 11 ];  
  then  
     echo "$value>9, $value<11"  
  else  
    echo "The value you typed is greater than 9."  
  fi  
else echo "The value you typed is not greater than 9."  
fi