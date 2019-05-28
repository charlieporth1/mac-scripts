 arp -a
interface="en0"
 arp -a | awk '{print $4}' #> maclist.txt
array=($( arp -a | awk '{print $4}'))
for (( c = 0; c <= ${#array[@]}; c++ ))
do
echo "array size " ${#array[@]}
echo "on number " $c
echo "on mac " ${array[$c+1]}
echo setting mac address
if [ -n "$(echo ${array[$c]} | grep -o '[0-9]:')" ];then
export final="$(echo 0${array[$c]})"
else 
export final=${array[$c]}
fi
echo "on mac final" $final
sudo spoof-mac  set  $final $interface
echo "sleeping for 10s in order to reconnect to wifi"
sleep 20s
echo "mac address set trying test 1"
if [[ " $(host otih-oith.us.to | awk '{print $4}') =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$" ]]
then 
echo test 1 is a success
if [[ "$(ping otih-oith.us.to |  awk '/icmp_seq=5/ {print $4}') =~  ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+\:+$ " ]] 
then
echo test 2 is a success 
exit 1
else 
echo failed trying the next mac 
fi
else 
echo failed trying the next mac 
fi

done 

exit 1
