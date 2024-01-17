#!/bin/bash

nombre_carpeta=$1

if [ -z $nombre_carpeta ]; then
	echo "No se ha introducido ningun parametro."
	echo -e
	echo "Introduce un nombre en la siguiente linea: "
	read nombre
	echo -e
	if [ ! -d $nombre ] && [ ! -w $nombre ]; then
		echo "La carpeta se va a crear porque no existe."
		mkdir -p $nombre
		echo "Bienvenido" >> $nombre/hola.txt
	fi
else
	echo "Nada que objetar."
fi
