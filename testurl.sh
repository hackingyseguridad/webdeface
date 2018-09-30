#!/bin/bash
echo
echo "Test URL HTTP Method PUT OPTIONS vulnerable!"
echo "Requiere tener Nmap 7.x y Nikto"
echo "Uso.: sh testurl.sh http://url"
echo
apt-get install nmap
nmap -Pn -sV -p80,443 --script http-methods $1
nikto -h $1
