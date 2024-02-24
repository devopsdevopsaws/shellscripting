#!/bin/bash
userid=$(id -u)
date=$(date +F%:%H:%M:%S)
script_name=$0
script_path=/home/ec2-user/shellscripting/logs
script_log=$script_path/$script_name-$date.log
i=$1
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ $userid -ne 0 ]
then
echo -e " $R You are not a super user please login as super user and execute $N "
else
echo "You are super user execute"
fi

yum list installed $i &>> $script_log

if [ $? -ne 0 ]
then
echo -e "$R $i is not yet installed , Please install Git $N"
else
echo -e " $Y  $i is already installed $N"
fi

yum install $i -y &>> $script_log

if [ $? -ne 0 ]
then
echo -e "Installation of $i : ..........$R FAILURE $N"
else
echo -e  "Installation of $i : ..........$G SUCCESS $N"
fi





