#!/bin/bash

sudo sysctl -w net.inet.ip.ttl=128
#net.ipv6.conf.wlan0.hop_limit
#net.ipv4.ip_default_ttl
#net.ipv4.inet_peer_maxttl = 600
#net.ipv4.inet_peer_minttl = 120
export ssid=`/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | awk -F: '/ SSID/{print $2}'`
# echo `expr "$Stext" : '\(.*Galaxy\)'`
#if [[ "$ssid" =~   ]]; then
if [[ `expr "$ssid" : '\(.*Galaxy\)'` ]]; then
terminal-notifier -title TEST -subtitle "Are you on a WiFi Hotspot?" -message "If so then please double check that you have a vpn on to make sure that tmobile doesn't know about usage"  
fi
