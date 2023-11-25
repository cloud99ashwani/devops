#!/bin/bash
#Script to check whether a variable is set or not using -v option
#A: variable is set.
A=100
#A: variable is set.  
if [[ -z ${A} ]];  
then  
echo "Variable having name 'A' is not set."  
else  
echo "Variable having name 'A' is already set."  
fi  

#B: variable is not set  
if [[ -z ${B} ]];  
then  
echo "Variable having name 'B' is not set."  
else  
echo "Variable having name 'B' is already set."  
fi