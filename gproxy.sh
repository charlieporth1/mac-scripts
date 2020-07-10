#!/bin/bash
#port=8000
#ip=192.168.49.1
port=9090
ip=127.0.0.1
gcloud config unset proxy/port $port
gcloud config set proxy/port $port
gcloud config set proxy/address $ip
gcloud config set proxy/type http
export https_proxy=http://$ip:$port
export http_proxy=http://$ip:$port
export proxy=http://$ip:$port
