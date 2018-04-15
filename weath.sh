#whereami -f human | cut -d "," -f1
#loc=$(whereami -f human | cut -d "," -f1)
whereami 

curl wttr.in/$loc 
