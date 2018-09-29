#!/bin/bash
echo "Test URL HTTP Method PUT vulnerable!
echo "Uso.: sh testurl.sh http://url"
apt-get install nmap
nmap -Pn -sV --script http-methods $1
