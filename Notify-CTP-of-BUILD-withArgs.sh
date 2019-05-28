#!/bin/bash
#ssh -p 2222  bash /home/*/Programs/buildcomplete.sh
. /usr/bin/cred.sh
export arg1=$1 #ussaly project
export arg2=$2 #usaly success or failure
export arg3=$3 # usally acrhive or build
export arg4=$4 
export arg5=$5 
sudo -u charlieporth " ssh away bash /mnt/HDD/Programs/notifywithArgs.sh $arg1 $arg2 $arg3 $arg4 $arg5"
