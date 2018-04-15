gem list --local | grep cocoapods | awk '{print $1}' | xargs sudo gem uninstall
sudo rm -rf ~/.cocoapods/
