#!/bin/bash
PATH=$PATH=/Library/Frameworks/Python.framework/Versions/3.6/bin:/usr/local/opt/node@8/bin:/usr/local/opt/sqlite/bin:/Users/charlieporth/Downloads//flutter/bin:/usr/local/opt/libiconv/bin:/usr/local/opt/openssl/bin:/usr/local/opt/sqlite/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/bin:/usr/local/sbin:/sbin:/bin:/usr/sbin:/opt/local/bin:/opt/local/sbin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/opt/X11/bin:/Applications/Wireshark.app/Contents/MacOS:/Library/Frameworks/Python.framework/Versions/3.6/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/bin:/sbin/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin:/Users/charlieporth/.local/bin:/opt/metasploit-framework/bin:/opt/X11/bin:/usr/local/opt/make/libexec/gnubin:/usr/libexec:/usr/local/opt/*/libexec:/usr/local/opt/go/libexec/bin
#/usr/local/bin/smc
sudo /usr/local/bin/smc -k F0Mx -w 99z9
sudo /usr/local/bin/smc -k F1Mx -w 99z9
echo "done setting max speed "
#function convertFpToInt() {
function c_f2i() {
        fP=$1
        printf '%.0f\n' $fP
}
function c_i2f() {
         i=$1
         printf '%.3g\n' $i
}
function formatCorrectionF() {
        input=$1
        floatIngPoint=`c_i2f $input`
        h1=`echo $floatIngPoint | cut -d "." -f 1`
        h2=`echo $floatIngPoint | cut -d "." -f 2  | cut -d "+" -f 1`
        h3=`echo $floatIngPoint | cut -d "." -f 2  | cut -d "+" -f 2`
        h3=$(($h3 - 1))
        wholeFloatPoint=$h1$h2$h3
	echo $wholeFloatPoint
}
function sensorArray() {
        declare -a sensors=('FPDc')
        sensorValue=`/usr/local/bin/smc -k ${sensors[0]} -r | awk '{print $3}'`
       	echo $sensorValue
	 #its in C not F
}
function writeMinFanSpeed() {
        base=$1
	speed=$base
        echo $speed
        sudo /usr/local/bin/smc -k F0Mn -w $speed
        sudo /usr/local/bin/smc -k F1Mn -w $speed
}
function run() {
	sensor=`sensorArray | cut -d '.' -f 1`
	echo "sensor  $sensor"
	#fanSpeed=$((`sensorArray` * 1000))
	tooHot=`bc -l <<< "($sensor*1000)"`
	echo "temp $tooHot"
	fanSpeed=`formatCorrectionF $tooHot`
	echo "setting fanspeed $fanSpeed"
	writeMinFanSpeed $fanSpeed
	echo "done "
	echo "sleeping 5min"
#osascript -e "display notification \"Fanspeed set to $fanSpeed; temp $sensor; $tooHot\" with title \"Fanspeed\" sound name \"default\""
}
while true
do 
	run
	sleep 300s
done
