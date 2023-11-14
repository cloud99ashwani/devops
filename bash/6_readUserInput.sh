#!/bin/bash 
# bash ./6_readUserInput.sh
# Read the user input
# first
# first second third
# hidden
# first
# welcome
# first second 
echo "Enter the user name: "  
read first_name
echo "The Current User Name is $first_name"  
echo  
echo "Enter other users'names: "  
read name1 name2 name3  
echo "$name1, $name2, $name3 are the other users."
# predefined read variable name - REPLY
echo "Enter name : "
read
echo "Name : $REPLY"  
# read at same line
read -p "Enter the user name: " first_name1
echo "The Current User Name is $first_name1"
# read value (Slient mode)
read -sp "Enter password : " pass_var  
echo "password : "  $pass_var  
# Reading multiple inputs using an array  
echo "Enter names : "  
read -a names
echo "The entered names are : ${names[0]}, ${names[1]}."