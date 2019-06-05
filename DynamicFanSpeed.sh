#!/bin/bash
sudo smc -k F0Mx -w 99z9
sudo smc -k F1Mx -w 99z9
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
        sensorValue=`smc -k ${sensors[0]} -r | awk '{print $3}'`
       	echo $sensorValue
	 #its in C not F
}
function writeMinFanSpeed() {
        base=$1
	speed=$base
        echo $speed
        sudo smc -k F0Mn -w $speed
        sudo smc -k F1Mn -w $speed
}
sensor=`sensorArray | cut -d '.' -f 1`
echo $sensor
#fanSpeed=$((`sensorArray` * 1000))
tooHot=`bc -l <<< "($sensor*1000)"`
echo $tooHot
fanSpeed=`formatCorrectionF $tooHot`
echo $fanSpeed
writeMinFanSpeed $fanSpeed
echo done 
osascript -e "display notification \"Fanspeed set to $fanSpeed; temp $sensor; $tooHot\" with title \"Fanspeed\" sound name \"default\""

