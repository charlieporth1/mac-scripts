#!/bin/bash
a="$1"
sett=$(echo -e "${a,,}"| xargs)
echo "setting: $sett"
if [[ "$sett" == "mod" ]]; then
	sudo pmset -a acwake 1
	sudo pmset -a displaysleep 30
	sudo pmset -a highstandbythreshold 65 
	sudo pmset -a powernap 1
	sudo pmset -a hibernatemode 3
	sudo pmset -a ttyskeepawake 0
	sudo pmset -a proximitywake 1
	sudo pmset -a standby 1
	sudo pmset -a standbydelaylow 180
	sudo pmset -a autopoweroffdelay 10
	sudo pmset -a standbydelayhigh 600
	sudo pmset -a autopoweroff 1
	sudo pmset -a lidwake 1
	sudo pmset -a disksleep 5
	sudo pmset -a halfdim 1 
	sudo pmset -a tcpkeepalive 1
	sudo pmset -a sleep 1
	echo "done setting power settings: $sett"
elif [[ "$sett" = "cons" ]] || [[ "$sett" = "save" ]]; then
	sudo pmset -a acwake 0
	sudo pmset -a displaysleep 3
	sudo pmset -a highstandbythreshold 75
	sudo pmset -a powernap 0
	sudo pmset -a hibernatemode 3
	sudo pmset -a ttyskeepawake 0
	sudo pmset -a proximitywake 0
	sudo pmset -a standby 1
	sudo pmset -a standbydelaylow 180
	sudo pmset -a autopoweroffdelay 10
	sudo pmset -a standbydelayhigh 300
	sudo pmset -a autopoweroff 1
	sudo pmset -a lidwake 1
	sudo pmset -a disksleep 2
	sudo pmset -a halfdim 1 
	sudo pmset -a tcpkeepalive 0
	sudo pmset -a sleep 1
	echo "done setting power settings: $sett"

elif [[ "$sett" = "high" ]]; then
	sudo pmset -a acwake 1
	sudo pmset -a displaysleep 0
	sudo pmset -a highstandbythreshold 65 
	sudo pmset -a powernap 1
	sudo pmset -a hibernatemode 0
	sudo pmset -a ttyskeepawake 1
	sudo pmset -a proximitywake 1
	sudo pmset -a standby 1
	sudo pmset -a standbydelaylow 1200
	sudo pmset -a autopoweroffdelay 10
	sudo pmset -a standbydelayhigh 4500
	sudo pmset -a autopoweroff 1
	sudo pmset -a lidwake 1
	sudo pmset -a disksleep 0
	sudo pmset -a halfdim 1 
	sudo pmset -a tcpkeepalive 1
	sudo pmset -a sleep 1
	echo "done setting power settings: $sett"

elif [[ "$sett" = "default"  ]]; then
	sudo pmset -a acwake 0
	sudo pmset -a displaysleep 15
	sudo pmset -a highstandbythreshold 50 
	sudo pmset -a powernap 1
	sudo pmset -a hibernatemode 3
	sudo pmset -a ttyskeepawake 1
	sudo pmset -a proximitywake 1
	sudo pmset -a standby 1
	sudo pmset -a standbydelaylow 600
	sudo pmset -a autopoweroffdelay 3
	sudo pmset -a standbydelayhigh 4500
	sudo pmset -a autopoweroff 1
	sudo pmset -a lidwake 1
	sudo pmset -a disksleep 5
	sudo pmset -a halfdim 1 
	sudo pmset -a tcpkeepalive 1
	sudo pmset -a sleep 1
	echo "done setting power settings: $sett"


else 
	echo -e "PowerSaving settings OSX CLI:\n"
	echo -e "\t Default settings: $1 == default"
	echo -e "\t Conservative/Battery Savings settings: $1 == cons || save"
	echo -e "\t High Power settings: $1 == high"
	echo -e "\t Moderate settings: $1 == mod"
	echo -e "\n\t e.g. powersave.sh high"
fi
