#!/bin/bash

if [ -n "$1" ]; then
    if [ ! -e "${1}/.metadata_never_index" ]; then
        echo "mdutil -i off $1"
        mdutil -i off "$1"
        cd "$1"
        rm -rf .{,_.}{fseventsd,Spotlight-V*,Trashes}
        mkdir .fseventsd
        touch .fseventsd/no_log .metadata_never_index .Trashes
    fi
else
#    echo "finding Volumes"
    find /Volumes -type d -maxdepth 1 -mindepth 1 -print0 | xargs -0 -n 1 "$0"
fi
