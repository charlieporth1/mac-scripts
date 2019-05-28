#!/bin/bash
dmgfile="/Volumes/Untitled/APPLE\ SSD\ SM128E\ Media.dmg"

function TryPassword
{
    echo -n "$1 "
    r=$(echo -n "$1" | hdiutil verify -stdinpass "$dmgfile" 2>&1)
    if ! [[ $r =~ "Authentication error" ]]; then
        echo ""
        echo "Found! The password is: $1"
    exit
    fi
}

chars=$(echo {0..9} {A..z})
alphanum=( $(echo $chars | sed -E 's/[^A-Za-z0-9 ]+/ /g') )
letter=( $(echo $chars | sed -E 's/[^A-Za-z ]+/ /g') )
lowercase=( $(echo $chars | sed -E 's/[^a-z ]+/ /g') )
uppercase=( $(echo $chars | sed -E 's/[^A-Z ]+/ /g') )
digit=( $(echo $chars | sed -E 's/[^0-9 ]+/ /g') )

for a in "${letter[@]}"; do
    for b in "${lowercase[@]}"; do
        for c in "${digits[@]}"; do
            TryPassword "$a$b$c"
        done
    done
done
