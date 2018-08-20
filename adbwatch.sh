 adb connect 192.168.1.14 && adb forward tcp:4444 localabstract:/adb-hub &&  
adb connect localhost:4444
