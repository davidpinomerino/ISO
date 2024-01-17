#!/bin/bash
#
#
#

echo  "Introduce una de las siguientes opciones"
echo -e
echo "suma, resta, multiplicacion, division"
read option

case $option in
	suma)
		echo -e
		read -p "Introduce un valor: " num1
		read -p "Introduce otro valor: " num2
		sumacion=$(expr $num1 + $num2)
		echo -e
		echo "El resultado de la suma de $num1 y $num2 es: $sumacion."
	;;
	resta)
		echo -e
                read -p "Introduce un valor: " num1
                read -p "Introduce otro valor: " num2
		substraction=$(expr $num1 - $num2)
		echo -e
		echo "El resultado de la resta de $num1 y $num2 es: $substraction."
	;;
	multiplicacion)
		echo -e
                read -p "Introduce un valor: " num1
                read -p "Introduce otro valor: " num2
		echo -e
		multiplication=$(expr $num1 \* $num2)
		echo -e
		echo "El resultado de la multiplicacion de $num1 y $num2 es: $multiplication"
	;;
	division)
		echo -e
                read -p "Introduce un valor: " num1
                read -p "Introduce otro valor: " num2
		echo -e
		division=$(expr $num1 / $num2)
		rest=$(expr $num1 % $num2)
		echo -e
		echo "El resultado de la division de $num1 y $num2 es: $division"
		echo "Su resto es: $rest"
	;;
	*)
		echo -e
		echo "Error."
	;;
esac
