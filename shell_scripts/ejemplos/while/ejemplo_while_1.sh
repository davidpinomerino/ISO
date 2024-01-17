#!/bin/bash
#
#
#
#

opcion=1

while [ ! $opcion == 0 ]; do
	echo "AGENDA TELEFONICA"
	echo "Opcion 1"
	echo "Opcion 2"
	echo "Opcion 0: Salir"
	echo -e
	read -p "Introduzca una opcion" opcion
	if [ $opcion == 0 ]; then
		break;
	fi
done
