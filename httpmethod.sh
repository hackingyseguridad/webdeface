# consulta masiva HTTP method OPTIONS PUT POST HEAD GET status de listado de fqdn en fichero dominios.txt
# www.hackingyseguridad.com
#!/bin/bash
for n in `cat dominios.txt`; do echo $n; curl $n -I --silent|grep HTTP; done
