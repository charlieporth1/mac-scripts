#bash
#sqlite3 -header -column $TMPDIR../0/com.apple.dock.launchpad/db/db "UPDATE tableName SET item_id=c
sudo rm -rf ~/dbtitlesalpha.txt
sleep 2s
#sqlite3 -header -column $TMPDIR../0/com.apple.dock.launchpad/db/db  
sqlite3  $TMPDIR../0/com.apple.dock.launchpad/db/db "select title from apps order by title" > ~/dbtitlesalpha.txt
declare -a myarray
sleep 2s
# myarray

IFS=$'\n' a=($(cat ~/dbtitlesalpha.txt))
for i in $(seq ${#a[*]}); do
    [[ ${a[$i-1]} = $name ]] && echo "${a[$i]}"
done

#echo setting bigger number so it can be reassigned  to item_id 
#for (( c = 0; c<=${#a[@]}; c++ ))
#do
#echo "on number "$c "out of"  ${#a[@]}
#sqlite3 -header -column $TMPDIR../0/com.apple.dock.launchpad/db/db "UPDATE apps SET item_id='1$c' WHERE item_id='$c'"

#done
echo done 
sleep 1s
echo "number of items in the array/db" ${#a[@]}
echo "test of array woring in '%${#a[@]}%' "
echo "testo f array in alphabetic order ${a[1]},${a[2]},${a[3]},${a[4]}"

for (( c = 0; c<=${#a[@]}; c++ ))
do
echo "on number "$c "out of"  ${#a[@]}
sqlite3 -header -column $TMPDIR../0/com.apple.dock.launchpad/db/db "UPDATE apps SET item_id='$c' WHERE title LIKE '%${#a[@]}%'"

done
echo done 
sudo killall Dock
#sqlite3  $TMPDIR../0/com.apple.dock.launchpad/db/db "DELETE from apps; DELETE from groups WHERE title<>''; DELETE from items WHERE rowid>2;"; Killall Dock

