#! /bin/bash
#CompruebaDirectorio.sh
clear
if `cd /tmp/prueba/ >/dev/null`
then
echo "Pues si, es un directorio y contiene..."
ls -l
else
echo "Pues va a ser que no es un directorio"
fi

#ExisteGrupoUsuario.sh
read -p "Introduce usuario... " user
read -p "Introduce grupo... " group
if `grep -e "^$user:.*" /etc/passwd >/dev/null`
then
if `grep -e "^$group:.*" /etc/group >/dev/null`
then
echo "Usuario y grupo ya existen en el sistema"
fi
elif `grep -e "^$group:.*" /etc/group >/dev/null`
then
echo "usuario no existe, grupo si!!"
else
echo "Ni grupo ni usuario existen"
fi