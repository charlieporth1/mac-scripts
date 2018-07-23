for USER_TEMPLATE in "/System/Library/User Template"/*
	do
	/usr/bin/defaults write
"${USER_TEMPLATE}"/Library/Preferences/com.apple.driver.AppleHIDMouse Button2 
-int 2
    /usr/bin/defaults write
"${USER_TEMPLATE}"/Library/Preferences/com.apple.driver.AppleBluetoothMultitouch.mouse 
MouseButtonMode -string TwoButton
    /usr/bin/defaults write
"${USER_TEMPLATE}"/Library/Preferences/com.apple.driver.AppleBluetoothMultitouch.trackpad 
TrackpadRightClick -int 1
done
