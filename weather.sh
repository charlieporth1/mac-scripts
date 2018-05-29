
#!/usr/local/bin/parallel --shebang-wrap --pipe /usr/local/bin/bash
#parallel -j8 --semaphore --pipe /usr/local/bin/bash | timeout 3 whereami -f | cut -d "," -f1 | sed -n '2p' 
loc=$(parallel -j8 --semaphore bash | timeout 3 whereami| cut -d "," -f1 | sed -n '2p')
#echo $loc
#URL='http://www.accuweather.com/en/de/berlin/10178/weather-forecast/178087'
URL='https://www.accuweather.com/en/us/$loc/55424/weather-forecast/333902'
parallel -j8 --semaphore bash |  wget -q -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print $2": "$16", "$12"°" }'| head -1 
exit
