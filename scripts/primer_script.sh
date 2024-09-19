#!/bin/bash
#Pruebo mi primer script :)
echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su nombre y apellido es:"
echo "$nombre $apellido"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es:"
pwd
