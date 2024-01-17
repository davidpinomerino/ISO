#!/bin/bash

directorio=~/mis_cosas

if [ ! -d $directorio ]; then
	echo "El directorio no existe, se va a crear."
	mkdir -p ~/mis_cosas
	echo -e
	echo "Directorio creado"
else
	echo "El directorio ya existe."
fi
