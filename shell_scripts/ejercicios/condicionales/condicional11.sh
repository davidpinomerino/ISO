#!/bin/bash
#
# Autor: David Pino Merino
# Fecha: 15-1-2024
#
#

if [ ! $UID == 0 ]; then
	echo -e
	echo "No eres root, no puedes ejecutar el script. Utiliza SUDO  para ejecutarlo."
	exit
fi

case $1 in
	crear)
		echo -e
		echo "Se creara la carpeta BAK en /home."
		mkdir -p ~/BAK 2> /dev/null
		echo -e
		ls /home
	;;

	borrar)
		echo -e
		echo "Comprobando si existe la carpeta BAK en /home"
		if [ ! -d /home/BAK ]; then
			echo -e
			echo "La carpeta no existe, no se borrara nada."
			exit
		else
			echo -e
			echo "El contenido de la carpeta se va a borrar."
			rm -R /home/BAK/*
			echo -e
			echo "Carpeta borrada."
			ls /home
		fi
	;;

	*)
		echo -e
		echo "ERROR."
	;;
esac
