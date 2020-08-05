#!/bin/bash
export v=RAM_DISK
devD=/dev/rdisk2
export rootDir=/Volumes/$v/
#256 MB = 524288
#512 MB = 1048576
#1 GB = 2097152
#2 GB = 4194304
function createDisk() {
#        hdiutil attach  -nokernel -nomount ram://2097152 #1G
        hdiutil attach -nokernel -nomount ram://1048576 #512M
        diskutil apfs create $devD $v
        diskutil mount $v

}
if [ ! -d $rootDir ]; then
        echo "Creating RAM DISK"
        createDisk
else
        echo "RAM DISK EXIST"
        if [ -f $devD ]; then
                diskutil umount --force $devD
                createDisk
        else
                rm -rf $rootDir/*
        fi
fi

