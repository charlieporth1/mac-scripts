#!/bin/bash
ARGS="$@"
if [[ -z "$ENV" ]] && [[ -z `echo "$ARGS" | grep -Eio '(\-\-|\-)(e|env)'` ]]; then
        export ENV='PROD'

elif [[ -n `echo "$ARGS" | grep -Eio '(\-\-|\-)(e|env)'` ]] && [[ -z "$ENV" ]]; then
        [[ -n `echo "$ARGS" | grep -Eio '(\-\-|\-)(e|env)(=| )PROD'` ]] && export ENV=PROD || export ENV=DEV
        [[ -n `echo "$ARGS" | grep -Eio '(\-\-|\-)(e|env)(=| )DEV'` ]] && export ENV=DEV

elif [[ -n `echo "$ARGS" | grep -Eio '(\-\-|\-|)(DEV|PROD)'` ]] && [[ -z "$ENV" ]]; then
        export ENV=`echo "$ARGS" | grep -Eio '(\-\-|\-|)(DEV|PROD)'`

else
        export ENV="$ENV"

fi
host_arg_result=`echo "$ARGS" | grep -Eio '(\-\-|\-)(h|host)(=| )(.*) '`
[[ -n $host_arg_result ]] && export HOST=`echo $host_arg_result | awk -F= '{print $2}'` || export HOST=pi@raspberrypi.local

dir_arg_result=`echo "$ARGS" | grep -Eio '(\-\-|\-)(d|dir|dirctory)(=| )(.*) '`
[[ -n $dir_arg_result ]] && export ROOT_DIR=`echo $dir_arg_result | awk -F= '{print $2}'` || export ROOT_DIR=./
DIR_NAME=`realpath $ROOT_DIR/.`
ssh $HOST "mkdir -p ~/$DIR_NAME"

rsync -avAXEWSlHh $ROOT_DIR $HOST:~/$DIR_NAME --no-compress --info=progress2 
#--dry-run

ssh $HOST "cd ~/$DIR_NAME && sudo docker-compose up"
#ssh $HOST "cd ~/$DIR_NAME "
