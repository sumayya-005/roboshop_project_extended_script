#!/bin/bash

echo "CHECKING INSTALLATION OF NGINX"

sleep 1

SERVICE="nginx"
if ps -ef | grep "$SERVICE">/dev/null
then
    echo "$SERVICE is installed"
else
    echo "$SERVICE is not installed"
fi


