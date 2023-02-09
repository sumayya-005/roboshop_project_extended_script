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



#!/etc/nginx/default.d/roboshop.conf
#!/bin/bash
echo "Getting the ip address from the Config File"

file="/etc/nginx/default.d/roboshop.conf"

cd $file | grep catalogue

 ip_addresses=$(hostname -I)


if [ $? -eq 0 ];then
   echo " is running"
else
  echo "is not running"
fi




echo "CHECKING THE SSH CONNECTION"

# cat /tmp/check_connectivity.sh
#!/bin/bash

server=    # server IP
port=22                 # port
connect_timeout=5       # Connection timeout

timeout $connect_timeout bash -c "</dev/tcp/$server/$port"
if [ $? == 0 ];then
   echo "SSH Connection to $server over port $port is possible"
else
   echo "SSH connection to $server over port $port is not possible"
fi