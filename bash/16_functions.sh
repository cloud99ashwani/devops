#!/bin/bash
function1() {
    echo "this is function 1"
    echo $1  
    echo $2  
    echo $3  
    echo $4  
    echo $5
}
function1 welcome to devops

global_var='Global'
function2() {
    global_var1='Global_var1'
    local local_var='local_var'
    echo "this is function 1"
    echo $1  
    echo $2  
    echo $3  
    echo $4  
    echo $5
}
function2 welcome
echo $global_var + $global_var1 + $local_var