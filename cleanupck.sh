#!/bin/bash
# this is for mac os high 10.13 only I am not responable for any misshapps 
# USE AT YOUR OWN RISK 
# NOTE rm -rf CAN  be undone you can revse it with a little unix know how
declare -a dirsArray
dirsArray=( '/cores/*' '/Users/*/Library/Caches/*' '~/Library/Caches/*' \
'/Library/Caches/*' '/.DocumentRevisions-V100/' '/var/db/spindump' \
'/var/db/diagnostics' '/System/Library/Caches/*' '/var/db/diagnostics' \
'/var/db/dyld/*' '/.Trash/' '/Users/*/.Trash/' '/Previous\ System/' \
'/var/log/asl/*' '/var/log/install.log' '/var/db/receipts/*' \
'var/db/uuidtext/*' '/.fseventsd/' '/tmp/*' '/Users/*/.rustup/' \
'/Users/*/.opam/' '~/.cargo/registry/cache/' \
'/Users/*/.cargo/registry/cache/' '~/.cargo/git/checkouts/' \
'/Users/*/.cargo/git/checkouts/' \
'~/.ethash-minergate/' '/Users/*/.ethash-minergate/' \
'/Users/*/.electron/' '~/.meteor' '/Users/*/.meteor/' \
'/Users/*/Library/Developer/XcodeDerivedData/*' \
'/Users/*/Library/Developer/Archives/*' \
'/Users/*/Library/Developer/Products/*' )
for ((i=0; i < ${#dirsArray[@]}; i++))
do 
### only ICE /Library/Updates/ ### make sure you delete the folder inside only
if [ -f ${dirsArray[$i]} ]; then
echo "dir/files exist: ${dirsArray[$i]}"
echo "removing: ${dirsArray[$i]}"
sudo rm -rf ${dirsArray[$i]}
else 
echo "dir/files do not exist: ${dirsArray[$i]}"
fi 
done
echo "doing special files/folders/functions"
#sudo rm -rf /var/folders/*
#sudo chmod a+x -R /var/folders
#sudo chown charlieporth -R  /var/folders/
#sudo chown charlieporth -R  /var/folders/*
declare -a keywordsArray
keywordsArray=('Xcode' 'Teacher' 'Studioso' 'Student' )
for ((c=0; c < ${#keywordsArray[@]}; c++))
do 
#OSX
#find . -type f -print0 | xargs -0 sed -i '' /KeyWord/d
#GNU 
#find . -type f -print0 | xargs -0 sed -i /KeyWord/d
#this finds dirs f finds dir 
sudo find /var/folders -type d -print0 | xargs -0 sed -i '$keywordsArray[$c]}' //d
done

sudo -u charlieporth "brew cleanup"
echo "done" 
echo system should be clean
#sudo rm -rf /var/folder/*
