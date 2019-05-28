#!/bin/bash
echo > /etc/resolv.conf "nameserver 1.1.1.1"
sudo apt install -y i2c-tools ntpdate
sudo i2cdetect -y 1
sudo echo "echo > /etc/resolv.conf \"nameserver 1.1.1.1\"" > /etc/rc.local
sudo echo "sudo modprobe rtc-pcf8523" >> /etc/rc.local
sudo echo "sudo modprobe i2c-dev" >> /etc/rc.local
sudo echo "ntpdate -u ntp.your.org " >> /etc/rc.locals
sudo echo "sudo hwclock -D -r" >> /etc/rc.local
sudo echo "echo \"Start: $(date)\"" >> /etc/rc.local
sudo echo "exit 0" >> /etc/rc.local
sudo apt-get -y remove fake-hwclock
sudo update-rc.d -f fake-hwclock remove
sudo systemctl disable fake-hwclock
sudo ntpdate -u ntp.your.org
sudo timedatectl set-ntp on


