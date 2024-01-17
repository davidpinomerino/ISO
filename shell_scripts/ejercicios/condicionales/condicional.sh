#!/bin/bash

if [ $UID != 0 ]; then
	echo  "El usuario no es root, no se va a poder ejecutar el script."
else
	echo "Ejecutando script..."
fi
