#!/bin/bash
#El usuario lee dos numeros desde teclado, se multiplican,
#suman, restan, se determina cuál es el mayor de ellos y se imprimen los resultados
echo "Ingrese el 1er operando:"
read op1
echo "Ingrese el 2do operando:"
read op2
suma=$((op1 + op2))
producto=$((op1 * op2))
resta=$((op1 - op2))
echo "La suma entre  $op1 y $op2 da $suma"
echo "El producto entre $op1 y $op2 es $producto"
echo "La resta entre $op1 y $op2 da $resta "
if [ $op1 -gt $op2 ]
then echo "El número más grande es $op1"
elif [ $op2 -gt $op1 ]
then echo "El número más grande es $op2"
else echo "Ambos numeros son iguales "
fi

