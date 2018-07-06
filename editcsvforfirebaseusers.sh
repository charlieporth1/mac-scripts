cat ./change-06-02.csv | grep -v "...,...,...,...,...,...,...,..." > 
change-06-02-filter1.csv
cat ./change-06-02-filter1.csv | grep -v /*test* | grep -v /*poo@feces.gov* | 
grep -v /*ocean* | grep -v /*teacher2* | grep -v /*demo* > 
change-06-02-filter2.csv 

cat ./change-06-02-filter2.csv | grep -v /*---* | grep -v "+++"   | grep -v  /*no@gmail.com* | grep -v /*qq.com* | grep -v /*sss* | grep -v /*sample* | grep -v /*gggggg*  | grep -v ",," > ./change-06-02-filter3.csv


cat ./change-06-02-filter3.csv | cut -d ',' -f1-3 > ./change-06-02-filter4.csv

