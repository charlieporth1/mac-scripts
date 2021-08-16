#!/bin/bash
export counter="0"
export not_connected='1'
export unable='echo unable'
#export testconnect="telnet otih-oith.us.to 2222 | awk '{print $21}'"
alias testconnect="telnet otih-oith.us.to 2222 | awk '{print $21}'"
while(true) do
telnet otih-oith.us.to 2222 | awk '{print $21}'  
if ( echo$(telnet otih-oith.us.to 2217 | awk '{print $21}')   != echo $unable ); then
#telnet otih-oith.us.to 2222 | awk '{print $21}'
tput bel  
else 
echo $counter++
echo test failed host isnt alive cheching again check "#"$counter
fi

done 

