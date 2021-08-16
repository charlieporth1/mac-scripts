#!/bin/bash
filename=1000-most-common-passwords.txt 
declare -a myArray
myArray=('G', 'B' 'R')
echo "LANGUAGE='us'" > payload.txt

echo "LED G" >> payload.txt
echo "ATTACKMODE HID VID_0X05AC PID_0X021E" >> payload.txt
echo "LED G B R" >> payload.txt
for (( i = 0 ; i < ${#myArray[@]} ; i++))
do
echo $i
echo "LED ${myArray[$i]}" >> payload.txt
done
echo "LED G" >> payload.txt
"
