defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.menuextra.battery ShowTime -string "YES"
defaults write com.apple.dock "expose-group-by-app" -bool true
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write NSGlobalDomain AppleFontSmoothing -int 2
defaults write com.apple.BezelServices kDimTime -int 300
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
sudo defaults write /Library/Preferences/.GlobalPreferences.plist _HIEnableThemeSwitchHotKey -bool true
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.dock "expose-group-by-app" -bool true
sudo chflags nohidden /opt
sudo chflags nohidden /usr
sudo chflags nohidden /etc
sudo chflags nohidden /Library
sudo chflags nohidden ~/Library 
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder AppleShowAllFiles TRUE
sudo defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
# Always show scrollbars
# defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
# Finder: disable window animations and Get Info animations
# defaults write com.apple.finder DisableAllAnimations -bool true

# Deactivate dynamic paging
# http://workstuff.tumblr.com/post/20464780085/something-is-deeply-broken-in-os-x-memory-management
#sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.dynamic_pager.plist

# Reactivate dynamic paging
# sudo launchctl load -wF /System/Library/LaunchDaemons/com.apple.dynamic_pager.plist



# Trackpad: map bottom right corner to right-click
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
# defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
# defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true






# Disable opening and closing window animations
# defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
#echo "Speed up wake from sleep to 24 hours from an hour"
# http://www.cultofmac.com/221392/quick-hack-speeds-up-retina-macbooks-wake-from-sleep-os-x-tips/

#pmset -a standbydelay 86400

defaults write com.apple.LaunchServices LSQuarantine -bool NO
defaults write com.apple.DiskUtility advanced-image-options -bool true
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
echo ""
echo "Add ability to toggle between Light and Dark mode in Yosemite using ctrl+opt+cmd+t? (y/n)"
# sudo defaults write /Library/Preferences/.GlobalPreferences.plist _HIEnableThemeSwitchHotKey -bool true

sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
sudo pmset -a sms 0
echo ""
echo "Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

defaults write com.apple.finder DisableAllAnimations -bool true

defaults write com.apple.dock persistent-others -array-add '{"tile-data" = {"list-type" = 1;}; "tile-type" = "recents-tile";}'; killall Dock
#defaults write com.apple.dock static-only -bool TRUE; killall Dock

#defaults write com.apple.dock desktop-picture-show-debug-text -bool yes ; killall Dock
defaults write -g NSScrollViewRubberbanding -int 0
sudo defaults write /System/Library/LaunchDaemons/com.apple.backupd-auto StartInterval -int 1800

defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes 1

#sudo sysctl debug.lowpri_throttle_enabled=0
#sudo sysctl debug.lowpri_throttle_enabled=1

#defaults write com.apple.dock springboard-columns -int 4
#defaults write com.apple.dock springboard-rows -int 7
#defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock
#defaults delete com.apple.dock springboard-rows
#defaults delete com.apple.dock springboard-columns
defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock

defaults write com.apple.mail minSizeKB 10
#defaults write com.apple.mail minSizeKB 20000
defaults write com.apple.mail maxSizeKB 999999
defaults write NSGlobalDomain NSAppSleepDisabled -bool NO
#defaults delete NSGlobalDomain NSAppSleepDisabled
#defaults write com.apple.loginwindow PowerButtonSleepsSystem -bool no
#defaults write com.apple.loginwindow PowerButtonSleepsSystem -bool yes
#defaults write com.apple.notificationcenterui bannerTime SECONDS
#defaults delete com.apple.notificationcenterui bannerTime

defaults write NSGlobalDomain NSWindowResizeTime .1
# defaults write NSGlobalDomain NSWindowResizeTime .5
#defaults write com.apple.dock springboard-hide-duration -int 0
#defaults write com.apple.dock springboard-show-duration -int 0
#defaults delete com.apple.dock springboard-show-duration
#defaults delete com.apple.dock springboard-hide-duration
#killall Dock


