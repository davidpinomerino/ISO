#!/bin/bash
#
# Autor: David Pino Merino
#
# Fecha: 17-01-2024
#

while true; do
	echo -e
	echo "Elige una de las siguientes opciones:"
	echo "A) Añadir una entrada."
	echo "B) Buscar por DNI."
	echo "C) Ver la agenda completa."
	echo "D) Eliminar todas las entradas de la agenda."
	echo "E) Finalizar."
	read opcion

	case $opcion in
		a)
			echo "Añadiendo una persona a la agenda."
			echo -e
			read -p "Introduce un DNI: " dni

			if grep "^$dni" ./agenda.txt >> /dev/null; then
				echo -e
				echo "El DNI introducido ya existe. No se puede actualizar la lista."
			else
                	        read -p "Introduce un nombre: " nombre
        	                read -p "Introduce apellidos: " apellidos
	                        read -p "Introduce la localidad: " localidad
				echo "$dni:$nombre:$apellidos:$localidad" >> ./agenda.txt
				echo -e
				echo "Se han añadido los datos a la agenda."
			fi
		;;
		b)
			read -p "Introduce un DNI para ver información: " dni
			if grep "^$dni" ./agenda.txt >> /dev/null; then
				nombre=$(grep "^$dni" ./agenda.txt | cut -d ":" -f 2)
				apellidos=$(grep "^$dni" ./agenda.txt | cut -d ":" -f 3)
				ciudad=$(grep "^$dni" ./agenda.txt | cut -d ":" -f 4)
				echo -e
				echo "Mostrando datos..."
				echo -e
				echo "La persona con DNI número $dni es: $nombre $apellidos y vive en $ciudad"
			else
				echo -e
				echo "La persona no existe en la agenda."
			fi
		;;
		c)
			if [ -s ./agenda.txt ] >> /dev/null; then
				echo -e
				echo "Agenda vacía."
			else
				echo -e
				echo "Mostrando agenda..."
				echo -e
				cat ./agenda.txt
			fi
		;;
		d)
			echo "Eliminando las entradas de la agenda..."
			echo "" >  ./agenda.txt
		;;
		e)
			echo "Saliendo."
			exit
		;;
	esac
done
