#!/bin/bash

#Pedir nombre de usuario y comprobar si existe en el sistema, sino existe,
#lo crea. Si existe, mostrar datos, UID, GID y shell.
#Si no existe crearlo.
#Ejecutar como root.

#testUser=$(cat /etc/passwd | cut -d ":" -f 1)

if [ $UID == 0 ]; then
	echo -e
	echo "Ejecutando como root."
else
	echo "No se puede ejecutar el script"
	exit
fi

read -p "Escribe el nombre de un usuario: " usuario

if grep "^$usuario" /etc/passwd; then
	userID=$(grep "^$usuario" /etc/passwd | cut -d ":" -f 3)
	groupID=$(grep "^$usuario" /etc/passwd | cut -d ":" -f 4)
	shell=$(grep "^$usuario" /etc/passwd | cut -d ":" -f 7)
	echo -e
	echo "El usuario existe."
	echo -e
	echo "UID: $userID"
	echo -e
	echo "GID: $groupID"
	echo -e
	echo "Shell del usuario: $shell"
else
	echo -e
	echo "El usuario no existe. Se creara."
	adduser $usuario
	exit
fi
