#!/bin/bash
#Script to check whether two strings are equal.  
  
str1="WelcometoDevOps."  
str2="DevOps"  
#if [[ $str1 != $str2 ]];
#if [ $str1 = $str2 ];  
#if [ $str1 \> $str2 ];  
#if [ $str1 \< $str2 ];  
# check if the string is zero or greater than zero.
#if [ -n $str1 ]; 
# check if the string is empty or equal to zero. str1="" 
if [ -z $str1 ];
then  
echo "Both the strings are equal."  
else  
echo "Strings are not equal."  
fi 