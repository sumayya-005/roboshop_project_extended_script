#!/bin/bash

echo "Checking nginx Installation"

SERVICE="nginx"
if  sudo yum list installed  | grep "$SERVICE">/dev/null
then
    echo "$SERVICE is installed"
else
    echo "$SERVICE is not installed"
fi