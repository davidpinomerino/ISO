#!/bin/bash

echo "Escribe una direccion IP: "
read ip

ip_1=$(echo $ip | cut -d "." -f 1)
ip_2=$(echo $ip | cut -d "." -f 2)

if [ $ip_1 == 127 ]; then
	echo -e
	echo "Es una IP Local."
	exit
fi

if [ $ip_1 == 10 ]; then
	echo -e
	echo "Es una IP de Clase A privada."
	exit
fi

if [ $ip_1 == 172 ] && [ $ip_2 -ge 16 ] && [ $ip_2 -le 31 ]; then
	echo -e
	echo "Es una IP de Clase B privada."
	exit
fi

if [ $ip_1 == 192 ] && [ $ip_2 == 168 ]; then
	echo -e
	echo "Es una IP de Clase C privada."
	exit
else
	echo -e
	echo "Es una IP publica."
	exit
fi





#if [ $ip_1 == 172 ]; then
#	if [ $ip_2 -ge 16 ] && [ $ip_2 -le 31 ]; then
#		echo -e
#		echo "Es una IP Privada de Clase B."
#	fi
#	else
#		echo "No es nada"
#fi
