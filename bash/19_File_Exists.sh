#!/bin/bash
File=19_File_Exists.sh
#if test -f "$File"; then
#if [ -f "$File" ]; then  
if [[ -f "$File" ]]; then  
    echo "$File exist"
fi