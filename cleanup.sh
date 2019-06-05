#!/bin/bash
# this is for mac os high 10.13 only I am not responable for any misshapps 
# USE AT YOUR OWN RISK 
# NOTE rm -rf CAN  be undone you can revse it with a little unix know how


sudo rm -rf /cores/*
sudo rm -rf /Users/*/Library/Caches/*
sudo rm -rf ~/Library/Caches/*
sudo rm -rf /Library/Caches/*
sudo rm -rf /.DocumentRevisions-V100/
sudo rm -rf /System/Library/Caches/*
### only ICE /Library/Updates/ ### make sure you delete the folder inside only
sudo rm -rf /var/db/spindump
sudo rm -rf /var/db/diagnostics
sudo rm -rf /var/db/dyld/*
sudo rm -rf ~/.Trash/
sudo rm -rf /Users/*/.Trash/
sudo rm -rf /Previous\ System/
#sudo rm -rf /var/log/asl/*
sudo rm -rf /var/log/install.log
sudo rm -rf /var/db/receipts/*
sudo rm -rf /var/db/uuidtext/*
sudo rm -rf /.fseventsd/
#sudo rm -rf /var/folder/*
sudo rm -rf /tmp/*
sudo rm -rf /Users/*/.rustup/
sudo rm -rf /Users/*/.opam 
sudo rm -rf ~/.cargo/registry/cache/
sudo rm -rf /Users/*/.cargo/registry/cache/
sudo rm -rf ~/.cargo/git/checkouts/
sudo rm -rf /Users/*/.cargo/git/checkouts/
sudo rm -rf ~/.ethash-minergate/
sudo rm -rf /Users/*/.ethash-minergate/
sudo rm -rf ~/.electron/
sudo rm -rf /Users/*/.electron/
sudo rm -rf ~/.meteor 
sudo rm -rf /Users/*/.meteor 
sudo rm -rf /Users/*/Library/Developer/XcodeDerivedData/*
sudo rm -rf /Users/*/Library/Developer/Archives/*
sudo rm -rf /Users/*/Library/Developer/Archives/*
sudo rm -rf /Users/*/Library/Developer/Products/*
sudo rm -rf ~/Library/Logs/CoreSimulator/*
sudo rm -rf /Users/*/Library/CoreSimulator/*
sudo rm -rf ~/Library/Application\ Support/Google\ Play\ Music\ Desktop\ Player/Cache/*
sudo rm -rf /Users/*/Library/Application\ Support/Google\ Play\ Music\ Desktop\ Player/Cache/*
sudo rm -rf ~/Library/Developer/Xcode/iOS\ DeviceSupport/*/Symbols/System/Library/Caches
sudo rm -rf /Users/*/Library/Developer/Xcode/iOS\ DeviceSupport/*/Symbols/System/Library/Caches
sudo rm -rf ~/Library/Group\ Containers/*.group.com.apple.configurator/Library/Caches/*
sudo rm -rf ~/Library/Containers/com.tinyspeck.slackmacgap/Data/Library/Application\  Support/Slack/logs/*
sudo rm -rf /Users/*/Library/Group\ Containers/*.group.com.apple.configurator/Library/Caches/*
sudo rm -rf /Users/*/Library/Containers/com.tinyspeck.slackmacgap/Data/Library/Application\  Support/Slack/logs/*
sudo rm -rf /Users/*/Library/Containers/com.tinyspeck.slackmacgap/Data/Library/Application\ Support/Slack/logs/*
sudo rm -rf ~/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/*
sudo rm -rf /Users/*/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/*
sudo rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 1/Application\ Cache/Cache/*
sudo rm -rf /Users/*/Library/Application\ Support/Google/Chrome/Profile\ 1/Application\ Cache/Cache/*
sudo rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 1/Application\ Cache/*
sudo rm -rf /Users/*/Library/Application\ Support/Google/Chrome/Profile\ 1/Application\ Cache/*
sudo rm -rf /var/log/DiagnosticMessages/*
sudo rm -rf /var/log/asl/*
sudo rm -rf ~/Library/Application\ Support/iStat\ Menus/databases/*
sudo rm -rf /Users/*/Library/Application\ Support/iStat\ Menus/databases/*
sudo rm -rf ~/Library/Application\ Support/minecraft
sudo rm -rf /Users/*/Library/Application\ Support/minecraft
sudo rm -rf ~/Library/Application\ Support/CloudDocs
sudo rm -rf /Users/*/Library/Application\ Support/CloudDocs
sudo rm -rf ~/Library/Containers/com.apple.Safari/Data/Library/Caches/*
sudo rm -rf /Users/*/Library/Containers/com.apple.Safari/Data/Library/Caches/*
sudo rm -rf ~/.npm/_cacache/*
sudo rm -rf /Users/*/.npm/_cacache/*
sudo rm -rf ~/.npm/_cacache/*
sudo rm -rf ~/.android/*
sudo rm -rf /Users/*/.android/*
sudo rm -rf ~/.itmstransporter/*
sudo rm -rf /Users/*/.itmstransporter/*
sudo rm -rf ~/.cargo/registry/index/*
sudo rm -rf /Users/.cargo/registry/index/*

#sudo rm -rf /var/folders/*
#sudo chmod a+x -R /var/folders
#sudo chown charlieporth -R  /var/folders/
#sudo chown charlieporth -R  /var/folders/*
#sudo -u charlieporth "/usr/local/bin/brew cleanup"
echo done 
echo system should be clean
