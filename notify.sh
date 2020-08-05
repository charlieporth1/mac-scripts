#!/bin/bash
echo -e "\a\a \a\a \a\a \a\a \a\a \a\a \a\a \a\a \a\a \a\a \a\a \a\a \a\a"
tput bel
tput bel
tput bel
tput bel
terminal-notifier -title TEST -subtitle "Test automation is DONE" -message "DONE Automation Test" -appIcon https://offload.cdn.studiosoapp.com/wp-content/uploads/2017/09/Studioso-logo-100x100.jpeg
terminal-notifier -title TEST -subtitle "Test automation is DONE" -message "DONE Automation Test" -appIcon https://offload.cdn.studiosoapp.com/wp-content/uploads/2017/09/Studioso-logo-100x100.jpeg
terminal-notifier -title TEST -subtitle "Test automation is DONE" -message "DONE Automation Test" -appIcon https://offload.cdn.studiosoapp.com/wp-content/uploads/2017/09/Studioso-logo-100x100.jpeg
#osascript -e 'tell app "System Events" to display alert "Build Completed" message "The checkout and build have completed."'

if [[ "$@" = 0 ]]; then
  afplay -v 2 /System/Library/Sounds/Blow.aiff &
else
  afplay -v 2 /System/Library/Sounds/Sosumi.aiff &
fi

ssh away bash /mnt/HDD/Programs/notifywithArgs.sh "$SCHEME `date` is done  TESTING TEST LAB firebase is ready to distribute on Firebase" 2>&1 /dev/null
