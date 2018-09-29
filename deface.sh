#!/bin/bash
echo "Web Defacement"
echo "Uso.: sh deface.sh http://url"
echo 
curl -R index.html $1
