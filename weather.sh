
#!/usr/local/bin/parallel --shebang-wrap --pipe /usr/local/bin/bash
#parallel -j8 --semaphore --pipe /usr/local/bin/bash | timeout 3 whereami -f | cut -d "," -f1 | sed -n '2p' 
#loc=$(parallel -j8 --semaphore bash | timeout 3 whereami| cut -d "," -f1 | sed -n '2p')

#if ( -z $(parallel -j8 --semaphore bash | timeout 3 whereami| cut -d "," -f1 | sed -n '2p' | awk '{print $2}') ); then
#loc=$( parallel -j8 --semaphore bash | timeout 3 whereami| cut -d "," -f1 | sed -n '2p' | awk '{print $1 "%20" $2}')
#elif ( -z $( parallel -j8 --semaphore bash | timeout 3 whereami| cut -d "," -f1 | sed -n '2p' | awk '{print $3}')); then
#loc=$(parallel -j8 --semaphore bash | timeout 3 whereami| cut -d "," -f1 | sed -n '2p' | awk '{print $1 "%20" $2 "%20" $3 }')
#else 
#loc=$( parallel -j8 --semaphore bash | timeout 3 whereami| cut -d "," -f1 | sed -n '2p') 
#fi
loc=$( parallel -j32 --xargs --semaphore bash | timeout 3 whereami| cut -d "," -f1 | sed -n '2p') 
if [ -z !$(echo $loc | awk '{print $2}') ]; then
finishiedloc=$( echo $loc | awk '{print $1 "%20" $2}')
elif [ -z !$(echo $loc | awk '{print $3}') ]; then
finishiedloc=$( echo $loc | awk '{print $1 "%20" $2 "%20" $3}')
else 
finishedloc=$loc
fi
echo $finishedloc
#echo $loc
#URL='http://www.accuweather.com/en/de/berlin/10178/weather-forecast/178087'
#URL='https://www.accuweather.com/en/us/$loc/55424/weather-forecast/333902'
#parallel -j8 --semaphore bash |  wget -q -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print $2": "$16", "$12"°" }'| head -1 
#parallel -j8 --semaphore bash | wget -q -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print $2": "$16", "$12"°", $13 }'| head -1 | cut -d '"' -f 1-2 | awk -F'text:"' '{print $1 $2}'
#parallel -j8 --semaphore bash | wget -q -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print $2": "$16", Really "$10", Feels like "$12"°", $13  }' | head -1 | cut -d '"' -f 1-2 | awk -F'text:"' '{print $1 $2}'
parallel -j32 --semaphore --xargs bash | ansiweather -l  $finishedloc -u imperial -a true -s true
exit 0
