#!/bin/sh
IFS="\"$IFS"
for LOC in $(dig -t TXT +short locations.publicdns.goog. @8.8.8.8)
do
  case $LOC in
    '') : ;;
    *.*|*:*) printf '%s ' ${LOC} ;;
    *) printf '%s\n' ${LOC} ;;
  esac
done
