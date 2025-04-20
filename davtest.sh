echo
echo " Detectar si un servidor WebDAV está habilitado (y qué métodos HTTP acepta: PUT, DELETE, etc "
echo
echo "..."
echo
for S in `cat url.txt`; do echo $S; timeout 3 davtest --url $S;
done
