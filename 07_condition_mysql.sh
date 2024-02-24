#!/bin/bash
userid=$(id -u)
i=$1
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ $? -ne 0 ]
then
echo -e "$R You are not a super user please login as super user and execute $N"
else
echo "You are super user execute"
fi

yum list installed $i

if [ $? -ne 0 ]
then
echo -e "$R Git is not yet installed , Please install Git $N"
else
echo "$Y Git is already installed"
fi

yum install $i -y

if [ $? -ne 0 ]
then
echo -e "Installation of $i : ..........$R FAILURE $N"
else
echo -e  "Installation of $i : ..........$G SUCCESS $N"
fi





