#!/bin/bash

echo "Checking nginx Installation"

SERVICE="nginx"
if ps -ef | grep "$SERVICE">/dev/null
then
    echo "$SERVICE is installed"
else
    echo "$SERVICE is not running"
fi


echo $?
