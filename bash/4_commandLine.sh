#!/bin/bash
# bash ./4_commandLine.sh Guest User
echo "Command Name: " $0
echo "Hello World" $1 $2
echo "Toal no of arg" $#
echo "Join All Argument- " $*
echo "backgroud job Not display in Front" &
echo "shows ID of the last background job." $!
echo "recent execution process" $$
# only read arguments
collection_array_type=("$@")
echo "Arguments- " ${collection_array_type[0]}  ${collection_array_type[1]}