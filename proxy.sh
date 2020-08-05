#!/bin/bash
export ip="192.168.43.1"
export port="8080"
export host="$host:$port"
export ip=""
export port=""
#export host="127.0.0.1:9090"
export host=""
#export http_proxy='http://192.168.49.1:8000/'
#export https_proxy='https://192.168.49.1:8000/'
#export HTTP_PROXY='http://192.168.49.1:8000/'
#export HTTPS_PROXY='https://192.168.49.1:8000/'
#git config --global http.proxy $http_proxy
export http_proxy="http://$host"
export https_proxy="https://$host"
export HTTP_PROXY="http://$host"
export HTTPS_PROXY="https://$host"
git config --global http.proxy $http_proxy
git config --global https.proxy $https_proxy
if [ -z "$ip" ]; then
gcloud config unset proxy/type  
gcloud config unset proxy/address 
gcloud config unset proxy/port 
else
gcloud config set proxy/type  http
gcloud config set proxy/address $ip
gcloud config set proxy/port $port

fi
