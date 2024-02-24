#!/bin/bash
date=$(date +%F-%H-%M-%S)
script_name=$0
script_path=/home/ec2-user/shellscripting/logs
APP_LOG=/home/ec2-user/shellscripting/applogs
LOGFILE=$script_path/$script_name-$date.log

f=$(find $APP_LOG -name *.txt -mtime +14 )

echo "script started executing at $date" &>>$LOGFILE