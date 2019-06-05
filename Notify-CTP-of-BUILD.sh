#!/bin/bash
#ssh -p 2222  bash /home/*/Programs/buildcomplete.sh
. /usr/bin/cred.sh
sudo -u charlieporth  ssh away bash /mnt/HDD/Programs/buildcomplete.sh
export suc="Successfully finished processing the build"
sleep 300
echo $ITCP | sudo watchbuild -a com.studiosoapp.student -u $ITCU -k 37GBSX4J39
export cmdBuild=$(echo $ITCP  | sudo watchbuild -a com.studiosoapp.student -u $ITCU -k 37GBSX4J39)
export cmdBuildC=$(echo $ITCP  | sudo watchbuild -a com.studiosoapp.student -u $ITCU -k 37GBSX4J39 | grep -o  "$suc")
buildcheckt
buildcheck
find /Users/*h/Library/Developer/Xcode/ -name "*.dSYM" | xargs -I \{\} Pods/Fabric/upload-symbols -gsp ./Studioso\ Student/Student\ App/Core/GoogleService-Info.plist -p ios \{\}
if [ ! -z cmdBuildC ]; then 
osascript -e "display notification \"Successfully finished processing the build! Check Appstore Connect!\" with title \"Check AppStore Connect!\" sound name \"default\""
fi
