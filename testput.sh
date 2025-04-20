#!/bin/bash
# Script para probar si un servidor permite HTTP PUT 
# Intenta subir un archivo usando HTTP PUT
# Verifica si el archivo se subió correctamente
# Uso: ./test_put.sh <URL> <archivo_local> <ruta_remota>

if [ $# -ne 3 ]; then
  echo "Uso: $0 <URL> <archivo_local> <ruta_remota>"
  exit 1
fi

URL="$1"
LOCAL_FILE="$2"
REMOTE_PATH="$3"

# Verificar si el archivo existe
if [ ! -f "$LOCAL_FILE" ]; then
  echo "Error: $LOCAL_FILE no existe."
  exit 1
fi

# Intentar subir el archivo via PUT
echo "Probando HTTP PUT en $URL..."
curl -X PUT --data-binary "@$LOCAL_FILE" "$URL$REMOTE_PATH" -v

# Verificar si el archivo se subió
echo -e "\nVerificando si el archivo existe..."
curl -I "$URL$REMOTE_PATH"
