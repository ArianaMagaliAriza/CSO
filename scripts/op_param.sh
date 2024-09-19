#!/bin/bash
#La función recibe dos numeros como parámetros, se multiplican,
#suman, restan, se determina cuál es el mayor de ellos y se imprimen los resultados
calcular(){
if [ $# -eq 2 ]; then
	suma=$(($1 + $2))
	producto=$(($1 * $2))
	resta=$(($1 - $2))
	echo "La suma entre  $1 y $2 da $suma"
	echo "El producto entre $1 y $2 es $producto"
	echo "La resta entre $1 y $2 da $resta "
	if [ $1 -gt $2 ]; then 
		echo "El número más grande es $1"
	elif [ $2 -gt $1 ]; then 
		echo "El número más grande es $2"
	else echo "Ambos numeros son iguales "
	fi
else echo "No se pasó la cantidad correcta de parámetros"
fi
}
