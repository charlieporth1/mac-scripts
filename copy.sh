#sudo rsync -vaE --progress /Volumes/SourceName /Volumes/DestinationName
file=$1
dest=$2
sudo rsync -vaE --progress $file $dest | parallel -j64 
