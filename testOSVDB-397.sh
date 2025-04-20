echo
echo " OSVDB-397: Método HTTP (encabezado 'Allow'): el método 'PUT' podría permitir que los clientes guarden archivos en el servidor web.  " 
echo 
nikto -h -404code $1
