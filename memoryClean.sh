#!/bin/bash
export totalM=$(sysctl hw.memsize)
export memFree=$( /Users/charlieporth/Programs/memfree.py | grep 'Free Memory' |  awk '{print $3}')
export memInAct=$( /Users/charlieporth/Programs/memfree.py | grep 'Inactive Memory' |  awk '{print $3}')
export perLimit=70
export limitFree=64
export limitInAct=1024
if [[ $memFree < $limit ]];then  
#if [ $(( /$totalM)) >  $perLimit ];then  
echo "to much mem being used: mem free $memFree"
	launchctl unload -w ~/Library/LaunchAgents/OSXRamDisk.plist
else
echo "fine $memFree $limitFree"
fi

if [[ $memInAct < $limitInAct ]];then  
#if [ $(( /$totalM)) >  $perLimit ];then  
echo "to much mem being used: mem free $memnInAct"
	launchctl unload -w ~/Library/LaunchAgents/OSXRamDisk.plist
else
echo "fine $memInAct $limitInAct"
fi
