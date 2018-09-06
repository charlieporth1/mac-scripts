#bash 
# this is for mac os high 10.13 only I am not responable for any misshapps 
# USE AT YOUR OWN RISK 
# NOTE rm -rf CAN  be undone you can revse it with a little unix know how


sudo rm -rf /cores/*
rm -rf ~/Library/Caches/*
sudo rm -rf /Library/Caches/*
sudo rm -rf /.DocumentRevisions-V100/
sudo rm -rf /System/Library/Caches/*
### only ICE /Library/Updates/ ### make sure you delete the folder inside only
sudo rm -rf /var/db/spindump
sudo rm -rf /var/db/diagnostics
sudo rm -rf /var/db/dyld 
sudo rm -rf ~/.Trash/
sudo rm -rf /Previous\ System/
sudo rm -rf /var/log/asl/*
sudo rm -rf /var/log/install.log
sudo rm -rf /var/db/receipts
sudo rm -rf /var/db/uuidtext

sudo -u charlieporth "brew cleanup"

echo done 
echo system should be clean
df -h

