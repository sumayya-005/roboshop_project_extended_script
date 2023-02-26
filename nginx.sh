#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]; then
  echo You should run this script as root user or with sudo privileges.
  exit 1
fi


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


#!/bin/bash
echo "Getting the ip address from the Config File"

cd /etc/nginx/default.d

cat roboshop.conf | grep 'http://localhost:8080/' roboshop.conf


echo "Checking the connection"

Service="http://localhost:8080/"

ifcong  $Service
if [ $? -eq 0 ]; then
    echo "$SERVICE is running"
else
    echo "$SERVICE is not running"
    exit 1
fi

