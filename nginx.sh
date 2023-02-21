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


#!/bin/bash
echo "Getting the ip address from the Config File"
cd /etc/nginx/default.d

cat roboshop.conf | grep 'location /api/catalogue/ { proxy_pass http://localhost:8080/; }' roboshop.conf

file="awk 'http://localhost:8080' roboshop.conf"
ifconfig

echo ${file}
if [ ${file} -eq 0 ]; then
  echo yay
fi

