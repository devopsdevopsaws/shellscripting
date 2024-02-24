#!/bin/bash
uid=$(id -u)
date=$(date +%F)
script_name=$0
script_path=/home/ec2-user/shellscripting/logs
LOGFILE=$script_path/$script_name-$date.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
if [ $uid -ne 0 ]
then
echo -e " $R You are not a super user Please execute this script with super user $N "
exit 1
else
echo -e " $G Hey you are a super user, Running the script $N "
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
    echo -e " $N $i status is ......... $R FAILURE $N"
    exit 1
    else
    echo -e " $N $i status is ..........$G SUCCESS $N"
    fi
}

for i in $@
do 
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]
    then
    echo -e " $R $i is not yet installed..lets install it "
    yum install $i -y &>>$LOGFILE
    VALIDATE $? "$i"
    else
    echo -e " $Y $i is already installed $N"
    fi
done

    