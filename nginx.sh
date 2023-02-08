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




echo "CHECKING THE SSH CONNECTION"

# cat /tmp/check_connectivity.sh
#!/bin/bash

server=     # server IP
port=22                 # port
connect_timeout=5       # Connection timeout

timeout $connect_timeout bash -c "</dev/tcp/$server/$port"
if [ $? == 0 ];then
   echo "SSH Connection to $server over port $port is possible"
else
   echo "SSH connection to $server over port $port is not possible"
fi