#!/bin/bash

echo "Checking nginx Installation"

SERVICE=nginx
yum list installed | grep ^$SERVICE &>/dev/null
if [ $? -eq 0 ]; then
    echo "$SERVICE is installed"
else
    echo "$SERVICE is not installed"
    exit 1
fi



echo "CHECKING FILE CREATED"

sleep 1

file="/etc/nginx/default.d/roboshop.conf"
if [ -f "$file" ]
then
        echo "$file created."
else
        echo "$file not created."
fi


echo "Getting the ip address from the Config File"

file="/etc/nginx/default.d/roboshop.conf"

cd $file

 hostname -I


SERVICE=""
if [ $? -eq 0 ];then
   echo "service is running"
else
  echo "service is not running"
fi

