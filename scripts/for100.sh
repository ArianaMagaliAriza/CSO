#!/bin/bash
#Se realiza un for que imprime los numeros del 1 al 100
# y sus respectivos cuadrados

for ((i=1;i<=100;i++))
do
	echo "i= $i"
	cuadra=$((i * i))
	echo "i^2= $cuadra"
done

