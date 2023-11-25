#!/bin/bash
#Create output file, override if already present  
output=output_file.txt  
#Write data to a file  
ls > $output
#Printing the content of the file 
cat $output

echo "Both (ls > $output and cat $output) operation in one line "
#Write data to a file and #Printing the content of the file 
#ls | tee $output