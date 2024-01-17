#!/bin/bash

echo "Escribe un nombre: "
read nombre

echo "Escribe una contraseña: "
read -s password

if [ $nombre == "pepe" ] && [ $password == "qwerty" ]; then
	echo -e
	echo "Hello World."
	echo -e
	date
else
	echo -e
	echo "ERROR."
fi
