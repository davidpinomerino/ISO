#!/bin/bash
#
#
#

read -p "Introduzca una opcion: " opcion

case $opcion in

	a)
		echo "opcion 1 seleccionada"
	;;

	b)
		echo "opcion 2 seleccionada"
	;;

	*)
		echo "error"
	;;
esac
